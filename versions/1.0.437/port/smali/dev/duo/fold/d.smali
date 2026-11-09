.class final Ldev/duo/fold/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final g:[F

.field static final h:[F


# instance fields
.field a:[F

.field b:[F

.field c:[F

.field d:[F

.field final e:[F

.field final f:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Ldev/duo/fold/d;->g:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Ldev/duo/fold/d;->h:[F

    return-void

    :array_0
    .array-data 4
        0x44730000    # 972.0f
        0x43c50000    # 394.0f
        0x43340000    # 180.0f
        0x44898000    # 1100.0f
    .end array-data

    :array_1
    .array-data 4
        0x45078000    # 2168.0f
        0x43af0000    # 350.0f
        0x43340000    # 180.0f
        0x44898000    # 1100.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0xc

    new-array v1, v0, [F

    iput-object v1, p0, Ldev/duo/fold/d;->e:[F

    new-array v0, v0, [F

    iput-object v0, p0, Ldev/duo/fold/d;->f:[F

    return-void
.end method
