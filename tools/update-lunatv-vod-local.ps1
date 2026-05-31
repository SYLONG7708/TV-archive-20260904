param(
    [string]$RepoRoot = "",
    [string]$PagesRoot = "",
    [string]$SourceName = "jin18,full",
    [int]$TimeoutSec = 12,
    [int]$MaxDetailProbe = 3,
    [int]$UpdateIntervalDays = 5,
    [int]$ScheduleHour = 2,
    [switch]$ForceUpdate,
    [switch]$NoGitPush
)

$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

if ([string]::IsNullOrWhiteSpace($RepoRoot)) {
    $RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
} else {
    $RepoRoot = Resolve-Path $RepoRoot
}

$repoRootText = [string]$RepoRoot
$safeDir = $repoRootText -replace "\\", "/"
$parentDir = Split-Path -Parent $repoRootText
if ([string]::IsNullOrWhiteSpace($PagesRoot)) {
    $PagesRoot = Join-Path $parentDir "TV-gh-pages"
}
$pagesRootText = [string]$PagesRoot
$pagesSafeDir = $pagesRootText -replace "\\", "/"
$logDir = Join-Path $repoRootText ".patch-work"
New-Item -ItemType Directory -Force -Path $logDir | Out-Null
$logPath = Join-Path $logDir "lunatv-vod-local-update.log"
$lockPath = Join-Path $logDir "lunatv-vod-local-update.lock"
$scheduleStatePath = Join-Path $repoRootText "docs\data\lunatv-vod-update-state.json"

function Write-Log([string]$Message) {
    $line = "{0} {1}" -f (Get-Date).ToString("yyyy-MM-dd HH:mm:ss"), $Message
    $line | Tee-Object -FilePath $logPath -Append
}

function Invoke-Git {
    git -c "safe.directory=$safeDir" @args
}

function Invoke-PagesGit {
    git -c "safe.directory=$pagesSafeDir" @args
}

function Get-ScheduleTimeZone {
    try {
        return [TimeZoneInfo]::FindSystemTimeZoneById("China Standard Time")
    } catch {
        return [TimeZoneInfo]::Local
    }
}

function Get-NextDueAt([DateTimeOffset]$SuccessAt) {
    $tz = Get-ScheduleTimeZone
    $localSuccess = [TimeZoneInfo]::ConvertTime($SuccessAt, $tz)
    $nextLocalDateTime = $localSuccess.Date.AddDays($UpdateIntervalDays).AddHours($ScheduleHour)
    if ($nextLocalDateTime -le $localSuccess.DateTime) {
        $nextLocalDateTime = $nextLocalDateTime.AddDays(1)
    }
    $offset = $tz.GetUtcOffset($nextLocalDateTime)
    return [DateTimeOffset]::new($nextLocalDateTime, $offset)
}

function Get-ScheduleState {
    if (-not (Test-Path -LiteralPath $scheduleStatePath)) {
        return $null
    }

    try {
        return Get-Content -LiteralPath $scheduleStatePath -Raw -Encoding UTF8 | ConvertFrom-Json
    } catch {
        Write-Log "Schedule state is unreadable; update will run. $($_.Exception.Message)"
        return $null
    }
}

function Test-UpdateDue {
    if ($ForceUpdate) {
        Write-Log "ForceUpdate set; update will run now."
        return $true
    }

    $state = Get-ScheduleState
    if (-not $state) {
        Write-Log "No successful VOD update state found; update is due."
        return $true
    }

    $nextDueText = [string]$state.nextDueAt
    if ([string]::IsNullOrWhiteSpace($nextDueText) -and -not [string]::IsNullOrWhiteSpace([string]$state.lastSuccessAt)) {
        $lastSuccess = [DateTimeOffset]::Parse([string]$state.lastSuccessAt)
        $nextDueText = (Get-NextDueAt $lastSuccess).ToString("o")
    }

    if ([string]::IsNullOrWhiteSpace($nextDueText)) {
        Write-Log "Schedule state has no nextDueAt; update is due."
        return $true
    }

    $nextDue = [DateTimeOffset]::Parse($nextDueText)
    $now = [DateTimeOffset]::UtcNow
    if ($now -lt $nextDue.ToUniversalTime()) {
        Write-Log "VOD update is not due. Next due: $($nextDue.ToString("yyyy-MM-dd HH:mm:ss zzz"))."
        return $false
    }

    Write-Log "VOD update is due. Last success: $($state.lastSuccessAt); next due: $nextDueText."
    return $true
}

function Write-ScheduleSuccess {
    $successAt = [DateTimeOffset]::Now
    $nextDue = Get-NextDueAt $successAt
    $state = [ordered]@{
        status = "success"
        lastSuccessAt = $successAt.ToString("o")
        nextDueAt = $nextDue.ToString("o")
        intervalDays = $UpdateIntervalDays
        scheduleHour = $ScheduleHour
        timeZone = (Get-ScheduleTimeZone).Id
        updatedBy = "tools/update-lunatv-vod-local.ps1"
    }

    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $scheduleStatePath) | Out-Null
    Set-Content -LiteralPath $scheduleStatePath -Value (($state | ConvertTo-Json -Depth 4) + "`n") -Encoding UTF8
    Write-Log "VOD update marked successful. Next scheduled update: $($nextDue.ToString("yyyy-MM-dd HH:mm:ss zzz"))."
}

function Sync-GhPages {
    if (-not (Test-Path -LiteralPath (Join-Path $pagesRootText ".git"))) {
        Write-Log "GitHub Pages worktree not found; skipping gh-pages sync: $pagesRootText"
        return
    }

    Write-Log "Syncing iPhone public files to gh-pages worktree: $pagesRootText"
    Push-Location $pagesRootText
    try {
        try {
            Invoke-PagesGit config user.name | Out-Null
        } catch {
            Invoke-PagesGit config user.name "OKTV local updater"
        }
        try {
            Invoke-PagesGit config user.email | Out-Null
        } catch {
            Invoke-PagesGit config user.email "oktv-local-updater@example.local"
        }

        Invoke-PagesGit pull --ff-only origin gh-pages

        New-Item -ItemType Directory -Force -Path (Join-Path $pagesRootText "docs") | Out-Null
        Copy-Item -LiteralPath (Join-Path $repoRootText "docs\iphone") -Destination (Join-Path $pagesRootText "docs") -Recurse -Force
        Copy-Item -LiteralPath (Join-Path $repoRootText "docs\data") -Destination (Join-Path $pagesRootText "docs") -Recurse -Force
        Copy-Item -LiteralPath (Join-Path $repoRootText "docs\assets") -Destination (Join-Path $pagesRootText "docs") -Recurse -Force

        Invoke-PagesGit add "docs/iphone" "docs/data" "docs/assets"
        if (Invoke-PagesGit diff --cached --quiet) {
            Write-Log "No gh-pages public file changes to commit."
        } else {
            Invoke-PagesGit commit -m "Publish auto refreshed OKTV data"
            if ($NoGitPush) {
                Write-Log "NoGitPush set; gh-pages commit created but not pushed."
            } else {
                Invoke-PagesGit push origin HEAD:gh-pages
            }
        }
    } finally {
        Pop-Location
    }
}

if (Test-Path -LiteralPath $lockPath) {
    $age = (Get-Date) - (Get-Item -LiteralPath $lockPath).LastWriteTime
    if ($age.TotalMinutes -lt 60) {
        Write-Log "Another LunaTV update appears to be running. Lock age: $([int]$age.TotalMinutes) minutes."
        exit 0
    }
}

Set-Content -LiteralPath $lockPath -Value ([DateTime]::Now.ToString("o")) -Encoding UTF8
$pushedLocation = $false
try {
    Write-Log "Starting LunaTV VOD update. Repo: $repoRootText"
    if (-not (Test-UpdateDue)) {
        return
    }

    Push-Location $repoRootText
    $pushedLocation = $true

    try {
        Invoke-Git config user.name | Out-Null
    } catch {
        Invoke-Git config user.name "OKTV local updater"
    }
    try {
        Invoke-Git config user.email | Out-Null
    } catch {
        Invoke-Git config user.email "oktv-local-updater@example.local"
    }

    $statusBefore = Invoke-Git status --porcelain
    if ($statusBefore) {
        Write-Log "Working tree has existing changes; continuing without pull to avoid overwriting local work."
    } else {
        Write-Log "Pulling latest main."
        Invoke-Git pull --ff-only origin main
    }

    $updateScript = Join-Path $repoRootText "tools\update-lunatv-vod.ps1"
    $allOnDemandScript = Join-Path $repoRootText "tools\build-all-on-demand-sources.mjs"
    $adultSortScript = Join-Path $repoRootText "tools\build-lunatv-adult18-sorted.mjs"
    $iphoneCatalogScript = Join-Path $repoRootText "tools\build-iphone-vod-catalog.mjs"
    $iphoneHealthScript = Join-Path $repoRootText "tools\check-iphone-catalog-health.mjs"
    $sourceNames = @($SourceName -split "," | ForEach-Object { $_.Trim() } | Where-Object { $_ })
    foreach ($name in $sourceNames) {
        Write-Log "Refreshing LunaTV VOD sources from GitHub raw $name."
        powershell -NoProfile -ExecutionPolicy Bypass -File $updateScript `
            -SourceName $name `
            -TimeoutSec $TimeoutSec `
            -MaxDetailProbe $MaxDetailProbe `
            -RedactSampleNames

        $reportPath = Join-Path $repoRootText "sources\vod-lunatv-$name-report.json"
        if (Test-Path -LiteralPath $reportPath) {
            $report = Get-Content -LiteralPath $reportPath -Raw -Encoding UTF8 | ConvertFrom-Json
            Write-Log "$name included: $($report.includedSources) / $($report.totalSources); duplicates removed: $($report.duplicateSources); invalid removed: $($report.invalidSources); search OK: $($report.searchOkSources)."
        }
    }

    if (Test-Path -LiteralPath $allOnDemandScript) {
        Write-Log "Building all on-demand sources from LunaTV-config report.md."
        node $allOnDemandScript `
            --repoRoot $repoRootText `
            --timeoutMs ($TimeoutSec * 1000) `
            --concurrency 10
    }

    if (Test-Path -LiteralPath $adultSortScript) {
        Write-Log "Building sorted adult 18+ resource area."
        node $adultSortScript --repoRoot $repoRootText
    }

    if (Test-Path -LiteralPath $iphoneCatalogScript) {
        Write-Log "Building iPhone OKTV VOD catalog."
        node $iphoneCatalogScript `
            --tvRoot $repoRootText `
            --output (Join-Path $repoRootText "docs\data\iphone-vod-catalog.json") `
            --reportOutput (Join-Path $repoRootText "docs\data\iphone-vod-catalog-report.json") `
            --maxSources 90 `
            --maxItemsPerSource 70 `
            --maxCategoriesPerSource 8 `
            --includeAdult true `
            --timeoutMs 8000
    }

    if (Test-Path -LiteralPath $iphoneHealthScript) {
        Write-Log "Checking iPhone VOD names, posters, VOD sources and live sources."
        node $iphoneHealthScript `
            --tvRoot $repoRootText `
            --catalog (Join-Path $repoRootText "docs\data\iphone-vod-catalog.json") `
            --live (Join-Path $repoRootText "docs\data\live-channels.json") `
            --output (Join-Path $repoRootText "docs\data\iphone-health-check-latest.json") `
            --csvOutput (Join-Path $repoRootText "docs\data\iphone-health-check-latest.csv") `
            --timeoutMs 8000 `
            --concurrency 18
    }

    Write-ScheduleSuccess

    Invoke-Git add `
        "tools/update-lunatv-vod.ps1" `
        "tools/update-lunatv-vod-local.ps1" `
        "tools/install-lunatv-vod-autoupdate-task.ps1" `
        "tools/build-all-on-demand-sources.mjs" `
        "tools/build-lunatv-adult18-sorted.mjs" `
        "tools/build-iphone-vod-catalog.mjs" `
        "tools/check-iphone-catalog-health.mjs" `
        "sources/current-sources.json" `
        "sources/All on-demand sources" `
        "sources/All on-demand sources-report.json" `
        "sources/vod-lunatv-jin18-oktv.json" `
        "sources/vod-lunatv-jin18-report.json" `
        "sources/vod-lunatv-jin18-analysis.csv" `
        "sources/vod-lunatv-full-oktv.json" `
        "sources/vod-lunatv-full-report.json" `
        "sources/vod-lunatv-full-analysis.csv" `
        "sources/vod-lunatv-adult18-sorted-oktv.json" `
        "sources/vod-lunatv-adult18-sorted-report.json" `
        "sources/vod-lunatv-adult18-sorted-analysis.csv" `
        "docs/data/iphone-vod-catalog.json" `
        "docs/data/iphone-vod-catalog-report.json" `
        "docs/data/vod-sources.json" `
        "docs/data/iphone-health-check-latest.json" `
        "docs/data/iphone-health-check-latest.csv" `
        "docs/data/lunatv-vod-update-state.json" `
        "docs/iphone/index.html" `
        "docs/assets/source-signal-icon.svg" `
        "docs/assets/adult-18-badge.svg" `
        ".github/workflows/update-lunatv-vod.yml"

    if (Invoke-Git diff --cached --quiet) {
        Write-Log "No LunaTV VOD source changes to commit."
    } else {
        $message = "Auto refresh LunaTV VOD sources"
        Invoke-Git commit -m $message
        if ($NoGitPush) {
            Write-Log "NoGitPush set; commit created but not pushed."
        } else {
            Write-Log "Pushing update to GitHub."
            Invoke-Git push origin HEAD:main
        }
    }

    Sync-GhPages
    Write-Log "LunaTV VOD update finished."
} catch {
    Write-Log "ERROR: $($_.Exception.Message)"
    throw
} finally {
    if ($pushedLocation) {
        Pop-Location
    }
    Remove-Item -LiteralPath $lockPath -Force -ErrorAction SilentlyContinue
}
