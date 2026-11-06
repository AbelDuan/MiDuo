.class Lbtm/m/os4/systemuihook/hypermusiccover/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbtm/m/os4/systemuihook/hypermusiccover/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtm/m/os4/systemuihook/hypermusiccover/h;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(F)F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr p1, v0

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 13
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b(F)F

    .line 15
    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/e;->a(F)V

    return-void
.end method
