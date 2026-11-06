.class final Ldev/duo/taskcore/WorkspaceHost$OverlayView;
.super Landroid/view/View;
.source "WorkspaceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayView"
.end annotation


# static fields
.field private static final ACTION_DOWN_ID:I = 0x7f0b0002

.field private static final ACTION_UP_ID:I = 0x7f0b0001

.field private static final BAR_NODE:I = 0x4


# instance fields
.field private final a11y:Landroid/view/accessibility/AccessibilityManager;

.field private final bar:Landroid/graphics/Paint;

.field private barAnim:Landroid/animation/ValueAnimator;

.field private barShown:F

.field private downSlot:I

.field private downX:F

.field private downY:F

.field private held:Z

.field private final hold:Ljava/lang/Runnable;

.field private final labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private moved:Z

.field private final nodes:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private final state:Ldev/duo/taskcore/VirtualFocus;

.field private final stroke:Landroid/graphics/Paint;

.field final synthetic this$0:Ldev/duo/taskcore/WorkspaceHost;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceHost;Landroid/content/Context;)V
    .locals 2

    .line 651
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    .line 652
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 621
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stroke:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->bar:Landroid/graphics/Paint;

    .line 622
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barShown:F

    .line 637
    new-instance p1, Ldev/duo/taskcore/VirtualFocus;

    invoke-direct {p1}, Ldev/duo/taskcore/VirtualFocus;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->state:Ldev/duo/taskcore/VirtualFocus;

    .line 638
    const/4 p1, -0x2

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    .line 641
    new-instance p1, Ldev/duo/taskcore/WorkspaceHost$OverlayView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView$$ExternalSyntheticLambda1;-><init>(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->hold:Ljava/lang/Runnable;

    .line 664
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->labels:Ljava/util/Map;

    .line 737
    new-instance p1, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;

    invoke-direct {p1, p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;-><init>(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->nodes:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 653
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 654
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 655
    invoke-virtual {p0, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->setImportantForAccessibility(I)V

    .line 656
    const-class p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a11y:Landroid/view/accessibility/AccessibilityManager;

    .line 657
    return-void
.end method

.method static synthetic access$1400(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)Landroid/graphics/Rect;
    .locals 0

    .line 620
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)Ldev/duo/taskcore/VirtualFocus;
    .locals 0

    .line 620
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->state:Ldev/duo/taskcore/VirtualFocus;

    return-object p0
.end method

.method static synthetic access$1600(Ldev/duo/taskcore/WorkspaceHost$OverlayView;I)Ljava/lang/CharSequence;
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->describe(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Ldev/duo/taskcore/WorkspaceHost$OverlayView;II)V
    .locals 0

    .line 620
    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->send(II)V

    return-void
.end method

.method private barRect()Landroid/graphics/Rect;
    .locals 5

    .line 827
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xc

    add-int/lit8 v0, v0, -0x3

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v1

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 828
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v1, -0x6e

    add-int/lit8 v4, v0, 0x6

    add-int/lit8 v1, v1, 0x6e

    invoke-direct {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private describe(I)Ljava/lang/CharSequence;
    .locals 2

    .line 680
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "\u9000\u51fa\u5de5\u4f5c\u53f0"

    return-object p1

    .line 681
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7a7a\u4f4d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff0c\u6dfb\u52a0\u5e94\u7528"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 682
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u526f\u7a97 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->label(Ldev/duo/taskcore/TaskBinding;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff0c\u70b9\u6309\u6362\u5230\u4e3b\u533a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private label(Ldev/duo/taskcore/TaskBinding;)Ljava/lang/CharSequence;
    .locals 3

    .line 667
    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    .line 668
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->labels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 669
    if-nez v0, :cond_0

    .line 670
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$900(Ldev/duo/taskcore/WorkspaceHost;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$900(Ldev/duo/taskcore/WorkspaceHost;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p1

    .line 672
    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->labels:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_0
    return-object v0
.end method

.method private moveHover(I)V
    .locals 2

    .line 697
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->state:Ldev/duo/taskcore/VirtualFocus;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/VirtualFocus;->hover(I)[I

    move-result-object p1

    .line 698
    if-nez p1, :cond_0

    return-void

    .line 699
    :cond_0
    const/4 v0, 0x1

    aget v0, p1, v0

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->send(II)V

    .line 700
    const/4 v0, 0x0

    aget p1, p1, v0

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->send(II)V

    .line 701
    return-void
.end method

.method private nearestSlot(F)I
    .locals 4

    .line 859
    nop

    .line 860
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 861
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v2}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v2

    iget-object v2, v2, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v3

    iget-object v3, v3, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    .line 860
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    :cond_1
    return v0
.end method

.method private nodeAt(FF)I
    .locals 2

    .line 717
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->open()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 718
    :cond_0
    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->slotAt(FF)I

    move-result p1

    .line 719
    const/4 p2, -0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    return v1
.end method

.method private send(II)V
    .locals 1

    .line 687
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a11y:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 689
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost;->access$900(Ldev/duo/taskcore/WorkspaceHost;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 690
    const-class p2, Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 691
    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 692
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->describe(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 693
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 694
    return-void

    .line 687
    :cond_1
    :goto_0
    return-void
.end method

.method private slotAt(FF)I
    .locals 4

    .line 852
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 853
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1e

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 854
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v1

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_2
    const/4 p1, -0x2

    return p1
.end method

.method private stale(I[Ldev/duo/taskcore/TaskBinding;)Z
    .locals 1

    .line 713
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    aget-object p2, p2, p1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    aget-object p1, v0, p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method abandon()V
    .locals 3

    .line 867
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$2000(Ldev/duo/taskcore/WorkspaceHost;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->hold:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 868
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object v0

    invoke-interface {v0}, Ldev/duo/taskcore/WorkspaceHost$Actions;->barCancel()V

    .line 869
    :cond_0
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->held:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$2100(Ldev/duo/taskcore/WorkspaceHost;)V

    .line 870
    :cond_2
    const/4 v0, -0x2

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->held:Z

    .line 872
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v2, v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1802(Ldev/duo/taskcore/WorkspaceHost;Z)Z

    .line 873
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldev/duo/taskcore/WorkspaceHost;->access$1902(Ldev/duo/taskcore/WorkspaceHost;F)F

    .line 874
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v2, v1}, Ldev/duo/taskcore/WorkspaceHost;->access$2302(Ldev/duo/taskcore/WorkspaceHost;I)I

    move-result v1

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceHost;->access$2202(Ldev/duo/taskcore/WorkspaceHost;I)I

    .line 875
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$2400(Ldev/duo/taskcore/WorkspaceHost;)V

    .line 876
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->invalidate()V

    .line 877
    return-void
.end method

.method colors(Z)V
    .locals 2

    .line 822
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stroke:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    const v1, 0x66ffffff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x44000000    # 512.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 823
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->bar:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    const p1, -0x7f000001

    goto :goto_1

    :cond_1
    const/high16 p1, 0x55000000

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 824
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 723
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a11y:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->a11y:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 725
    const/16 v1, 0x9

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->state:Ldev/duo/taskcore/VirtualFocus;

    iget v0, v0, Ldev/duo/taskcore/VirtualFocus;->hovered:I

    if-eq v0, v3, :cond_2

    .line 730
    invoke-direct {p0, v3}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->moveHover(I)V

    .line 731
    return v2

    .line 726
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->nodeAt(FF)I

    move-result v0

    .line 727
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->moveHover(I)V

    .line 728
    if-eq v0, v3, :cond_2

    return v2

    .line 729
    :cond_2
    nop

    .line 734
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method dropFocus()V
    .locals 2

    .line 705
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->moveHover(I)V

    .line 706
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->state:Ldev/duo/taskcore/VirtualFocus;

    invoke-virtual {v0}, Ldev/duo/taskcore/VirtualFocus;->clearAll()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->send(II)V

    .line 707
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 819
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->nodes:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method synthetic lambda$new$1$dev-duo-taskcore-WorkspaceHost$OverlayView()V
    .locals 3

    .line 642
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    iget v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->held:Z

    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->performHapticFeedback(I)Z

    .line 645
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget v2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    invoke-static {v1, v2}, Ldev/duo/taskcore/WorkspaceHost;->access$2302(Ldev/duo/taskcore/WorkspaceHost;I)I

    move-result v1

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceHost;->access$2202(Ldev/duo/taskcore/WorkspaceHost;I)I

    .line 646
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceHost;->access$2602(Ldev/duo/taskcore/WorkspaceHost;F)F

    .line 647
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$2800(Ldev/duo/taskcore/WorkspaceHost;)V

    .line 649
    :cond_0
    return-void
.end method

.method synthetic lambda$showBar$0$dev-duo-taskcore-WorkspaceHost$OverlayView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 632
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barShown:F

    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 832
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 833
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v2}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v2}, Ldev/duo/taskcore/WorkspaceHost;->access$100(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, p1

    goto :goto_1

    .line 834
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v3

    iget-object v3, v3, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 835
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$1800(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$1900(Ldev/duo/taskcore/WorkspaceHost;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 836
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stroke:Landroid/graphics/Paint;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 837
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v8, v2

    .line 838
    const/high16 v2, 0x41f00000    # 30.0f

    sub-float v7, v5, v2

    add-float v9, v5, v2

    iget-object v11, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stroke:Landroid/graphics/Paint;

    move v10, v8

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 839
    move-object v4, v6

    sub-float v6, v8, v2

    add-float/2addr v8, v2

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stroke:Landroid/graphics/Paint;

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 833
    :cond_2
    move-object v4, p1

    .line 832
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    .line 841
    :cond_3
    move-object v4, p1

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 842
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1900(Ldev/duo/taskcore/WorkspaceHost;)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 843
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barShown:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 844
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->bar:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 845
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->bar:Landroid/graphics/Paint;

    int-to-float v2, v0

    iget v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barShown:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 846
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->bar:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v4, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 847
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->bar:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 849
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    return v2

    .line 883
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1000(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result v0

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$1100(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result v3

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v4}, Ldev/duo/taskcore/WorkspaceHost;->access$1200(Ldev/duo/taskcore/WorkspaceHost;)I

    move-result v4

    invoke-static {v0, v3, v4}, Ldev/duo/taskcore/Frames;->acceptsGesture(ZZI)Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    return v2

    .line 884
    :cond_1
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->held:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 885
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 944
    return v2

    .line 941
    :pswitch_0
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->abandon()V

    .line 942
    return v2

    .line 895
    :pswitch_1
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    if-ne v0, v4, :cond_3

    .line 896
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ldev/duo/taskcore/WorkspaceHost;->access$1902(Ldev/duo/taskcore/WorkspaceHost;F)F

    .line 897
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2400(Ldev/duo/taskcore/WorkspaceHost;)V

    .line 898
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->invalidate()V

    .line 899
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1900(Ldev/duo/taskcore/WorkspaceHost;)F

    move-result v0

    invoke-interface {p1, v0}, Ldev/duo/taskcore/WorkspaceHost$Actions;->barDrag(F)V

    goto :goto_0

    .line 900
    :cond_3
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->held:Z

    if-eqz v0, :cond_4

    .line 901
    iput-boolean v2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->moved:Z

    .line 902
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downY:F

    sub-float/2addr p1, v1

    invoke-static {v0, p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2602(Ldev/duo/taskcore/WorkspaceHost;F)F

    .line 903
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$2200(Ldev/duo/taskcore/WorkspaceHost;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$2600(Ldev/duo/taskcore/WorkspaceHost;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->nearestSlot(F)I

    move-result v0

    invoke-static {p1, v0}, Ldev/duo/taskcore/WorkspaceHost;->access$2302(Ldev/duo/taskcore/WorkspaceHost;I)I

    .line 904
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2400(Ldev/duo/taskcore/WorkspaceHost;)V

    goto :goto_0

    .line 905
    :cond_4
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->slotAt(FF)I

    move-result p1

    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    if-eq p1, v0, :cond_5

    .line 907
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2000(Ldev/duo/taskcore/WorkspaceHost;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->hold:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 908
    iput v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    .line 910
    :cond_5
    :goto_0
    return v2

    .line 912
    :pswitch_2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$2000(Ldev/duo/taskcore/WorkspaceHost;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->hold:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 913
    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v6, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->slotAt(FF)I

    move-result p1

    .line 914
    iput v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    .line 915
    if-ne v0, v4, :cond_9

    .line 916
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$1900(Ldev/duo/taskcore/WorkspaceHost;)F

    move-result p1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    move p1, v2

    goto :goto_1

    :cond_6
    move p1, v5

    .line 917
    :goto_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0, v5}, Ldev/duo/taskcore/WorkspaceHost;->access$1802(Ldev/duo/taskcore/WorkspaceHost;Z)Z

    .line 918
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0, v3}, Ldev/duo/taskcore/WorkspaceHost;->access$1902(Ldev/duo/taskcore/WorkspaceHost;F)F

    .line 919
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$2400(Ldev/duo/taskcore/WorkspaceHost;)V

    .line 920
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->invalidate()V

    .line 921
    if-eqz p1, :cond_7

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2700(Ldev/duo/taskcore/WorkspaceHost;)V

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    invoke-interface {p1}, Ldev/duo/taskcore/WorkspaceHost$Actions;->exit()V

    goto :goto_2

    .line 922
    :cond_7
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2100(Ldev/duo/taskcore/WorkspaceHost;)V

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    invoke-interface {p1}, Ldev/duo/taskcore/WorkspaceHost$Actions;->barCancel()V

    .line 923
    :cond_8
    :goto_2
    return v2

    .line 925
    :cond_9
    iget-boolean v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->held:Z

    if-eqz v3, :cond_c

    .line 926
    iput-boolean v5, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->held:Z

    .line 927
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2200(Ldev/duo/taskcore/WorkspaceHost;)I

    move-result p1

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$2300(Ldev/duo/taskcore/WorkspaceHost;)I

    move-result v1

    .line 928
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v5, v4}, Ldev/duo/taskcore/WorkspaceHost;->access$2302(Ldev/duo/taskcore/WorkspaceHost;I)I

    move-result v4

    invoke-static {v3, v4}, Ldev/duo/taskcore/WorkspaceHost;->access$2202(Ldev/duo/taskcore/WorkspaceHost;I)I

    .line 929
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$2400(Ldev/duo/taskcore/WorkspaceHost;)V

    .line 930
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object v3

    if-eqz v3, :cond_a

    if-eq p1, v1, :cond_a

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ldev/duo/taskcore/WorkspaceHost$Actions;->reorder(II)V

    goto :goto_3

    .line 931
    :cond_a
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2100(Ldev/duo/taskcore/WorkspaceHost;)V

    iget-boolean p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->moved:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    invoke-interface {p1, v0}, Ldev/duo/taskcore/WorkspaceHost$Actions;->menu(I)V

    .line 932
    :cond_b
    :goto_3
    return v2

    .line 934
    :cond_c
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object v3

    if-eqz v3, :cond_f

    if-eq v0, v1, :cond_f

    if-eq p1, v0, :cond_d

    goto :goto_5

    .line 935
    :cond_d
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_e

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    invoke-interface {p1, v0}, Ldev/duo/taskcore/WorkspaceHost$Actions;->swap(I)V

    goto :goto_4

    .line 936
    :cond_e
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    invoke-interface {p1, v0}, Ldev/duo/taskcore/WorkspaceHost$Actions;->plus(I)V

    .line 937
    :goto_4
    return v2

    .line 934
    :cond_f
    :goto_5
    return v2

    .line 887
    :pswitch_3
    iput-boolean v5, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->moved:Z

    iput-boolean v5, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->held:Z

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downX:F

    .line 889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downY:F

    .line 890
    iget p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downX:F

    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downY:F

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->slotAt(FF)I

    move-result p1

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    .line 891
    iget p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    if-ne p1, v4, :cond_10

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1, v2}, Ldev/duo/taskcore/WorkspaceHost;->access$1802(Ldev/duo/taskcore/WorkspaceHost;Z)Z

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1, v3}, Ldev/duo/taskcore/WorkspaceHost;->access$1902(Ldev/duo/taskcore/WorkspaceHost;F)F

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2500(Ldev/duo/taskcore/WorkspaceHost;)V

    goto :goto_6

    .line 892
    :cond_10
    iget p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    if-ltz p1, :cond_11

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    iget v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->downSlot:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_11

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2000(Ldev/duo/taskcore/WorkspaceHost;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->hold:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 893
    :cond_11
    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method open()Z
    .locals 3

    .line 677
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1000(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$1100(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result v1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v2}, Ldev/duo/taskcore/WorkspaceHost;->access$1200(Ldev/duo/taskcore/WorkspaceHost;)I

    move-result v2

    invoke-static {v0, v1, v2}, Ldev/duo/taskcore/Frames;->acceptsGesture(ZZI)Z

    move-result v0

    return v0
.end method

.method showBar(Z)V
    .locals 4

    .line 627
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 628
    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barAnim:Landroid/animation/ValueAnimator;

    .line 629
    :cond_1
    iget v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barShown:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    return-void

    .line 630
    :cond_2
    iget v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barShown:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 631
    if-eqz p1, :cond_3

    const-wide/16 v1, 0xa0

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x64

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 632
    new-instance p1, Ldev/duo/taskcore/WorkspaceHost$OverlayView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->barAnim:Landroid/animation/ValueAnimator;

    .line 634
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 635
    return-void
.end method

.method slotsChanged([Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 710
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->state:Ldev/duo/taskcore/VirtualFocus;

    iget v0, v0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stale(I[Ldev/duo/taskcore/TaskBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->state:Ldev/duo/taskcore/VirtualFocus;

    iget v0, v0, Ldev/duo/taskcore/VirtualFocus;->hovered:I

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->stale(I[Ldev/duo/taskcore/TaskBinding;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->dropFocus()V

    .line 711
    :cond_1
    return-void
.end method
