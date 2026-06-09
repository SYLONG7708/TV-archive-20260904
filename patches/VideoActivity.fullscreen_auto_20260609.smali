.class public Lcom/fongmi/android/tv/ui/activity/VideoActivity;
.super LP3/b;
.source "SourceFile"

# interfaces
.implements LU3/c;
.implements LQ3/g;
.implements LR3/S;
.implements LR3/C;
.implements LR3/n;
.implements Lcom/fongmi/android/tv/ui/adapter/p;
.implements Lcom/fongmi/android/tv/ui/adapter/C;
.implements LR3/f;
.implements LR3/x;


# static fields
.field public static final synthetic I0:I


# instance fields
.field public A0:Z

.field public B0:Z

.field public C0:Z

.field public D0:Z

.field public E0:Z

.field public F0:Z

.field public G0:Z

.field public H0:I

.field public M:Lw3/b;

.field public N:Landroid/view/ViewGroup$LayoutParams;

.field public O:LO3/t;

.field public P:LO3/t;

.field public Q:LO3/t;

.field public R:LO3/t;

.field public S:Lcom/fongmi/android/tv/ui/adapter/q;

.field public T:Lcom/fongmi/android/tv/ui/adapter/q;

.field public U:LR3/o;

.field public V:Lcom/fongmi/android/tv/ui/adapter/u;

.field public W:Lcom/fongmi/android/tv/ui/adapter/q;

.field public X:LQ3/d;

.field public Y:LE3/r;

.field public Z:Lcom/fongmi/android/tv/ui/adapter/u;

.field public a0:Ljava/util/ArrayList;

.field public b0:Lcom/fongmi/android/tv/bean/History;

.field public c0:LF3/f;

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:LO3/u;

.field public s0:LO3/u;

.field public t0:LO3/u;

.field public u0:LO3/u;

.field public v0:LA/h;

.field public w0:Ljava/lang/String;

.field public x0:LF2/c;

.field public y0:Z

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/j;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static C0(Lcom/fongmi/android/tv/ui/activity/HomeActivity;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "content"

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "file"

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, LN6/h;->I(Landroid/net/Uri;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0(Landroidx/appcompat/app/j;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    :cond_1
    invoke-static {p1}, LU3/t;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v1, "push_agent"

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    move-object v0, p0

    .line 56
    move-object v2, v3

    .line 57
    invoke-static/range {v0 .. v5}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public static S(Lcom/fongmi/android/tv/ui/activity/VideoActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, LR3/T;

    .line 5
    .line 6
    invoke-direct {v0}, LR3/T;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 10
    .line 11
    iput-object v1, v0, LR3/T;->D0:LF3/f;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, v0, LR3/T;->E0:I

    .line 26
    .line 27
    invoke-virtual {v0, p0}, LR3/T;->y0(Landroidx/appcompat/app/j;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static T(Lcom/fongmi/android/tv/ui/activity/VideoActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, LH6/l;->Y()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, LH6/l;->Y()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 18
    .line 19
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 20
    .line 21
    iget-object v0, v0, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 33
    .line 34
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 35
    .line 36
    iget-object v0, v0, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 43
    .line 44
    iget-object p0, p0, Lw3/b;->P:Lw3/s;

    .line 45
    .line 46
    iget-object p0, p0, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public static b1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v7, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static c1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/fongmi/android/tv/ui/activity/VideoActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x10000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "download"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string p7, "collect"

    .line 20
    .line 21
    invoke-virtual {v0, p7, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p6, "mark"

    .line 25
    .line 26
    invoke-virtual {v0, p6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string p5, "name"

    .line 30
    .line 31
    invoke-virtual {v0, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p3, "pic"

    .line 35
    .line 36
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string p3, "key"

    .line 40
    .line 41
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string p1, "id"

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static d0(Landroidx/appcompat/app/j;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-string v0, "file://"

    .line 18
    .line 19
    invoke-static {v0, p1}, Lokio/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v2, "push_agent"

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v1, p0

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->E0()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 6
    .line 7
    invoke-virtual {v1}, LF3/f;->u0()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 11
    .line 12
    invoke-virtual {v1}, LF3/f;->w()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0:LA/h;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, v1, LA/h;->o:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->g0()Lcom/fongmi/android/tv/bean/Flag;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    new-instance v3, Lcom/fongmi/android/tv/bean/Episode;

    .line 61
    .line 62
    invoke-direct {v3}, Lcom/fongmi/android/tv/bean/Episode;-><init>()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 67
    .line 68
    iget-object v4, v3, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_3

    .line 77
    .line 78
    new-instance v3, Lcom/fongmi/android/tv/bean/Episode;

    .line 79
    .line 80
    invoke-direct {v3}, Lcom/fongmi/android/tv/bean/Episode;-><init>()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v3}, Lcom/fongmi/android/tv/ui/adapter/q;->p()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/fongmi/android/tv/bean/Episode;

    .line 93
    .line 94
    :goto_0
    iget-object v4, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 95
    .line 96
    iget-object v5, v4, Lw3/b;->q:Lw3/n;

    .line 97
    .line 98
    iget-object v5, v5, Lw3/n;->r:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v4, v4, Lw3/b;->B:Lcom/google/android/material/textview/MaterialTextView;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroidx/appcompat/widget/d0;->getText()Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v3}, Lcom/fongmi/android/tv/bean/Episode;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    const/4 v7, 0x2

    .line 111
    new-array v7, v7, [Ljava/lang/Object;

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    aput-object v4, v7, v8

    .line 115
    .line 116
    aput-object v6, v7, v0

    .line 117
    .line 118
    const v4, 0x7f130071

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 129
    .line 130
    iget-object v5, v4, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 131
    .line 132
    iget-object v5, v5, Lcom/google/android/material/datepicker/c;->s:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v5, Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object v4, v4, Lw3/b;->q:Lw3/n;

    .line 137
    .line 138
    iget-object v4, v4, Lw3/n;->r:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->j0()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/Flag;->getFlag()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v3}, Lcom/fongmi/android/tv/bean/Episode;->getUrl()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    sget-object v7, LE3/q;->n:LE3/q;

    .line 165
    .line 166
    new-instance v8, LE3/k;

    .line 167
    .line 168
    invoke-direct {v8, v5, v0, v1, v6}, LE3/k;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v4, LE3/r;->c:Landroidx/lifecycle/A;

    .line 172
    .line 173
    invoke-virtual {v4, v7, v1, v8}, LE3/r;->c(LE3/q;Landroidx/lifecycle/A;Ljava/util/concurrent/Callable;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const/16 v4, 0x80

    .line 181
    .line 182
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 186
    .line 187
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 188
    .line 189
    iget-object v1, v1, Lw3/n;->r:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/History;->getEpisode()Lcom/fongmi/android/tv/bean/Episode;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v3, v1}, Lcom/fongmi/android/tv/bean/Episode;->matchesName(Lcom/fongmi/android/tv/bean/Episode;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_4

    .line 205
    .line 206
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/History;->getPosition()J

    .line 209
    .line 210
    .line 211
    move-result-wide v4

    .line 212
    goto :goto_1

    .line 213
    :cond_4
    const-wide/16 v4, 0x0

    .line 214
    .line 215
    :goto_1
    invoke-virtual {v0, v4, v5}, Lcom/fongmi/android/tv/bean/History;->setPosition(J)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->g0()Lcom/fongmi/android/tv/bean/Flag;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/Flag;->getFlag()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/fongmi/android/tv/bean/History;->setVodFlag(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/fongmi/android/tv/bean/Episode;->getName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/fongmi/android/tv/bean/History;->setVodRemarks(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/fongmi/android/tv/bean/Episode;->getUrl()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/fongmi/android/tv/bean/History;->setEpisodeUrl(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 250
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    .line 253
    .line 254
    move-result-wide v3

    .line 255
    invoke-virtual {v0, v3, v4}, Lcom/fongmi/android/tv/bean/History;->setCreateTime(J)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 259
    .line 260
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/History;->getOpening()J

    .line 263
    .line 264
    .line 265
    move-result-wide v3

    .line 266
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 267
    .line 268
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/History;->getPosition()J

    .line 269
    .line 270
    .line 271
    move-result-wide v5

    .line 272
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 273
    .line 274
    .line 275
    move-result-wide v3

    .line 276
    iput-wide v3, v0, LF3/f;->H:J

    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->a1()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M0()V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 285
    .line 286
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 287
    .line 288
    iget-object v0, v0, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 289
    .line 290
    const/16 v1, 0x8

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 296
    .line 297
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 298
    .line 299
    iget-object v0, v0, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 300
    .line 301
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method public final B0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/History;->getOpening()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/fongmi/android/tv/bean/History;->setPosition(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final D0(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/fongmi/android/tv/bean/Flag;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/Flag;->getEpisodes()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->g0()Lcom/fongmi/android/tv/bean/Flag;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Flag;->getEpisodes()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->K0(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->g0()Lcom/fongmi/android/tv/bean/Flag;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 45
    .line 46
    iget-object v2, v1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/fongmi/android/tv/bean/Episode;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/fongmi/android/tv/bean/Episode;-><init>()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v1}, Lcom/fongmi/android/tv/ui/adapter/q;->p()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/fongmi/android/tv/bean/Episode;

    .line 71
    .line 72
    :goto_1
    const/4 v2, 0x1

    .line 73
    invoke-virtual {v0, v2, v1}, Lcom/fongmi/android/tv/bean/Flag;->toggle(ZLcom/fongmi/android/tv/bean/Episode;)V

    .line 74
    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 79
    .line 80
    iget-object p1, p1, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/fongmi/android/tv/ui/adapter/q;->p()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public final E0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->D0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/History;->canSave()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance v0, LO3/u;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, p0, v1}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, LU3/u;->a(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final F0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 4
    .line 5
    iget-object v0, v0, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 12
    .line 13
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 14
    .line 15
    iget-object v0, v0, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/History;->getVodPic()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, LO3/p;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v1, p0, v2}, LO3/p;-><init>(LP3/b;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0, v1}, LU3/n;->c(LP3/b;Ljava/lang/String;LC3/b;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final G0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 4
    .line 5
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lw3/r;

    .line 8
    .line 9
    iget-object v0, v0, Lw3/r;->q:Landroid/view/View;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const v2, 0x7f03000f

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, LU3/f;->o(I)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v1, v1, LF3/f;->I:I

    .line 26
    .line 27
    aget-object v1, v2, v1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/v;->L()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 43
    .line 44
    iget-object v1, v0, LR3/o;->z0:Lw3/j;

    .line 45
    .line 46
    iget-object v1, v1, Lw3/j;->r:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v0, v0, LR3/o;->A0:Lw3/b;

    .line 49
    .line 50
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 51
    .line 52
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lw3/r;

    .line 55
    .line 56
    iget-object v0, v0, Lw3/r;->q:Landroid/view/View;

    .line 57
    .line 58
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/widget/d0;->getText()Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public final H0()V
    .locals 2

    .line 1
    const-string v0, "display_time"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, LR6/g;->r(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->y0:Z

    .line 9
    .line 10
    const-string v0, "display_speed"

    .line 11
    .line 12
    invoke-static {v0, v1}, LR6/g;->r(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->z0:Z

    .line 17
    .line 18
    const-string v0, "display_duration"

    .line 19
    .line 20
    invoke-static {v0, v1}, LR6/g;->r(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0:Z

    .line 25
    .line 26
    const-string v0, "display_mini_progress"

    .line 27
    .line 28
    invoke-static {v0, v1}, LR6/g;->r(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->B0:Z

    .line 33
    .line 34
    const-string v0, "display_video_title"

    .line 35
    .line 36
    invoke-static {v0, v1}, LR6/g;->r(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->C0:Z

    .line 41
    .line 42
    return-void
.end method

.method public final I0(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "collect"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const p1, 0x7f13008d

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 35
    .line 36
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 37
    .line 38
    iget-object v0, v0, Lw3/s;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 44
    .line 45
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 46
    .line 47
    iget-object v0, v0, Lw3/s;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->o0()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 56
    .line 57
    iget-object p1, p1, Lw3/b;->N:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 64
    .line 65
    iget-object p1, p1, Lw3/b;->E:Lcom/fongmi/android/tv/ui/custom/ProgressLayout;

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    invoke-virtual {p1, v0}, Lcom/fongmi/android/tv/ui/custom/ProgressLayout;->b(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 73
    .line 74
    iget-object p1, p1, Lw3/b;->B:Lcom/google/android/material/textview/MaterialTextView;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->u0:LO3/u;

    .line 84
    .line 85
    const-wide/16 v0, 0x2710

    .line 86
    .line 87
    invoke-static {p1, v0, v1}, Lcom/fongmi/android/tv/App;->b(Ljava/lang/Runnable;J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->a0(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method public final J0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/fongmi/android/tv/bean/History;->setEnding(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d1()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 10
    .line 11
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 12
    .line 13
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lw3/r;

    .line 16
    .line 17
    iget-object v0, v0, Lw3/r;->r:Landroid/view/View;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    cmp-long p1, p1, v1

    .line 24
    .line 25
    if-gtz p1, :cond_0

    .line 26
    .line 27
    const p1, 0x7f1301a8

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/fongmi/android/tv/bean/History;->getEnding()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {p1, v1, v2}, LF3/f;->v0(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final K0(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 4
    .line 5
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lw3/r;

    .line 8
    .line 9
    iget-object v0, v0, Lw3/r;->s:Landroid/view/View;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-ge v1, v4, :cond_0

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 30
    .line 31
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 32
    .line 33
    iget-object v0, v0, Lw3/n;->E:Landroid/view/View;

    .line 34
    .line 35
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v1, v4, :cond_1

    .line 42
    .line 43
    move v1, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v1, v2

    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 50
    .line 51
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 52
    .line 53
    iget-object v0, v0, Lw3/n;->H:Landroid/view/View;

    .line 54
    .line 55
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge v1, v4, :cond_2

    .line 62
    .line 63
    move v1, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v1, v2

    .line 66
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 70
    .line 71
    iget-object v0, v0, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    move v1, v3

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    move v1, v2

    .line 82
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 86
    .line 87
    iget-object v0, v0, Lw3/b;->J:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-ge v1, v4, :cond_4

    .line 94
    .line 95
    move v1, v3

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    move v1, v2

    .line 98
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 102
    .line 103
    iget-object v0, v0, Lw3/b;->A:Lcom/google/android/material/textview/MaterialTextView;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/4 v4, 0x3

    .line 110
    if-ge v1, v4, :cond_5

    .line 111
    .line 112
    move v2, v3

    .line 113
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 117
    .line 118
    iget-object v1, v0, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 123
    .line 124
    .line 125
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/recyclerview/widget/J;->d()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final L0(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, LU3/y;->g(LP3/b;)V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    sget-object p1, LU3/y;->a:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, LN6/h;

    .line 20
    .line 21
    invoke-direct {v1, v0}, LN6/h;-><init>(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x23

    .line 27
    .line 28
    if-lt v0, v2, :cond_1

    .line 29
    .line 30
    new-instance v0, LR/F0;

    .line 31
    .line 32
    invoke-direct {v0, p1, v1}, LR/E0;-><init>(Landroid/view/Window;LN6/h;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v2, 0x1e

    .line 37
    .line 38
    if-lt v0, v2, :cond_2

    .line 39
    .line 40
    new-instance v0, LR/E0;

    .line 41
    .line 42
    invoke-direct {v0, p1, v1}, LR/E0;-><init>(Landroid/view/Window;LN6/h;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/16 v2, 0x1a

    .line 47
    .line 48
    if-lt v0, v2, :cond_3

    .line 49
    .line 50
    new-instance v0, LR/D0;

    .line 51
    .line 52
    invoke-direct {v0, p1, v1}, LR/C0;-><init>(Landroid/view/Window;LN6/h;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, LR/C0;

    .line 57
    .line 58
    invoke-direct {v0, p1, v1}, LR/C0;-><init>(Landroid/view/Window;LN6/h;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    const/16 v1, 0x207

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/b;->D0(I)V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0x400

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method

.method public final M()Lq2/a;
    .locals 51

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const v2, 0x7f0d0027

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const v0, 0x7f0a0051

    .line 15
    .line 16
    .line 17
    invoke-static {v5, v0}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v6, v1

    .line 22
    check-cast v6, Lcom/google/android/material/textview/MaterialTextView;

    .line 23
    .line 24
    const-string v1, "Missing required view with ID: "

    .line 25
    .line 26
    if-eqz v6, :cond_f

    .line 27
    .line 28
    const v0, 0x7f0a00b4

    .line 29
    .line 30
    .line 31
    invoke-static {v5, v0}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v7, v2

    .line 36
    check-cast v7, Lcom/google/android/material/textview/MaterialTextView;

    .line 37
    .line 38
    if-eqz v7, :cond_f

    .line 39
    .line 40
    const v0, 0x7f0a00b6

    .line 41
    .line 42
    .line 43
    invoke-static {v5, v0}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v8, v2

    .line 48
    check-cast v8, Landroid/widget/LinearLayout;

    .line 49
    .line 50
    if-eqz v8, :cond_f

    .line 51
    .line 52
    const v0, 0x7f0a00b9

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v0}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_f

    .line 60
    .line 61
    const v0, 0x7f0a0036

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v0}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_e

    .line 69
    .line 70
    const v4, 0x7f0a0066

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    move-object v12, v9

    .line 78
    check-cast v12, Lcom/google/android/material/textview/MaterialTextView;

    .line 79
    .line 80
    if-eqz v12, :cond_d

    .line 81
    .line 82
    const v4, 0x7f0a00c5

    .line 83
    .line 84
    .line 85
    invoke-static {v3, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    move-object v13, v9

    .line 90
    check-cast v13, Lcom/google/android/material/textview/MaterialTextView;

    .line 91
    .line 92
    if-eqz v13, :cond_d

    .line 93
    .line 94
    const v9, 0x7f0a00cf

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    move-object v14, v10

    .line 102
    check-cast v14, Lcom/google/android/material/textview/MaterialTextView;

    .line 103
    .line 104
    if-eqz v14, :cond_c

    .line 105
    .line 106
    const v9, 0x7f0a010a

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    move-object v15, v10

    .line 114
    check-cast v15, Lcom/google/android/material/textview/MaterialTextView;

    .line 115
    .line 116
    if-eqz v15, :cond_c

    .line 117
    .line 118
    const v9, 0x7f0a0111

    .line 119
    .line 120
    .line 121
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    move-object/from16 v16, v10

    .line 126
    .line 127
    check-cast v16, Lcom/google/android/material/textview/MaterialTextView;

    .line 128
    .line 129
    if-eqz v16, :cond_c

    .line 130
    .line 131
    const v9, 0x7f0a01be

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    move-object/from16 v17, v10

    .line 139
    .line 140
    check-cast v17, Lcom/google/android/material/textview/MaterialTextView;

    .line 141
    .line 142
    if-eqz v17, :cond_c

    .line 143
    .line 144
    const v9, 0x7f0a023d

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    move-object/from16 v18, v10

    .line 152
    .line 153
    check-cast v18, Lcom/google/android/material/textview/MaterialTextView;

    .line 154
    .line 155
    if-eqz v18, :cond_c

    .line 156
    .line 157
    const v9, 0x7f0a025d

    .line 158
    .line 159
    .line 160
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    move-object/from16 v19, v10

    .line 165
    .line 166
    check-cast v19, Lcom/google/android/material/textview/MaterialTextView;

    .line 167
    .line 168
    if-eqz v19, :cond_c

    .line 169
    .line 170
    const v9, 0x7f0a0285

    .line 171
    .line 172
    .line 173
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    move-object/from16 v20, v10

    .line 178
    .line 179
    check-cast v20, Lcom/google/android/material/textview/MaterialTextView;

    .line 180
    .line 181
    if-eqz v20, :cond_c

    .line 182
    .line 183
    const v9, 0x7f0a0299

    .line 184
    .line 185
    .line 186
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    move-object/from16 v21, v10

    .line 191
    .line 192
    check-cast v21, Lcom/google/android/material/textview/MaterialTextView;

    .line 193
    .line 194
    if-eqz v21, :cond_c

    .line 195
    .line 196
    const v9, 0x7f0a02d8

    .line 197
    .line 198
    .line 199
    invoke-static {v3, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    move-object/from16 v22, v10

    .line 204
    .line 205
    check-cast v22, Lcom/google/android/material/textview/MaterialTextView;

    .line 206
    .line 207
    if-eqz v22, :cond_c

    .line 208
    .line 209
    const v10, 0x7f0a030b

    .line 210
    .line 211
    .line 212
    invoke-static {v3, v10}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    move-object/from16 v23, v11

    .line 217
    .line 218
    check-cast v23, Lcom/google/android/material/textview/MaterialTextView;

    .line 219
    .line 220
    if-eqz v23, :cond_b

    .line 221
    .line 222
    const v11, 0x7f0a0325

    .line 223
    .line 224
    .line 225
    invoke-static {v3, v11}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    move-object/from16 v24, v10

    .line 230
    .line 231
    check-cast v24, Lcom/google/android/material/textview/MaterialTextView;

    .line 232
    .line 233
    if-eqz v24, :cond_a

    .line 234
    .line 235
    const v10, 0x7f0a034c

    .line 236
    .line 237
    .line 238
    invoke-static {v3, v10}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v25

    .line 242
    check-cast v25, Lcom/google/android/material/textview/MaterialTextView;

    .line 243
    .line 244
    if-eqz v25, :cond_9

    .line 245
    .line 246
    new-instance v28, Lw3/r;

    .line 247
    .line 248
    check-cast v3, Landroid/widget/HorizontalScrollView;

    .line 249
    .line 250
    move v9, v10

    .line 251
    move-object/from16 v10, v28

    .line 252
    .line 253
    move v0, v11

    .line 254
    move-object v11, v3

    .line 255
    invoke-direct/range {v10 .. v25}, Lw3/r;-><init>(Landroid/widget/HorizontalScrollView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;)V

    .line 256
    .line 257
    .line 258
    const v3, 0x7f0a0072

    .line 259
    .line 260
    .line 261
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    move-object/from16 v29, v10

    .line 266
    .line 267
    check-cast v29, Landroidx/appcompat/widget/AppCompatImageView;

    .line 268
    .line 269
    if-eqz v29, :cond_8

    .line 270
    .line 271
    const v3, 0x7f0a0079

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    move-object/from16 v30, v10

    .line 279
    .line 280
    check-cast v30, Landroidx/appcompat/widget/AppCompatImageView;

    .line 281
    .line 282
    if-eqz v30, :cond_8

    .line 283
    .line 284
    const v3, 0x7f0a007a

    .line 285
    .line 286
    .line 287
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    move-object/from16 v31, v10

    .line 292
    .line 293
    check-cast v31, Landroid/widget/LinearLayout;

    .line 294
    .line 295
    if-eqz v31, :cond_8

    .line 296
    .line 297
    const v3, 0x7f0a0081

    .line 298
    .line 299
    .line 300
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    move-object/from16 v32, v10

    .line 305
    .line 306
    check-cast v32, Landroid/widget/LinearLayout;

    .line 307
    .line 308
    if-eqz v32, :cond_8

    .line 309
    .line 310
    const v3, 0x7f0a0095

    .line 311
    .line 312
    .line 313
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    move-object/from16 v33, v10

    .line 318
    .line 319
    check-cast v33, Landroidx/appcompat/widget/AppCompatImageView;

    .line 320
    .line 321
    if-eqz v33, :cond_8

    .line 322
    .line 323
    const v3, 0x7f0a0096

    .line 324
    .line 325
    .line 326
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    move-object/from16 v34, v10

    .line 331
    .line 332
    check-cast v34, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 333
    .line 334
    if-eqz v34, :cond_8

    .line 335
    .line 336
    const v3, 0x7f0a00c6

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    move-object/from16 v35, v10

    .line 344
    .line 345
    check-cast v35, Landroidx/appcompat/widget/AppCompatImageView;

    .line 346
    .line 347
    if-eqz v35, :cond_8

    .line 348
    .line 349
    const v3, 0x7f0a00c9

    .line 350
    .line 351
    .line 352
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    move-object/from16 v36, v10

    .line 357
    .line 358
    check-cast v36, Landroidx/appcompat/widget/AppCompatImageView;

    .line 359
    .line 360
    if-eqz v36, :cond_8

    .line 361
    .line 362
    const v3, 0x7f0a016b

    .line 363
    .line 364
    .line 365
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v10

    .line 369
    move-object/from16 v37, v10

    .line 370
    .line 371
    check-cast v37, Landroid/widget/ImageView;

    .line 372
    .line 373
    if-eqz v37, :cond_8

    .line 374
    .line 375
    const v3, 0x7f0a0199

    .line 376
    .line 377
    .line 378
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    move-object/from16 v38, v10

    .line 383
    .line 384
    check-cast v38, Landroidx/appcompat/widget/AppCompatImageView;

    .line 385
    .line 386
    if-eqz v38, :cond_8

    .line 387
    .line 388
    const v3, 0x7f0a01a4

    .line 389
    .line 390
    .line 391
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    move-object/from16 v39, v10

    .line 396
    .line 397
    check-cast v39, Landroidx/appcompat/widget/AppCompatImageView;

    .line 398
    .line 399
    if-eqz v39, :cond_8

    .line 400
    .line 401
    const v3, 0x7f0a021b

    .line 402
    .line 403
    .line 404
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    move-object/from16 v40, v10

    .line 409
    .line 410
    check-cast v40, Landroidx/appcompat/widget/AppCompatImageView;

    .line 411
    .line 412
    if-eqz v40, :cond_8

    .line 413
    .line 414
    const v3, 0x7f0a024a

    .line 415
    .line 416
    .line 417
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v10

    .line 421
    move-object/from16 v41, v10

    .line 422
    .line 423
    check-cast v41, Landroidx/recyclerview/widget/RecyclerView;

    .line 424
    .line 425
    if-eqz v41, :cond_8

    .line 426
    .line 427
    const v3, 0x7f0a0258

    .line 428
    .line 429
    .line 430
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    move-object/from16 v42, v10

    .line 435
    .line 436
    check-cast v42, Landroidx/appcompat/widget/AppCompatImageView;

    .line 437
    .line 438
    if-eqz v42, :cond_8

    .line 439
    .line 440
    const v3, 0x7f0a026a

    .line 441
    .line 442
    .line 443
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    move-object/from16 v43, v10

    .line 448
    .line 449
    check-cast v43, Landroidx/appcompat/widget/AppCompatImageView;

    .line 450
    .line 451
    if-eqz v43, :cond_8

    .line 452
    .line 453
    const v3, 0x7f0a028c

    .line 454
    .line 455
    .line 456
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 457
    .line 458
    .line 459
    move-result-object v10

    .line 460
    if-eqz v10, :cond_8

    .line 461
    .line 462
    invoke-static {v10}, LA/h;->h(Landroid/view/View;)LA/h;

    .line 463
    .line 464
    .line 465
    move-result-object v44

    .line 466
    const v3, 0x7f0a02b5

    .line 467
    .line 468
    .line 469
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    move-object/from16 v45, v10

    .line 474
    .line 475
    check-cast v45, Lcom/fongmi/android/tv/ui/custom/CustomSeekView;

    .line 476
    .line 477
    if-eqz v45, :cond_8

    .line 478
    .line 479
    const v10, 0x7f0a02bb

    .line 480
    .line 481
    .line 482
    invoke-static {v2, v10}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    move-object/from16 v46, v11

    .line 487
    .line 488
    check-cast v46, Landroidx/appcompat/widget/AppCompatImageView;

    .line 489
    .line 490
    if-eqz v46, :cond_7

    .line 491
    .line 492
    const v10, 0x7f0a02c6

    .line 493
    .line 494
    .line 495
    invoke-static {v2, v10}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 496
    .line 497
    .line 498
    move-result-object v11

    .line 499
    move-object/from16 v47, v11

    .line 500
    .line 501
    check-cast v47, Landroid/widget/TextView;

    .line 502
    .line 503
    if-eqz v47, :cond_7

    .line 504
    .line 505
    const v10, 0x7f0a031d

    .line 506
    .line 507
    .line 508
    invoke-static {v2, v10}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    move-object/from16 v48, v11

    .line 513
    .line 514
    check-cast v48, Landroid/widget/TextView;

    .line 515
    .line 516
    if-eqz v48, :cond_7

    .line 517
    .line 518
    invoke-static {v2, v0}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 519
    .line 520
    .line 521
    move-result-object v11

    .line 522
    move-object/from16 v49, v11

    .line 523
    .line 524
    check-cast v49, Landroid/widget/TextView;

    .line 525
    .line 526
    if-eqz v49, :cond_6

    .line 527
    .line 528
    const v0, 0x7f0a032b

    .line 529
    .line 530
    .line 531
    invoke-static {v2, v0}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 532
    .line 533
    .line 534
    move-result-object v11

    .line 535
    move-object/from16 v50, v11

    .line 536
    .line 537
    check-cast v50, Landroid/widget/LinearLayout;

    .line 538
    .line 539
    if-eqz v50, :cond_6

    .line 540
    .line 541
    new-instance v0, Lw3/n;

    .line 542
    .line 543
    move-object/from16 v26, v0

    .line 544
    .line 545
    move-object/from16 v27, v2

    .line 546
    .line 547
    check-cast v27, Landroid/widget/RelativeLayout;

    .line 548
    .line 549
    invoke-direct/range {v26 .. v50}, Lw3/n;-><init>(Landroid/widget/RelativeLayout;Lw3/r;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;LA/h;Lcom/fongmi/android/tv/ui/custom/CustomSeekView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 550
    .line 551
    .line 552
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    check-cast v2, Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 557
    .line 558
    if-eqz v2, :cond_5

    .line 559
    .line 560
    const v4, 0x7f0a00e1

    .line 561
    .line 562
    .line 563
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 564
    .line 565
    .line 566
    move-result-object v11

    .line 567
    check-cast v11, Lcom/google/android/material/textview/MaterialTextView;

    .line 568
    .line 569
    if-eqz v11, :cond_5

    .line 570
    .line 571
    const v4, 0x7f0a00e8

    .line 572
    .line 573
    .line 574
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 575
    .line 576
    .line 577
    move-result-object v12

    .line 578
    if-eqz v12, :cond_5

    .line 579
    .line 580
    invoke-static {v12}, Lcom/google/android/material/datepicker/c;->a(Landroid/view/View;)Lcom/google/android/material/datepicker/c;

    .line 581
    .line 582
    .line 583
    move-result-object v12

    .line 584
    const v4, 0x7f0a00ec

    .line 585
    .line 586
    .line 587
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 588
    .line 589
    .line 590
    move-result-object v13

    .line 591
    check-cast v13, Lcom/google/android/material/textview/MaterialTextView;

    .line 592
    .line 593
    if-eqz v13, :cond_5

    .line 594
    .line 595
    const v4, 0x7f0a0110

    .line 596
    .line 597
    .line 598
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 599
    .line 600
    .line 601
    move-result-object v14

    .line 602
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 603
    .line 604
    if-eqz v14, :cond_5

    .line 605
    .line 606
    const v4, 0x7f0a0115

    .line 607
    .line 608
    .line 609
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 610
    .line 611
    .line 612
    move-result-object v15

    .line 613
    check-cast v15, Landroidx/media3/ui/PlayerView;

    .line 614
    .line 615
    if-eqz v15, :cond_5

    .line 616
    .line 617
    const v4, 0x7f0a0160

    .line 618
    .line 619
    .line 620
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 621
    .line 622
    .line 623
    move-result-object v16

    .line 624
    check-cast v16, Landroidx/recyclerview/widget/RecyclerView;

    .line 625
    .line 626
    if-eqz v16, :cond_5

    .line 627
    .line 628
    const v4, 0x7f0a018e

    .line 629
    .line 630
    .line 631
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 632
    .line 633
    .line 634
    move-result-object v17

    .line 635
    check-cast v17, Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 636
    .line 637
    if-eqz v17, :cond_5

    .line 638
    .line 639
    const v4, 0x7f0a01c0

    .line 640
    .line 641
    .line 642
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 643
    .line 644
    .line 645
    move-result-object v18

    .line 646
    check-cast v18, Lcom/okjack/ktvlrc/LrcView;

    .line 647
    .line 648
    if-eqz v18, :cond_5

    .line 649
    .line 650
    const v4, 0x7f0a01eb

    .line 651
    .line 652
    .line 653
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 654
    .line 655
    .line 656
    move-result-object v19

    .line 657
    check-cast v19, Lcom/google/android/material/textview/MaterialTextView;

    .line 658
    .line 659
    if-eqz v19, :cond_5

    .line 660
    .line 661
    const v4, 0x7f0a0208

    .line 662
    .line 663
    .line 664
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 665
    .line 666
    .line 667
    move-result-object v20

    .line 668
    check-cast v20, Lcom/google/android/material/textview/MaterialTextView;

    .line 669
    .line 670
    if-eqz v20, :cond_5

    .line 671
    .line 672
    const v4, 0x7f0a023e

    .line 673
    .line 674
    .line 675
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 676
    .line 677
    .line 678
    move-result-object v21

    .line 679
    check-cast v21, Lcom/google/android/material/textview/MaterialTextView;

    .line 680
    .line 681
    if-eqz v21, :cond_5

    .line 682
    .line 683
    const v4, 0x7f0a026c

    .line 684
    .line 685
    .line 686
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 687
    .line 688
    .line 689
    move-result-object v22

    .line 690
    if-eqz v22, :cond_5

    .line 691
    .line 692
    invoke-static/range {v22 .. v22}, Lv3/a;->a(Landroid/view/View;)Lv3/a;

    .line 693
    .line 694
    .line 695
    move-result-object v22

    .line 696
    const v4, 0x7f0a026d

    .line 697
    .line 698
    .line 699
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 700
    .line 701
    .line 702
    move-result-object v23

    .line 703
    check-cast v23, Lcom/fongmi/android/tv/ui/custom/ProgressLayout;

    .line 704
    .line 705
    if-eqz v23, :cond_5

    .line 706
    .line 707
    const v4, 0x7f0a0274

    .line 708
    .line 709
    .line 710
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v24

    .line 714
    check-cast v24, Landroidx/recyclerview/widget/RecyclerView;

    .line 715
    .line 716
    if-eqz v24, :cond_5

    .line 717
    .line 718
    const v4, 0x7f0a0275

    .line 719
    .line 720
    .line 721
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 722
    .line 723
    .line 724
    move-result-object v25

    .line 725
    check-cast v25, Lcom/google/android/material/textview/MaterialTextView;

    .line 726
    .line 727
    if-eqz v25, :cond_5

    .line 728
    .line 729
    const v4, 0x7f0a0276

    .line 730
    .line 731
    .line 732
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 733
    .line 734
    .line 735
    move-result-object v26

    .line 736
    check-cast v26, Landroidx/recyclerview/widget/RecyclerView;

    .line 737
    .line 738
    if-eqz v26, :cond_5

    .line 739
    .line 740
    const v4, 0x7f0a027f

    .line 741
    .line 742
    .line 743
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 744
    .line 745
    .line 746
    move-result-object v27

    .line 747
    check-cast v27, Lcom/google/android/material/textview/MaterialTextView;

    .line 748
    .line 749
    if-eqz v27, :cond_5

    .line 750
    .line 751
    const v4, 0x7f0a028a

    .line 752
    .line 753
    .line 754
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 755
    .line 756
    .line 757
    move-result-object v28

    .line 758
    check-cast v28, Landroid/widget/ImageView;

    .line 759
    .line 760
    if-eqz v28, :cond_5

    .line 761
    .line 762
    const v4, 0x7f0a02a3

    .line 763
    .line 764
    .line 765
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 766
    .line 767
    .line 768
    move-result-object v29

    .line 769
    check-cast v29, Landroidx/core/widget/NestedScrollView;

    .line 770
    .line 771
    if-eqz v29, :cond_5

    .line 772
    .line 773
    const v4, 0x7f0a02c3

    .line 774
    .line 775
    .line 776
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 777
    .line 778
    .line 779
    move-result-object v30

    .line 780
    check-cast v30, Lcom/google/android/material/textview/MaterialTextView;

    .line 781
    .line 782
    if-eqz v30, :cond_5

    .line 783
    .line 784
    const v4, 0x7f0a02ee

    .line 785
    .line 786
    .line 787
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 788
    .line 789
    .line 790
    move-result-object v31

    .line 791
    if-eqz v31, :cond_5

    .line 792
    .line 793
    const v4, 0x7f0a02f7

    .line 794
    .line 795
    .line 796
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 797
    .line 798
    .line 799
    move-result-object v32

    .line 800
    check-cast v32, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 801
    .line 802
    if-eqz v32, :cond_5

    .line 803
    .line 804
    invoke-static {v5, v9}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    move-object/from16 v33, v4

    .line 809
    .line 810
    check-cast v33, Landroid/widget/FrameLayout;

    .line 811
    .line 812
    if-eqz v33, :cond_4

    .line 813
    .line 814
    const v4, 0x7f0a0368

    .line 815
    .line 816
    .line 817
    invoke-static {v5, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 818
    .line 819
    .line 820
    move-result-object v9

    .line 821
    if-eqz v9, :cond_3

    .line 822
    .line 823
    const v4, 0x7f0a0036

    .line 824
    .line 825
    .line 826
    invoke-static {v9, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 827
    .line 828
    .line 829
    move-result-object v34

    .line 830
    move-object/from16 v37, v34

    .line 831
    .line 832
    check-cast v37, Landroidx/appcompat/widget/AppCompatImageView;

    .line 833
    .line 834
    if-eqz v37, :cond_2

    .line 835
    .line 836
    const v4, 0x7f0a0086

    .line 837
    .line 838
    .line 839
    invoke-static {v9, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 840
    .line 841
    .line 842
    move-result-object v34

    .line 843
    move-object/from16 v38, v34

    .line 844
    .line 845
    check-cast v38, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 846
    .line 847
    if-eqz v38, :cond_2

    .line 848
    .line 849
    const v4, 0x7f0a0087

    .line 850
    .line 851
    .line 852
    invoke-static {v9, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 853
    .line 854
    .line 855
    move-result-object v34

    .line 856
    move-object/from16 v39, v34

    .line 857
    .line 858
    check-cast v39, Landroidx/appcompat/widget/AppCompatImageView;

    .line 859
    .line 860
    if-eqz v39, :cond_2

    .line 861
    .line 862
    const v4, 0x7f0a0088

    .line 863
    .line 864
    .line 865
    invoke-static {v9, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 866
    .line 867
    .line 868
    move-result-object v34

    .line 869
    move-object/from16 v40, v34

    .line 870
    .line 871
    check-cast v40, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 872
    .line 873
    if-eqz v40, :cond_2

    .line 874
    .line 875
    const v4, 0x7f0a0112

    .line 876
    .line 877
    .line 878
    invoke-static {v9, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 879
    .line 880
    .line 881
    move-result-object v34

    .line 882
    move-object/from16 v41, v34

    .line 883
    .line 884
    check-cast v41, Lcom/google/android/material/textview/MaterialTextView;

    .line 885
    .line 886
    if-eqz v41, :cond_2

    .line 887
    .line 888
    const v4, 0x7f0a026b

    .line 889
    .line 890
    .line 891
    invoke-static {v9, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 892
    .line 893
    .line 894
    move-result-object v34

    .line 895
    move-object/from16 v42, v34

    .line 896
    .line 897
    check-cast v42, Landroidx/appcompat/widget/AppCompatImageView;

    .line 898
    .line 899
    if-eqz v42, :cond_2

    .line 900
    .line 901
    invoke-static {v9, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    move-object/from16 v43, v4

    .line 906
    .line 907
    check-cast v43, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 908
    .line 909
    if-eqz v43, :cond_0

    .line 910
    .line 911
    const v4, 0x7f0a02d8

    .line 912
    .line 913
    .line 914
    invoke-static {v9, v4}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    move-object/from16 v44, v3

    .line 919
    .line 920
    check-cast v44, Landroidx/appcompat/widget/AppCompatImageView;

    .line 921
    .line 922
    if-eqz v44, :cond_2

    .line 923
    .line 924
    invoke-static {v9, v10}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    move-object/from16 v45, v3

    .line 929
    .line 930
    check-cast v45, Lcom/google/android/material/textview/MaterialTextView;

    .line 931
    .line 932
    if-eqz v45, :cond_1

    .line 933
    .line 934
    const v3, 0x7f0a035e

    .line 935
    .line 936
    .line 937
    invoke-static {v9, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    move-object/from16 v46, v4

    .line 942
    .line 943
    check-cast v46, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 944
    .line 945
    if-eqz v46, :cond_0

    .line 946
    .line 947
    const v3, 0x7f0a035f

    .line 948
    .line 949
    .line 950
    invoke-static {v9, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 951
    .line 952
    .line 953
    move-result-object v4

    .line 954
    move-object/from16 v47, v4

    .line 955
    .line 956
    check-cast v47, Landroidx/appcompat/widget/AppCompatImageView;

    .line 957
    .line 958
    if-eqz v47, :cond_0

    .line 959
    .line 960
    const v3, 0x7f0a0360

    .line 961
    .line 962
    .line 963
    invoke-static {v9, v3}, Landroidx/media3/session/legacy/b;->T(Landroid/view/View;I)Landroid/view/View;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    move-object/from16 v48, v4

    .line 968
    .line 969
    check-cast v48, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 970
    .line 971
    if-eqz v48, :cond_0

    .line 972
    .line 973
    new-instance v34, Lw3/s;

    .line 974
    .line 975
    move-object/from16 v36, v9

    .line 976
    .line 977
    check-cast v36, Landroid/widget/FrameLayout;

    .line 978
    .line 979
    move-object/from16 v35, v34

    .line 980
    .line 981
    invoke-direct/range {v35 .. v48}, Lw3/s;-><init>(Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/textview/MaterialTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    .line 982
    .line 983
    .line 984
    new-instance v1, Lw3/b;

    .line 985
    .line 986
    move-object v4, v1

    .line 987
    move-object v9, v0

    .line 988
    move-object v10, v2

    .line 989
    invoke-direct/range {v4 .. v34}, Lw3/b;-><init>(Landroid/view/View;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/LinearLayout;Lw3/n;Lmaster/flame/danmaku/ui/widget/DanmakuView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/datepicker/c;Lcom/google/android/material/textview/MaterialTextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/media3/ui/PlayerView;Landroidx/recyclerview/widget/RecyclerView;Ltv/danmaku/ijk/media/player/ui/IjkVideoView;Lcom/okjack/ktvlrc/LrcView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textview/MaterialTextView;Lv3/a;Lcom/fongmi/android/tv/ui/custom/ProgressLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/textview/MaterialTextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/textview/MaterialTextView;Landroid/view/View;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/FrameLayout;Lw3/s;)V

    .line 990
    .line 991
    .line 992
    move-object/from16 v6, p0

    .line 993
    .line 994
    iput-object v1, v6, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 995
    .line 996
    return-object v1

    .line 997
    :cond_0
    move-object/from16 v6, p0

    .line 998
    .line 999
    move v0, v3

    .line 1000
    goto :goto_0

    .line 1001
    :cond_1
    move-object/from16 v6, p0

    .line 1002
    .line 1003
    move v0, v10

    .line 1004
    goto :goto_0

    .line 1005
    :cond_2
    move-object/from16 v6, p0

    .line 1006
    .line 1007
    move v0, v4

    .line 1008
    :goto_0
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1017
    .line 1018
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    throw v2

    .line 1026
    :cond_3
    move-object/from16 v6, p0

    .line 1027
    .line 1028
    const v0, 0x7f0a0368

    .line 1029
    .line 1030
    .line 1031
    goto/16 :goto_4

    .line 1032
    .line 1033
    :cond_4
    move-object/from16 v6, p0

    .line 1034
    .line 1035
    move v0, v9

    .line 1036
    goto :goto_4

    .line 1037
    :cond_5
    move-object/from16 v6, p0

    .line 1038
    .line 1039
    move v0, v4

    .line 1040
    goto :goto_4

    .line 1041
    :cond_6
    move-object/from16 v6, p0

    .line 1042
    .line 1043
    goto :goto_3

    .line 1044
    :cond_7
    move-object/from16 v6, p0

    .line 1045
    .line 1046
    move v0, v10

    .line 1047
    goto :goto_3

    .line 1048
    :cond_8
    move-object/from16 v6, p0

    .line 1049
    .line 1050
    move v0, v3

    .line 1051
    goto :goto_3

    .line 1052
    :cond_9
    move-object/from16 v6, p0

    .line 1053
    .line 1054
    move v9, v10

    .line 1055
    :goto_1
    move v4, v9

    .line 1056
    goto :goto_2

    .line 1057
    :cond_a
    move-object/from16 v6, p0

    .line 1058
    .line 1059
    move v0, v11

    .line 1060
    move v4, v0

    .line 1061
    goto :goto_2

    .line 1062
    :cond_b
    move-object/from16 v6, p0

    .line 1063
    .line 1064
    move v4, v10

    .line 1065
    goto :goto_2

    .line 1066
    :cond_c
    move-object/from16 v6, p0

    .line 1067
    .line 1068
    goto :goto_1

    .line 1069
    :cond_d
    move-object/from16 v6, p0

    .line 1070
    .line 1071
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1080
    .line 1081
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    throw v2

    .line 1089
    :cond_e
    move-object/from16 v6, p0

    .line 1090
    .line 1091
    move v4, v0

    .line 1092
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1101
    .line 1102
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    throw v2

    .line 1110
    :cond_f
    move-object/from16 v6, p0

    .line 1111
    .line 1112
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v2

    .line 1116
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v0

    .line 1120
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1121
    .line 1122
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    throw v2
.end method

.method public final M0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/History;->getVodName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/fongmi/android/tv/bean/Episode;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/fongmi/android/tv/bean/Episode;-><init>()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/fongmi/android/tv/bean/Episode;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/fongmi/android/tv/bean/Episode;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v1}, Lcom/fongmi/android/tv/ui/adapter/q;->p()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/fongmi/android/tv/bean/Episode;

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/Episode;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    :cond_2
    const-string v1, ""

    .line 70
    .line 71
    :cond_3
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/fongmi/android/tv/bean/History;->getVodPic()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v0, v1, v3}, LF3/f;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 4
    .line 5
    iget-object v0, v0, Lw3/n;->J:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/fongmi/android/tv/ui/custom/CustomSeekView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/fongmi/android/tv/ui/custom/CustomSeekView;->setPlayer(LF3/f;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 15
    .line 16
    iget-object v0, v0, Lw3/b;->B:Lcom/google/android/material/textview/MaterialTextView;

    .line 17
    .line 18
    new-instance v1, LO3/q;

    .line 19
    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 29
    .line 30
    iget-object v0, v0, Lw3/b;->A:Lcom/google/android/material/textview/MaterialTextView;

    .line 31
    .line 32
    new-instance v1, LO3/q;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 42
    .line 43
    iget-object v0, v0, Lw3/b;->n:Lcom/google/android/material/textview/MaterialTextView;

    .line 44
    .line 45
    new-instance v1, LO3/q;

    .line 46
    .line 47
    const/16 v2, 0xb

    .line 48
    .line 49
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 56
    .line 57
    iget-object v0, v0, Lw3/b;->o:Lcom/google/android/material/textview/MaterialTextView;

    .line 58
    .line 59
    new-instance v1, LO3/q;

    .line 60
    .line 61
    const/16 v2, 0x14

    .line 62
    .line 63
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 70
    .line 71
    iget-object v0, v0, Lw3/b;->J:Landroid/widget/ImageView;

    .line 72
    .line 73
    new-instance v1, LO3/q;

    .line 74
    .line 75
    const/16 v2, 0x17

    .line 76
    .line 77
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 84
    .line 85
    iget-object v0, v0, Lw3/b;->s:Lcom/google/android/material/textview/MaterialTextView;

    .line 86
    .line 87
    new-instance v1, LO3/q;

    .line 88
    .line 89
    const/16 v2, 0x18

    .line 90
    .line 91
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 98
    .line 99
    iget-object v0, v0, Lw3/b;->u:Lcom/google/android/material/textview/MaterialTextView;

    .line 100
    .line 101
    new-instance v1, LO3/q;

    .line 102
    .line 103
    const/16 v2, 0x19

    .line 104
    .line 105
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 112
    .line 113
    iget-object v0, v0, Lw3/b;->B:Lcom/google/android/material/textview/MaterialTextView;

    .line 114
    .line 115
    new-instance v1, LO3/r;

    .line 116
    .line 117
    const/4 v2, 0x7

    .line 118
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 125
    .line 126
    iget-object v0, v0, Lw3/b;->o:Lcom/google/android/material/textview/MaterialTextView;

    .line 127
    .line 128
    new-instance v1, LO3/r;

    .line 129
    .line 130
    const/16 v2, 0x8

    .line 131
    .line 132
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 139
    .line 140
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 141
    .line 142
    iget-object v0, v0, Lw3/n;->v:Landroid/view/View;

    .line 143
    .line 144
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 145
    .line 146
    new-instance v1, LO3/q;

    .line 147
    .line 148
    const/16 v2, 0x1a

    .line 149
    .line 150
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 157
    .line 158
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 159
    .line 160
    iget-object v0, v0, Lw3/n;->x:Landroid/view/View;

    .line 161
    .line 162
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 163
    .line 164
    new-instance v1, LO3/q;

    .line 165
    .line 166
    const/16 v2, 0x13

    .line 167
    .line 168
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 175
    .line 176
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 177
    .line 178
    iget-object v0, v0, Lw3/n;->C:Landroid/view/View;

    .line 179
    .line 180
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 181
    .line 182
    new-instance v1, LO3/q;

    .line 183
    .line 184
    const/16 v2, 0x16

    .line 185
    .line 186
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 193
    .line 194
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 195
    .line 196
    iget-object v0, v0, Lw3/n;->B:Landroid/view/View;

    .line 197
    .line 198
    check-cast v0, Landroid/widget/ImageView;

    .line 199
    .line 200
    new-instance v1, LO3/q;

    .line 201
    .line 202
    const/16 v2, 0x1b

    .line 203
    .line 204
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 211
    .line 212
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 213
    .line 214
    iget-object v0, v0, Lw3/n;->D:Landroid/view/View;

    .line 215
    .line 216
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 217
    .line 218
    new-instance v1, LO3/q;

    .line 219
    .line 220
    const/16 v2, 0x1c

    .line 221
    .line 222
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 229
    .line 230
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 231
    .line 232
    iget-object v0, v0, Lw3/n;->z:Landroid/view/View;

    .line 233
    .line 234
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 235
    .line 236
    new-instance v1, LO3/q;

    .line 237
    .line 238
    const/16 v2, 0x1d

    .line 239
    .line 240
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 247
    .line 248
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 249
    .line 250
    iget-object v0, v0, Lw3/n;->A:Landroid/view/View;

    .line 251
    .line 252
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 253
    .line 254
    new-instance v1, LO3/x;

    .line 255
    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-direct {v1, p0, v2}, LO3/x;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 264
    .line 265
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 266
    .line 267
    iget-object v0, v0, Lw3/n;->G:Landroid/view/View;

    .line 268
    .line 269
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 270
    .line 271
    new-instance v1, LO3/x;

    .line 272
    .line 273
    const/4 v2, 0x1

    .line 274
    invoke-direct {v1, p0, v2}, LO3/x;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 281
    .line 282
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 283
    .line 284
    iget-object v0, v0, Lw3/n;->E:Landroid/view/View;

    .line 285
    .line 286
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 287
    .line 288
    new-instance v1, LO3/x;

    .line 289
    .line 290
    const/4 v2, 0x2

    .line 291
    invoke-direct {v1, p0, v2}, LO3/x;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    .line 296
    .line 297
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 298
    .line 299
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 300
    .line 301
    iget-object v0, v0, Lw3/n;->H:Landroid/view/View;

    .line 302
    .line 303
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 304
    .line 305
    new-instance v1, LO3/q;

    .line 306
    .line 307
    const/4 v2, 0x0

    .line 308
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 315
    .line 316
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 317
    .line 318
    iget-object v0, v0, Lw3/n;->K:Landroid/view/View;

    .line 319
    .line 320
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 321
    .line 322
    new-instance v1, LO3/q;

    .line 323
    .line 324
    const/4 v2, 0x1

    .line 325
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 332
    .line 333
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 334
    .line 335
    iget-object v0, v0, Lw3/n;->r:Landroid/widget/TextView;

    .line 336
    .line 337
    new-instance v1, LO3/r;

    .line 338
    .line 339
    const/4 v2, 0x0

    .line 340
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 347
    .line 348
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 349
    .line 350
    iget-object v0, v0, Lw3/n;->I:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v0, LA/h;

    .line 353
    .line 354
    iget-object v0, v0, LA/h;->o:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 357
    .line 358
    new-instance v1, LO3/q;

    .line 359
    .line 360
    const/4 v2, 0x3

    .line 361
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 368
    .line 369
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 370
    .line 371
    iget-object v0, v0, Lw3/n;->I:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v0, LA/h;

    .line 374
    .line 375
    iget-object v0, v0, LA/h;->q:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 378
    .line 379
    new-instance v1, LO3/q;

    .line 380
    .line 381
    const/4 v2, 0x4

    .line 382
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 389
    .line 390
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 391
    .line 392
    iget-object v0, v0, Lw3/n;->I:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v0, LA/h;

    .line 395
    .line 396
    iget-object v0, v0, LA/h;->p:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 399
    .line 400
    new-instance v1, LO3/q;

    .line 401
    .line 402
    const/4 v2, 0x5

    .line 403
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    .line 408
    .line 409
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 410
    .line 411
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 412
    .line 413
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v0, Lw3/r;

    .line 416
    .line 417
    iget-object v0, v0, Lw3/r;->z:Landroid/view/View;

    .line 418
    .line 419
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 420
    .line 421
    new-instance v1, LO3/q;

    .line 422
    .line 423
    const/4 v2, 0x6

    .line 424
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 431
    .line 432
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 433
    .line 434
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v0, Lw3/r;

    .line 437
    .line 438
    iget-object v0, v0, Lw3/r;->o:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 441
    .line 442
    new-instance v1, LO3/q;

    .line 443
    .line 444
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 451
    .line 452
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 453
    .line 454
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v0, Lw3/r;

    .line 457
    .line 458
    iget-object v0, v0, Lw3/r;->B:Landroid/widget/TextView;

    .line 459
    .line 460
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 461
    .line 462
    new-instance v1, LO3/q;

    .line 463
    .line 464
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 471
    .line 472
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 473
    .line 474
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v0, Lw3/r;

    .line 477
    .line 478
    iget-object v0, v0, Lw3/r;->t:Landroid/view/View;

    .line 479
    .line 480
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 481
    .line 482
    new-instance v1, LO3/q;

    .line 483
    .line 484
    const/4 v2, 0x7

    .line 485
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    .line 490
    .line 491
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 492
    .line 493
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 494
    .line 495
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v0, Lw3/r;

    .line 498
    .line 499
    iget-object v0, v0, Lw3/r;->x:Landroid/view/View;

    .line 500
    .line 501
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 502
    .line 503
    new-instance v1, LO3/q;

    .line 504
    .line 505
    const/16 v2, 0x8

    .line 506
    .line 507
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    .line 512
    .line 513
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 514
    .line 515
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 516
    .line 517
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v0, Lw3/r;

    .line 520
    .line 521
    iget-object v0, v0, Lw3/r;->y:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 524
    .line 525
    new-instance v1, LO3/q;

    .line 526
    .line 527
    const/16 v2, 0xa

    .line 528
    .line 529
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    .line 534
    .line 535
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 536
    .line 537
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 538
    .line 539
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast v0, Lw3/r;

    .line 542
    .line 543
    iget-object v0, v0, Lw3/r;->w:Landroid/view/View;

    .line 544
    .line 545
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 546
    .line 547
    new-instance v1, LO3/q;

    .line 548
    .line 549
    const/16 v2, 0xc

    .line 550
    .line 551
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    .line 556
    .line 557
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 558
    .line 559
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 560
    .line 561
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v0, Lw3/r;

    .line 564
    .line 565
    iget-object v0, v0, Lw3/r;->A:Landroid/widget/TextView;

    .line 566
    .line 567
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 568
    .line 569
    new-instance v1, LO3/q;

    .line 570
    .line 571
    const/16 v2, 0xd

    .line 572
    .line 573
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    .line 578
    .line 579
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 580
    .line 581
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 582
    .line 583
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v0, Lw3/r;

    .line 586
    .line 587
    iget-object v0, v0, Lw3/r;->v:Landroid/view/View;

    .line 588
    .line 589
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 590
    .line 591
    new-instance v1, LO3/q;

    .line 592
    .line 593
    const/16 v2, 0xe

    .line 594
    .line 595
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    .line 600
    .line 601
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 602
    .line 603
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 604
    .line 605
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v0, Lw3/r;

    .line 608
    .line 609
    iget-object v0, v0, Lw3/r;->q:Landroid/view/View;

    .line 610
    .line 611
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 612
    .line 613
    new-instance v1, LO3/q;

    .line 614
    .line 615
    const/16 v2, 0xf

    .line 616
    .line 617
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    .line 622
    .line 623
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 624
    .line 625
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 626
    .line 627
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast v0, Lw3/r;

    .line 630
    .line 631
    iget-object v0, v0, Lw3/r;->r:Landroid/view/View;

    .line 632
    .line 633
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 634
    .line 635
    new-instance v1, LO3/q;

    .line 636
    .line 637
    const/16 v2, 0x10

    .line 638
    .line 639
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    .line 644
    .line 645
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 646
    .line 647
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 648
    .line 649
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast v0, Lw3/r;

    .line 652
    .line 653
    iget-object v0, v0, Lw3/r;->u:Landroid/view/View;

    .line 654
    .line 655
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 656
    .line 657
    new-instance v1, LO3/q;

    .line 658
    .line 659
    const/16 v2, 0x11

    .line 660
    .line 661
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    .line 666
    .line 667
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 668
    .line 669
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 670
    .line 671
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 672
    .line 673
    check-cast v0, Lw3/r;

    .line 674
    .line 675
    iget-object v0, v0, Lw3/r;->s:Landroid/view/View;

    .line 676
    .line 677
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 678
    .line 679
    new-instance v1, LO3/q;

    .line 680
    .line 681
    const/16 v2, 0x12

    .line 682
    .line 683
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    .line 688
    .line 689
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 690
    .line 691
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 692
    .line 693
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v0, Lw3/r;

    .line 696
    .line 697
    iget-object v0, v0, Lw3/r;->z:Landroid/view/View;

    .line 698
    .line 699
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 700
    .line 701
    new-instance v1, LO3/r;

    .line 702
    .line 703
    const/4 v2, 0x1

    .line 704
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 708
    .line 709
    .line 710
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 711
    .line 712
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 713
    .line 714
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 715
    .line 716
    check-cast v0, Lw3/r;

    .line 717
    .line 718
    iget-object v0, v0, Lw3/r;->v:Landroid/view/View;

    .line 719
    .line 720
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 721
    .line 722
    new-instance v1, LO3/r;

    .line 723
    .line 724
    const/4 v2, 0x2

    .line 725
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 729
    .line 730
    .line 731
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 732
    .line 733
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 734
    .line 735
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 736
    .line 737
    check-cast v0, Lw3/r;

    .line 738
    .line 739
    iget-object v0, v0, Lw3/r;->y:Ljava/lang/Object;

    .line 740
    .line 741
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 742
    .line 743
    new-instance v1, LO3/r;

    .line 744
    .line 745
    const/4 v2, 0x3

    .line 746
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 750
    .line 751
    .line 752
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 753
    .line 754
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 755
    .line 756
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast v0, Lw3/r;

    .line 759
    .line 760
    iget-object v0, v0, Lw3/r;->w:Landroid/view/View;

    .line 761
    .line 762
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 763
    .line 764
    new-instance v1, LO3/r;

    .line 765
    .line 766
    const/4 v2, 0x4

    .line 767
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 771
    .line 772
    .line 773
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 774
    .line 775
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 776
    .line 777
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v0, Lw3/r;

    .line 780
    .line 781
    iget-object v0, v0, Lw3/r;->r:Landroid/view/View;

    .line 782
    .line 783
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 784
    .line 785
    new-instance v1, LO3/r;

    .line 786
    .line 787
    const/4 v2, 0x5

    .line 788
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 792
    .line 793
    .line 794
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 795
    .line 796
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 797
    .line 798
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v0, Lw3/r;

    .line 801
    .line 802
    iget-object v0, v0, Lw3/r;->u:Landroid/view/View;

    .line 803
    .line 804
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 805
    .line 806
    new-instance v1, LO3/r;

    .line 807
    .line 808
    const/4 v2, 0x6

    .line 809
    invoke-direct {v1, p0, v2}, LO3/r;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 813
    .line 814
    .line 815
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 816
    .line 817
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 818
    .line 819
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 820
    .line 821
    check-cast v0, Lw3/r;

    .line 822
    .line 823
    iget-object v0, v0, Lw3/r;->p:Landroid/view/View;

    .line 824
    .line 825
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 826
    .line 827
    new-instance v1, LO3/q;

    .line 828
    .line 829
    const/16 v2, 0x15

    .line 830
    .line 831
    invoke-direct {v1, p0, v2}, LO3/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    .line 836
    .line 837
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 838
    .line 839
    iget-object v0, v0, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 840
    .line 841
    new-instance v1, LO3/s;

    .line 842
    .line 843
    const/4 v2, 0x0

    .line 844
    invoke-direct {v1, p0, v2}, LO3/s;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 848
    .line 849
    .line 850
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 851
    .line 852
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 853
    .line 854
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 855
    .line 856
    check-cast v0, Lw3/r;

    .line 857
    .line 858
    iget-object v0, v0, Lw3/r;->n:Landroid/view/ViewGroup;

    .line 859
    .line 860
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 861
    .line 862
    new-instance v1, LO3/s;

    .line 863
    .line 864
    const/4 v2, 0x1

    .line 865
    invoke-direct {v1, p0, v2}, LO3/s;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 869
    .line 870
    .line 871
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 872
    .line 873
    iget-object v0, v0, Lw3/b;->N:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 874
    .line 875
    new-instance v1, LO3/t;

    .line 876
    .line 877
    const/4 v2, 0x0

    .line 878
    invoke-direct {v1, p0, v2}, LO3/t;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/j;)V

    .line 882
    .line 883
    .line 884
    return-void
.end method

.method public final N0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/fongmi/android/tv/bean/History;->setOpening(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d1()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 10
    .line 11
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 12
    .line 13
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lw3/r;

    .line 16
    .line 17
    iget-object v0, v0, Lw3/r;->u:Landroid/view/View;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    cmp-long p1, p1, v1

    .line 24
    .line 25
    if-gtz p1, :cond_0

    .line 26
    .line 27
    const p1, 0x7f1301b2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/fongmi/android/tv/bean/History;->getOpening()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {p1, v1, v2}, LF3/f;->v0(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final O(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/4 p1, 0x7

    .line 2
    const/4 v0, 0x6

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    iget-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 9
    .line 10
    iget-object v6, v6, Lw3/b;->i:Landroid/view/View;

    .line 11
    .line 12
    new-instance v7, LO3/t;

    .line 13
    .line 14
    invoke-direct {v7, p0, v5}, LO3/t;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 15
    .line 16
    .line 17
    sget-object v8, LR/V;->a:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-static {v6, v7}, LR/L;->k(Landroid/view/View;LR/s;)V

    .line 20
    .line 21
    .line 22
    iget-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 23
    .line 24
    iget-object v6, v6, Lw3/b;->N:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 25
    .line 26
    const v7, 0x7f060019

    .line 27
    .line 28
    .line 29
    filled-new-array {v7}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 34
    .line 35
    .line 36
    iget-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 37
    .line 38
    iget-object v6, v6, Lw3/b;->w:Landroidx/media3/ui/PlayerView;

    .line 39
    .line 40
    new-instance v7, LQ3/d;

    .line 41
    .line 42
    invoke-direct {v7, p0, v6}, LQ3/d;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    iput-object v7, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X:LQ3/d;

    .line 46
    .line 47
    iget-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 48
    .line 49
    iget-object v6, v6, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iput-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->N:Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    iget-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 58
    .line 59
    iget-object v6, v6, Lw3/b;->E:Lcom/fongmi/android/tv/ui/custom/ProgressLayout;

    .line 60
    .line 61
    invoke-virtual {v6, v3}, Lcom/fongmi/android/tv/ui/custom/ProgressLayout;->b(I)V

    .line 62
    .line 63
    .line 64
    iget-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 65
    .line 66
    iget-object v6, v6, Lw3/b;->N:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 67
    .line 68
    invoke-virtual {v6, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 69
    .line 70
    .line 71
    new-instance v6, LO3/t;

    .line 72
    .line 73
    invoke-direct {v6, p0, v3}, LO3/t;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 74
    .line 75
    .line 76
    iput-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->O:LO3/t;

    .line 77
    .line 78
    new-instance v6, LO3/t;

    .line 79
    .line 80
    const/4 v7, 0x3

    .line 81
    invoke-direct {v6, p0, v7}, LO3/t;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 82
    .line 83
    .line 84
    iput-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->P:LO3/t;

    .line 85
    .line 86
    new-instance v6, LO3/t;

    .line 87
    .line 88
    invoke-direct {v6, p0, v2}, LO3/t;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 89
    .line 90
    .line 91
    iput-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->R:LO3/t;

    .line 92
    .line 93
    new-instance v6, LO3/t;

    .line 94
    .line 95
    invoke-direct {v6, p0, v1}, LO3/t;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 96
    .line 97
    .line 98
    iput-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Q:LO3/t;

    .line 99
    .line 100
    new-instance v6, LF3/f;

    .line 101
    .line 102
    invoke-direct {v6, p0}, LF3/f;-><init>(LP3/b;)V

    .line 103
    .line 104
    .line 105
    sget-object v7, LL3/b;->a:LL3/c;

    .line 106
    .line 107
    iput-object v6, v7, LL3/c;->a:LF3/f;

    .line 108
    .line 109
    iput-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 110
    .line 111
    new-instance v6, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->a0:Ljava/util/ArrayList;

    .line 117
    .line 118
    iget-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 119
    .line 120
    iget-object v7, v6, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 121
    .line 122
    iget-object v7, v7, Lcom/google/android/material/datepicker/c;->n:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v7, Landroid/widget/TextView;

    .line 125
    .line 126
    iget-object v6, v6, Lw3/b;->q:Lw3/n;

    .line 127
    .line 128
    iget-object v6, v6, Lw3/n;->q:Landroid/widget/TextView;

    .line 129
    .line 130
    new-array v3, v3, [Landroid/widget/TextView;

    .line 131
    .line 132
    aput-object v7, v3, v4

    .line 133
    .line 134
    aput-object v6, v3, v5

    .line 135
    .line 136
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    new-instance v6, LA/h;

    .line 141
    .line 142
    const/16 v7, 0xb

    .line 143
    .line 144
    invoke-direct {v6, v7}, LA/h;-><init>(I)V

    .line 145
    .line 146
    .line 147
    iput-object v3, v6, LA/h;->p:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    const-string v7, "HH:mm:ss"

    .line 154
    .line 155
    invoke-static {v7, v3}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iput-object v3, v6, LA/h;->n:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0:LA/h;

    .line 162
    .line 163
    new-instance v3, LO3/u;

    .line 164
    .line 165
    invoke-direct {v3, p0, v2}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 166
    .line 167
    .line 168
    iput-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0:LO3/u;

    .line 169
    .line 170
    new-instance v2, LO3/u;

    .line 171
    .line 172
    invoke-direct {v2, p0, v1}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 173
    .line 174
    .line 175
    iput-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0:LO3/u;

    .line 176
    .line 177
    new-instance v1, LO3/u;

    .line 178
    .line 179
    invoke-direct {v1, p0, v0}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 180
    .line 181
    .line 182
    iput-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->t0:LO3/u;

    .line 183
    .line 184
    new-instance v1, LO3/u;

    .line 185
    .line 186
    invoke-direct {v1, p0, p1}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 187
    .line 188
    .line 189
    iput-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->u0:LO3/u;

    .line 190
    .line 191
    new-instance v1, LF2/c;

    .line 192
    .line 193
    const/16 v2, 0x19

    .line 194
    .line 195
    invoke-direct {v1, v2}, LF2/c;-><init>(I)V

    .line 196
    .line 197
    .line 198
    iput-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->x0:LF2/c;

    .line 199
    .line 200
    const-string v1, "incognito"

    .line 201
    .line 202
    invoke-static {v1, v4}, LR6/g;->r(Ljava/lang/String;Z)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    iput-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->D0:Z

    .line 207
    .line 208
    invoke-static {}, LH6/l;->i0()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iput-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->E0:Z

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->H0()V

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 218
    .line 219
    iget-object v1, v1, Lw3/b;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    .line 221
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 225
    .line 226
    iget-object v1, v1, Lw3/b;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    .line 228
    const/4 v2, 0x0

    .line 229
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/P;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 233
    .line 234
    iget-object v1, v1, Lw3/b;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    new-instance v3, LQ3/q;

    .line 237
    .line 238
    const/4 v6, -0x1

    .line 239
    const/16 v7, 0x8

    .line 240
    .line 241
    invoke-direct {v3, v6, v7}, LQ3/q;-><init>(II)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroidx/recyclerview/widget/Q;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 248
    .line 249
    iget-object v1, v1, Lw3/b;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 250
    .line 251
    new-instance v3, Lcom/fongmi/android/tv/ui/adapter/u;

    .line 252
    .line 253
    invoke-direct {v3, p0, v4}, Lcom/fongmi/android/tv/ui/adapter/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 254
    .line 255
    .line 256
    iput-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/J;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 262
    .line 263
    iget-object v1, v1, Lw3/b;->H:Landroidx/recyclerview/widget/RecyclerView;

    .line 264
    .line 265
    new-instance v3, Lcom/fongmi/android/tv/ui/adapter/u;

    .line 266
    .line 267
    invoke-direct {v3, p0, v5}, Lcom/fongmi/android/tv/ui/adapter/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 268
    .line 269
    .line 270
    iput-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 271
    .line 272
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/J;)V

    .line 273
    .line 274
    .line 275
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 276
    .line 277
    iget-object v1, v1, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 278
    .line 279
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 283
    .line 284
    iget-object v1, v1, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/P;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 290
    .line 291
    iget-object v1, v1, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 292
    .line 293
    new-instance v3, LQ3/q;

    .line 294
    .line 295
    invoke-direct {v3, v6, v7}, LQ3/q;-><init>(II)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroidx/recyclerview/widget/Q;)V

    .line 299
    .line 300
    .line 301
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 302
    .line 303
    iget-object v1, v1, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 304
    .line 305
    new-instance v3, Lcom/fongmi/android/tv/ui/adapter/q;

    .line 306
    .line 307
    invoke-direct {v3, p0, v4}, Lcom/fongmi/android/tv/ui/adapter/q;-><init>(Lcom/fongmi/android/tv/ui/adapter/p;I)V

    .line 308
    .line 309
    .line 310
    iput-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 311
    .line 312
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/J;)V

    .line 313
    .line 314
    .line 315
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 316
    .line 317
    iget-object v1, v1, Lw3/b;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 318
    .line 319
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 320
    .line 321
    .line 322
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 323
    .line 324
    iget-object v1, v1, Lw3/b;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 325
    .line 326
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/P;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 330
    .line 331
    iget-object v1, v1, Lw3/b;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 332
    .line 333
    new-instance v3, LQ3/q;

    .line 334
    .line 335
    invoke-direct {v3, v6, v7}, LQ3/q;-><init>(II)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroidx/recyclerview/widget/Q;)V

    .line 339
    .line 340
    .line 341
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 342
    .line 343
    iget-object v1, v1, Lw3/b;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 344
    .line 345
    new-instance v3, Lcom/fongmi/android/tv/ui/adapter/q;

    .line 346
    .line 347
    invoke-direct {v3, p0}, Lcom/fongmi/android/tv/ui/adapter/q;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;)V

    .line 348
    .line 349
    .line 350
    iput-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->T:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 351
    .line 352
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/J;)V

    .line 353
    .line 354
    .line 355
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 356
    .line 357
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 358
    .line 359
    iget-object v1, v1, Lw3/n;->F:Landroid/view/View;

    .line 360
    .line 361
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 362
    .line 363
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 367
    .line 368
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 369
    .line 370
    iget-object v1, v1, Lw3/n;->F:Landroid/view/View;

    .line 371
    .line 372
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 373
    .line 374
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/P;)V

    .line 375
    .line 376
    .line 377
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 378
    .line 379
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 380
    .line 381
    iget-object v1, v1, Lw3/n;->F:Landroid/view/View;

    .line 382
    .line 383
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 384
    .line 385
    new-instance v2, LQ3/q;

    .line 386
    .line 387
    invoke-direct {v2, v6, v7}, LQ3/q;-><init>(II)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroidx/recyclerview/widget/Q;)V

    .line 391
    .line 392
    .line 393
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 394
    .line 395
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 396
    .line 397
    iget-object v1, v1, Lw3/n;->F:Landroid/view/View;

    .line 398
    .line 399
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 400
    .line 401
    new-instance v2, Lcom/fongmi/android/tv/ui/adapter/q;

    .line 402
    .line 403
    invoke-direct {v2, p0, v4}, Lcom/fongmi/android/tv/ui/adapter/q;-><init>(Lcom/fongmi/android/tv/ui/adapter/C;I)V

    .line 404
    .line 405
    .line 406
    iput-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 407
    .line 408
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/J;)V

    .line 409
    .line 410
    .line 411
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 412
    .line 413
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 414
    .line 415
    iget-object v3, v2, Lw3/b;->w:Landroidx/media3/ui/PlayerView;

    .line 416
    .line 417
    iget-object v2, v2, Lw3/b;->y:Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 418
    .line 419
    invoke-virtual {v1, v3, v2}, LF3/f;->V(Landroidx/media3/ui/PlayerView;Ltv/danmaku/ijk/media/player/ui/IjkVideoView;)V

    .line 420
    .line 421
    .line 422
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 423
    .line 424
    sget-object v2, Lcom/fongmi/android/tv/service/PlaybackService;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 425
    .line 426
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    sget-object v3, Lcom/fongmi/android/tv/App;->t:Lcom/fongmi/android/tv/App;

    .line 431
    .line 432
    new-instance v6, Landroid/content/Intent;

    .line 433
    .line 434
    sget-object v8, Lcom/fongmi/android/tv/App;->t:Lcom/fongmi/android/tv/App;

    .line 435
    .line 436
    const-class v9, Lcom/fongmi/android/tv/service/PlaybackService;

    .line 437
    .line 438
    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    .line 440
    .line 441
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 442
    .line 443
    const/16 v9, 0x1a

    .line 444
    .line 445
    if-lt v8, v9, :cond_0

    .line 446
    .line 447
    invoke-static {v3, v6}, LD/a;->j(Landroid/content/Context;Landroid/content/Intent;)V

    .line 448
    .line 449
    .line 450
    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {v3, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 452
    .line 453
    .line 454
    :goto_0
    sput-object v1, Lcom/fongmi/android/tv/service/PlaybackService;->i:LF3/f;

    .line 455
    .line 456
    iput v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->o0:I

    .line 457
    .line 458
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 459
    .line 460
    iget-object v1, v1, Lw3/b;->w:Landroidx/media3/ui/PlayerView;

    .line 461
    .line 462
    invoke-static {v1}, LI3/a;->d(Landroidx/media3/ui/PlayerView;)V

    .line 463
    .line 464
    .line 465
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 466
    .line 467
    iget-object v1, v1, Lw3/b;->y:Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 468
    .line 469
    invoke-static {v1}, LK7/a;->P(Ltv/danmaku/ijk/media/player/ui/IjkVideoView;)V

    .line 470
    .line 471
    .line 472
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 473
    .line 474
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 475
    .line 476
    iget-object v2, v2, Lw3/b;->z:Lcom/okjack/ktvlrc/LrcView;

    .line 477
    .line 478
    new-instance v3, Lf5/d;

    .line 479
    .line 480
    const/16 v6, 0xf

    .line 481
    .line 482
    invoke-direct {v3, v6, v4}, Lf5/d;-><init>(IZ)V

    .line 483
    .line 484
    .line 485
    iput-object v3, v1, LF3/f;->w:Lf5/d;

    .line 486
    .line 487
    iput-object v1, v3, Lf5/d;->o:Ljava/lang/Object;

    .line 488
    .line 489
    invoke-virtual {v2, v3}, Lcom/okjack/ktvlrc/LrcView;->setCallback(Le5/a;)V

    .line 490
    .line 491
    .line 492
    iput-object v2, v3, Lf5/d;->n:Ljava/lang/Object;

    .line 493
    .line 494
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 495
    .line 496
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 497
    .line 498
    iget-object v2, v2, Lw3/b;->r:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 499
    .line 500
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    new-instance v3, LH3/d;

    .line 504
    .line 505
    invoke-direct {v3}, LH3/d;-><init>()V

    .line 506
    .line 507
    .line 508
    iput-object v3, v1, LF3/f;->v:LH3/d;

    .line 509
    .line 510
    new-instance v6, LF2/c;

    .line 511
    .line 512
    iput-object v1, v3, LH3/d;->d:LF3/f;

    .line 513
    .line 514
    const/16 v8, 0xd

    .line 515
    .line 516
    invoke-direct {v6, v1, v8}, LF2/c;-><init>(Ljava/lang/Object;I)V

    .line 517
    .line 518
    .line 519
    iget-object v1, v3, LH3/d;->a:LZ5/d;

    .line 520
    .line 521
    iput-object v6, v1, LZ5/d;->q:LF2/c;

    .line 522
    .line 523
    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setCallback(LX5/q;)V

    .line 524
    .line 525
    .line 526
    iput-object v2, v3, LH3/d;->b:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 527
    .line 528
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 529
    .line 530
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    iput-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->w0:Ljava/lang/String;

    .line 539
    .line 540
    iput-object v2, v1, LF3/f;->B:Ljava/lang/String;

    .line 541
    .line 542
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0()Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_1

    .line 547
    .line 548
    invoke-static {p0}, LU3/f;->u(Landroid/content/Context;)Z

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    if-eqz v1, :cond_1

    .line 553
    .line 554
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0()V

    .line 555
    .line 556
    .line 557
    :cond_1
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 558
    .line 559
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 560
    .line 561
    iget-object v1, v1, Lw3/n;->u:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v1, Lw3/r;

    .line 564
    .line 565
    iget-object v1, v1, Lw3/r;->p:Landroid/view/View;

    .line 566
    .line 567
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 568
    .line 569
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->E0:Z

    .line 570
    .line 571
    if-eqz v2, :cond_2

    .line 572
    .line 573
    move v7, v4

    .line 574
    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 575
    .line 576
    .line 577
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 578
    .line 579
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 580
    .line 581
    iget-object v1, v1, Lw3/n;->u:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v1, Lw3/r;

    .line 584
    .line 585
    iget-object v1, v1, Lw3/r;->w:Landroid/view/View;

    .line 586
    .line 587
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 588
    .line 589
    const v2, 0x7f03001a

    .line 590
    .line 591
    .line 592
    invoke-static {v2}, LU3/f;->o(I)[Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    const-string v3, "reset"

    .line 597
    .line 598
    invoke-static {v3, v4}, LR6/g;->w(Ljava/lang/String;I)I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    aget-object v2, v2, v3

    .line 603
    .line 604
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    .line 606
    .line 607
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 608
    .line 609
    iget-object v1, v1, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 610
    .line 611
    new-instance v2, LO3/n;

    .line 612
    .line 613
    invoke-direct {v2, p0, v5}, LO3/n;-><init>(Ljava/lang/Object;I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 617
    .line 618
    .line 619
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 620
    .line 621
    iget-object v1, v1, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 622
    .line 623
    iget-object v1, v1, Lcom/google/android/material/datepicker/c;->i:Ljava/lang/Object;

    .line 624
    .line 625
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 626
    .line 627
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z0()V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p0}, Lc/j;->i()Landroidx/lifecycle/U;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-virtual {p0}, Lc/j;->w()Landroidx/lifecycle/T;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-virtual {p0}, Lc/j;->f()Lh0/c;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    const-string v4, "store"

    .line 646
    .line 647
    invoke-static {v1, v4}, LF5/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    const-string v4, "factory"

    .line 651
    .line 652
    invoke-static {v2, v4}, LF5/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    new-instance v4, LA/h;

    .line 656
    .line 657
    invoke-direct {v4, v1, v2, v3}, LA/h;-><init>(Landroidx/lifecycle/U;Landroidx/lifecycle/T;Lh0/b;)V

    .line 658
    .line 659
    .line 660
    const-class v1, LE3/r;

    .line 661
    .line 662
    invoke-static {v1}, LF5/p;->a(Ljava/lang/Class;)LF5/e;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-virtual {v1}, LF5/e;->b()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    if-eqz v2, :cond_3

    .line 671
    .line 672
    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 673
    .line 674
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-virtual {v4, v1, v2}, LA/h;->v(LF5/e;Ljava/lang/String;)Landroidx/lifecycle/Q;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    check-cast v1, LE3/r;

    .line 683
    .line 684
    iput-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 685
    .line 686
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->O:LO3/t;

    .line 687
    .line 688
    iget-object v1, v1, LE3/r;->b:Landroidx/lifecycle/A;

    .line 689
    .line 690
    invoke-virtual {v1, v2}, Landroidx/lifecycle/A;->e(Landroidx/lifecycle/B;)V

    .line 691
    .line 692
    .line 693
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 694
    .line 695
    iget-object v1, v1, LE3/r;->c:Landroidx/lifecycle/A;

    .line 696
    .line 697
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->P:LO3/t;

    .line 698
    .line 699
    invoke-virtual {v1, v2}, Landroidx/lifecycle/A;->e(Landroidx/lifecycle/B;)V

    .line 700
    .line 701
    .line 702
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 703
    .line 704
    iget-object v1, v1, LE3/r;->d:Landroidx/lifecycle/A;

    .line 705
    .line 706
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Q:LO3/t;

    .line 707
    .line 708
    invoke-virtual {v1, v2}, Landroidx/lifecycle/A;->e(Landroidx/lifecycle/B;)V

    .line 709
    .line 710
    .line 711
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 712
    .line 713
    iget-object v1, v1, LE3/r;->h:Landroidx/lifecycle/A;

    .line 714
    .line 715
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->R:LO3/t;

    .line 716
    .line 717
    invoke-virtual {v1, v2}, Landroidx/lifecycle/A;->e(Landroidx/lifecycle/B;)V

    .line 718
    .line 719
    .line 720
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 721
    .line 722
    iget-object v1, v1, LE3/r;->g:Landroidx/lifecycle/A;

    .line 723
    .line 724
    new-instance v2, LO3/t;

    .line 725
    .line 726
    invoke-direct {v2, p0, v0}, LO3/t;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/A;->d(Landroidx/lifecycle/t;Landroidx/lifecycle/B;)V

    .line 730
    .line 731
    .line 732
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 733
    .line 734
    iget-object v0, v0, LE3/r;->f:Landroidx/lifecycle/A;

    .line 735
    .line 736
    new-instance v1, LO3/t;

    .line 737
    .line 738
    invoke-direct {v1, p0, p1}, LO3/t;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/A;->d(Landroidx/lifecycle/t;Landroidx/lifecycle/B;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->o0()V

    .line 745
    .line 746
    .line 747
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W()V

    .line 748
    .line 749
    .line 750
    return-void

    .line 751
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 752
    .line 753
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 754
    .line 755
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    throw p1
.end method

.method public final O0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 19
    .line 20
    iget-object v0, v0, Lw3/b;->i:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "land"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/16 v0, 0xb

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final P0(Lcom/fongmi/android/tv/bean/Parse;)V
    .locals 3

    .line 1
    sget-object v0, Lt3/h;->a:Lt3/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lt3/a;->d()Lcom/fongmi/android/tv/bean/Config;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Lt3/i;->u(Lcom/fongmi/android/tv/bean/Config;Lcom/fongmi/android/tv/bean/Parse;Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 12
    .line 13
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 14
    .line 15
    iget-object p1, p1, Lw3/n;->F:Landroid/view/View;

    .line 16
    .line 17
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 20
    .line 21
    new-instance v1, LA0/A;

    .line 22
    .line 23
    const/16 v2, 0x14

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, LA0/A;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/v;->L()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 42
    .line 43
    iget-object v0, p1, LR3/o;->z0:Lw3/j;

    .line 44
    .line 45
    iget-object v0, v0, Lw3/j;->G:Landroid/view/View;

    .line 46
    .line 47
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/J;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object p1, p1, LR3/o;->z0:Lw3/j;

    .line 54
    .line 55
    iget-object p1, p1, Lw3/j;->G:Landroid/view/View;

    .line 56
    .line 57
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/J;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/J;->a()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/J;->f(I)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->y:Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 6
    .line 7
    iget v1, v1, LF3/f;->K:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/ui/IjkVideoView;->setPlayer(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 13
    .line 14
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 15
    .line 16
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lw3/r;

    .line 19
    .line 20
    iget-object v0, v0, Lw3/r;->v:Landroid/view/View;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const v2, 0x7f030017

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, LU3/f;->o(I)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget v1, v1, LF3/f;->K:I

    .line 37
    .line 38
    aget-object v1, v2, v1

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 44
    .line 45
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 46
    .line 47
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lw3/r;

    .line 50
    .line 51
    iget-object v0, v0, Lw3/r;->y:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/fongmi/android/tv/bean/History;->getSpeed()F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, v2}, LF3/f;->q0(F)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 71
    .line 72
    iget-object v0, v0, Lw3/b;->w:Landroidx/media3/ui/PlayerView;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 75
    .line 76
    invoke-virtual {v1}, LF3/f;->W()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    move v1, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move v1, v2

    .line 88
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 92
    .line 93
    iget-object v0, v0, Lw3/b;->y:Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 96
    .line 97
    invoke-virtual {v1}, LF3/f;->Y()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    move v2, v3

    .line 104
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X:LQ3/d;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 110
    .line 111
    invoke-virtual {v1}, LF3/f;->W()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 118
    .line 119
    iget-object v1, v1, Lw3/b;->w:Landroidx/media3/ui/PlayerView;

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 123
    .line 124
    iget-object v1, v1, Lw3/b;->y:Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 125
    .line 126
    :goto_1
    iget-object v2, v0, LQ3/d;->q:Landroid/view/View;

    .line 127
    .line 128
    const/high16 v3, 0x3f800000    # 1.0f

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 131
    .line 132
    .line 133
    iget-object v2, v0, LQ3/d;->q:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 136
    .line 137
    .line 138
    iput-object v1, v0, LQ3/d;->q:Landroid/view/View;

    .line 139
    .line 140
    iput v3, v0, LQ3/d;->C:F

    .line 141
    .line 142
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 143
    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/fragment/app/v;->L()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 153
    .line 154
    iget-object v1, v0, LR3/o;->z0:Lw3/j;

    .line 155
    .line 156
    iget-object v1, v1, Lw3/j;->B:Landroid/view/View;

    .line 157
    .line 158
    check-cast v1, Landroid/widget/TextView;

    .line 159
    .line 160
    iget-object v0, v0, LR3/o;->A0:Lw3/b;

    .line 161
    .line 162
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 163
    .line 164
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lw3/r;

    .line 167
    .line 168
    iget-object v0, v0, Lw3/r;->v:Landroid/view/View;

    .line 169
    .line 170
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/appcompat/widget/d0;->getText()Ljava/lang/CharSequence;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    return-void
.end method

.method public final R0(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->G:Lcom/google/android/material/textview/MaterialTextView;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 17
    .line 18
    iget-object v0, v0, Lw3/b;->F:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    move v1, v2

    .line 23
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final S0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0:LO3/u;

    .line 2
    .line 3
    sget-wide v1, Lr3/a;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/fongmi/android/tv/App;->b(Ljava/lang/Runnable;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final T0(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->l0:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 11
    .line 12
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 13
    .line 14
    iget-object p1, p1, Lw3/n;->t:Landroid/view/ViewGroup;

    .line 15
    .line 16
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1}, LP3/b;->R(Landroid/view/ViewGroup;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 23
    .line 24
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 25
    .line 26
    iget-object p1, p1, Lw3/n;->t:Landroid/view/ViewGroup;

    .line 27
    .line 28
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final U(Lz3/e;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->m0()Lcom/fongmi/android/tv/bean/Site;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/Site;->getPlayerType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    iget v1, p1, Lz3/e;->b:I

    .line 15
    .line 16
    invoke-static {v3, v1}, Lt/e;->b(II)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget v1, p1, Lz3/e;->c:I

    .line 23
    .line 24
    if-lez v1, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->p0:I

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    iget-object v4, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 32
    .line 33
    iget v5, v4, LF3/f;->K:I

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    add-int/2addr v1, v3

    .line 38
    iput v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->p0:I

    .line 39
    .line 40
    invoke-virtual {v4}, LF3/f;->W()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v3, v2

    .line 48
    :goto_0
    invoke-virtual {v4, v3}, LF3/f;->p0(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Q0()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->G0()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0()V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_1
    iput v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->p0:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0(Lz3/e;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->m0()Lcom/fongmi/android/tv/bean/Site;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Site;->isChangeable()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    goto/16 :goto_7

    .line 78
    .line 79
    :cond_2
    iget-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->j0:Z

    .line 80
    .line 81
    if-eqz p1, :cond_b

    .line 82
    .line 83
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 84
    .line 85
    move v1, v0

    .line 86
    :goto_1
    iget-object v2, p1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v1, v4, :cond_4

    .line 95
    .line 96
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/fongmi/android/tv/bean/Parse;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/fongmi/android/tv/bean/Parse;->isActivated()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    add-int/2addr v1, v3

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move v1, v0

    .line 112
    :goto_2
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    sub-int/2addr p1, v3

    .line 123
    if-ne v1, p1, :cond_5

    .line 124
    .line 125
    move p1, v3

    .line 126
    goto :goto_3

    .line 127
    :cond_5
    move p1, v0

    .line 128
    :goto_3
    if-eqz v1, :cond_7

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    move v2, v0

    .line 134
    goto :goto_5

    .line 135
    :cond_7
    :goto_4
    move v2, v3

    .line 136
    :goto_5
    if-eqz p1, :cond_9

    .line 137
    .line 138
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 139
    .line 140
    iget-object p1, p1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_8

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_8
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p1, Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Lcom/fongmi/android/tv/bean/Parse;

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->P0(Lcom/fongmi/android/tv/bean/Parse;)V

    .line 164
    .line 165
    .line 166
    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V()V

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_a
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 173
    .line 174
    add-int/2addr v1, v3

    .line 175
    iget-object p1, p1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p1, Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lcom/fongmi/android/tv/bean/Parse;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Parse;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    new-array v2, v3, [Ljava/lang/Object;

    .line 190
    .line 191
    aput-object v1, v2, v0

    .line 192
    .line 193
    const v0, 0x7f1301ba

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/support/v4/media/session/q;->T(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->l(Lcom/fongmi/android/tv/bean/Parse;)V

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_b
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V()V

    .line 208
    .line 209
    .line 210
    :goto_7
    return-void
.end method

.method public final U0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/fongmi/android/tv/bean/History;->setScale(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 7
    .line 8
    iget-object v0, v0, Lw3/b;->w:Landroidx/media3/ui/PlayerView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 14
    .line 15
    iget-object v0, v0, Lw3/b;->y:Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/ui/IjkVideoView;->setResizeMode(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 21
    .line 22
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 23
    .line 24
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lw3/r;

    .line 27
    .line 28
    iget-object v0, v0, Lw3/r;->x:Landroid/view/View;

    .line 29
    .line 30
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 31
    .line 32
    const v1, 0x7f03001c

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, LU3/f;->o(I)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    aget-object p1, v1, p1

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final V()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 4
    .line 5
    iget-object v2, v2, Lw3/b;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/fongmi/android/tv/ui/adapter/u;->o()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    :goto_0
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sub-int/2addr v3, v1

    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->a0(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 39
    .line 40
    add-int/2addr v2, v1

    .line 41
    iget-object v3, v3, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/fongmi/android/tv/bean/Flag;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/fongmi/android/tv/bean/Flag;->getFlag()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    new-array v4, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v3, v4, v0

    .line 56
    .line 57
    const v0, 0x7f1301b9

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/support/v4/media/session/q;->T(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2, v1, v1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->w0(Lcom/fongmi/android/tv/bean/Flag;ZZ)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public final V0(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-lez p2, :cond_1

    .line 21
    .line 22
    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p3, v2, v0

    .line 25
    .line 26
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object p2, p3

    .line 32
    :goto_0
    sget-object v2, LU3/t;->a:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v3, LU3/t;->a:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move v4, v0

    .line 46
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {v2, p2, v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x2

    .line 64
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v5}, Ld4/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5}, Lcom/fongmi/android/tv/bean/Result;->type(Ljava/lang/String;)Lcom/fongmi/android/tv/bean/Result;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v6, LO3/y;

    .line 88
    .line 89
    invoke-direct {v6, p0, v5}, LO3/y;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;Lcom/fongmi/android/tv/bean/Result;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    const/16 v7, 0x21

    .line 97
    .line 98
    invoke-virtual {v2, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v2, p2, v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 111
    .line 112
    .line 113
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 114
    .line 115
    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    const/16 p2, 0x8

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    move p2, v0

    .line 128
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 132
    .line 133
    iget-object p3, p2, Lw3/b;->o:Lcom/google/android/material/textview/MaterialTextView;

    .line 134
    .line 135
    if-ne p1, p3, :cond_4

    .line 136
    .line 137
    iget-object p2, p2, Lw3/b;->p:Landroid/widget/LinearLayout;

    .line 138
    .line 139
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    :cond_4
    const/16 p2, -0x14c5

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 149
    .line 150
    .line 151
    sget-object p2, LQ3/h;->a:Landroid/text/NoCopySpan$Concrete;

    .line 152
    .line 153
    new-instance p2, Landroid/text/Editable$Factory;

    .line 154
    .line 155
    invoke-direct {p2}, Landroid/text/Editable$Factory;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-virtual {p2, p3}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    const-class v1, Landroid/text/style/ClickableSpan;

    .line 171
    .line 172
    invoke-interface {p2, v0, p3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 177
    .line 178
    array-length p2, p2

    .line 179
    if-lez p2, :cond_6

    .line 180
    .line 181
    sget-object p2, LQ3/h;->b:LQ3/h;

    .line 182
    .line 183
    if-nez p2, :cond_5

    .line 184
    .line 185
    new-instance p2, LQ3/h;

    .line 186
    .line 187
    invoke-direct {p2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 188
    .line 189
    .line 190
    sput-object p2, LQ3/h;->b:LQ3/h;

    .line 191
    .line 192
    :cond_5
    sget-object p2, LQ3/h;->b:LQ3/h;

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_6
    const/4 p2, 0x0

    .line 196
    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final W()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "push://"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "key"

    .line 18
    .line 19
    const-string v2, "push_agent"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x7

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "id"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "msearch:"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->e0()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->I0(Z)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public final W0(Lcom/fongmi/android/tv/bean/Vod;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 3
    .line 4
    iget-object v1, v1, Lw3/b;->L:Lcom/google/android/material/textview/MaterialTextView;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->m0()Lcom/fongmi/android/tv/bean/Site;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/fongmi/android/tv/bean/Site;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x7f130070

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1, v3, v2}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V0(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 21
    .line 22
    iget-object v1, v1, Lw3/b;->s:Lcom/google/android/material/textview/MaterialTextView;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getDirector()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const v3, 0x7f130068

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v3, v2}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V0(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 35
    .line 36
    iget-object v1, v1, Lw3/b;->n:Lcom/google/android/material/textview/MaterialTextView;

    .line 37
    .line 38
    const v2, 0x7f130064

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getActor()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p0, v1, v2, v3}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V0(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 49
    .line 50
    iget-object v1, v1, Lw3/b;->o:Lcom/google/android/material/textview/MaterialTextView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getContent()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0, v1, v3, v2}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V0(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 61
    .line 62
    iget-object v1, v1, Lw3/b;->I:Lcom/google/android/material/textview/MaterialTextView;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getRemarks()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v1, v3, v2}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V0(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 72
    .line 73
    iget-object v1, v1, Lw3/b;->C:Lcom/google/android/material/textview/MaterialTextView;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getYear()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const-string v5, "  "

    .line 89
    .line 90
    if-nez v4, :cond_0

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getYear()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-array v6, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v4, v6, v3

    .line 99
    .line 100
    const v4, 0x7f130073

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getArea()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_1

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getArea()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    new-array v6, v0, [Ljava/lang/Object;

    .line 128
    .line 129
    aput-object v4, v6, v3

    .line 130
    .line 131
    const v4, 0x7f130065

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getTypeName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_2

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getTypeName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    .line 160
    aput-object p1, v0, v3

    .line 161
    .line 162
    const p1, 0x7f130072

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_3

    .line 180
    .line 181
    const/16 v3, 0x8

    .line 182
    .line 183
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const/4 v0, 0x2

    .line 191
    invoke-static {v0, p1}, LU3/y;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final X(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->H0:I

    .line 13
    .line 14
    if-lt v1, v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/fongmi/android/tv/bean/Flag;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Flag;->getPosition()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Flag;->getEpisodes()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_7

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x1

    .line 52
    sub-int/2addr v3, v4

    .line 53
    add-int/lit8 v5, v2, 0x1

    .line 54
    .line 55
    if-le v5, v3, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v3, v5

    .line 59
    :goto_0
    if-le v3, v2, :cond_6

    .line 60
    .line 61
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/fongmi/android/tv/ui/adapter/u;->o()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, v0, v4, v4}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->w0(Lcom/fongmi/android/tv/bean/Flag;ZZ)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    new-instance p1, Lcom/fongmi/android/tv/bean/Episode;

    .line 85
    .line 86
    invoke-direct {p1}, Lcom/fongmi/android/tv/bean/Episode;-><init>()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/fongmi/android/tv/bean/Episode;

    .line 95
    .line 96
    :goto_1
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d(Lcom/fongmi/android/tv/bean/Episode;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    if-eqz p1, :cond_7

    .line 101
    .line 102
    const p1, 0x7f1300a4

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Landroid/support/v4/media/session/q;->S(I)V

    .line 106
    .line 107
    .line 108
    :cond_7
    :goto_2
    return-void
.end method

.method public final X0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 4
    .line 5
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lw3/r;

    .line 8
    .line 9
    iget-object v0, v0, Lw3/r;->z:Landroid/view/View;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-virtual {v3, v4}, LF3/f;->U(I)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 28
    .line 29
    invoke-virtual {v3}, LF3/f;->W()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    :cond_0
    move v3, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v3, v1

    .line 38
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 42
    .line 43
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 44
    .line 45
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lw3/r;

    .line 48
    .line 49
    iget-object v0, v0, Lw3/r;->o:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    invoke-virtual {v3, v4}, LF3/f;->U(I)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    move v3, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v3, v1

    .line 67
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 71
    .line 72
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 73
    .line 74
    iget-object v0, v0, Lw3/n;->u:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lw3/r;

    .line 77
    .line 78
    iget-object v0, v0, Lw3/r;->B:Landroid/widget/TextView;

    .line 79
    .line 80
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    invoke-virtual {p1, v3}, LF3/f;->U(I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    move v1, v2

    .line 94
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/v;->L()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 108
    .line 109
    invoke-virtual {p1}, LR3/o;->z0()V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method public final Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 4
    .line 5
    iget-object v0, v0, Lw3/n;->G:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 10
    .line 11
    invoke-virtual {v1}, LF3/f;->a0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const v1, 0x7f0800a1

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v1, 0x7f0800a2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->x0:LF2/c;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 30
    .line 31
    invoke-virtual {v1}, LF3/f;->a0()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, p0, v1}, LF2/c;->a0(LP3/b;Z)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lz3/a;->i:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lz3/a;->D(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final Y0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->x0:LF2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, LF2/c;->P(Landroid/app/Activity;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->G0:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 17
    .line 18
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 19
    .line 20
    iget-object v1, v1, Lw3/n;->z:Landroid/view/View;

    .line 21
    .line 22
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 32
    .line 33
    iget-object v2, v2, LF3/f;->s:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/fongmi/android/tv/bean/Danmaku;

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/fongmi/android/tv/bean/Danmaku;->isSelected()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    move v2, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v2, v3

    .line 62
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 66
    .line 67
    iget-object v2, v1, Lw3/b;->q:Lw3/n;

    .line 68
    .line 69
    iget-object v2, v2, Lw3/n;->A:Landroid/view/View;

    .line 70
    .line 71
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 72
    .line 73
    iget-boolean v5, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 74
    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    iget-boolean v5, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->E0:Z

    .line 78
    .line 79
    if-eqz v5, :cond_3

    .line 80
    .line 81
    iget-object v1, v1, Lw3/b;->r:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    move v1, v4

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move v1, v3

    .line 92
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 96
    .line 97
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 98
    .line 99
    iget-object v1, v1, Lw3/n;->K:Landroid/view/View;

    .line 100
    .line 101
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 104
    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move v2, v4

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    :goto_2
    move v2, v3

    .line 115
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 119
    .line 120
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 121
    .line 122
    iget-object v1, v1, Lw3/n;->n:Landroid/widget/LinearLayout;

    .line 123
    .line 124
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 125
    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    move v2, v4

    .line 129
    goto :goto_4

    .line 130
    :cond_6
    move v2, v3

    .line 131
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 135
    .line 136
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 137
    .line 138
    iget-object v1, v1, Lw3/n;->I:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, LA/h;

    .line 141
    .line 142
    iget-object v1, v1, LA/h;->q:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 145
    .line 146
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 147
    .line 148
    if-eqz v2, :cond_7

    .line 149
    .line 150
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 151
    .line 152
    if-nez v2, :cond_7

    .line 153
    .line 154
    move v2, v4

    .line 155
    goto :goto_5

    .line 156
    :cond_7
    move v2, v3

    .line 157
    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 161
    .line 162
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 163
    .line 164
    iget-object v1, v1, Lw3/n;->I:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, LA/h;

    .line 167
    .line 168
    iget-object v1, v1, LA/h;->p:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 171
    .line 172
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 173
    .line 174
    if-nez v2, :cond_9

    .line 175
    .line 176
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 177
    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_8
    move v2, v4

    .line 182
    goto :goto_7

    .line 183
    :cond_9
    :goto_6
    move v2, v3

    .line 184
    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 188
    .line 189
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 190
    .line 191
    iget-object v1, v1, Lw3/n;->D:Landroid/view/View;

    .line 192
    .line 193
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 194
    .line 195
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 196
    .line 197
    if-nez v2, :cond_a

    .line 198
    .line 199
    move v2, v3

    .line 200
    goto :goto_8

    .line 201
    :cond_a
    move v2, v4

    .line 202
    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 206
    .line 207
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 208
    .line 209
    iget-object v1, v1, Lw3/n;->F:Landroid/view/View;

    .line 210
    .line 211
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    .line 213
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 214
    .line 215
    if-eqz v2, :cond_b

    .line 216
    .line 217
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->j0:Z

    .line 218
    .line 219
    if-eqz v2, :cond_b

    .line 220
    .line 221
    move v2, v4

    .line 222
    goto :goto_9

    .line 223
    :cond_b
    move v2, v3

    .line 224
    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 228
    .line 229
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 230
    .line 231
    iget-object v1, v1, Lw3/n;->u:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v1, Lw3/r;

    .line 234
    .line 235
    iget-object v1, v1, Lw3/r;->n:Landroid/view/ViewGroup;

    .line 236
    .line 237
    check-cast v1, Landroid/widget/HorizontalScrollView;

    .line 238
    .line 239
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 240
    .line 241
    if-eqz v2, :cond_c

    .line 242
    .line 243
    move v2, v4

    .line 244
    goto :goto_a

    .line 245
    :cond_c
    move v2, v3

    .line 246
    :goto_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 250
    .line 251
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 252
    .line 253
    iget-object v1, v1, Lw3/n;->I:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v1, LA/h;

    .line 256
    .line 257
    iget-object v1, v1, LA/h;->o:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 260
    .line 261
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 262
    .line 263
    if-eqz v2, :cond_d

    .line 264
    .line 265
    move v2, v4

    .line 266
    goto :goto_b

    .line 267
    :cond_d
    move v2, v3

    .line 268
    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 272
    .line 273
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 274
    .line 275
    iget-object v1, v1, Lw3/n;->C:Landroid/view/View;

    .line 276
    .line 277
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 278
    .line 279
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 280
    .line 281
    iget-object v2, v2, LF3/f;->D:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_e

    .line 288
    .line 289
    move v2, v3

    .line 290
    goto :goto_c

    .line 291
    :cond_e
    move v2, v4

    .line 292
    :goto_c
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 296
    .line 297
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 298
    .line 299
    iget-object v1, v1, Lw3/n;->x:Landroid/view/View;

    .line 300
    .line 301
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 302
    .line 303
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 304
    .line 305
    iget-object v2, v2, LF3/f;->D:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_f

    .line 312
    .line 313
    move v2, v3

    .line 314
    goto :goto_d

    .line 315
    :cond_f
    move v2, v4

    .line 316
    :goto_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 320
    .line 321
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 322
    .line 323
    iget-object v1, v1, Lw3/n;->y:Landroid/view/ViewGroup;

    .line 324
    .line 325
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 326
    .line 327
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 328
    .line 329
    if-eqz v2, :cond_10

    .line 330
    .line 331
    move v2, v3

    .line 332
    goto :goto_e

    .line 333
    :cond_10
    move v2, v4

    .line 334
    :goto_e
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 338
    .line 339
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 340
    .line 341
    iget-object v1, v1, Lw3/n;->o:Landroid/widget/LinearLayout;

    .line 342
    .line 343
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 344
    .line 345
    if-eqz v2, :cond_11

    .line 346
    .line 347
    move v2, v3

    .line 348
    goto :goto_f

    .line 349
    :cond_11
    move v2, v4

    .line 350
    :goto_f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 354
    .line 355
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 356
    .line 357
    iget-object v1, v1, Lw3/n;->v:Landroid/view/View;

    .line 358
    .line 359
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 360
    .line 361
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 362
    .line 363
    if-eqz v2, :cond_12

    .line 364
    .line 365
    move v2, v3

    .line 366
    goto :goto_10

    .line 367
    :cond_12
    move v2, v4

    .line 368
    :goto_10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 372
    .line 373
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 374
    .line 375
    iget-object v1, v1, Lw3/n;->s:Landroid/widget/LinearLayout;

    .line 376
    .line 377
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 378
    .line 379
    if-eqz v2, :cond_13

    .line 380
    .line 381
    move v2, v3

    .line 382
    goto :goto_11

    .line 383
    :cond_13
    move v2, v4

    .line 384
    :goto_11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 388
    .line 389
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 390
    .line 391
    iget-object v1, v1, Lw3/n;->t:Landroid/view/ViewGroup;

    .line 392
    .line 393
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 394
    .line 395
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z0()V

    .line 399
    .line 400
    .line 401
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 402
    .line 403
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 404
    .line 405
    iget-object v1, v1, Lw3/n;->z:Landroid/view/View;

    .line 406
    .line 407
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 408
    .line 409
    const-string v2, "danmu"

    .line 410
    .line 411
    invoke-static {v2, v0}, LR6/g;->r(Ljava/lang/String;Z)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_14

    .line 416
    .line 417
    const v0, 0x7f080107

    .line 418
    .line 419
    .line 420
    goto :goto_12

    .line 421
    :cond_14
    const v0, 0x7f080106

    .line 422
    .line 423
    .line 424
    :goto_12
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y()V

    .line 428
    .line 429
    .line 430
    sget-object v0, LU3/y;->a:Ljava/util/regex/Pattern;

    .line 431
    .line 432
    const/4 v0, -0x1

    .line 433
    :try_start_0
    sget-object v1, Lcom/fongmi/android/tv/App;->t:Lcom/fongmi/android/tv/App;

    .line 434
    .line 435
    const-string v2, "batterymanager"

    .line 436
    .line 437
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    check-cast v1, Landroid/os/BatteryManager;

    .line 442
    .line 443
    const/4 v2, 0x4

    .line 444
    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 445
    .line 446
    .line 447
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    goto :goto_13

    .line 449
    :catchall_0
    move v1, v0

    .line 450
    :goto_13
    if-ne v1, v0, :cond_15

    .line 451
    .line 452
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 453
    .line 454
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 455
    .line 456
    iget-object v0, v0, Lw3/n;->n:Landroid/widget/LinearLayout;

    .line 457
    .line 458
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    .line 460
    .line 461
    goto :goto_15

    .line 462
    :cond_15
    const/16 v0, 0x5f

    .line 463
    .line 464
    if-lt v1, v0, :cond_16

    .line 465
    .line 466
    const v0, 0x7f0800f9

    .line 467
    .line 468
    .line 469
    goto :goto_14

    .line 470
    :cond_16
    const/16 v0, 0x55

    .line 471
    .line 472
    if-lt v1, v0, :cond_17

    .line 473
    .line 474
    const v0, 0x7f0800f8

    .line 475
    .line 476
    .line 477
    goto :goto_14

    .line 478
    :cond_17
    const/16 v0, 0x41

    .line 479
    .line 480
    if-lt v1, v0, :cond_18

    .line 481
    .line 482
    const v0, 0x7f0800f7

    .line 483
    .line 484
    .line 485
    goto :goto_14

    .line 486
    :cond_18
    const/16 v0, 0x32

    .line 487
    .line 488
    if-lt v1, v0, :cond_19

    .line 489
    .line 490
    const v0, 0x7f0800f6

    .line 491
    .line 492
    .line 493
    goto :goto_14

    .line 494
    :cond_19
    const/16 v0, 0x19

    .line 495
    .line 496
    if-lt v1, v0, :cond_1a

    .line 497
    .line 498
    const v0, 0x7f0800f5

    .line 499
    .line 500
    .line 501
    goto :goto_14

    .line 502
    :cond_1a
    const/16 v0, 0xf

    .line 503
    .line 504
    if-lt v1, v0, :cond_1b

    .line 505
    .line 506
    const v0, 0x7f0800f4

    .line 507
    .line 508
    .line 509
    goto :goto_14

    .line 510
    :cond_1b
    if-lez v1, :cond_1c

    .line 511
    .line 512
    const v0, 0x7f0800f3

    .line 513
    .line 514
    .line 515
    goto :goto_14

    .line 516
    :cond_1c
    const v0, 0x7f0800f2

    .line 517
    .line 518
    .line 519
    :goto_14
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 520
    .line 521
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 522
    .line 523
    iget-object v1, v1, Lw3/n;->w:Landroid/view/View;

    .line 524
    .line 525
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 526
    .line 527
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 528
    .line 529
    .line 530
    :goto_15
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S0()V

    .line 531
    .line 532
    .line 533
    return-void
.end method

.method public final Z()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->H0:I

    .line 13
    .line 14
    if-lt v1, v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/fongmi/android/tv/bean/Flag;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Flag;->getPosition()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Flag;->getEpisodes()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_7

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v3, v2, -0x1

    .line 48
    .line 49
    if-gez v3, :cond_3

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    :cond_3
    if-ge v3, v2, :cond_6

    .line 53
    .line 54
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/fongmi/android/tv/ui/adapter/u;->o()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eq v2, v1, :cond_4

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, v0, v1, v1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->w0(Lcom/fongmi/android/tv/bean/Flag;ZZ)V

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_5

    .line 77
    .line 78
    new-instance v0, Lcom/fongmi/android/tv/bean/Episode;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/fongmi/android/tv/bean/Episode;-><init>()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/fongmi/android/tv/bean/Episode;

    .line 89
    .line 90
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d(Lcom/fongmi/android/tv/bean/Episode;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    const v0, 0x7f1300a6

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Landroid/support/v4/media/session/q;->S(I)V

    .line 98
    .line 99
    .line 100
    :cond_7
    :goto_1
    return-void
.end method

.method public final Z0()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, LC0/L;->y(Lcom/fongmi/android/tv/ui/activity/VideoActivity;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    :goto_0
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->G0:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    :cond_1
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move v2, v3

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 31
    .line 32
    iget-object v0, v0, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->n:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->y0:Z

    .line 39
    .line 40
    const/16 v4, 0x8

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    move v1, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move v1, v4

    .line 49
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 53
    .line 54
    iget-object v0, v0, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->p:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->z0:Z

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    move v1, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move v1, v4

    .line 69
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 73
    .line 74
    iget-object v0, v0, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->o:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0:Z

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->F0:Z

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    move v1, v3

    .line 91
    goto :goto_4

    .line 92
    :cond_5
    move v1, v4

    .line 93
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 97
    .line 98
    iget-object v0, v0, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->q:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Landroid/widget/ProgressBar;

    .line 103
    .line 104
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->B0:Z

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->F0:Z

    .line 111
    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    move v1, v3

    .line 115
    goto :goto_5

    .line 116
    :cond_6
    move v1, v4

    .line 117
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 121
    .line 122
    iget-object v0, v0, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->t:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Landroid/widget/LinearLayout;

    .line 127
    .line 128
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->C0:Z

    .line 129
    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_7
    move v3, v4

    .line 136
    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final a0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 12
    .line 13
    iget-object p1, p1, Lw3/b;->B:Lcom/google/android/material/textview/MaterialTextView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/widget/d0;->getText()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->q0(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->t0()V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public final a1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->D:Lv3/a;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v0, v0, Lv3/a;->n:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0:LO3/u;

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/fongmi/android/tv/App;->b(Ljava/lang/Runnable;J)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 21
    .line 22
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 23
    .line 24
    iget-object v0, v0, Lw3/s;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 32
    .line 33
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 34
    .line 35
    iget-object v0, v0, Lw3/s;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final b0()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->L0(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 11
    .line 12
    iget-object v0, v0, Lw3/b;->i:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "land"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 27
    .line 28
    invoke-virtual {v0}, LF3/f;->b0()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ln2/e;

    .line 35
    .line 36
    invoke-direct {v0}, Ln2/l;-><init>()V

    .line 37
    .line 38
    .line 39
    const-wide/16 v1, 0x96

    .line 40
    .line 41
    iput-wide v1, v0, Ln2/l;->o:J

    .line 42
    .line 43
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 44
    .line 45
    iget-object v1, v1, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/view/ViewGroup;

    .line 52
    .line 53
    invoke-static {v1, v0}, Ln2/p;->a(Landroid/view/ViewGroup;Ln2/l;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 57
    .line 58
    iget-object v0, v0, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .line 62
    const/4 v2, -0x1

    .line 63
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U0(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 70
    .line 71
    invoke-virtual {v0}, LF3/f;->b0()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v1, 0xc

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    move v0, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x6

    .line 82
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 86
    .line 87
    invoke-virtual {v0}, LF3/f;->b0()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->T0(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 95
    .line 96
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 97
    .line 98
    iget-object v0, v0, Lw3/n;->B:Landroid/view/View;

    .line 99
    .line 100
    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 108
    .line 109
    const/16 v2, 0x14

    .line 110
    .line 111
    invoke-static {v2}, LU3/f;->y(I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    const/16 v3, 0xe

    .line 116
    .line 117
    invoke-static {v3}, LU3/f;->y(I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    const/4 v4, 0x4

    .line 122
    invoke-static {v4}, LU3/f;->c(I)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-static {v1}, LU3/f;->c(I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    iget-object v0, v0, LF3/f;->w:Lf5/d;

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    iget-object v0, v0, Lf5/d;->n:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Lcom/okjack/ktvlrc/LrcView;

    .line 137
    .line 138
    iget-object v5, v0, Lcom/okjack/ktvlrc/LrcView;->n:LI1/b;

    .line 139
    .line 140
    iput v2, v5, LI1/b;->a:I

    .line 141
    .line 142
    iput v3, v5, LI1/b;->b:I

    .line 143
    .line 144
    iput v4, v5, LI1/b;->c:I

    .line 145
    .line 146
    iput v1, v5, LI1/b;->d:I

    .line 147
    .line 148
    iget-object v1, v0, Lcom/okjack/ktvlrc/LrcView;->q:Le5/b;

    .line 149
    .line 150
    if-nez v1, :cond_3

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    invoke-virtual {v0}, Lcom/okjack/ktvlrc/LrcView;->b()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 160
    .line 161
    iget-object v0, v0, LF3/f;->v:LH3/d;

    .line 162
    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    invoke-static {}, LH6/l;->V()F

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/high16 v2, 0x3f800000    # 1.0f

    .line 170
    .line 171
    mul-float/2addr v1, v2

    .line 172
    iget-object v0, v0, LH3/d;->a:LZ5/d;

    .line 173
    .line 174
    invoke-virtual {v0, v1}, LZ5/d;->c(F)V

    .line 175
    .line 176
    .line 177
    :cond_5
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X:LQ3/d;

    .line 178
    .line 179
    invoke-virtual {v0}, LQ3/d;->c()V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->t0:LO3/u;

    .line 183
    .line 184
    const-wide/16 v1, 0x7d0

    .line 185
    .line 186
    invoke-static {v0, v1, v2}, Lcom/fongmi/android/tv/App;->b(Ljava/lang/Runnable;J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0()V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public final c(J)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 3
    .line 4
    if-eqz v1, :cond_8

    .line 5
    .line 6
    iget-object v1, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, LF3/f;->N()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-object v3, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 17
    .line 18
    invoke-virtual {v3}, LF3/f;->H()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-boolean v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->G0:Z

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    iget-boolean v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v5, v6

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 35
    :goto_1
    iget-boolean v7, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->z0:Z

    .line 36
    .line 37
    if-eqz v7, :cond_3

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    iget-object v7, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 42
    .line 43
    iget-object v7, v7, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 44
    .line 45
    iget-object v7, v7, Lcom/google/android/material/datepicker/c;->p:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v7, Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-static {v7}, LU3/x;->a(Landroid/widget/TextView;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-boolean v7, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0:Z

    .line 53
    .line 54
    const-wide/16 v8, 0x0

    .line 55
    .line 56
    if-eqz v7, :cond_5

    .line 57
    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    cmp-long v7, v1, v8

    .line 61
    .line 62
    if-lez v7, :cond_5

    .line 63
    .line 64
    iget-object v7, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 65
    .line 66
    iget-object v7, v7, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 67
    .line 68
    iget-object v7, v7, Lcom/google/android/material/datepicker/c;->o:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v7, Landroid/widget/TextView;

    .line 71
    .line 72
    new-instance v10, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v11, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 78
    .line 79
    invoke-virtual {v11, v8, v9}, LF3/f;->P(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v11, "/"

    .line 87
    .line 88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v11, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 92
    .line 93
    invoke-virtual {v11}, LF3/f;->H()J

    .line 94
    .line 95
    .line 96
    move-result-wide v12

    .line 97
    cmp-long v14, v12, v8

    .line 98
    .line 99
    if-gez v14, :cond_4

    .line 100
    .line 101
    move-wide v12, v8

    .line 102
    :cond_4
    invoke-virtual {v11, v12, v13}, LF3/f;->v0(J)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    iget-boolean v7, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->B0:Z

    .line 117
    .line 118
    if-eqz v7, :cond_6

    .line 119
    .line 120
    if-eqz v5, :cond_6

    .line 121
    .line 122
    cmp-long v5, v1, v8

    .line 123
    .line 124
    if-lez v5, :cond_6

    .line 125
    .line 126
    iget-boolean v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->F0:Z

    .line 127
    .line 128
    if-eqz v5, :cond_6

    .line 129
    .line 130
    iget-object v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 131
    .line 132
    iget-object v5, v5, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 133
    .line 134
    iget-object v5, v5, Lcom/google/android/material/datepicker/c;->q:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v5, Landroid/widget/ProgressBar;

    .line 137
    .line 138
    const-wide/16 v10, 0x64

    .line 139
    .line 140
    mul-long/2addr v10, v1

    .line 141
    iget-object v7, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 142
    .line 143
    invoke-virtual {v7}, LF3/f;->H()J

    .line 144
    .line 145
    .line 146
    move-result-wide v12

    .line 147
    div-long/2addr v10, v12

    .line 148
    long-to-int v7, v10

    .line 149
    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 150
    .line 151
    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z0()V

    .line 153
    .line 154
    .line 155
    iget-object v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 156
    .line 157
    move-wide/from16 v10, p1

    .line 158
    .line 159
    invoke-virtual {v5, v10, v11}, Lcom/fongmi/android/tv/bean/History;->setCreateTime(J)V

    .line 160
    .line 161
    .line 162
    iget-object v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 163
    .line 164
    invoke-virtual {v5, v1, v2}, Lcom/fongmi/android/tv/bean/History;->setPosition(J)V

    .line 165
    .line 166
    .line 167
    iget-object v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 168
    .line 169
    invoke-virtual {v5, v3, v4}, Lcom/fongmi/android/tv/bean/History;->setDuration(J)V

    .line 170
    .line 171
    .line 172
    iget-boolean v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->D0:Z

    .line 173
    .line 174
    if-nez v5, :cond_7

    .line 175
    .line 176
    iget-object v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/fongmi/android/tv/bean/History;->canSave()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_7

    .line 183
    .line 184
    iget-object v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/fongmi/android/tv/bean/History;->canSync()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_7

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d1()V

    .line 193
    .line 194
    .line 195
    :cond_7
    iget-object v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 196
    .line 197
    invoke-virtual {v5}, Lcom/fongmi/android/tv/bean/History;->getEnding()J

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    cmp-long v5, v10, v8

    .line 202
    .line 203
    if-lez v5, :cond_8

    .line 204
    .line 205
    cmp-long v5, v3, v8

    .line 206
    .line 207
    if-lez v5, :cond_8

    .line 208
    .line 209
    iget-object v5, v0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/fongmi/android/tv/bean/History;->getEnding()J

    .line 212
    .line 213
    .line 214
    move-result-wide v7

    .line 215
    add-long/2addr v7, v1

    .line 216
    cmp-long v1, v7, v3

    .line 217
    .line 218
    if-ltz v1, :cond_8

    .line 219
    .line 220
    invoke-virtual {p0, v6}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X(Z)V

    .line 221
    .line 222
    .line 223
    :cond_8
    :goto_2
    return-void
.end method

.method public final c0()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->L0(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 11
    .line 12
    iget-object v1, v1, Lw3/b;->i:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "land"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 27
    .line 28
    invoke-virtual {v1}, LF3/f;->b0()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Ln2/e;

    .line 35
    .line 36
    invoke-direct {v1}, Ln2/l;-><init>()V

    .line 37
    .line 38
    .line 39
    const-wide/16 v2, 0x96

    .line 40
    .line 41
    iput-wide v2, v1, Ln2/l;->o:J

    .line 42
    .line 43
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 44
    .line 45
    iget-object v2, v2, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/view/ViewGroup;

    .line 52
    .line 53
    invoke-static {v2, v1}, Ln2/p;->a(Landroid/view/ViewGroup;Ln2/l;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    const/16 v1, 0xc

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/16 v1, 0xd

    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 71
    .line 72
    iget-object v1, v1, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    new-instance v2, LO3/u;

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-direct {v2, p0, v3}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v3, 0x32

    .line 81
    .line 82
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 86
    .line 87
    iget-object v1, v1, Lw3/b;->q:Lw3/n;

    .line 88
    .line 89
    iget-object v1, v1, Lw3/n;->B:Landroid/view/View;

    .line 90
    .line 91
    check-cast v1, Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 97
    .line 98
    iget-object v1, v1, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->N:Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 106
    .line 107
    const/16 v2, 0x10

    .line 108
    .line 109
    invoke-static {v2}, LU3/f;->y(I)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const/16 v3, 0xa

    .line 114
    .line 115
    invoke-static {v3}, LU3/f;->y(I)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    const/4 v4, 0x2

    .line 120
    invoke-static {v4}, LU3/f;->c(I)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    const/4 v5, 0x6

    .line 125
    invoke-static {v5}, LU3/f;->c(I)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    iget-object v1, v1, LF3/f;->w:Lf5/d;

    .line 130
    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    iget-object v1, v1, Lf5/d;->n:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v1, Lcom/okjack/ktvlrc/LrcView;

    .line 136
    .line 137
    iget-object v6, v1, Lcom/okjack/ktvlrc/LrcView;->n:LI1/b;

    .line 138
    .line 139
    iput v2, v6, LI1/b;->a:I

    .line 140
    .line 141
    iput v3, v6, LI1/b;->b:I

    .line 142
    .line 143
    iput v4, v6, LI1/b;->c:I

    .line 144
    .line 145
    iput v5, v6, LI1/b;->d:I

    .line 146
    .line 147
    iget-object v2, v1, Lcom/okjack/ktvlrc/LrcView;->q:Le5/b;

    .line 148
    .line 149
    if-nez v2, :cond_3

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {v1}, Lcom/okjack/ktvlrc/LrcView;->b()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 159
    .line 160
    iget-object v1, v1, LF3/f;->v:LH3/d;

    .line 161
    .line 162
    if-eqz v1, :cond_5

    .line 163
    .line 164
    invoke-static {}, LH6/l;->V()F

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    const v3, 0x3f4ccccd    # 0.8f

    .line 169
    .line 170
    .line 171
    mul-float/2addr v2, v3

    .line 172
    iget-object v1, v1, LH3/d;->a:LZ5/d;

    .line 173
    .line 174
    invoke-virtual {v1, v2}, LZ5/d;->c(F)V

    .line 175
    .line 176
    .line 177
    :cond_5
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X:LQ3/d;

    .line 178
    .line 179
    invoke-virtual {v1}, LQ3/d;->c()V

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->t0:LO3/u;

    .line 183
    .line 184
    const-wide/16 v2, 0x7d0

    .line 185
    .line 186
    invoke-static {v1, v2, v3}, Lcom/fongmi/android/tv/App;->b(Ljava/lang/Runnable;J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->T0(Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0()V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final d(Lcom/fongmi/android/tv/bean/Episode;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Episode;->isActivated()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v0

    .line 16
    :goto_0
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0()V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz v2, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/fongmi/android/tv/bean/Flag;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/fongmi/android/tv/bean/Flag;->isActivated()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v3, v4, p1}, Lcom/fongmi/android/tv/bean/Flag;->toggle(ZLcom/fongmi/android/tv/bean/Episode;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/fongmi/android/tv/ui/adapter/u;->o()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->H0:I

    .line 59
    .line 60
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 61
    .line 62
    iget-object v2, v2, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 65
    .line 66
    new-instance v4, LA0/A;

    .line 67
    .line 68
    const/16 v5, 0x14

    .line 69
    .line 70
    invoke-direct {v4, v3, v5}, LA0/A;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 77
    .line 78
    iget-object v2, v2, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/fongmi/android/tv/ui/adapter/q;->p()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    new-instance v4, LO3/m;

    .line 87
    .line 88
    invoke-direct {v4, v2, v3, v1}, LO3/m;-><init>(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Episode;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object p1, v1, v0

    .line 105
    .line 106
    const p1, 0x7f1301b4

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1}, Landroid/support/v4/media/session/q;->T(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final d1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->D0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/History;->canSave()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance v0, LO3/u;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-direct {v0, p0, v1}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, LU3/u;->a(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final e0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iput-object v1, v0, LF3/f;->B:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->j0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v3, LE3/q;->i:LE3/q;

    .line 21
    .line 22
    new-instance v4, LE3/n;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, v1, v2, v5}, LE3/n;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, LE3/r;->b:Landroidx/lifecycle/A;

    .line 29
    .line 30
    invoke-virtual {v0, v3, v1, v4}, LE3/r;->c(LE3/q;Landroidx/lifecycle/A;Ljava/util/concurrent/Callable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final f0(Lcom/fongmi/android/tv/bean/Vod;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getSiteKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "key"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "pic"

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getPic()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "id"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 41
    .line 42
    iget-object p1, p1, Lw3/b;->N:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 49
    .line 50
    iget-object p1, p1, Lw3/b;->N:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 57
    .line 58
    iget-object p1, p1, Lw3/b;->K:Landroidx/core/widget/NestedScrollView;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0:LA/h;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p1, LA/h;->o:Ljava/lang/Object;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 69
    .line 70
    invoke-virtual {p1}, LF3/f;->h0()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 74
    .line 75
    invoke-virtual {p1}, LF3/f;->u0()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->e0()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final g0()Lcom/fongmi/android/tv/bean/Flag;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fongmi/android/tv/ui/adapter/u;->o()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/fongmi/android/tv/bean/Flag;

    .line 14
    .line 15
    return-object v0
.end method

.method public final h0()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->j0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "@@@"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lt3/i;->m()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public final i0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "id"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-static {v0, v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final j(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, LF3/f;->p0(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Q0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->G0()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final j0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-static {v0, v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final k0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "name"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-static {v0, v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final l(Lcom/fongmi/android/tv/bean/Parse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->P0(Lcom/fongmi/android/tv/bean/Parse;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final l0()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/History;->getScale()I

    .line 6
    .line 7
    .line 8
    move-result v1

    if-lez v1, :cond_0

    return v1

    .line 19
    :cond_0
    const-string v0, "scale"

    .line 20
    const/4 v1, 0x4

    .line 21
    .line 22
    invoke-static {v0, v1}, LR6/g;->w(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    if-lez v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final m0()Lcom/fongmi/android/tv/bean/Site;
    .locals 2

    .line 1
    sget-object v0, Lt3/h;->a:Lt3/i;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->j0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lt3/i;->q(Ljava/lang/String;)Lcom/fongmi/android/tv/bean/Site;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, LF3/f;->u(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 8
    .line 9
    return-void
.end method

.method public final n0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->G0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 5
    .line 6
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 7
    .line 8
    iget-object v0, v0, Lw3/n;->t:Landroid/view/ViewGroup;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0:LO3/u;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/fongmi/android/tv/App;->c(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    new-instance v0, LO3/u;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0xc8

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/fongmi/android/tv/App;->b(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 13
    .line 14
    invoke-virtual {v0}, LF3/f;->Y()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 21
    .line 22
    iget-object v0, v0, Lw3/b;->y:Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 23
    .line 24
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/ui/IjkVideoView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 30
    .line 31
    iget-object v0, v0, Lw3/b;->w:Landroidx/media3/ui/PlayerView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    new-instance v3, LA0/B;

    .line 38
    .line 39
    const/16 v4, 0x1a

    .line 40
    .line 41
    invoke-direct {v3, p0, v0, v4}, LA0/B;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v1, v2}, Lcom/fongmi/android/tv/App;->b(Ljava/lang/Runnable;J)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->D:Lv3/a;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    iget-object v0, v0, Lv3/a;->n:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0:LO3/u;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/fongmi/android/tv/App;->c(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    sput-wide v0, LU3/x;->c:J

    .line 22
    .line 23
    sput-wide v0, LU3/x;->d:J

    .line 24
    .line 25
    return-void
.end method

.method public onActionEvent(Lz3/a;)V
    .locals 2
    .annotation runtime LN6/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lz3/a;->f:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p1, Lz3/a;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->z0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lz3/a;->g:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lz3/a;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->y0()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lz3/a;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    sget-object v0, Lz3/a;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    sget-object v0, Lz3/a;->e:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 68
    .line 69
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 70
    .line 71
    iget-object p1, p1, Lw3/n;->u:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lw3/r;

    .line 74
    .line 75
    iget-object p1, p1, Lw3/r;->t:Landroid/view/View;

    .line 76
    .line 77
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    xor-int/2addr v0, v1

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    sget-object v0, Lz3/a;->h:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->B0()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    sget-object v0, Lz3/a;->b:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 109
    .line 110
    .line 111
    :cond_7
    :goto_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-ne p2, p1, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "position"

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const-string v0, "end_by"

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const-string v0, "playback_completion"

    .line 45
    .line 46
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    sget-object v0, Lz3/a;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Lz3/a;->D(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    const-string v0, "user"

    .line 58
    .line 59
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_2

    .line 64
    .line 65
    int-to-long p2, p2

    .line 66
    invoke-virtual {p1, p2, p3}, LF3/f;->i0(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public onCastEvent(Lz3/b;)V
    .locals 2
    .annotation runtime LN6/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, LR3/F;

    .line 7
    .line 8
    invoke-direct {v0}, LR3/F;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v0, LR3/F;->A0:Lz3/b;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/j;->C()Landroidx/fragment/app/S;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Landroidx/fragment/app/S;->c:LA/h;

    .line 18
    .line 19
    invoke-virtual {p1}, LA/h;->u()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/fragment/app/v;

    .line 38
    .line 39
    instance-of v1, v1, Lk4/e;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/j;->C()Landroidx/fragment/app/S;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->s0(Landroidx/fragment/app/S;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/j;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->l0:Z

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    if-ne p1, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-static {p0}, LU3/y;->g(LP3/b;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    iget v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->o0:I

    .line 5
    .line 6
    sget-object v4, Lcom/fongmi/android/tv/service/PlaybackService;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eq v3, v4, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v3, Lcom/fongmi/android/tv/App;->t:Lcom/fongmi/android/tv/App;

    .line 16
    .line 17
    new-instance v4, Landroid/content/Intent;

    .line 18
    .line 19
    sget-object v5, Lcom/fongmi/android/tv/App;->t:Lcom/fongmi/android/tv/App;

    .line 20
    .line 21
    const-class v6, Lcom/fongmi/android/tv/service/PlaybackService;

    .line 22
    .line 23
    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->E0()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0:LA/h;

    .line 33
    .line 34
    iget-object v4, v3, LA/h;->q:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, Ljava/util/Timer;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v4, v3, LA/h;->o:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, LU3/c;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iput-object v5, v3, LA/h;->o:Ljava/lang/Object;

    .line 51
    .line 52
    :cond_2
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 53
    .line 54
    invoke-virtual {v3}, LF3/f;->g0()V

    .line 55
    .line 56
    .line 57
    sget-object v3, LU3/f;->b:LU3/w;

    .line 58
    .line 59
    const-wide/16 v6, 0x0

    .line 60
    .line 61
    iput-wide v6, v3, LU3/w;->a:J

    .line 62
    .line 63
    iget-object v4, v3, LU3/w;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Landroid/os/CountDownTimer;

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 70
    .line 71
    .line 72
    :cond_3
    iput-object v5, v3, LU3/w;->b:Ljava/lang/Object;

    .line 73
    .line 74
    sget-object v3, LF3/i;->a:LC2/c;

    .line 75
    .line 76
    invoke-virtual {v3}, LC2/c;->g()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lz3/h;->a()V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0:LO3/u;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0:LO3/u;

    .line 85
    .line 86
    iget-object v5, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->t0:LO3/u;

    .line 87
    .line 88
    iget-object v6, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->u0:LO3/u;

    .line 89
    .line 90
    new-array v7, v2, [Ljava/lang/Runnable;

    .line 91
    .line 92
    aput-object v3, v7, v1

    .line 93
    .line 94
    aput-object v4, v7, v0

    .line 95
    .line 96
    const/4 v3, 0x2

    .line 97
    aput-object v5, v7, v3

    .line 98
    .line 99
    const/4 v3, 0x3

    .line 100
    aput-object v6, v7, v3

    .line 101
    .line 102
    :goto_1
    if-ge v1, v2, :cond_4

    .line 103
    .line 104
    aget-object v3, v7, v1

    .line 105
    .line 106
    sget-object v4, Lcom/fongmi/android/tv/App;->t:Lcom/fongmi/android/tv/App;

    .line 107
    .line 108
    iget-object v4, v4, Lcom/fongmi/android/tv/App;->i:Landroid/os/Handler;

    .line 109
    .line 110
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    add-int/2addr v1, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 116
    .line 117
    iget-object v0, v0, LE3/r;->b:Landroidx/lifecycle/A;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->O:LO3/t;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroidx/lifecycle/A;->g(Landroidx/lifecycle/B;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 125
    .line 126
    iget-object v0, v0, LE3/r;->c:Landroidx/lifecycle/A;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->P:LO3/t;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroidx/lifecycle/A;->g(Landroidx/lifecycle/B;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 134
    .line 135
    iget-object v0, v0, LE3/r;->d:Landroidx/lifecycle/A;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Q:LO3/t;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroidx/lifecycle/A;->g(Landroidx/lifecycle/B;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 143
    .line 144
    iget-object v0, v0, LE3/r;->h:Landroidx/lifecycle/A;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->R:LO3/t;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroidx/lifecycle/A;->g(Landroidx/lifecycle/B;)V

    .line 149
    .line 150
    .line 151
    invoke-super {p0}, LP3/b;->onDestroy()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public onErrorEvent(Lz3/e;)V
    .locals 4
    .annotation runtime LN6/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lz3/e;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->w0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->q0:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->q0:I

    .line 22
    .line 23
    const/16 v2, 0x14

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-le v0, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0(Lz3/e;)V

    .line 29
    .line 30
    .line 31
    iput v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->q0:I

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 36
    .line 37
    iget v2, v0, LF3/f;->L:I

    .line 38
    .line 39
    add-int/2addr v2, v1

    .line 40
    iput v2, v0, LF3/f;->L:I

    .line 41
    .line 42
    iget v0, p1, Lz3/e;->c:I

    .line 43
    .line 44
    if-le v2, v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U(Lz3/e;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {p1}, Lz3/e;->c()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_8

    .line 55
    .line 56
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 57
    .line 58
    invoke-virtual {v0}, LF3/f;->W()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_8

    .line 63
    .line 64
    iget v0, p1, Lz3/e;->e:I

    .line 65
    .line 66
    const/16 v2, 0x7d0

    .line 67
    .line 68
    if-eq v0, v2, :cond_7

    .line 69
    .line 70
    const/16 v2, 0xbb9

    .line 71
    .line 72
    if-lt v0, v2, :cond_4

    .line 73
    .line 74
    const/16 v2, 0xbbc

    .line 75
    .line 76
    if-gt v0, v2, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/16 v2, 0x3ea

    .line 80
    .line 81
    if-ne v0, v2, :cond_5

    .line 82
    .line 83
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 84
    .line 85
    invoke-virtual {p1}, LF3/f;->j0()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {p1}, Lz3/e;->b()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 96
    .line 97
    invoke-virtual {v0}, LF3/f;->W()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    iget v2, v0, LF3/f;->J:I

    .line 104
    .line 105
    add-int/2addr v2, v1

    .line 106
    iput v2, v0, LF3/f;->J:I

    .line 107
    .line 108
    if-gt v2, v1, :cond_6

    .line 109
    .line 110
    invoke-virtual {p0, v3}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->u0(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    invoke-virtual {p1}, Lz3/e;->b()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_9

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U(Lz3/e;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 125
    .line 126
    invoke-static {v0}, LI3/a;->b(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p1, LF3/f;->A:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1}, LF3/f;->m0()V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0()V

    .line 137
    .line 138
    .line 139
    :cond_9
    :goto_1
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lc/j;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "id"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-static {v0, v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 34
    .line 35
    iget-object v0, v0, Lw3/b;->N:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->O0()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 52
    .line 53
    iget-object p1, p1, Lw3/b;->P:Lw3/s;

    .line 54
    .line 55
    iget-object p1, p1, Lw3/s;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 56
    .line 57
    const/16 v0, 0x8

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 63
    .line 64
    iget-object p1, p1, Lw3/b;->P:Lw3/s;

    .line 65
    .line 66
    iget-object p1, p1, Lw3/s;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->o0()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->E0()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W()V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/j;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 9
    .line 10
    invoke-virtual {v0}, LF3/f;->u0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lc/j;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 11
    .line 12
    iget-object p2, p2, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 25
    .line 26
    iget-object p2, p2, Lw3/b;->O:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->N:Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 36
    .line 37
    iget-object p1, p1, Lw3/b;->r:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 38
    .line 39
    invoke-virtual {p1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->p0()V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const-string p1, "danmu"

    .line 50
    .line 51
    const/4 p2, 0x1

    .line 52
    invoke-static {p1, p2}, LR6/g;->r(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 59
    .line 60
    iget-object p1, p1, Lw3/b;->r:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 61
    .line 62
    iput-boolean p2, p1, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:Z

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p1, Lmaster/flame/danmaku/ui/widget/DanmakuView;->y:Z

    .line 66
    .line 67
    iget-object v0, p1, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:LX5/s;

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-object p1, p1, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:LX5/s;

    .line 73
    .line 74
    iget-boolean v0, p1, LX5/s;->l:Z

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    iput-boolean p2, p1, LX5/s;->l:Z

    .line 80
    .line 81
    const/16 p2, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    .line 85
    .line 86
    const/16 v0, 0x9

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 101
    .line 102
    iget-object p1, p1, Lw3/b;->r:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 103
    .line 104
    invoke-virtual {p1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c()V

    .line 105
    .line 106
    .line 107
    :goto_1
    iget-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->m0:Z

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_2
    return-void
.end method

.method public onPlayerEvent(Lz3/g;)V
    .locals 4
    .annotation runtime LN6/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lz3/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->w0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    iget p1, p1, Lz3/g;->b:I

    .line 15
    .line 16
    if-eqz p1, :cond_f

    .line 17
    .line 18
    const/16 v2, 0xc

    .line 19
    .line 20
    if-eq p1, v2, :cond_d

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq p1, v3, :cond_c

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-eq p1, v3, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    if-eq p1, v1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d1()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 37
    .line 38
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 39
    .line 40
    iget-object p1, p1, Lw3/n;->u:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lw3/r;

    .line 43
    .line 44
    iget-object p1, p1, Lw3/r;->t:Landroid/view/View;

    .line 45
    .line 46
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->B0()V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/16 v1, 0x80

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_3
    iget-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->l0:Z

    .line 81
    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 85
    .line 86
    invoke-virtual {p1}, LF3/f;->b0()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->T0(Z)V

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M0()V

    .line 99
    .line 100
    .line 101
    iput v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->p0:I

    .line 102
    .line 103
    iput v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->q0:I

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->o0()V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 109
    .line 110
    invoke-virtual {p1}, LF3/f;->h0()V

    .line 111
    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->e0:Z

    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iput-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->e0:Z

    .line 118
    .line 119
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 120
    .line 121
    iget-object p1, p1, LF3/f;->w:Lf5/d;

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    invoke-virtual {p1}, Lf5/d;->S()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    iget-object p1, p1, Lf5/d;->n:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p1, Lcom/okjack/ktvlrc/LrcView;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/okjack/ktvlrc/LrcView;->e()V

    .line 136
    .line 137
    .line 138
    :cond_5
    iget-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->g0:Z

    .line 139
    .line 140
    if-eqz p1, :cond_7

    .line 141
    .line 142
    iput-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->g0:Z

    .line 143
    .line 144
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 145
    .line 146
    iget-object v2, p1, LF3/f;->C:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    iget-object v2, p1, LF3/f;->D:Ljava/lang/String;

    .line 152
    .line 153
    :goto_0
    invoke-static {v2}, Lcom/fongmi/android/tv/bean/Track;->find(Ljava/lang/String;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {p1, v2}, LF3/f;->r0(Ljava/util/List;)V

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X0(Z)V

    .line 161
    .line 162
    .line 163
    iget-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->f0:Z

    .line 164
    .line 165
    if-eqz p1, :cond_a

    .line 166
    .line 167
    iput-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->f0:Z

    .line 168
    .line 169
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 170
    .line 171
    iget-object v0, p1, LF3/f;->s:Ljava/util/List;

    .line 172
    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_8

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Lcom/fongmi/android/tv/bean/Danmaku;

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_9
    :goto_1
    invoke-static {}, Lcom/fongmi/android/tv/bean/Danmaku;->empty()Lcom/fongmi/android/tv/bean/Danmaku;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    :goto_2
    invoke-virtual {p1, v0}, LF3/f;->k0(Lcom/fongmi/android/tv/bean/Danmaku;)V

    .line 194
    .line 195
    .line 196
    :cond_a
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 197
    .line 198
    invoke-virtual {p1}, LF3/f;->c0()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iput-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->F0:Z

    .line 203
    .line 204
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 205
    .line 206
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 207
    .line 208
    iget-object p1, p1, Lw3/n;->t:Landroid/view/ViewGroup;

    .line 209
    .line 210
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_b

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y0()V

    .line 219
    .line 220
    .line 221
    :cond_b
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y()V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 225
    .line 226
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 227
    .line 228
    iget v0, v0, LF3/f;->K:I

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Lcom/fongmi/android/tv/bean/History;->setPlayer(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->E0()V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 237
    .line 238
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 239
    .line 240
    iget-object p1, p1, Lw3/n;->p:Landroid/widget/TextView;

    .line 241
    .line 242
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 243
    .line 244
    invoke-virtual {v0}, LF3/f;->Q()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 252
    .line 253
    iget-object p1, p1, Lw3/b;->t:Lcom/google/android/material/datepicker/c;

    .line 254
    .line 255
    iget-object p1, p1, Lcom/google/android/material/datepicker/c;->r:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast p1, Landroid/widget/TextView;

    .line 258
    .line 259
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 260
    .line 261
    invoke-virtual {v0}, LF3/f;->Q()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 269
    .line 270
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 271
    .line 272
    iget-object p1, p1, Lw3/n;->t:Landroid/view/ViewGroup;

    .line 273
    .line 274
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-nez p1, :cond_10

    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y0()V

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_c
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->a1()V

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_d
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 291
    .line 292
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 293
    .line 294
    iget-object p1, p1, Lw3/n;->u:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p1, Lw3/r;

    .line 297
    .line 298
    iget-object p1, p1, Lw3/r;->A:Landroid/widget/TextView;

    .line 299
    .line 300
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 301
    .line 302
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 303
    .line 304
    iget-object v0, v0, LF3/f;->u:LA0/L;

    .line 305
    .line 306
    if-eqz v0, :cond_e

    .line 307
    .line 308
    invoke-virtual {v0}, LA0/L;->r0()V

    .line 309
    .line 310
    .line 311
    iget-object v0, v0, LA0/L;->h0:Ljava/util/List;

    .line 312
    .line 313
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-nez v0, :cond_e

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_e
    const/16 v1, 0x8

    .line 321
    .line 322
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 326
    .line 327
    if-eqz p1, :cond_10

    .line 328
    .line 329
    invoke-virtual {p1}, Landroidx/fragment/app/v;->L()Z

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-eqz p1, :cond_10

    .line 334
    .line 335
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->U:LR3/o;

    .line 336
    .line 337
    iget-object v0, p1, LR3/o;->z0:Lw3/j;

    .line 338
    .line 339
    iget-object v0, v0, Lw3/j;->o:Lcom/google/android/material/textview/MaterialTextView;

    .line 340
    .line 341
    iget-object p1, p1, LR3/o;->A0:Lw3/b;

    .line 342
    .line 343
    iget-object p1, p1, Lw3/b;->q:Lw3/n;

    .line 344
    .line 345
    iget-object p1, p1, Lw3/n;->u:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast p1, Lw3/r;

    .line 348
    .line 349
    iget-object p1, p1, Lw3/r;->A:Landroid/widget/TextView;

    .line 350
    .line 351
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 352
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_f
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->g0:Z

    .line 362
    .line 363
    invoke-virtual {p0, v1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X0(Z)V

    .line 364
    .line 365
    .line 366
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->f0:Z

    .line 367
    .line 368
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->e0:Z

    .line 369
    .line 370
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0:LA/h;

    .line 371
    .line 372
    iput-object p0, p1, LA/h;->o:Ljava/lang/Object;

    .line 373
    .line 374
    :cond_10
    :goto_4
    return-void
.end method

.method public onRefreshEvent(Lz3/h;)V
    .locals 6
    .annotation runtime LN6/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lz3/h;->a:I

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->e0()V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_1
    const/16 v1, 0x8

    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->A0()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    const/16 v1, 0xb

    .line 26
    .line 27
    if-ne v0, v1, :cond_f

    .line 28
    .line 29
    iget-object p1, p1, Lz3/h;->c:Lcom/fongmi/android/tv/bean/Vod;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getPic()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "id"

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    :cond_3
    if-nez v0, :cond_4

    .line 71
    .line 72
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->h0()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Lcom/fongmi/android/tv/bean/History;->setKey(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    if-nez v2, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Lcom/fongmi/android/tv/bean/History;->setVodName(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    if-nez v2, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 95
    .line 96
    iget-object v0, v0, Lw3/b;->B:Lcom/google/android/material/textview/MaterialTextView;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    if-nez v2, :cond_7

    .line 106
    .line 107
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 108
    .line 109
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 110
    .line 111
    iget-object v0, v0, Lw3/n;->r:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->g0()Lcom/fongmi/android/tv/bean/Flag;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getFlags()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    new-instance v4, LO3/v;

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-direct {v4, p0, v0, v5}, LO3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v4}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 135
    .line 136
    .line 137
    if-nez v1, :cond_8

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Vod;->getPic()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 144
    .line 145
    invoke-virtual {v3, v0}, Lcom/fongmi/android/tv/bean/History;->setVodPic(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M0()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->F0()V

    .line 152
    .line 153
    .line 154
    :cond_8
    if-eqz v1, :cond_9

    .line 155
    .line 156
    if-nez v2, :cond_a

    .line 157
    .line 158
    :cond_9
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M0()V

    .line 159
    .line 160
    .line 161
    :cond_a
    if-eqz v1, :cond_b

    .line 162
    .line 163
    if-nez v2, :cond_c

    .line 164
    .line 165
    :cond_b
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d1()V

    .line 166
    .line 167
    .line 168
    :cond_c
    if-eqz v1, :cond_d

    .line 169
    .line 170
    if-nez v2, :cond_e

    .line 171
    .line 172
    :cond_d
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->h0()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/fongmi/android/tv/bean/Keep;->find(Ljava/lang/String;)Lcom/fongmi/android/tv/bean/Keep;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_e

    .line 181
    .line 182
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/History;->getVodName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Lcom/fongmi/android/tv/bean/Keep;->setVodName(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/History;->getVodPic()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/fongmi/android/tv/bean/Keep;->setVodPic(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/Keep;->save()V

    .line 201
    .line 202
    .line 203
    :cond_e
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->W0(Lcom/fongmi/android/tv/bean/Vod;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_f
    iget-object p1, p1, Lz3/h;->b:Ljava/lang/String;

    .line 208
    .line 209
    const/16 v1, 0x9

    .line 210
    .line 211
    if-ne v0, v1, :cond_11

    .line 212
    .line 213
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 214
    .line 215
    invoke-static {p1}, Lcom/fongmi/android/tv/bean/Sub;->from(Ljava/lang/String;)Lcom/fongmi/android/tv/bean/Sub;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v0}, LF3/f;->N()J

    .line 220
    .line 221
    .line 222
    move-result-wide v1

    .line 223
    iput-wide v1, v0, LF3/f;->H:J

    .line 224
    .line 225
    iput-object p1, v0, LF3/f;->G:Lcom/fongmi/android/tv/bean/Sub;

    .line 226
    .line 227
    invoke-virtual {v0}, LF3/f;->Y()Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_10

    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_10
    invoke-virtual {v0}, LF3/f;->m0()V

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_11
    const/16 v1, 0xa

    .line 239
    .line 240
    if-ne v0, v1, :cond_12

    .line 241
    .line 242
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 243
    .line 244
    invoke-static {p1}, Lcom/fongmi/android/tv/bean/Danmaku;->from(Ljava/lang/String;)Lcom/fongmi/android/tv/bean/Danmaku;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {v0, p1}, LF3/f;->k0(Lcom/fongmi/android/tv/bean/Danmaku;)V

    .line 249
    .line 250
    .line 251
    :cond_12
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/j;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/j;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0:LA/h;

    .line 5
    .line 6
    invoke-virtual {v0}, LA/h;->M()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, LA/h;->L()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->m0:Z

    .line 14
    .line 15
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/j;->onStop()V

    .line 2
    .line 3
    .line 4
    const-string v0, "background"

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v0, v1}, LR6/g;->w(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->y0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {v0, v1}, LR6/g;->w(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0:LA/h;

    .line 23
    .line 24
    invoke-virtual {v0}, LA/h;->M()V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->m0:Z

    .line 29
    .line 30
    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v0, LO3/u;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, LO3/u;-><init>(Lcom/fongmi/android/tv/ui/activity/VideoActivity;I)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0x1f4

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/fongmi/android/tv/App;->b(Ljava/lang/Runnable;J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {v0, v1}, LF3/f;->U(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v0, "background"

    .line 34
    .line 35
    invoke-static {v0, v1}, LR6/g;->w(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->x0:LF2/c;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 44
    .line 45
    invoke-virtual {v1}, LF3/f;->T()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 50
    .line 51
    invoke-virtual {v2}, LF3/f;->S()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->l0()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0, p0, v1, v2, v3}, LF2/c;->K(Landroid/app/Activity;III)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, LU3/y;->g(LP3/b;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 2
    .line 3
    iget-object v0, v0, LF3/f;->D:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, LU3/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 14
    .line 15
    invoke-virtual {v2}, LF3/f;->K()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p0, v0, v1, v2}, LU3/f;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1}, LF3/f;->s0(LP3/b;Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->k0:Z

    .line 32
    .line 33
    return-void
.end method

.method public final p0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/j;->C()Landroidx/fragment/app/S;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/S;->c:LA/h;

    .line 6
    .line 7
    invoke-virtual {v0}, LA/h;->u()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/fragment/app/v;

    .line 26
    .line 27
    instance-of v2, v1, Lk4/e;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    check-cast v1, Lk4/e;

    .line 32
    .line 33
    invoke-virtual {v1}, Lk4/e;->t0()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 4
    .line 5
    iget-object v0, v0, Lw3/n;->t:Landroid/view/ViewGroup;

    .line 6
    .line 7
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d0:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public final q0(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iput-boolean p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->h0:Z

    .line 4
    .line 5
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/J;->d()V

    .line 13
    .line 14
    .line 15
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lt3/h;->a:Lt3/i;

    .line 21
    .line 22
    invoke-virtual {v0}, Lt3/i;->r()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/fongmi/android/tv/bean/Site;

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/Site;->isChangeable()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/Site;->isSearchable()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :goto_1
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y:LE3/r;

    .line 65
    .line 66
    invoke-virtual {v0}, LE3/r;->d()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    new-instance v2, LE3/m;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    invoke-direct {v2, v0, p1, v3, v1}, LE3/m;-><init>(LE3/r;Ljava/lang/String;ZI)V

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final r0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accelerometer_rotation"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    move v2, v1

    .line 16
    :cond_0
    return v2
.end method

.method public final s0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->i:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "port"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final t0()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/fongmi/android/tv/bean/Vod;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/fongmi/android/tv/bean/Vod;->getSiteName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v2, v3, v0

    .line 31
    .line 32
    const v2, 0x7f1301bb

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/support/v4/media/session/q;->T(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->V:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 43
    .line 44
    iget-object v3, v2, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/J;->g(I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->a0:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->i0()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->h0:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->E0()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->f0(Lcom/fongmi/android/tv/bean/Vod;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final u0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 2
    .line 3
    invoke-virtual {v0}, LF3/f;->N()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 8
    .line 9
    iget v3, v2, LF3/f;->I:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    move v3, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    xor-int/2addr v3, v4

    .line 18
    iput v3, v2, LF3/f;->I:I

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget p1, v2, LF3/f;->K:I

    .line 23
    .line 24
    const-string v2, "decode_"

    .line 25
    .line 26
    invoke-static {p1, v2}, Landroid/support/v4/media/session/h;->k(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2, p1}, LR6/g;->Q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 40
    .line 41
    iget-object v3, v2, Lw3/b;->w:Landroidx/media3/ui/PlayerView;

    .line 42
    .line 43
    iget-object v2, v2, Lw3/b;->y:Ltv/danmaku/ijk/media/player/ui/IjkVideoView;

    .line 44
    .line 45
    invoke-virtual {p1, v3, v2}, LF3/f;->V(Landroidx/media3/ui/PlayerView;Ltv/danmaku/ijk/media/player/ui/IjkVideoView;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 49
    .line 50
    iput-wide v0, p1, LF3/f;->H:J

    .line 51
    .line 52
    invoke-virtual {p1}, LF3/f;->m0()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->G0()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S0()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final v0(Lz3/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 2
    .line 3
    iget-object v0, v0, Lw3/b;->N:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 10
    .line 11
    iget-object v0, v0, LF3/f;->D:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/fongmi/android/tv/bean/Track;->delete(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lz3/e;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 21
    .line 22
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 23
    .line 24
    iget-object v0, v0, Lw3/s;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 31
    .line 32
    iget-object v0, v0, Lw3/b;->P:Lw3/s;

    .line 33
    .line 34
    iget-object v0, v0, Lw3/s;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->o0()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->v0:LA/h;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-object v0, p1, LA/h;->o:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 48
    .line 49
    iget-object p1, p1, LF3/f;->u:LA0/L;

    .line 50
    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, LA0/L;->V()Ln0/X;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, LV0/k;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v1, LV0/j;

    .line 63
    .line 64
    invoke-direct {v1, v0}, LV0/j;-><init>(LV0/k;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, LV0/j;->b()Ln0/W;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, LV0/j;->a()Ln0/X;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, LA0/L;->k0(Ln0/X;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 78
    .line 79
    invoke-virtual {p1}, LF3/f;->h0()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 83
    .line 84
    invoke-virtual {p1}, LF3/f;->u0()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final w0(Lcom/fongmi/android/tv/bean/Flag;ZZ)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Flag;->isActivated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/fongmi/android/tv/bean/Flag;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/fongmi/android/tv/bean/Flag;->getFlag()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1, v2}, Lcom/fongmi/android/tv/bean/Flag;->setFlag(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/fongmi/android/tv/bean/Flag;

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Lcom/fongmi/android/tv/bean/Flag;->setActivated(Lcom/fongmi/android/tv/bean/Flag;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, v0, Lcom/fongmi/android/tv/ui/adapter/u;->f:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/J;->f(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 62
    .line 63
    iget-object v0, v0, Lw3/b;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Z:Lcom/fongmi/android/tv/ui/adapter/u;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/fongmi/android/tv/ui/adapter/u;->o()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    new-instance v2, LO3/m;

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    invoke-direct {v2, v0, v1, v4}, LO3/m;-><init>(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Flag;->getEpisodes()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->K0(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v3}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->R0(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/fongmi/android/tv/bean/History;->getVodRemarks()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/4 v1, 0x1

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string v2, "mark"

    .line 104
    .line 105
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const-string v2, ""

    .line 110
    .line 111
    invoke-static {p2, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_3

    .line 120
    .line 121
    move p2, v1

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move p2, v3

    .line 124
    :goto_1
    invoke-virtual {p1, v0, p2}, Lcom/fongmi/android/tv/bean/Flag;->find(Ljava/lang/String;Z)Lcom/fongmi/android/tv/bean/Episode;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Episode;->isActivated()Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_4

    .line 135
    .line 136
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->T:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/fongmi/android/tv/ui/adapter/q;->a()I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-le p2, v1, :cond_4

    .line 143
    .line 144
    move v3, v1

    .line 145
    :cond_4
    invoke-virtual {p0, v3}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->R0(Z)V

    .line 146
    .line 147
    .line 148
    if-eqz p1, :cond_8

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Episode;->isActivated()Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_5

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    invoke-static {}, LH6/l;->Y()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eq p2, v1, :cond_7

    .line 162
    .line 163
    if-nez p3, :cond_6

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_6
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->b0:Lcom/fongmi/android/tv/bean/History;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Episode;->getName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    invoke-virtual {p2, p3}, Lcom/fongmi/android/tv/bean/History;->setVodRemarks(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d(Lcom/fongmi/android/tv/bean/Episode;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 179
    .line 180
    iget-object p1, p1, Lw3/b;->P:Lw3/s;

    .line 181
    .line 182
    iget-object p1, p1, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 183
    .line 184
    const/16 p2, 0x8

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 190
    .line 191
    iget-object p1, p1, Lw3/b;->P:Lw3/s;

    .line 192
    .line 193
    iget-object p1, p1, Lw3/s;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 194
    .line 195
    const/4 p2, 0x0

    .line 196
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_7
    :goto_2
    invoke-virtual {p1, v1}, Lcom/fongmi/android/tv/bean/Episode;->setSelected(Z)V

    .line 201
    .line 202
    .line 203
    iget-object p2, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 204
    .line 205
    iget-object p2, p2, Lw3/b;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 206
    .line 207
    iget-object p3, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->S:Lcom/fongmi/android/tv/ui/adapter/q;

    .line 208
    .line 209
    iget-object p3, p3, Lcom/fongmi/android/tv/ui/adapter/q;->g:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast p3, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-interface {p3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 218
    .line 219
    .line 220
    :cond_8
    :goto_3
    return-void
.end method

.method public final x0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 2
    .line 3
    xor-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, LU3/f;->j(LP3/b;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->l0:Z

    .line 15
    .line 16
    const/16 v1, 0xc

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :cond_1
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->s0()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->r0()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const/16 v0, 0xd

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    invoke-static {p0}, LU3/f;->u(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->X:LQ3/d;

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->n0:Z

    .line 50
    .line 51
    iput-boolean v1, v0, LQ3/d;->z:Z

    .line 52
    .line 53
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->M:Lw3/b;

    .line 54
    .line 55
    iget-object v0, v0, Lw3/b;->q:Lw3/n;

    .line 56
    .line 57
    iget-object v0, v0, Lw3/n;->I:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, LA/h;

    .line 60
    .line 61
    iget-object v0, v0, LA/h;->o:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    const v1, 0x7f08010e

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const v1, 0x7f08010d

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y0()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final y0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x80

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 11
    .line 12
    invoke-virtual {v0}, LF3/f;->e0()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d1()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final z0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x80

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->c0:LF3/f;

    .line 11
    .line 12
    invoke-virtual {v0}, LF3/f;->f0()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->Y()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fongmi/android/tv/ui/activity/VideoActivity;->d1()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
