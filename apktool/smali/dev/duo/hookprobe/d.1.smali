.class final Ldev/duo/hookprobe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x356

.field static final b:I = 0x531

.field static final c:I = 0x0

.field static final d:I = 0x1

.field static final e:I = 0x356

.field static final f:I = 0x530

.field static final g:F = 56.0f

.field static final h:Ljava/lang/String; = "com.miui.gallery"

.field static final i:F = 6.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(FFFF)F
    .locals 0

    sub-float/2addr p3, p1

    .line 7
    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static a(FFII)F
    .locals 0

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static a(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miduo://widget/album/edit?miuiWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(FFF)[F
    .locals 10

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const v0, 0x3f0d6289

    mul-float/2addr v0, p2

    .line 10
    nop

    .line 12
    nop

    .line 13
    sub-float v1, p0, p2

    .line 14
    add-float v2, v1, v0

    sub-float v3, p2, v0

    .line 15
    sub-float v4, p1, p2

    .line 16
    add-float/2addr v0, v4

    .line 17
    nop

    .line 18
    nop

    .line 19
    nop

    .line 20
    nop

    .line 21
    const/16 v5, 0x2c

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    aput p2, v5, v6

    const/4 v6, 0x2

    aput v7, v5, v6

    const/4 v6, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v6

    const/4 v6, 0x4

    aput v1, v5, v6

    const/4 v6, 0x5

    aput v7, v5, v6

    const/4 v6, 0x6

    const/high16 v9, 0x40400000    # 3.0f

    aput v9, v5, v6

    const/4 v6, 0x7

    aput v2, v5, v6

    const/16 v6, 0x8

    aput v7, v5, v6

    const/16 v6, 0x9

    aput p0, v5, v6

    const/16 v6, 0xa

    aput v3, v5, v6

    const/16 v6, 0xb

    aput p0, v5, v6

    const/16 v6, 0xc

    aput p2, v5, v6

    const/16 v6, 0xd

    aput v8, v5, v6

    const/16 v6, 0xe

    aput p0, v5, v6

    const/16 v6, 0xf

    aput v4, v5, v6

    const/16 v6, 0x10

    aput v9, v5, v6

    const/16 v6, 0x11

    aput p0, v5, v6

    const/16 p0, 0x12

    aput v0, v5, p0

    const/16 p0, 0x13

    aput v2, v5, p0

    const/16 p0, 0x14

    aput p1, v5, p0

    const/16 p0, 0x15

    aput v1, v5, p0

    const/16 p0, 0x16

    aput p1, v5, p0

    const/16 p0, 0x17

    aput v8, v5, p0

    const/16 p0, 0x18

    aput p2, v5, p0

    const/16 p0, 0x19

    aput p1, v5, p0

    const/16 p0, 0x1a

    aput v9, v5, p0

    const/16 p0, 0x1b

    aput v3, v5, p0

    const/16 p0, 0x1c

    aput p1, v5, p0

    const/16 p0, 0x1d

    aput v7, v5, p0

    const/16 p0, 0x1e

    aput v0, v5, p0

    const/16 p0, 0x1f

    aput v7, v5, p0

    const/16 p0, 0x20

    aput v4, v5, p0

    const/16 p0, 0x21

    aput v8, v5, p0

    const/16 p0, 0x22

    aput v7, v5, p0

    const/16 p0, 0x23

    aput p2, v5, p0

    const/16 p0, 0x24

    aput v9, v5, p0

    const/16 p0, 0x25

    aput v7, v5, p0

    const/16 p0, 0x26

    aput v3, v5, p0

    const/16 p0, 0x27

    aput v3, v5, p0

    const/16 p0, 0x28

    aput v7, v5, p0

    const/16 p0, 0x29

    aput p2, v5, p0

    const/16 p0, 0x2a

    aput v7, v5, p0

    const/high16 p0, 0x40800000    # 4.0f

    const/16 p1, 0x2b

    aput p0, v5, p1

    return-object v5
.end method

.method static a(IIFFF)[F
    .locals 2

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    sub-float p2, p0, p2

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p1, p4

    const/high16 p4, 0x44a60000    # 1328.0f

    mul-float/2addr p2, p4

    const v1, 0x44558000    # 854.0f

    div-float/2addr p2, v1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr v1, p2

    div-float/2addr v1, p4

    sub-float/2addr p0, v1

    div-float/2addr p0, v0

    sub-float/2addr p1, p2

    div-float/2addr p1, v0

    add-float/2addr p3, p1

    add-float/2addr v1, p0

    add-float/2addr p2, p3

    .line 5
    const/4 p1, 0x4

    new-array p1, p1, [F

    const/4 p4, 0x0

    aput p0, p1, p4

    const/4 p0, 0x1

    aput p3, p1, p0

    const/4 p0, 0x2

    aput v1, p1, p0

    const/4 p0, 0x3

    aput p2, p1, p0

    return-object p1
.end method
