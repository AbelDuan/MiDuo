.class final Ldev/duo/hookprobe/f$e;
.super Ldev/duo/hookprobe/f$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final i:Ljava/lang/String;

.field final synthetic j:Ldev/duo/hookprobe/f;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/f;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 10

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    .line 2
    xor-int/lit8 v8, p6, 0x1

    const-string v4, "px"

    const/4 v6, 0x1

    const/16 v7, 0x7e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Ldev/duo/hookprobe/f$f;-><init>(Ldev/duo/hookprobe/f;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 3
    iput-object p4, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    return-void
.end method

.method private j()I
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    const-string v1, "outer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/duo/hookprobe/o;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    invoke-virtual {v0}, Ldev/duo/hookprobe/o;->q()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldev/duo/hookprobe/o;->h(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    const-string v1, "inner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5185\u5c4f"

    return-object v0

    :cond_0
    const-string v0, "\u5916\u5c4f"

    return-object v0
.end method


# virtual methods
.method a(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$e;->h()V

    .line 3
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ldev/duo/hookprobe/f$e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u8bbe\u4e3a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "px"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/duo/hookprobe/f;->b(Ldev/duo/hookprobe/f;Ljava/lang/String;)V

    return-void
.end method

.method b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldev/duo/hookprobe/o;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c()I
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    const-string v1, "outer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/duo/hookprobe/o;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/duo/hookprobe/P;->e(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldev/duo/hookprobe/o;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldev/duo/hookprobe/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8ddf\u968f\u5168\u5c40 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Ldev/duo/hookprobe/f$e;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->e(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/f$e;

    move-result-object v0

    invoke-virtual {v0}, Ldev/duo/hookprobe/f$e;->h()V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->f(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/f$e;

    move-result-object v0

    invoke-virtual {v0}, Ldev/duo/hookprobe/f$e;->h()V

    .line 3
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ldev/duo/hookprobe/f$e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u8ddf\u968f\u5168\u5c40 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Ldev/duo/hookprobe/f$e;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method h()V
    .locals 4

    .line 1
    invoke-super {p0}, Ldev/duo/hookprobe/f$f;->h()V

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    const-string v1, "outer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v2, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v2}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldev/duo/hookprobe/o;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v2, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v2}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldev/duo/hookprobe/o;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.ss.android.ugc.aweme"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "inner"

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v3, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v3}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ldev/duo/hookprobe/o;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldev/duo/hookprobe/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v2, p0, Ldev/duo/hookprobe/f$e;->j:Ldev/duo/hookprobe/f;

    invoke-static {v2}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldev/duo/hookprobe/o;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 9
    :goto_1
    iget-object v2, p0, Ldev/duo/hookprobe/f$f;->f:Landroid/widget/LinearLayout;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    iget-object v2, p0, Ldev/duo/hookprobe/f$f;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const v3, 0x3ee66666    # 0.45f

    goto :goto_2

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Ldev/duo/hookprobe/f$f;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    iget-object v0, p0, Ldev/duo/hookprobe/f$f;->b:Landroid/widget/SeekBar;

    sget v1, Ldev/duo/hookprobe/U;->x:I

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/widget/SeekBar;I)V

    .line 14
    iget-object v0, p0, Ldev/duo/hookprobe/f$f;->c:Landroid/widget/TextView;

    sget v1, Ldev/duo/hookprobe/U;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v0, p0, Ldev/duo/hookprobe/f$f;->d:Landroid/widget/TextView;

    const-string v1, "\u5df2\u7528\u539f\u751f\u9876\u680f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
