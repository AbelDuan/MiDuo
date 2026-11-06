.class Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "WorkspaceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceHost$OverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)V
    .locals 0

    .line 737
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 740
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v0, :cond_1

    .line 741
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-direct {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;)V

    .line 742
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 743
    const-string v0, "\u5de5\u4f5c\u53f0\u526f\u7a97\u5217"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    nop

    :goto_0
    if-gt v1, v2, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    return-object p1

    .line 747
    :cond_1
    if-ltz p1, :cond_9

    if-le p1, v2, :cond_2

    goto/16 :goto_3

    .line 748
    :cond_2
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-direct {v0, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;I)V

    .line 749
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 750
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object v3, v3, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$900(Ldev/duo/taskcore/WorkspaceHost;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 751
    const-class v3, Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    if-ne p1, v2, :cond_3

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1400(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v3, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v3

    iget-object v3, v3, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v3, v3, p1

    .line 753
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 754
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v5, v4}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->getLocationOnScreen([I)V

    .line 755
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 756
    aget v3, v4, v1

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 757
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 758
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 759
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v3}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->open()Z

    move-result v3

    .line 760
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 761
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 762
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 763
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-static {v4}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1500(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)Ldev/duo/taskcore/VirtualFocus;

    move-result-object v4

    iget v4, v4, Ldev/duo/taskcore/VirtualFocus;->focused:I

    if-ne v4, p1, :cond_4

    move v1, v6

    .line 764
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 765
    if-eqz v1, :cond_5

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_2

    .line 766
    :cond_5
    if-eqz v3, :cond_6

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 767
    :cond_6
    :goto_2
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-static {v1, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1600(Ldev/duo/taskcore/WorkspaceHost$OverlayView;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 768
    if-eq p1, v2, :cond_8

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object v1

    aget-object v1, v1, p1

    if-eqz v1, :cond_8

    .line 769
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 770
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v2, 0x20

    const-string v3, "\u7ba1\u7406\uff08\u66f4\u6362/\u79fb\u9664\uff09"

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 772
    if-lez p1, :cond_7

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0b0001

    const-string v3, "\u4e0a\u79fb"

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 773
    :cond_7
    const/4 v1, 0x3

    if-ge p1, v1, :cond_8

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v1, 0x7f0b0002

    const-string v2, "\u4e0b\u79fb"

    invoke-direct {p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 775
    :cond_8
    return-object v0

    .line 747
    :cond_9
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 814
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1500(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)Ldev/duo/taskcore/VirtualFocus;

    move-result-object p1

    iget p1, p1, Ldev/duo/taskcore/VirtualFocus;->focused:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1500(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)Ldev/duo/taskcore/VirtualFocus;

    move-result-object p1

    iget p1, p1, Ldev/duo/taskcore/VirtualFocus;->focused:I

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 814
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 4

    .line 779
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p1, p2, p3}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 780
    :cond_0
    const/4 p3, 0x0

    if-ltz p1, :cond_10

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    goto/16 :goto_2

    .line 781
    :cond_1
    const/16 v1, 0x80

    const/high16 v2, 0x10000

    const/4 v3, 0x1

    if-ne p2, v1, :cond_3

    .line 782
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1500(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)Ldev/duo/taskcore/VirtualFocus;

    move-result-object p2

    invoke-virtual {p2, p1}, Ldev/duo/taskcore/VirtualFocus;->clear(I)Z

    move-result p2

    if-nez p2, :cond_2

    return p3

    .line 783
    :cond_2
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->invalidate()V

    .line 784
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-static {p2, p1, v2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1700(Ldev/duo/taskcore/WorkspaceHost$OverlayView;II)V

    .line 785
    return v3

    .line 787
    :cond_3
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->open()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    .line 788
    :cond_4
    const/16 v1, 0x40

    if-ne p2, v1, :cond_6

    .line 789
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1500(Ldev/duo/taskcore/WorkspaceHost$OverlayView;)Ldev/duo/taskcore/VirtualFocus;

    move-result-object p2

    invoke-virtual {p2, p1}, Ldev/duo/taskcore/VirtualFocus;->focus(I)[I

    move-result-object p1

    .line 790
    if-nez p1, :cond_5

    return p3

    .line 791
    :cond_5
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    invoke-virtual {p2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->invalidate()V

    .line 792
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    aget p3, p1, p3

    invoke-static {p2, p3, v2}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1700(Ldev/duo/taskcore/WorkspaceHost$OverlayView;II)V

    .line 793
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    aget p1, p1, v3

    const p3, 0x8000

    invoke-static {p2, p1, p3}, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->access$1700(Ldev/duo/taskcore/WorkspaceHost$OverlayView;II)V

    .line 794
    return v3

    .line 796
    :cond_6
    const/16 v1, 0x10

    if-ne p1, v0, :cond_8

    .line 797
    if-eq p2, v1, :cond_7

    return p3

    .line 798
    :cond_7
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p1

    invoke-interface {p1}, Ldev/duo/taskcore/WorkspaceHost$Actions;->exit()V

    .line 799
    return v3

    .line 801
    :cond_8
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$1300(Ldev/duo/taskcore/WorkspaceHost;)[Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    aget-object v0, v0, p1

    .line 802
    if-ne p2, v1, :cond_a

    .line 803
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object p2, p2, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p2

    if-eqz v0, :cond_9

    invoke-interface {p2, p1}, Ldev/duo/taskcore/WorkspaceHost$Actions;->swap(I)V

    goto :goto_0

    :cond_9
    invoke-interface {p2, p1}, Ldev/duo/taskcore/WorkspaceHost$Actions;->plus(I)V

    .line 804
    :goto_0
    return v3

    .line 806
    :cond_a
    if-nez v0, :cond_b

    return p3

    .line 807
    :cond_b
    const/16 v0, 0x20

    if-ne p2, v0, :cond_c

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object p2, p2, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p2

    invoke-interface {p2, p1}, Ldev/duo/taskcore/WorkspaceHost$Actions;->menu(I)V

    return v3

    .line 808
    :cond_c
    const v0, 0x7f0b0001

    if-ne p2, v0, :cond_d

    if-lez p1, :cond_d

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object p2, p2, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p2

    add-int/lit8 p3, p1, -0x1

    invoke-interface {p2, p1, p3}, Ldev/duo/taskcore/WorkspaceHost$Actions;->reorder(II)V

    return v3

    .line 809
    :cond_d
    const v0, 0x7f0b0002

    if-ne p2, v0, :cond_e

    const/4 p2, 0x3

    if-ge p1, p2, :cond_e

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$OverlayView$1;->this$1:Ldev/duo/taskcore/WorkspaceHost$OverlayView;

    iget-object p2, p2, Ldev/duo/taskcore/WorkspaceHost$OverlayView;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost;->access$500(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/WorkspaceHost$Actions;

    move-result-object p2

    add-int/lit8 p3, p1, 0x1

    invoke-interface {p2, p1, p3}, Ldev/duo/taskcore/WorkspaceHost$Actions;->reorder(II)V

    return v3

    .line 810
    :cond_e
    return p3

    .line 787
    :cond_f
    :goto_1
    return p3

    .line 780
    :cond_10
    :goto_2
    return p3
.end method
