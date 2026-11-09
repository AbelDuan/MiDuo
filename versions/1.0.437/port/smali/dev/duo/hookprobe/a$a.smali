.class Ldev/duo/hookprobe/a$a;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/a;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-static {v0}, Ldev/duo/hookprobe/a;->a(Ldev/duo/hookprobe/a;)F

    move-result v0

    iget-object v1, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-static {v1}, Ldev/duo/hookprobe/a;->a(Ldev/duo/hookprobe/a;)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-static {v2}, Ldev/duo/hookprobe/a;->b(Ldev/duo/hookprobe/a;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2
    iget-object v1, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-static {v1}, Ldev/duo/hookprobe/a;->b(Ldev/duo/hookprobe/a;)F

    move-result v1

    div-float v1, v0, v1

    .line 3
    iget-object v2, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    iget-object v5, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-static {v5}, Ldev/duo/hookprobe/a;->c(Ldev/duo/hookprobe/a;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ldev/duo/hookprobe/a;->b(Ldev/duo/hookprobe/a;F)F

    .line 4
    iget-object v2, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iget-object v4, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-static {v4}, Ldev/duo/hookprobe/a;->d(Ldev/duo/hookprobe/a;)F

    move-result v4

    sub-float/2addr p1, v4

    mul-float/2addr p1, v1

    sub-float/2addr v3, p1

    invoke-static {v2, v3}, Ldev/duo/hookprobe/a;->c(Ldev/duo/hookprobe/a;F)F

    .line 5
    iget-object p1, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-static {p1, v0}, Ldev/duo/hookprobe/a;->a(Ldev/duo/hookprobe/a;F)F

    .line 6
    iget-object p1, p0, Ldev/duo/hookprobe/a$a;->a:Ldev/duo/hookprobe/a;

    invoke-static {p1}, Ldev/duo/hookprobe/a;->e(Ldev/duo/hookprobe/a;)V

    const/4 p1, 0x1

    return p1
.end method
