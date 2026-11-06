.class public final Lbtm/m/os4/systemuihook/newnotificationcenter/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final i:F = 0.2f


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:F

.field public e:F

.field public f:Z

.field public g:Z

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->h:F

    return-void
.end method

.method static a(FF)F
    .locals 2

    .line 30
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p0, p1

    .line 31
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static a(FFF)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    div-float v0, p1, p2

    :cond_0
    add-float/2addr p0, v0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(FFFZ)F
    .locals 2

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iput p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->c:F

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b:F

    :goto_0
    if-eqz p4, :cond_5

    .line 5
    iget-boolean p4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a:Z

    if-nez p4, :cond_3

    .line 9
    invoke-static {p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result p4

    if-eqz p4, :cond_2

    cmpl-float p4, p3, v1

    if-lez p4, :cond_2

    move p2, p3

    .line 10
    :cond_2
    iput p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->d:F

    :cond_3
    nop

    .line 12
    const/4 p2, 0x1

    iput-boolean p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a:Z

    .line 13
    iget p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    iget p3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->d:F

    cmpl-float p4, p3, v1

    if-lez p4, :cond_4

    iget p4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b:F

    sub-float p4, p1, p4

    div-float v1, p4, p3

    :cond_4
    add-float/2addr p2, v1

    .line 14
    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b:F

    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FF)F

    move-result p1

    return p1

    :cond_5
    nop

    .line 19
    const/4 p3, 0x0

    iput-boolean p3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a:Z

    .line 20
    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b:F

    .line 21
    invoke-static {p1, p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FF)F

    move-result p1

    return p1
.end method

.method public a()V
    .locals 3

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    .line 40
    iput-boolean v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    .line 41
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->h:F

    .line 42
    iput-boolean v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a:Z

    .line 43
    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b:F

    .line 44
    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->c:F

    .line 45
    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->d:F

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 32
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FF)F

    move-result p1

    :goto_0
    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 33
    iput-boolean p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    if-eqz p1, :cond_0

    .line 35
    const/4 p1, 0x0

    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a:Z

    .line 37
    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b:F

    :cond_0
    return-void
.end method

.method public a(FZ)Z
    .locals 4

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FF)F

    move-result p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 23
    iget-boolean v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    if-nez v2, :cond_0

    iget v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->h:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    return v1

    .line 24
    :cond_0
    iput-boolean p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    .line 25
    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->h:F

    const/4 v2, 0x1

    if-nez p2, :cond_1

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(Z)V

    if-eqz p2, :cond_2

    .line 28
    iput-boolean v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a:Z

    .line 29
    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    :cond_2
    return v2
.end method

.method public b()F
    .locals 2

    .line 1
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b:F

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->c:F

    invoke-static {v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FF)F

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    .line 2
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->c:F

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b:F

    return-void
.end method
