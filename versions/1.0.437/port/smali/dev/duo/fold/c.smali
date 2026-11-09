.class final Ldev/duo/fold/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final h:J = 0x78L

.field private static final i:I = 0x20

.field static final j:J = 0x23L

.field static final k:J = 0x78L

.field static final l:F = 3.0f


# instance fields
.field private final a:[F

.field private final b:[J

.field private c:I

.field private d:I

.field private e:F

.field private f:J

.field private final g:F


# direct methods
.method constructor <init>(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Ldev/duo/fold/c;->a:[F

    .line 3
    new-array v0, v0, [J

    iput-object v0, p0, Ldev/duo/fold/c;->b:[J

    .line 5
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Ldev/duo/fold/c;->e:F

    .line 9
    iput p1, p0, Ldev/duo/fold/c;->g:F

    return-void
.end method


# virtual methods
.method a(J)F
    .locals 5

    .line 7
    iget v0, p0, Ldev/duo/fold/c;->c:I

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Ldev/duo/fold/c;->b(J)F

    move-result v0

    .line 9
    iget-wide v1, p0, Ldev/duo/fold/c;->f:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 10
    iput-wide p1, p0, Ldev/duo/fold/c;->f:J

    .line 11
    iget p1, p0, Ldev/duo/fold/c;->g:F

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-lez p2, :cond_3

    const-wide/16 v3, 0xfa

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    neg-long v1, v1

    long-to-float p2, v1

    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 13
    iget p1, p0, Ldev/duo/fold/c;->e:F

    sub-float v1, v0, p1

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    iput p1, p0, Ldev/duo/fold/c;->e:F

    sub-float p1, v0, p1

    .line 14
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    iput v0, p0, Ldev/duo/fold/c;->e:F

    .line 15
    :cond_2
    iget p1, p0, Ldev/duo/fold/c;->e:F

    return p1

    .line 16
    :cond_3
    :goto_0
    iput v0, p0, Ldev/duo/fold/c;->e:F

    return v0
.end method

.method a(JJ)F
    .locals 5

    .line 23
    iget v0, p0, Ldev/duo/fold/c;->c:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 24
    :cond_0
    invoke-virtual {p0}, Ldev/duo/fold/c;->b()F

    move-result v0

    .line 25
    iget v1, p0, Ldev/duo/fold/c;->c:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 26
    iget v2, p0, Ldev/duo/fold/c;->d:I

    add-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x20

    .line 27
    iget-object v3, p0, Ldev/duo/fold/c;->b:[J

    aget-wide v3, v3, v2

    sub-long v3, p1, v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    iget-object v3, p0, Ldev/duo/fold/c;->a:[F

    aget v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ldev/duo/fold/c;->b()F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method a(FJ)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    const/high16 v0, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Ldev/duo/fold/c;->c:I

    const/16 v1, 0x20

    if-lez v0, :cond_1

    iget-object v2, p0, Ldev/duo/fold/c;->b:[J

    iget v3, p0, Ldev/duo/fold/c;->d:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v3, v1

    aget-wide v2, v2, v3

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget v2, p0, Ldev/duo/fold/c;->d:I

    add-int v3, v2, v0

    rem-int/2addr v3, v1

    if-ne v0, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 3
    rem-int/2addr v2, v1

    iput v2, p0, Ldev/duo/fold/c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldev/duo/fold/c;->c:I

    add-int/2addr v2, v0

    rem-int/lit8 v3, v2, 0x20

    .line 4
    :cond_2
    iget-object v0, p0, Ldev/duo/fold/c;->a:[F

    aput p1, v0, v3

    iget-object v0, p0, Ldev/duo/fold/c;->b:[J

    aput-wide p2, v0, v3

    iget v0, p0, Ldev/duo/fold/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldev/duo/fold/c;->c:I

    .line 5
    iget v0, p0, Ldev/duo/fold/c;->e:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iput p1, p0, Ldev/duo/fold/c;->e:F

    iput-wide p2, p0, Ldev/duo/fold/c;->f:J

    :cond_3
    :goto_0
    return-void
.end method

.method a()Z
    .locals 1

    .line 6
    iget v0, p0, Ldev/duo/fold/c;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method a(JJF)Z
    .locals 9

    .line 17
    iget v0, p0, Ldev/duo/fold/c;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    move v5, v3

    :goto_0
    if-ltz v0, :cond_2

    .line 20
    iget v6, p0, Ldev/duo/fold/c;->d:I

    add-int/2addr v6, v0

    rem-int/lit8 v6, v6, 0x20

    .line 21
    iget-object v7, p0, Ldev/duo/fold/c;->b:[J

    aget-wide v7, v7, v6

    sub-long v7, p1, v7

    cmp-long v7, v7, p3

    if-lez v7, :cond_1

    move p1, v2

    goto :goto_1

    .line 22
    :cond_1
    iget-object v7, p0, Ldev/duo/fold/c;->a:[F

    aget v7, v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v7, p0, Ldev/duo/fold/c;->a:[F

    aget v6, v7, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 17
    :cond_2
    move p1, v1

    .line 22
    :goto_1
    cmpl-float p2, v5, v3

    if-nez p2, :cond_3

    return v2

    :cond_3
    if-eqz p1, :cond_4

    sub-float/2addr v4, v5

    cmpg-float p1, v4, p5

    if-gtz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method b()F
    .locals 3

    .line 1
    iget v0, p0, Ldev/duo/fold/c;->c:I

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    :cond_0
    iget-object v1, p0, Ldev/duo/fold/c;->a:[F

    iget v2, p0, Ldev/duo/fold/c;->d:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x20

    aget v0, v1, v2

    return v0
.end method

.method b(J)F
    .locals 6

    .line 2
    iget v0, p0, Ldev/duo/fold/c;->c:I

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ldev/duo/fold/c;->b()F

    move-result v0

    .line 4
    invoke-virtual {p0}, Ldev/duo/fold/c;->c()J

    move-result-wide v1

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_6

    const-wide/16 v1, 0x78

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ldev/duo/fold/c;->c()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ldev/duo/fold/c;->d(J)F

    move-result v1

    .line 7
    const-wide/16 v2, 0x23

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v1, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    sub-long/2addr p1, v2

    long-to-float p1, p1

    const/high16 p2, 0x42aa0000    # 85.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr v1, p2

    :cond_2
    const/high16 p1, 0x40400000    # 3.0f

    cmpl-float p2, v1, p1

    if-lez p2, :cond_3

    move v1, p1

    :cond_3
    const/high16 p1, -0x3fc00000    # -3.0f

    cmpg-float p2, v1, p1

    if-gez p2, :cond_4

    move v1, p1

    :cond_4
    add-float/2addr v0, v1

    const/4 p1, 0x0

    cmpg-float p2, v0, p1

    if-gez p2, :cond_5

    return p1

    :cond_5
    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float p2, v0, p1

    if-lez p2, :cond_6

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method c()J
    .locals 3

    .line 1
    iget v0, p0, Ldev/duo/fold/c;->c:I

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v1, p0, Ldev/duo/fold/c;->b:[J

    iget v2, p0, Ldev/duo/fold/c;->d:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x20

    aget-wide v0, v1, v2

    return-wide v0
.end method

.method c(J)Z
    .locals 2

    .line 2
    iget v0, p0, Ldev/duo/fold/c;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ldev/duo/fold/c;->c()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x78

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Ldev/duo/fold/c;->c()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldev/duo/fold/c;->d(J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method d(J)F
    .locals 9

    .line 1
    iget v0, p0, Ldev/duo/fold/c;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget v3, p0, Ldev/duo/fold/c;->d:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0x20

    .line 3
    iget-object v4, p0, Ldev/duo/fold/c;->b:[J

    aget-wide v4, v4, v3

    sub-long/2addr p1, v4

    const-wide/16 v4, 0xf0

    cmp-long p1, p1, v4

    if-lez p1, :cond_1

    return v1

    :cond_1
    sub-int/2addr v0, v2

    move p1, v3

    :goto_0
    if-ltz v0, :cond_3

    .line 6
    iget p2, p0, Ldev/duo/fold/c;->d:I

    add-int/2addr p2, v0

    rem-int/lit8 p2, p2, 0x20

    .line 7
    iget-object v4, p0, Ldev/duo/fold/c;->b:[J

    aget-wide v5, v4, v3

    aget-wide v7, v4, p2

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x78

    cmp-long v4, v5, v7

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move p1, p2

    goto :goto_0

    :cond_3
    :goto_1
    if-ne p1, v3, :cond_4

    .line 12
    iget p1, p0, Ldev/duo/fold/c;->d:I

    iget p2, p0, Ldev/duo/fold/c;->c:I

    add-int/2addr p1, p2

    sub-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x20

    .line 13
    iget-object p2, p0, Ldev/duo/fold/c;->b:[J

    aget-wide v4, p2, v3

    aget-wide v6, p2, p1

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1e0

    cmp-long p2, v4, v6

    if-lez p2, :cond_4

    return v1

    .line 16
    :cond_4
    iget-object p2, p0, Ldev/duo/fold/c;->b:[J

    aget-wide v4, p2, v3

    aget-wide v6, p2, p1

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-gtz p2, :cond_5

    return v1

    .line 18
    :cond_5
    iget-object p2, p0, Ldev/duo/fold/c;->a:[F

    aget v0, p2, v3

    aget p1, p2, p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    long-to-float p1, v4

    div-float/2addr v0, p1

    return v0
.end method

.method d()Z
    .locals 2

    .line 19
    iget v0, p0, Ldev/duo/fold/c;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ldev/duo/fold/c;->b()F

    move-result v0

    iget v1, p0, Ldev/duo/fold/c;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
