.class final Ldev/duo/fold/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/fold/f$a;
    }
.end annotation


# static fields
.field static final g:J = 0x3e8L

.field static final h:F = 1450.0f

.field static final i:F = 200.0f


# instance fields
.field private a:J

.field private b:J

.field private c:Ldev/duo/fold/f$a;

.field private d:F

.field private e:Z

.field private f:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/duo/fold/f;->a:J

    iput-wide v0, p0, Ldev/duo/fold/f;->b:J

    .line 6
    sget-object v2, Ldev/duo/fold/f$a;->b:Ldev/duo/fold/f$a;

    iput-object v2, p0, Ldev/duo/fold/f;->c:Ldev/duo/fold/f$a;

    .line 7
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Ldev/duo/fold/f;->d:F

    .line 9
    iput-wide v0, p0, Ldev/duo/fold/f;->f:J

    return-void
.end method


# virtual methods
.method a()F
    .locals 2

    .line 10
    iget v0, p0, Ldev/duo/fold/f;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x44a8c000    # 1350.0f

    return v0

    :cond_0
    iget v0, p0, Ldev/duo/fold/f;->d:F

    const/high16 v1, 0x43480000    # 200.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x44af0000    # 1400.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method a(J)V
    .locals 0

    .line 11
    iput-wide p1, p0, Ldev/duo/fold/f;->a:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ldev/duo/fold/f;->b:J

    return-void
.end method

.method a(FJJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p4, p5}, Ldev/duo/fold/f;->b(J)Ldev/duo/fold/f$a;

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Ldev/duo/fold/f;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_5

    cmp-long v0, p2, p4

    if-gtz v0, :cond_5

    sub-long/2addr p4, p2

    const-wide/16 v0, 0x3e8

    cmp-long p4, p4, v0

    if-ltz p4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iput-wide p2, p0, Ldev/duo/fold/f;->b:J

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p4, 0x44b54000    # 1450.0f

    cmpl-float p4, p1, p4

    const/4 p5, 0x1

    if-ltz p4, :cond_2

    .line 7
    sget-object p2, Ldev/duo/fold/f$a;->b:Ldev/duo/fold/f$a;

    iput-object p2, p0, Ldev/duo/fold/f;->c:Ldev/duo/fold/f$a;

    iput-boolean p5, p0, Ldev/duo/fold/f;->e:Z

    .line 8
    iget p2, p0, Ldev/duo/fold/f;->d:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Ldev/duo/fold/f;->d:F

    sub-float/2addr p1, p2

    const p3, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    :goto_0
    iput p1, p0, Ldev/duo/fold/f;->d:F

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Ldev/duo/fold/f;->a()F

    move-result p4

    cmpg-float p1, p1, p4

    if-gez p1, :cond_4

    iget-object p1, p0, Ldev/duo/fold/f;->c:Ldev/duo/fold/f$a;

    sget-object p4, Ldev/duo/fold/f$a;->c:Ldev/duo/fold/f$a;

    if-eq p1, p4, :cond_3

    iput-wide p2, p0, Ldev/duo/fold/f;->f:J

    :cond_3
    iput-object p4, p0, Ldev/duo/fold/f;->c:Ldev/duo/fold/f$a;

    :cond_4
    :goto_1
    return p5

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method b(J)Ldev/duo/fold/f$a;
    .locals 5

    .line 1
    iget-wide v0, p0, Ldev/duo/fold/f;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Ldev/duo/fold/f;->a:J

    .line 2
    :cond_0
    iget-wide v0, p0, Ldev/duo/fold/f;->b:J

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x3e8

    if-gez v2, :cond_2

    iget-wide v0, p0, Ldev/duo/fold/f;->a:J

    sub-long/2addr p1, v0

    cmp-long p1, p1, v3

    if-gez p1, :cond_1

    sget-object p1, Ldev/duo/fold/f$a;->a:Ldev/duo/fold/f$a;

    return-object p1

    :cond_1
    sget-object p1, Ldev/duo/fold/f$a;->d:Ldev/duo/fold/f$a;

    return-object p1

    :cond_2
    sub-long/2addr p1, v0

    cmp-long p1, p1, v3

    if-gez p1, :cond_3

    .line 3
    iget-object p1, p0, Ldev/duo/fold/f;->c:Ldev/duo/fold/f$a;

    return-object p1

    :cond_3
    sget-object p1, Ldev/duo/fold/f$a;->d:Ldev/duo/fold/f$a;

    return-object p1
.end method

.method b()V
    .locals 2

    .line 4
    iget-object v0, p0, Ldev/duo/fold/f;->c:Ldev/duo/fold/f$a;

    sget-object v1, Ldev/duo/fold/f$a;->b:Ldev/duo/fold/f$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/fold/f;->e:Z

    :cond_0
    return-void
.end method

.method c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ldev/duo/fold/f;->f:J

    return-wide v0
.end method

.method d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/fold/f;->e:Z

    return v0
.end method
