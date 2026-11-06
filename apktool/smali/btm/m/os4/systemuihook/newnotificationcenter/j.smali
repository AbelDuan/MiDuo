.class final Lbtm/m/os4/systemuihook/newnotificationcenter/j;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/Object;

.field private static i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

.field private static j:Landroid/view/View;

.field private static k:Landroid/view/View;

.field private static l:Landroid/view/View;

.field private static m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

.field private static n:Landroid/view/ViewGroup;

.field private static o:Landroid/view/ViewGroup$LayoutParams;

.field private static p:I

.field private static final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:[I

.field private static final s:Landroid/graphics/Rect;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:Landroid/view/MotionEvent;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->q:Ljava/util/ArrayList;

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->r:[I

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->s:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 4
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->g:I

    return-void
.end method

.method private static a(Ljava/lang/Object;Z)Landroid/view/View;
    .locals 2

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    const-string v1, "isLeftShortcutView"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    const-string p1, "getShortcutView"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSystemUIAction$1"

    invoke-static {p0, v0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 159
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->f:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->c()V

    if-eqz v0, :cond_2

    .line 162
    const/4 v1, 0x3

    :try_start_0
    invoke-direct {p0, v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Landroid/view/MotionEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 164
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IOSShade] native shortcut cancellation unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 167
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-eqz v0, :cond_4

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->b()V

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 168
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 169
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->b()V

    .line 170
    :cond_1
    throw v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 172
    :cond_3
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->b()V

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .locals 5

    .line 149
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 150
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->r:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v3, p1

    .line 153
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 155
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 156
    :try_start_0
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 158
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    throw p1
.end method

.method private static a(Landroid/view/View;)V
    .locals 4

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 67
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 71
    iget v0, v1, Landroid/graphics/Point;->x:I

    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_2

    const v0, 0x450d1800    # 2257.5f

    const v1, 0x44c0e000    # 1543.0f

    goto :goto_1

    .line 74
    :cond_2
    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lt v1, v2, :cond_3

    const/high16 v0, 0x44c00000    # 1536.0f

    const v1, 0x450bf000    # 2239.0f

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_4

    int-to-float v0, v0

    const/high16 v2, 0x42d60000    # 107.0f

    sub-float/2addr v0, v2

    int-to-float v1, v1

    const/high16 v2, 0x42ec0000    # 118.0f

    sub-float/2addr v1, v2

    goto :goto_1

    :cond_4
    const v0, 0x4484a000    # 1061.0f

    const v1, 0x44c74000    # 1594.0f

    .line 84
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr p0, v2

    .line 85
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v2, 0x84

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v2, p0

    const/high16 v3, 0x41900000    # 18.0f

    add-float/2addr v2, v3

    .line 89
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->l:Landroid/view/View;

    invoke-static {v3, v0, v1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Landroid/view/View;FFI)V

    .line 90
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->k:Landroid/view/View;

    sub-float/2addr v1, v2

    invoke-static {v3, v0, v1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Landroid/view/View;FFI)V

    return-void
.end method

.method private static a(Landroid/view/View;FFI)V
    .locals 6

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 95
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    sub-float/2addr p1, v4

    int-to-float v4, p3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 101
    const/4 v5, 0x1

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr p2, v1

    sub-float/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 103
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v4, 0x33

    if-ne v1, p3, :cond_3

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v1, p3, :cond_3

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v1, p1, :cond_3

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v1, p2, :cond_3

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v1, v4, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    iput p3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 106
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 107
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 109
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 110
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 111
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eq v0, p0, :cond_5

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 115
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, p3, :cond_4

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p3, :cond_5

    .line 116
    :cond_4
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static a(Landroid/widget/FrameLayout;Landroid/view/View;FZ)V
    .locals 3

    if-eqz p3, :cond_b

    if-eqz p0, :cond_b

    .line 24
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->h:Ljava/lang/Object;

    if-eqz p3, :cond_b

    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    if-eqz p3, :cond_b

    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-eqz p3, :cond_b

    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->k:Landroid/view/View;

    if-nez p3, :cond_0

    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->l:Landroid/view/View;

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 29
    :cond_0
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eq p3, p0, :cond_1

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->d()V

    .line 30
    :cond_1
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    if-nez p3, :cond_3

    .line 32
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_4

    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    .line 33
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Landroid/view/ViewGroup;

    if-nez p3, :cond_2

    goto :goto_1

    .line 34
    :cond_2
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    sput-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->n:Landroid/view/ViewGroup;

    .line 35
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    sput-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->o:Landroid/view/ViewGroup$LayoutParams;

    .line 36
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->n:Landroid/view/ViewGroup;

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    sput p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->p:I

    .line 37
    new-instance p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;-><init>(Landroid/content/Context;)V

    .line 38
    sput-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    .line 40
    :try_start_0
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->n:Landroid/view/ViewGroup;

    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->k:Landroid/view/View;

    invoke-static {p3}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b(Landroid/view/View;)V

    .line 46
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->l:Landroid/view/View;

    invoke-static {p3}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 48
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->d()V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[IOSShade] native shortcut hosting unavailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_3
    :goto_0
    sget-object p3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    if-nez p3, :cond_5

    :cond_4
    :goto_1
    return-void

    .line 55
    :cond_5
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_6

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_6
    const/4 p2, 0x0

    if-nez p1, :cond_7

    move v0, p2

    goto :goto_2

    .line 56
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_2
    if-nez p1, :cond_8

    goto :goto_3

    .line 57
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    .line 58
    :goto_3
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_9

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 59
    :cond_9
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_a

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 60
    :cond_a
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Landroid/view/View;)V

    return-void

    .line 61
    :cond_b
    :goto_4
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->d()V

    return-void
.end method

.method static a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "miuiShortcutPlugin"

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 2
    :cond_0
    const-string v3, "getShortcutContentView"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/view/View;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 4
    :goto_1
    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->h:Ljava/lang/Object;

    if-ne v4, v0, :cond_2

    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    if-eq v4, v3, :cond_3

    .line 5
    :cond_2
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b()V

    .line 6
    :cond_3
    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->h:Ljava/lang/Object;

    .line 7
    sput-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    .line 8
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->k:Landroid/view/View;

    .line 9
    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->l:Landroid/view/View;

    .line 11
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->b()V

    .line 12
    :cond_4
    sput-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 14
    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    move-result-object p0

    sput-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    .line 16
    :cond_5
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->p0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IOSShade] native shortcut capture unavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 118
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 122
    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a()V

    .line 124
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    const v5, 0x3f7fbe77    # 0.999f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->k:Landroid/view/View;

    .line 125
    invoke-static {v4, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->l:Landroid/view/View;

    invoke-static {v4, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    invoke-virtual {v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a()V

    .line 127
    iput-boolean v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a:Z

    .line 128
    iput-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->c:Z

    .line 129
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->d:F

    .line 130
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->e:F

    .line 131
    iput-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b:Z

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    .line 133
    :cond_3
    :goto_1
    iget-boolean v4, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->c:Z

    if-eqz v4, :cond_6

    if-eq v2, v3, :cond_4

    const/4 p0, 0x3

    if-ne v2, p0, :cond_5

    .line 135
    :cond_4
    iput-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->c:Z

    :cond_5
    return v3

    .line 139
    :cond_6
    iget-boolean v2, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a:Z

    if-nez v2, :cond_7

    return v1

    .line 140
    :cond_7
    invoke-direct {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b(Landroid/view/MotionEvent;)V

    return v3
.end method

.method private static a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_2

    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->s:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int v3, v2

    float-to-int v4, p1

    .line 144
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 145
    :cond_1
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->r:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 146
    aget v3, v1, v0

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 147
    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr p1, v1

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    mul-float/2addr v2, v2

    mul-float/2addr p1, p1

    add-float/2addr v2, p1

    mul-float/2addr p0, p0

    cmpg-float p0, v2, p0

    if-gtz p0, :cond_2

    return v3

    :cond_2
    :goto_0
    return v0
.end method

.method static b()V
    .locals 1

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->d()V

    .line 2
    const/4 v0, 0x0

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->h:Ljava/lang/Object;

    .line 3
    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    .line 4
    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    .line 5
    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->k:Landroid/view/View;

    .line 6
    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->l:Landroid/view/View;

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->f:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 28
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->f:Landroid/view/MotionEvent;

    .line 29
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 33
    :try_start_0
    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->h:Ljava/lang/Object;

    const-string v5, "onTouchEvent"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    if-ne v4, p0, :cond_7

    iget-boolean v4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a:Z

    if-nez v4, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    iget-boolean v4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b:Z

    if-nez v4, :cond_4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->d:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->g:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->e:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->g:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    :cond_3
    nop

    .line 38
    invoke-direct {p0, p1, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Landroid/view/MotionEvent;I)V

    .line 39
    iput-boolean v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b:Z

    .line 41
    :cond_4
    iget-boolean v3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->b:Z

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a(Landroid/view/MotionEvent;I)V

    :cond_5
    if-ne v0, v2, :cond_6

    .line 43
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->i:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    invoke-virtual {p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e()V

    .line 44
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 51
    :cond_7
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 52
    :try_start_1
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IOSShade] native shortcut touch unavailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catchall_1
    move-exception p1

    .line 56
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 57
    throw p1

    .line 58
    :cond_8
    :goto_1
    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a()V

    if-ne v0, v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    .line 59
    :goto_2
    iput-boolean v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->c:Z

    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 6

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_8

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;

    .line 10
    iget-object v5, v5, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->a:Landroid/view/View;

    if-ne v5, v0, :cond_2

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    if-eq v0, p0, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 14
    :cond_4
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->q:Ljava/util/ArrayList;

    new-instance v2, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;

    invoke-direct {v2, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    if-eq v0, p0, :cond_5

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_5
    :goto_1
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a:Z

    .line 2
    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->c:Z

    .line 3
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->f:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->f:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method static d()V
    .locals 7

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/j;

    .line 5
    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->a()V

    .line 6
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;

    invoke-virtual {v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/j$a;->a()V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 9
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->n:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 11
    sget v3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->p:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 12
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->n:Landroid/view/ViewGroup;

    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->j:Landroid/view/View;

    sget-object v5, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->o:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_3
    sput-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->n:Landroid/view/ViewGroup;

    .line 17
    sput-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/j;->o:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
