.class final Ldev/duo/hookprobe/f$d;
.super Ldev/duo/hookprobe/f$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic i:Ldev/duo/hookprobe/f;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/f;Landroid/widget/LinearLayout;Z)V
    .locals 11

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    .line 2
    invoke-static {p1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5185\u5c4f\u548c\u5916\u5c4f"

    goto :goto_0

    :cond_0
    const-string v0, "\u5916\u5c4f\uff08\u5408\u4e0a\u65f6\uff09"

    :goto_0
    move-object v4, v0

    const/16 v8, 0x64

    const/4 v9, 0x0

    const-string v5, "%"

    const/16 v6, 0xc

    const/16 v7, 0x3c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v10, p3

    invoke-direct/range {v1 .. v10}, Ldev/duo/hookprobe/f$f;-><init>(Ldev/duo/hookprobe/f;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5fae\u4fe1"

    return-object v0

    :cond_0
    const-string v0, "\u5916\u5c4f"

    return-object v0
.end method


# virtual methods
.method a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldev/duo/hookprobe/o;->b(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    invoke-static {p1, v0}, Ldev/duo/hookprobe/f;->b(Ldev/duo/hookprobe/f;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->h()V

    .line 6
    iget-object v0, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ldev/duo/hookprobe/f$d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7f29\u653e\u5df2\u8bbe\u4e3a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ldev/duo/hookprobe/P;->b(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;Ljava/lang/String;)V

    return-void
.end method

.method b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/duo/hookprobe/o;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c()I
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/duo/hookprobe/o;->m(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/duo/hookprobe/o;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v0}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->d(Ldev/duo/hookprobe/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/duo/hookprobe/o;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8ddf\u968f\u5168\u5c40 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    invoke-static {v1}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v1

    invoke-virtual {v1}, Ldev/duo/hookprobe/o;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\u539f\u59cb\u5927\u5c0f 100%"

    return-object v0
.end method

.method f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ldev/duo/hookprobe/f$f;->h()V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/f$d;->i:Ldev/duo/hookprobe/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ldev/duo/hookprobe/f$d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7f29\u653e\u5df2\u6062\u590d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ldev/duo/hookprobe/f$d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;Ljava/lang/String;)V

    return-void
.end method
