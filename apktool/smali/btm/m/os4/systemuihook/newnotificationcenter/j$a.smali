.class final Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/newnotificationcenter/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:I

.field final c:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->b:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->c:F

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->a:Landroid/view/View;

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->a:Landroid/view/View;

    iget v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->c:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method
