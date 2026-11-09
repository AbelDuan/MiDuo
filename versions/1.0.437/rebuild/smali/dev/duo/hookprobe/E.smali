.class final Ldev/duo/hookprobe/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x490

.field static final b:I = 0x6b0

.field static final c:I = 0x3c3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(II)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x490

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p1, 0x6b0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
