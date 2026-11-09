.class final Ldev/duo/fold/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final i:F = 178.0f

.field static final j:J = 0x140L

.field static final k:J = 0xbb8L

.field static final l:J = 0x4b0L

.field static final m:J = 0x258L


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:Z

.field g:F

.field final h:F


# direct methods
.method constructor <init>(JF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/duo/fold/a;->d:J

    iput-wide v0, p0, Ldev/duo/fold/a;->e:J

    .line 7
    iput-wide p1, p0, Ldev/duo/fold/a;->b:J

    iput p3, p0, Ldev/duo/fold/a;->h:F

    return-void
.end method

.method static b(JJ)F
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    sub-long/2addr p2, p0

    long-to-float p0, p2

    const/high16 p1, 0x43a00000    # 320.0f

    div-float/2addr p0, p1

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p1, p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p0, p2

    const/high16 p2, 0x40400000    # 3.0f

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method a(ZFJ)J
    .locals 0

    .line 1
    iput-boolean p1, p0, Ldev/duo/fold/a;->f:Z

    iput p2, p0, Ldev/duo/fold/a;->g:F

    iput-wide p3, p0, Ldev/duo/fold/a;->c:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ldev/duo/fold/a;->e:J

    iput-wide p1, p0, Ldev/duo/fold/a;->d:J

    .line 2
    iget-wide p1, p0, Ldev/duo/fold/a;->a:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Ldev/duo/fold/a;->a:J

    return-wide p1
.end method

.method a(FZ)Z
    .locals 4

    .line 5
    iget-boolean v0, p0, Ldev/duo/fold/a;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldev/duo/fold/a;->g:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Ldev/duo/fold/a;->g:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iput v0, p0, Ldev/duo/fold/a;->g:F

    .line 7
    iget-boolean v1, p0, Ldev/duo/fold/a;->f:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez p2, :cond_2

    sub-float/2addr v0, p1

    iget p1, p0, Ldev/duo/fold/a;->h:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    return v2

    :cond_3
    if-nez p2, :cond_5

    sub-float p2, p1, v0

    .line 8
    iget v0, p0, Ldev/duo/fold/a;->h:F

    cmpl-float p2, p2, v0

    if-gez p2, :cond_4

    const/high16 p2, 0x43320000    # 178.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    :cond_4
    return v2

    :cond_5
    return v3
.end method

.method a(JJ)Z
    .locals 2

    .line 3
    iget-wide v0, p0, Ldev/duo/fold/a;->a:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    iget-wide p1, p0, Ldev/duo/fold/a;->d:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    cmp-long p1, p3, p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-wide p3, p0, Ldev/duo/fold/a;->e:J

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method c(JJ)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Ldev/duo/fold/a;->a:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    iget-wide p1, p0, Ldev/duo/fold/a;->c:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_1

    iget-wide p1, p0, Ldev/duo/fold/a;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    iget-wide p1, p0, Ldev/duo/fold/a;->e:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-wide p3, p0, Ldev/duo/fold/a;->d:J

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method d(JJ)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Ldev/duo/fold/a;->a:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    iget-wide p1, p0, Ldev/duo/fold/a;->c:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_1

    iget-wide p1, p0, Ldev/duo/fold/a;->e:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ldev/duo/fold/a;->d:J

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method e(JJ)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Ldev/duo/fold/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Ldev/duo/fold/a;->c:J

    sub-long/2addr p1, v0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
