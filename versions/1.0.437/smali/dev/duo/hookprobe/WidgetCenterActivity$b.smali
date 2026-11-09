.class Ldev/duo/hookprobe/WidgetCenterActivity$b;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/WidgetCenterActivity;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Ldev/duo/hookprobe/WidgetCenterActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/WidgetCenterActivity;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/WidgetCenterActivity$b;->b:Ldev/duo/hookprobe/WidgetCenterActivity;

    iput p2, p0, Ldev/duo/hookprobe/WidgetCenterActivity$b;->a:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Ldev/duo/hookprobe/WidgetCenterActivity$b;->a:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
