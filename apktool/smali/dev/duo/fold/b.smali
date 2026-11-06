.class final Ldev/duo/fold/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final d:J


# direct methods
.method constructor <init>(FFFJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43020000    # 130.0f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43310000    # 177.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 4
    invoke-static {p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x64

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 7
    iput p1, p0, Ldev/duo/fold/b;->a:F

    iput p2, p0, Ldev/duo/fold/b;->b:F

    iput p3, p0, Ldev/duo/fold/b;->c:F

    iput-wide p4, p0, Ldev/duo/fold/b;->d:J

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u5f00\u5408\u89e6\u53d1\u53c2\u6570\u8d85\u51fa\u8303\u56f4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(FLdev/duo/fold/f$a;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Ldev/duo/fold/f$a;->c:Ldev/duo/fold/f$a;

    if-ne p2, p3, :cond_0

    iget p2, p0, Ldev/duo/fold/b;->a:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method a(JJLdev/duo/fold/f$a;)Z
    .locals 2

    .line 2
    sget-object v0, Ldev/duo/fold/f$a;->c:Ldev/duo/fold/f$a;

    if-ne p5, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p5, p3, v0

    if-ltz p5, :cond_0

    sub-long/2addr p1, p3

    iget-wide p3, p0, Ldev/duo/fold/b;->d:J

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
