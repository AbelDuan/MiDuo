.class final Ldev/duo/workspaceprobe/b$J;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "J"
.end annotation


# static fields
.field static final o:I = 0x88

.field private static final p:F = 58.0f

.field private static final q:F = 4.5f


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Ldev/duo/workspaceprobe/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private final e:Ldev/duo/workspaceprobe/b$N;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/Path;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:F


# direct methods
.method public static synthetic $r8$lambda$pgXNcsQvOMEp5NmIJ9fgjsFba3c(Ldev/duo/workspaceprobe/b$J;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ykIc5nAda1k6xWr6UftCz8Tdm4U(Ldev/duo/workspaceprobe/b$J;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ldev/duo/workspaceprobe/b$N;

    const/high16 v1, 0x42680000    # 58.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/duo/workspaceprobe/b$N;-><init>(FI)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$J;->e:Ldev/duo/workspaceprobe/b$N;

    .line 3
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    .line 4
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Ldev/duo/workspaceprobe/b$J;->g:Landroid/graphics/Paint;

    .line 5
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    .line 6
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Ldev/duo/workspaceprobe/b$J;->i:Landroid/graphics/Path;

    .line 11
    const/4 v6, -0x1

    iput v6, p0, Ldev/duo/workspaceprobe/b$J;->m:I

    .line 12
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Ldev/duo/workspaceprobe/b$J;->n:F

    .line 16
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$J;->b:Ldev/duo/workspaceprobe/b;

    .line 17
    iput-object p3, p0, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    .line 19
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v6, 0x42880000    # 68.0f

    invoke-virtual {v5, v6, v6, v1, p1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 20
    const p1, 0x1ffffff

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    const/high16 p1, 0x40e00000    # 7.0f

    const/4 v1, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x14000000

    invoke-virtual {v4, p1, v1, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 22
    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/high16 v4, 0x42fc0000    # 126.0f

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, p1, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    const/high16 p1, 0x40900000    # 4.5f

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 26
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 27
    const-string p1, "app:"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$J;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_0
    const-string p1, "wechat"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "alipay"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p2, p3}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Ldev/duo/workspaceprobe/b$J;->k:Z

    iput-boolean v2, p0, Ldev/duo/workspaceprobe/b$J;->l:Z

    goto :goto_1

    .line 30
    :cond_2
    const-string p1, "translate"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.xiaomi.aiasst.vision"

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$J;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_3
    invoke-static {p3}, Ldev/duo/workspaceprobe/b$J;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$J;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_4
    :goto_0
    invoke-static {p3}, Ldev/duo/hookprobe/N;->a(Ljava/lang/String;)Ldev/duo/hookprobe/N;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    .line 36
    :goto_1
    new-instance p1, Ldev/duo/workspaceprobe/b$J$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/b$J$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$J;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static a(Ljava/lang/Boolean;I)I
    .locals 1

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, -0xdca535

    return p0

    :cond_0
    return p1
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$J;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/b$J;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$J;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$J;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0xe

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "hotspot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0xd

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "powersave"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0xc

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "torch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0xb

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 p0, 0xa

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "autobright"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/16 p0, 0x9

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "dark"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/16 p0, 0x8

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "cast"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x7

    goto :goto_2

    :sswitch_9
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x6

    goto :goto_2

    :sswitch_a
    const-string v0, "screenshot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 p0, 0x5

    goto :goto_2

    :sswitch_b
    const-string v0, "airplane"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p0, 0x4

    goto :goto_2

    :sswitch_c
    const-string v0, "screenrecord"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p0, 0x3

    goto :goto_2

    :sswitch_d
    const-string v0, "ringer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 p0, 0x2

    goto :goto_2

    :sswitch_e
    const-string v0, "keepon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 p0, 0x1

    goto :goto_2

    :sswitch_f
    const-string v0, "eyecare"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    const/4 p0, -0x1

    :goto_2
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :pswitch_0
    const-string p0, "ic_qs_bluetooth_off"

    return-object p0

    .line 24
    :pswitch_1
    const-string p0, "qs_location_icon_off"

    return-object p0

    .line 25
    :pswitch_2
    const-string p0, "ic_qs_hotspot_disabled"

    return-object p0

    .line 32
    :pswitch_3
    const-string p0, "ic_qs_battery_saver_off"

    return-object p0

    .line 33
    :pswitch_4
    const-string p0, "ic_qs_flashlight_disabled"

    return-object p0

    .line 34
    :pswitch_5
    const-string p0, "ic_qs_screenlock"

    return-object p0

    .line 40
    :pswitch_6
    const-string p0, "ic_qs_brightness_auto"

    return-object p0

    .line 41
    :pswitch_7
    const-string p0, "ic_qs_night_mode_off"

    return-object p0

    .line 48
    :pswitch_8
    const-string p0, "ic_cast"

    return-object p0

    .line 49
    :pswitch_9
    const-string p0, "ic_qs_auto_rotate_disabled"

    return-object p0

    .line 50
    :pswitch_a
    const-string p0, "ic_qs_screenshot"

    return-object p0

    .line 62
    :pswitch_b
    const-string p0, "ic_qs_lite_airplane"

    return-object p0

    .line 63
    :pswitch_c
    const-string p0, "qs_screen_record_icon_off"

    return-object p0

    .line 64
    :pswitch_d
    const-string p0, "ic_qs_mute_off"

    return-object p0

    .line 76
    :pswitch_e
    const-string p0, "ic_keep_off"

    return-object p0

    .line 77
    :pswitch_f
    const-string p0, "ic_qs_paper_mode_off"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4cf27b3e -> :sswitch_f
        -0x43aa93dc -> :sswitch_e
        -0x377c5523 -> :sswitch_d
        -0x3002d443 -> :sswitch_c
        -0x285a60ae -> :sswitch_b
        -0x18d27a9a -> :sswitch_a
        -0x266f082 -> :sswitch_9
        0x2e7b3f -> :sswitch_8
        0x2eef76 -> :sswitch_7
        0x2a94d69 -> :sswitch_6
        0x6872ed7 -> :sswitch_5
        0x696d3fc -> :sswitch_4
        0x326e4002 -> :sswitch_3
        0x418a9ecf -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x755ac2ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(FFJ)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 79
    iget p1, p0, Ldev/duo/workspaceprobe/b$J;->n:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    new-instance p2, Ldev/duo/workspaceprobe/b$J$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Ldev/duo/workspaceprobe/b$J$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b$J;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/b$J;->n:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 25

    .line 84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    iget-object v3, v0, Ldev/duo/workspaceprobe/b$J;->d:Ljava/lang/Boolean;

    iget v4, v0, Ldev/duo/workspaceprobe/b$J;->m:I

    invoke-static {v3, v4}, Ldev/duo/workspaceprobe/b$J;->a(Ljava/lang/Boolean;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    iget v3, v0, Ldev/duo/workspaceprobe/b$J;->n:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v7, 0x8

    sparse-switch v3, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "assistant"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "hotspot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "recents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "torch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "sleep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0xb

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "autobright"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_8
    const-string v3, "dark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move v2, v7

    goto/16 :goto_2

    :sswitch_9
    const-string v3, "back"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x7

    goto :goto_2

    :sswitch_a
    const-string v3, "rotation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x6

    goto :goto_2

    :sswitch_b
    const-string v3, "lastapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_c
    const-string v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_d
    const-string v3, "screenrecord"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_e
    const-string v3, "search"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_f
    const-string v3, "ringer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_10
    const-string v3, "eyecare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    const/high16 v8, 0x41980000    # 19.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v13, 0x41400000    # 12.0f

    const/high16 v14, 0x40e00000    # 7.0f

    const/high16 v6, 0x41a80000    # 21.0f

    const/high16 v15, 0x41880000    # 17.0f

    const/high16 v16, 0x40c00000    # 6.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v17, 0x40400000    # 3.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v19, 0x41b00000    # 22.0f

    const/high16 v12, 0x41000000    # 8.0f

    const/high16 v20, 0x41a00000    # 20.0f

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v22, 0x41900000    # 18.0f

    packed-switch v2, :pswitch_data_0

    .line 196
    move v7, v9

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v7, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_0
    sub-float v2, v9, v3

    .line 197
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2, v11, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 198
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v3, v9, v12

    add-float v4, v9, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v3, v9, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v3, v9, v20

    invoke-virtual {v2, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 201
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :pswitch_1
    sub-float v2, v9, v19

    sub-float v3, v9, v22

    add-float v4, v9, v19

    add-float v5, v9, v22

    .line 202
    iget-object v8, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    sub-float v1, v9, v11

    add-float v3, v9, v11

    .line 203
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    move/from16 v4, p2

    move-object/from16 v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_2
    move v12, v9

    sub-float v2, v12, v20

    add-float v4, v12, v20

    .line 246
    iget-object v9, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v7, 0x43020000    # 130.0f

    const/4 v8, 0x0

    const/high16 v6, 0x434d0000    # 205.0f

    move v3, v2

    move v5, v4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sub-float v2, v12, v13

    add-float v4, v12, v13

    .line 247
    iget-object v9, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    move v3, v2

    move v5, v4

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 248
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v4, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 250
    :pswitch_3
    move v12, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 252
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    sub-float v6, v12, v22

    sub-float v2, v6, v3

    sub-float v13, v12, v11

    sub-float v4, v13, v3

    add-float v16, v12, v11

    add-float v5, v16, v3

    add-float v9, v12, v20

    add-float/2addr v3, v9

    .line 253
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    .line 254
    move v7, v12

    iget-object v12, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v14, v7, v20

    add-float v15, v7, v22

    const/high16 v17, 0x41080000    # 8.5f

    invoke-static/range {v12 .. v17}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/graphics/Path;FFFFF)V

    .line 255
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v3, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 257
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 258
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    const/high16 v10, 0x41080000    # 8.5f

    move v7, v13

    move/from16 v8, v16

    invoke-static/range {v5 .. v10}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/graphics/Path;FFFFF)V

    .line 259
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :pswitch_4
    move v7, v9

    sub-float v2, v7, v10

    .line 279
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2, v13, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float v2, v7, v14

    const/high16 v3, 0x41100000    # 9.0f

    add-float/2addr v3, v7

    add-float v4, v7, v15

    .line 280
    iget-object v6, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    move v5, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v9, v5

    add-float v5, v7, v8

    .line 281
    iget-object v6, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    move/from16 v4, p2

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v10, v2

    add-float v1, v10, v14

    .line 282
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    move v2, v3

    move v3, v1

    move-object/from16 v0, p1

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 321
    :pswitch_5
    move v10, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v10, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_11

    int-to-double v2, v8

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    .line 324
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    mul-double/2addr v4, v11

    double-to-float v4, v4

    add-float/2addr v4, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v11

    double-to-float v5, v5

    add-float/2addr v5, v10

    .line 325
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4035000000000000L    # 21.0

    mul-double/2addr v11, v13

    double-to-float v6, v11

    add-float/2addr v6, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v11, 0x4035000000000000L    # 21.0

    mul-double/2addr v2, v11

    double-to-float v2, v2

    add-float/2addr v2, v10

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    iget-object v6, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    .line 326
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_11
    return-void

    .line 327
    :pswitch_6
    move v10, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 329
    iget-object v11, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v19, v10, v6

    sub-float v14, v10, v17

    const/high16 v16, 0x40d00000    # 6.5f

    move/from16 v13, v19

    move v15, v14

    move/from16 v12, v19

    invoke-static/range {v11 .. v16}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/graphics/Path;FFFFF)V

    .line 330
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v20, v10, v17

    add-float v21, v10, v6

    const/high16 v23, 0x40d00000    # 6.5f

    move/from16 v18, v20

    move/from16 v20, v19

    move/from16 v19, v18

    move-object/from16 v18, v2

    move/from16 v22, v14

    invoke-static/range {v18 .. v23}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/graphics/Path;FFFFF)V

    .line 331
    move/from16 v14, v20

    move/from16 v20, v19

    move/from16 v19, v14

    move/from16 v14, v22

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    move-object/from16 v18, v2

    move/from16 v22, v21

    move/from16 v21, v14

    invoke-static/range {v18 .. v23}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/graphics/Path;FFFFF)V

    .line 332
    move/from16 v21, v22

    iget-object v7, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    const/high16 v12, 0x40d00000    # 6.5f

    move/from16 v9, v20

    move/from16 v11, v21

    move/from16 v8, v20

    move/from16 v10, v21

    invoke-static/range {v7 .. v12}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/graphics/Path;FFFFF)V

    .line 333
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 372
    :pswitch_7
    move v10, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 374
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v3, v10, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v10, v8, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 375
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    const/high16 v3, 0x41300000    # 11.0f

    add-float/2addr v3, v10

    sub-float v6, v10, v16

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 376
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 377
    :pswitch_8
    move v10, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v3, v10, v14

    sub-float v4, v10, v22

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v4, v10, v11

    invoke-virtual {v2, v4, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v4, v10, v22

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :pswitch_9
    move v10, v9

    sub-float v2, v10, v15

    add-float v4, v10, v15

    .line 443
    iget-object v9, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v7, 0x437a0000    # 250.0f

    const/4 v8, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 444
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 445
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v3, v10, v13

    sub-float v4, v10, v20

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v3, v10, v19

    sub-float v4, v10, v11

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v3, v10, v12

    sub-float v4, v10, v16

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 446
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 447
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 448
    :pswitch_a
    move v10, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v3, v10, v22

    sub-float v5, v10, v12

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v6, v10, v22

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v7, v10, v11

    sub-float v8, v10, v4

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 449
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v5, v10, v12

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v6, v10, v11

    invoke-virtual {v2, v6, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float v3, v10, v4

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 450
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :pswitch_b
    move v10, v9

    sub-float v2, v10, v6

    const/high16 v3, 0x41700000    # 15.0f

    move v4, v3

    sub-float v3, v10, v4

    add-float v5, v10, v6

    add-float/2addr v4, v10

    .line 461
    iget-object v8, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x40a00000    # 5.0f

    move/from16 v24, v5

    move v5, v4

    move/from16 v4, v24

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 462
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v10, v14, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 496
    :pswitch_c
    move v10, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v10, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 497
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 498
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v10, v12, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_d
    move v10, v9

    sub-float v2, v10, v17

    .line 499
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float v1, v10, v12

    add-float v3, v10, v20

    .line 500
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    move v2, v1

    move v4, v3

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 525
    :pswitch_e
    move v7, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    const/high16 v3, 0x41500000    # 13.0f

    sub-float v6, v7, v3

    add-float v8, v7, v12

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 526
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v5, v7, v5

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 527
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v4, v7, v4

    invoke-virtual {v2, v6, v4, v7, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 528
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float/2addr v3, v7

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 529
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 530
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v3, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sub-float v2, v7, v22

    add-float v4, v7, v22

    .line 531
    iget-object v6, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    move v5, v8

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v1, v7, v10

    const/high16 v21, 0x41600000    # 14.0f

    add-float v2, v7, v21

    add-float v3, v7, v10

    .line 532
    iget-object v5, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    move v4, v2

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 568
    :pswitch_f
    move v7, v9

    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v5, v7, v20

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 569
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v6, v7, v4

    add-float v8, v7, v20

    invoke-virtual {v2, v7, v6, v8, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 570
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float/2addr v4, v7

    invoke-virtual {v2, v7, v4, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 571
    iget-object v2, v0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v4, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 572
    iget-object v0, v0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v7, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cf27b3e -> :sswitch_10
        -0x377c5523 -> :sswitch_f
        -0x36059a58 -> :sswitch_e
        -0x3002d443 -> :sswitch_d
        -0x18d27a9a -> :sswitch_c
        -0x2ce2835 -> :sswitch_b
        -0x266f082 -> :sswitch_a
        0x2e04e7 -> :sswitch_9
        0x2eef76 -> :sswitch_8
        0x30f4df -> :sswitch_7
        0x2a94d69 -> :sswitch_6
        0x6872ed7 -> :sswitch_5
        0x696d3fc -> :sswitch_4
        0x40828578 -> :sswitch_3
        0x418a9ecf -> :sswitch_2
        0x553972de -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Path;FFFFF)V
    .locals 15

    const/high16 v0, 0x40100000    # 2.25f

    sub-float v2, p1, v0

    sub-float v3, p2, v0

    add-float v4, p3, v0

    add-float v5, p4, v0

    add-float v6, p5, v0

    .line 573
    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v7, v6

    move-object v1, p0

    move-object v8, v14

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    add-float v8, p1, v0

    add-float v9, p2, v0

    sub-float v10, p3, v0

    sub-float v11, p4, v0

    sub-float v0, p5, v0

    .line 576
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 577
    move-object v7, p0

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const p1, 0x3f733333    # 0.95f

    const p2, 0x3f0ccccd    # 0.55f

    const-wide/16 v0, 0x5a

    invoke-direct {p0, p1, p2, v0, v1}, Ldev/duo/workspaceprobe/b$J;->a(FFJ)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 6
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v0, 0xb4

    invoke-direct {p0, p1, p1, v0, v1}, Ldev/duo/workspaceprobe/b$J;->a(FFJ)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/graphics/Canvas;F)V
    .locals 11

    .line 2
    invoke-static {}, Ldev/duo/workspaceprobe/b;->a()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x42400000    # 48.0f

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    iget v2, p0, Ldev/duo/workspaceprobe/b$J;->m:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, 0x1f000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v4, p2, v1

    add-float v6, p2, v1

    .line 7
    iget-object v10, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v8, 0x41d00000    # 26.0f

    const/high16 v9, 0x41d00000    # 26.0f

    move v5, v4

    move v7, v6

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 8
    invoke-direct {p0, v3, p2}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/graphics/Canvas;F)V

    return-void

    .line 11
    :cond_0
    move-object v3, p1

    iget p1, p0, Ldev/duo/workspaceprobe/b$J;->n:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    sub-float v0, p2, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v2, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    invoke-direct {p0, v3, p2}, Ldev/duo/workspaceprobe/b$J;->c(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method static b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0xa

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "hotspot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "powersave"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x8

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "torch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x7

    goto :goto_2

    :sswitch_5
    const-string v0, "autobright"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x6

    goto :goto_2

    :sswitch_6
    const-string v0, "dark"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x5

    goto :goto_2

    :sswitch_7
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 p0, 0x4

    goto :goto_2

    :sswitch_8
    const-string v0, "airplane"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x3

    goto :goto_2

    :sswitch_9
    const-string v0, "ringer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x2

    goto :goto_2

    :sswitch_a
    const-string v0, "keepon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    move p0, v1

    goto :goto_2

    :sswitch_b
    const-string v0, "eyecare"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    move p0, v2

    goto :goto_2

    :goto_1
    const/4 p0, -0x1

    :goto_2
    packed-switch p0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4cf27b3e -> :sswitch_b
        -0x43aa93dc -> :sswitch_a
        -0x377c5523 -> :sswitch_9
        -0x285a60ae -> :sswitch_8
        -0x266f082 -> :sswitch_7
        0x2eef76 -> :sswitch_6
        0x2a94d69 -> :sswitch_5
        0x696d3fc -> :sswitch_4
        0x326e4002 -> :sswitch_3
        0x418a9ecf -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x755ac2ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/graphics/Canvas;F)V
    .locals 9

    const/high16 v0, 0x42180000    # 38.0f

    add-float/2addr p2, v0

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const v1, -0xd000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/b$J;->n:F

    const/high16 v2, 0x43720000    # 242.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, p2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const/high16 v3, 0x26000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 10
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    const v1, -0xc5c5c4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    iget v1, p0, Ldev/duo/workspaceprobe/b$J;->n:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 15
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    const/high16 v1, 0x41000000    # 8.0f

    sub-float v2, p2, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v4, p2, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float/2addr v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    const/high16 v5, 0x40900000    # 4.5f

    add-float v6, p2, v5

    const/high16 v7, 0x40f00000    # 7.5f

    sub-float v8, p2, v7

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    add-float/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    sub-float v1, p2, v5

    add-float/2addr p2, v7

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$J;->h:Landroid/graphics/Path;

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 18
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$J;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    .line 4
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$J;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a(II)V
    .locals 0

    .line 7
    iput p1, p0, Ldev/duo/workspaceprobe/b$J;->m:I

    .line 8
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$J;->e:Ldev/duo/workspaceprobe/b$N;

    invoke-virtual {p1, p2}, Ldev/duo/workspaceprobe/b$N;->a(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$J;->c:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$J;->c(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$J;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->b:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$J;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$J;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->b:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p0}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$J;)V

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    const-string v1, "lastapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x42880000    # 68.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v1}, Ldev/duo/workspaceprobe/b$J;->b(Landroid/graphics/Canvas;F)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->i:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 7
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->g:Landroid/graphics/Paint;

    const/high16 v2, 0x42640000    # 57.0f

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->e:Ldev/duo/workspaceprobe/b$N;

    invoke-virtual {v0, p1}, Ldev/duo/workspaceprobe/b$N;->draw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-static {}, Ldev/duo/workspaceprobe/b;->a()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    const-string v2, "calculator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    goto :goto_1

    .line 14
    :cond_1
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/b$J;->l:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    const-string v2, "screenrecord"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->a:Ljava/lang/String;

    const-string v2, "eyecare"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x44

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v0, 0x48

    .line 16
    :goto_1
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/b$J;->k:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$J;->d:Ljava/lang/Boolean;

    iget v4, p0, Ldev/duo/workspaceprobe/b$J;->m:I

    invoke-static {v3, v4}, Ldev/duo/workspaceprobe/b$J;->a(Ljava/lang/Boolean;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 17
    :cond_5
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Ldev/duo/workspaceprobe/b$J;->n:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 18
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v3, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v1, v0

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 20
    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$J;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 25
    :cond_6
    invoke-direct {p0, p1, v1}, Ldev/duo/workspaceprobe/b$J;->a(Landroid/graphics/Canvas;F)V

    return-void
.end method
