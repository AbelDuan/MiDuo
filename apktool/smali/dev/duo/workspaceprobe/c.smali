.class final Ldev/duo/workspaceprobe/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final g:F = 165.0f

.field static final h:F = 5.0f

.field static final i:J = 0x320L

.field static final j:[F

.field static final k:[J

.field static final l:I = 0x1


# instance fields
.field private a:F

.field private b:J

.field private c:F

.field private d:J

.field private e:Z

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Ldev/duo/workspaceprobe/c;->j:[F

    .line 2
    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Ldev/duo/workspaceprobe/c;->k:[J

    return-void

    :array_0
    .array-data 4
        0x41700000    # 15.0f
        0x41c80000    # 25.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_1
    .array-data 8
        0x5dc
        0x3e8
        0x320
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Ldev/duo/workspaceprobe/c;->j:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ldev/duo/workspaceprobe/c;->a:F

    .line 8
    sget-object v0, Ldev/duo/workspaceprobe/c;->k:[J

    aget-wide v0, v0, v1

    iput-wide v0, p0, Ldev/duo/workspaceprobe/c;->b:J

    .line 11
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Ldev/duo/workspaceprobe/c;->c:F

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Ldev/duo/workspaceprobe/c;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/c;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldev/duo/workspaceprobe/c;->f:J

    return-void
.end method

.method a(I)V
    .locals 2

    .line 2
    sget-object v0, Ldev/duo/workspaceprobe/c;->j:[F

    aget v0, v0, p1

    iput v0, p0, Ldev/duo/workspaceprobe/c;->a:F

    sget-object v0, Ldev/duo/workspaceprobe/c;->k:[J

    aget-wide v0, v0, p1

    iput-wide v0, p0, Ldev/duo/workspaceprobe/c;->b:J

    invoke-virtual {p0}, Ldev/duo/workspaceprobe/c;->a()V

    return-void
.end method

.method a(FJ)Z
    .locals 9

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/c;->a()V

    return v1

    .line 4
    :cond_0
    iget v0, p0, Ldev/duo/workspaceprobe/c;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ldev/duo/workspaceprobe/c;->c:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    iput p1, p0, Ldev/duo/workspaceprobe/c;->c:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget v0, p0, Ldev/duo/workspaceprobe/c;->c:F

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float v2, v0, v2

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    const/high16 v4, 0x43250000    # 165.0f

    if-ltz v2, :cond_5

    .line 6
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/c;->e:Z

    if-eqz p1, :cond_3

    iget-wide v5, p0, Ldev/duo/workspaceprobe/c;->d:J

    sub-long v5, p2, v5

    iget-wide v7, p0, Ldev/duo/workspaceprobe/c;->b:J

    cmp-long p1, v5, v7

    if-gtz p1, :cond_3

    cmpl-float p1, v0, v4

    if-ltz p1, :cond_3

    iget-wide v4, p0, Ldev/duo/workspaceprobe/c;->f:J

    cmp-long p1, p2, v4

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    .line 7
    :goto_0
    iput-boolean v1, p0, Ldev/duo/workspaceprobe/c;->e:Z

    iput-wide p2, p0, Ldev/duo/workspaceprobe/c;->d:J

    if-eqz v3, :cond_4

    const-wide/16 v0, 0x320

    add-long/2addr p2, v0

    .line 8
    iput-wide p2, p0, Ldev/duo/workspaceprobe/c;->f:J

    :cond_4
    return v3

    :cond_5
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_6

    .line 11
    iget v2, p0, Ldev/duo/workspaceprobe/c;->a:F

    sub-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    iput-boolean v3, p0, Ldev/duo/workspaceprobe/c;->e:Z

    .line 12
    :cond_6
    iget-wide v2, p0, Ldev/duo/workspaceprobe/c;->d:J

    sub-long v2, p2, v2

    iget-wide v4, p0, Ldev/duo/workspaceprobe/c;->b:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    .line 14
    iput-boolean v1, p0, Ldev/duo/workspaceprobe/c;->e:Z

    iput p1, p0, Ldev/duo/workspaceprobe/c;->c:F

    iput-wide p2, p0, Ldev/duo/workspaceprobe/c;->d:J

    :cond_7
    return v1
.end method
