.class final Ldev/duo/taskcore/g$h;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "h"
.end annotation


# static fields
.field private static final s:I = 0x3

.field private static final t:I = 0x7f0b0001

.field private static final u:I = 0x7f0b0002


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:F

.field private e:Landroid/animation/ValueAnimator;

.field private final f:Landroid/view/accessibility/AccessibilityManager;

.field private final g:Ldev/duo/taskcore/f;

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:Z

.field private m:Z

.field private final n:I

.field private final o:Ljava/lang/Runnable;

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic r:Ldev/duo/taskcore/g;


# direct methods
.method public static synthetic $r8$lambda$wSOTC7y2erBEM_L5lFW1S3R-jjc(Ldev/duo/taskcore/g$h;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/g$h;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y2hb1KKEUBtoqHz_IQwt6sxnQ-o(Ldev/duo/taskcore/g$h;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/g$h;->d()V

    return-void
.end method

.method constructor <init>(Ldev/duo/taskcore/g;Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldev/duo/taskcore/g$h;->a:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ldev/duo/taskcore/g$h;->b:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ldev/duo/taskcore/g$h;->c:Landroid/graphics/Paint;

    .line 5
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Ldev/duo/taskcore/g$h;->d:F

    .line 20
    new-instance v3, Ldev/duo/taskcore/f;

    invoke-direct {v3}, Ldev/duo/taskcore/f;-><init>()V

    iput-object v3, p0, Ldev/duo/taskcore/g$h;->g:Ldev/duo/taskcore/f;

    .line 21
    const/4 v3, -0x2

    iput v3, p0, Ldev/duo/taskcore/g$h;->h:I

    .line 24
    invoke-static {p1}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object p1

    invoke-virtual {p1}, Ldev/duo/taskcore/b;->a()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Ldev/duo/taskcore/g$h;->k:I

    .line 27
    new-instance p1, Ldev/duo/taskcore/g$h$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Ldev/duo/taskcore/g$h$$ExternalSyntheticLambda1;-><init>(Ldev/duo/taskcore/g$h;)V

    iput-object p1, p0, Ldev/duo/taskcore/g$h;->o:Ljava/lang/Runnable;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/g$h;->p:Ljava/util/Map;

    .line 127
    new-instance p1, Ldev/duo/taskcore/g$h$a;

    invoke-direct {p1, p0}, Ldev/duo/taskcore/g$h$a;-><init>(Ldev/duo/taskcore/g$h;)V

    iput-object p1, p0, Ldev/duo/taskcore/g$h;->q:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 128
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    const/high16 p1, 0x40c00000    # 6.0f

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 133
    const-class p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Ldev/duo/taskcore/g$h;->f:Landroid/view/accessibility/AccessibilityManager;

    .line 134
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Ldev/duo/taskcore/g$h;->n:I

    return-void
.end method

.method private a(F)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 29
    iget-object v2, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v2}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v2

    iget-object v2, v2, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v3}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v3

    iget-object v3, v3, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

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

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private a(FF)I
    .locals 2

    .line 24
    invoke-virtual {p0}, Ldev/duo/taskcore/g$h;->e()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/g$h;->b(FF)I

    move-result p1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    :cond_2
    return p1
.end method

.method static synthetic a(Ldev/duo/taskcore/g$h;I)I
    .locals 0

    .line 2
    iput p1, p0, Ldev/duo/taskcore/g$h;->k:I

    return p1
.end method

.method static synthetic a(Ldev/duo/taskcore/g$h;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/taskcore/g$h;->b()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 11
    const-string p1, "\u9000\u51fa\u5de5\u4f5c\u53f0"

    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->f(Ldev/duo/taskcore/g;)[Ldev/duo/taskcore/d;

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

    .line 13
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

    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->f(Ldev/duo/taskcore/g;)[Ldev/duo/taskcore/d;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-direct {p0, p1}, Ldev/duo/taskcore/g$h;->a(Ldev/duo/taskcore/d;)Ljava/lang/CharSequence;

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

.method private a(Ldev/duo/taskcore/d;)Ljava/lang/CharSequence;
    .locals 3

    .line 5
    iget-object p1, p1, Ldev/duo/taskcore/d;->a:Ldev/duo/taskcore/d$b;

    iget-object p1, p1, Ldev/duo/taskcore/d$b;->h:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 8
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->z(Ldev/duo/taskcore/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->z(Ldev/duo/taskcore/g;)Landroid/content/Context;

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

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p1

    .line 10
    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/g$h;->p:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private a(II)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 14
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->f:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 16
    iget-object p2, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p2}, Ldev/duo/taskcore/g;->z(Ldev/duo/taskcore/g;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 17
    const-class p2, Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 19
    invoke-direct {p0, p1}, Ldev/duo/taskcore/g$h;->a(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ldev/duo/taskcore/g$h;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic a(Ldev/duo/taskcore/g$h;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/g$h;->a(II)V

    return-void
.end method

.method private a(I[Ldev/duo/taskcore/d;)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 23
    aget-object p2, p2, p1

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->f(Ldev/duo/taskcore/g;)[Ldev/duo/taskcore/d;

    move-result-object v0

    aget-object p1, v0, p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Ldev/duo/taskcore/g$h;->h:I

    return v2

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->c(Ldev/duo/taskcore/g;)Z

    move-result v0

    iget-object v3, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v3}, Ldev/duo/taskcore/g;->d(Ldev/duo/taskcore/g;)Z

    move-result v3

    iget-object v4, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v4}, Ldev/duo/taskcore/g;->e(Ldev/duo/taskcore/g;)I

    move-result v4

    invoke-static {v0, v3, v4}, Ldev/duo/taskcore/a;->a(ZZI)Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Ldev/duo/taskcore/g$h;->h:I

    return v2

    .line 44
    :cond_1
    iget v0, p0, Ldev/duo/taskcore/g$h;->h:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Ldev/duo/taskcore/g$h;->l:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Ldev/duo/taskcore/g$h;->a()V

    return v2

    .line 114
    :pswitch_1
    iget v0, p0, Ldev/duo/taskcore/g$h;->h:I

    if-ne v0, v4, :cond_4

    .line 115
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v1

    invoke-virtual {v1}, Ldev/duo/taskcore/b;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Ldev/duo/taskcore/g$h;->i:F

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;F)F

    .line 116
    iget-boolean v0, p0, Ldev/duo/taskcore/g$h;->m:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Ldev/duo/taskcore/g$h;->i:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Ldev/duo/taskcore/g$h;->j:F

    sub-float/2addr p1, v3

    float-to-double v3, p1

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget p1, p0, Ldev/duo/taskcore/g$h;->n:I

    int-to-double v3, p1

    cmpl-double p1, v0, v3

    if-lez p1, :cond_3

    iput-boolean v2, p0, Ldev/duo/taskcore/g$h;->m:Z

    .line 117
    :cond_3
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->o(Ldev/duo/taskcore/g;)V

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 119
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->p(Ldev/duo/taskcore/g;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 120
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->i(Ldev/duo/taskcore/g;)F

    move-result v0

    invoke-interface {p1, v0}, Ldev/duo/taskcore/g$f;->a(F)V

    goto/16 :goto_0

    .line 121
    :cond_4
    iget-boolean v3, p0, Ldev/duo/taskcore/g$h;->l:Z

    if-eqz v3, :cond_6

    .line 123
    iget-boolean v0, p0, Ldev/duo/taskcore/g$h;->m:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Ldev/duo/taskcore/g$h;->i:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Ldev/duo/taskcore/g$h;->j:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget v3, p0, Ldev/duo/taskcore/g$h;->n:I

    int-to-double v3, v3

    cmpl-double v0, v0, v3

    if-lez v0, :cond_5

    .line 124
    iput-boolean v2, p0, Ldev/duo/taskcore/g$h;->m:Z

    .line 125
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v0

    invoke-interface {v0}, Ldev/duo/taskcore/g$f;->d()V

    .line 127
    :cond_5
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Ldev/duo/taskcore/g$h;->j:F

    sub-float/2addr p1, v1

    invoke-static {v0, p1}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;F)F

    .line 128
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->m(Ldev/duo/taskcore/g;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->r(Ldev/duo/taskcore/g;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Ldev/duo/taskcore/g$h;->a(F)I

    move-result v0

    invoke-static {p1, v0}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;I)I

    .line 129
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->o(Ldev/duo/taskcore/g;)V

    goto :goto_0

    :cond_6
    if-eq v0, v1, :cond_7

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/g$h;->b(FF)I

    move-result p1

    iget v0, p0, Ldev/duo/taskcore/g$h;->h:I

    if-eq p1, v0, :cond_7

    .line 132
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->k(Ldev/duo/taskcore/g;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iput v1, p0, Ldev/duo/taskcore/g$h;->h:I

    :cond_7
    :goto_0
    return v2

    .line 137
    :pswitch_2
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->k(Ldev/duo/taskcore/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Ldev/duo/taskcore/g$h;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget v0, p0, Ldev/duo/taskcore/g$h;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v6, p1}, Ldev/duo/taskcore/g$h;->b(FF)I

    move-result p1

    .line 139
    iput v1, p0, Ldev/duo/taskcore/g$h;->h:I

    if-ne v0, v4, :cond_c

    .line 141
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->i(Ldev/duo/taskcore/g;)F

    move-result p1

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v0

    invoke-virtual {v0}, Ldev/duo/taskcore/b;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_8

    move p1, v2

    goto :goto_1

    :cond_8
    move p1, v5

    .line 142
    :goto_1
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0, v5}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;Z)Z

    .line 143
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0, v3}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;F)F

    .line 144
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->o(Ldev/duo/taskcore/g;)V

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 146
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->p(Ldev/duo/taskcore/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_9

    .line 147
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->t(Ldev/duo/taskcore/g;)V

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    invoke-interface {p1}, Ldev/duo/taskcore/g$f;->b()V

    goto :goto_2

    .line 149
    :cond_9
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->l(Ldev/duo/taskcore/g;)V

    .line 150
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    invoke-interface {p1}, Ldev/duo/taskcore/g$f;->a()V

    .line 151
    :cond_a
    iget-boolean p1, p0, Ldev/duo/taskcore/g$h;->m:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    invoke-interface {p1}, Ldev/duo/taskcore/g$f;->j()V

    :cond_b
    :goto_2
    return v2

    .line 155
    :cond_c
    iget-boolean v3, p0, Ldev/duo/taskcore/g$h;->l:Z

    if-eqz v3, :cond_e

    .line 156
    iput-boolean v5, p0, Ldev/duo/taskcore/g$h;->l:Z

    .line 157
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->m(Ldev/duo/taskcore/g;)I

    move-result p1

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->n(Ldev/duo/taskcore/g;)I

    move-result v0

    .line 158
    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1, v4}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;I)I

    move-result v3

    invoke-static {v1, v3}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;I)I

    .line 159
    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->o(Ldev/duo/taskcore/g;)V

    .line 160
    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v1

    if-eqz v1, :cond_d

    if-eq p1, v0, :cond_d

    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ldev/duo/taskcore/g$f;->a(II)V

    goto :goto_3

    .line 161
    :cond_d
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->l(Ldev/duo/taskcore/g;)V

    :goto_3
    return v2

    .line 165
    :cond_e
    iget-object v3, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v3}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v3

    if-eqz v3, :cond_11

    if-eq v0, v1, :cond_11

    if-eq p1, v0, :cond_f

    goto :goto_4

    .line 166
    :cond_f
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->f(Ldev/duo/taskcore/g;)[Ldev/duo/taskcore/d;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_10

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    invoke-interface {p1, v0}, Ldev/duo/taskcore/g$f;->g(I)V

    goto :goto_4

    .line 167
    :cond_10
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object p1

    invoke-interface {p1, v0}, Ldev/duo/taskcore/g$f;->a(I)V

    :cond_11
    :goto_4
    return v2

    :pswitch_3
    nop

    .line 168
    iput-boolean v5, p0, Ldev/duo/taskcore/g$h;->m:Z

    iput-boolean v5, p0, Ldev/duo/taskcore/g$h;->l:Z

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldev/duo/taskcore/g$h;->i:F

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ldev/duo/taskcore/g$h;->j:F

    .line 171
    iget v0, p0, Ldev/duo/taskcore/g$h;->i:F

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/g$h;->b(FF)I

    move-result p1

    iput p1, p0, Ldev/duo/taskcore/g$h;->h:I

    if-ne p1, v4, :cond_12

    .line 172
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1, v2}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;Z)Z

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1, v3}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;F)F

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->q(Ldev/duo/taskcore/g;)V

    goto :goto_5

    :cond_12
    if-ltz p1, :cond_13

    .line 173
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->f(Ldev/duo/taskcore/g;)[Ldev/duo/taskcore/d;

    move-result-object p1

    iget v0, p0, Ldev/duo/taskcore/g$h;->h:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_13

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->k(Ldev/duo/taskcore/g;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->o:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    :goto_5
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

.method private b(FF)I
    .locals 4

    .line 16
    invoke-direct {p0}, Ldev/duo/taskcore/g$h;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 17
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

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 18
    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v1

    iget-object v1, v1, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

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

    :cond_2
    const/4 p1, -0x2

    return p1
.end method

.method static synthetic b(Ldev/duo/taskcore/g$h;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/taskcore/g$h;->k:I

    return p0
.end method

.method private b()Landroid/graphics/Rect;
    .locals 5

    .line 14
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v0

    invoke-virtual {v0}, Ldev/duo/taskcore/b;->b()I

    move-result v0

    add-int/lit8 v1, v0, -0x3

    iget-object v2, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v2}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v2

    iget-object v2, v2, Ldev/duo/taskcore/b;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v2, -0x6e

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x6e

    invoke-direct {v3, v1, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method static synthetic b(Ldev/duo/taskcore/g$h;I)Ljava/lang/CharSequence;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldev/duo/taskcore/g$h;->a(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 10
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->g:Ldev/duo/taskcore/f;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/f;->c(I)[I

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    const/4 v0, 0x1

    aget v0, p1, v0

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Ldev/duo/taskcore/g$h;->a(II)V

    .line 13
    const/4 v0, 0x0

    aget p1, p1, v0

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/g$h;->a(II)V

    return-void
.end method

.method static synthetic c(Ldev/duo/taskcore/g$h;)Ldev/duo/taskcore/f;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/taskcore/g$h;->g:Ldev/duo/taskcore/f;

    return-object p0
.end method

.method private synthetic d()V
    .locals 2

    .line 1
    iget v0, p0, Ldev/duo/taskcore/g$h;->h:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->f(Ldev/duo/taskcore/g;)[Ldev/duo/taskcore/d;

    move-result-object v0

    iget v1, p0, Ldev/duo/taskcore/g$h;->h:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/g$h;->l:Z

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    iget v1, p0, Ldev/duo/taskcore/g$h;->h:I

    invoke-static {v0, v1}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;I)I

    move-result v1

    invoke-static {v0, v1}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;I)I

    .line 5
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;F)F

    .line 6
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->u(Ldev/duo/taskcore/g;)V

    .line 7
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v0

    iget v1, p0, Ldev/duo/taskcore/g$h;->h:I

    invoke-interface {v0, v1}, Ldev/duo/taskcore/g$f;->f(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 30
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->k(Ldev/duo/taskcore/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/g$h;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget v0, p0, Ldev/duo/taskcore/g$h;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->w(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/g$f;

    move-result-object v0

    invoke-interface {v0}, Ldev/duo/taskcore/g$f;->a()V

    .line 32
    :cond_0
    iget v0, p0, Ldev/duo/taskcore/g$h;->h:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/g$h;->l:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->l(Ldev/duo/taskcore/g;)V

    .line 33
    :cond_2
    const/4 v0, -0x2

    iput v0, p0, Ldev/duo/taskcore/g$h;->h:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/taskcore/g$h;->l:Z

    .line 35
    iget-object v2, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v2, v0}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;Z)Z

    .line 36
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;F)F

    .line 37
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0, v1}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;I)I

    move-result v1

    invoke-static {v0, v1}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;I)I

    .line 38
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->o(Ldev/duo/taskcore/g;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 40
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->p(Ldev/duo/taskcore/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method a(Z)V
    .locals 2

    .line 26
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    const v1, 0x66ffffff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x44000000    # 512.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->b:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    const v1, -0x7f000001

    goto :goto_1

    :cond_1
    const/high16 v1, 0x55000000

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->c:Landroid/graphics/Paint;

    if-eqz p1, :cond_2

    const p1, -0x19000001

    goto :goto_2

    :cond_2
    const/high16 p1, -0x4d000000

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method a([Ldev/duo/taskcore/d;)V
    .locals 1

    .line 21
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->g:Ldev/duo/taskcore/f;

    iget v0, v0, Ldev/duo/taskcore/f;->a:I

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/g$h;->a(I[Ldev/duo/taskcore/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->g:Ldev/duo/taskcore/f;

    iget v0, v0, Ldev/duo/taskcore/f;->b:I

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/g$h;->a(I[Ldev/duo/taskcore/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ldev/duo/taskcore/g$h;->c()V

    return-void
.end method

.method b(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/g$h;->e:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/g$h;->e:Landroid/animation/ValueAnimator;

    .line 4
    :cond_1
    iget v1, p0, Ldev/duo/taskcore/g$h;->d:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_2

    return-void

    .line 5
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    const-wide/16 v1, 0xa0

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x64

    .line 6
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance p1, Ldev/duo/taskcore/g$h$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Ldev/duo/taskcore/g$h$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/g$h;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iput-object v0, p0, Ldev/duo/taskcore/g$h;->e:Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method c()V
    .locals 2

    .line 2
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Ldev/duo/taskcore/g$h;->b(I)V

    .line 3
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->g:Ldev/duo/taskcore/f;

    invoke-virtual {v0}, Ldev/duo/taskcore/f;->a()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Ldev/duo/taskcore/g$h;->a(II)V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->f:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/g$h;->f:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->g:Ldev/duo/taskcore/f;

    iget v0, v0, Ldev/duo/taskcore/f;->b:I

    if-eq v0, v3, :cond_2

    .line 8
    invoke-direct {p0, v3}, Ldev/duo/taskcore/g$h;->b(I)V

    return v2

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Ldev/duo/taskcore/g$h;->k:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Ldev/duo/taskcore/g$h;->a(FF)I

    move-result v0

    .line 10
    invoke-direct {p0, v0}, Ldev/duo/taskcore/g$h;->b(I)V

    if-eq v0, v3, :cond_2

    return v2

    .line 17
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->c(Ldev/duo/taskcore/g;)Z

    move-result v0

    iget-object v1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v1}, Ldev/duo/taskcore/g;->d(Ldev/duo/taskcore/g;)Z

    move-result v1

    iget-object v2, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v2}, Ldev/duo/taskcore/g;->e(Ldev/duo/taskcore/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Ldev/duo/taskcore/a;->a(ZZI)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/g$h;->q:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget v0, p0, Ldev/duo/taskcore/g$h;->k:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 3
    iget-object v3, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v3}, Ldev/duo/taskcore/g;->f(Ldev/duo/taskcore/g;)[Ldev/duo/taskcore/d;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    iget-object v3, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v3}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v5, p1

    goto :goto_1

    .line 4
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v4}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v4

    iget-object v4, v4, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5
    iget-object v4, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v4}, Ldev/duo/taskcore/g;->g(Ldev/duo/taskcore/g;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v4}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v4

    invoke-virtual {v4}, Ldev/duo/taskcore/b;->c()I

    move-result v4

    iget-object v5, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v5}, Ldev/duo/taskcore/g;->i(Ldev/duo/taskcore/g;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 6
    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v5, p0, Ldev/duo/taskcore/g$h;->a:Landroid/graphics/Paint;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v6, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v9, v3

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float v8, v6, v3

    add-float v10, v6, v3

    .line 8
    iget-object v12, p0, Ldev/duo/taskcore/g$h;->a:Landroid/graphics/Paint;

    move v11, v9

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v5, v7

    sub-float v7, v9, v3

    add-float/2addr v9, v3

    .line 9
    iget-object v10, p0, Ldev/duo/taskcore/g$h;->a:Landroid/graphics/Paint;

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 3
    :cond_2
    move-object v5, p1

    .line 9
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p1, v5

    goto :goto_0

    .line 11
    :cond_3
    move-object v5, p1

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->j(Ldev/duo/taskcore/g;)I

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    if-ltz p1, :cond_4

    iget-object p1, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->b(Ldev/duo/taskcore/g;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    iget-object v2, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v2}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v2

    iget-object v2, v2, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

    iget-object v3, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v3}, Ldev/duo/taskcore/g;->j(Ldev/duo/taskcore/g;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    iget-object v2, p0, Ldev/duo/taskcore/g$h;->c:Landroid/graphics/Paint;

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-virtual {v5, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16
    :cond_4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p0}, Ldev/duo/taskcore/g$h;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 17
    iget-object v2, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v2}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v2

    invoke-virtual {v2}, Ldev/duo/taskcore/b;->c()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Ldev/duo/taskcore/g$h;->r:Ldev/duo/taskcore/g;

    invoke-static {v3}, Ldev/duo/taskcore/g;->i(Ldev/duo/taskcore/g;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 18
    iget v2, p0, Ldev/duo/taskcore/g$h;->d:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_5

    .line 19
    iget-object v1, p0, Ldev/duo/taskcore/g$h;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 20
    iget-object v2, p0, Ldev/duo/taskcore/g$h;->b:Landroid/graphics/Paint;

    int-to-float v3, v1

    iget v4, p0, Ldev/duo/taskcore/g$h;->d:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    iget-object v2, p0, Ldev/duo/taskcore/g$h;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 22
    iget-object p1, p0, Ldev/duo/taskcore/g$h;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Ldev/duo/taskcore/g$h;->k:I

    int-to-float v1, v0

    .line 2
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Ldev/duo/taskcore/g$h;->a(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v1

    :catchall_0
    move-exception v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw v1
.end method
