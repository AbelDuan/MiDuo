.class final Ldev/duo/hookprobe/D;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$YRhf4to1-vuWrP6vdXLWcjqPyYk(Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p21}, Ldev/duo/hookprobe/D;->a(Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    move-object/from16 v0, p11

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    move-object/from16 v3, p18

    move-object/from16 v4, p19

    move-object/from16 v5, p20

    move-object/from16 v6, p21

    invoke-interface/range {p0 .. p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_9

    .line 95
    invoke-interface/range {p1 .. p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_2

    .line 96
    :cond_0
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    .line 97
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 98
    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 99
    const/4 v12, 0x0

    move-object/from16 v13, p3

    invoke-virtual {v13, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    move-object/from16 v14, p4

    invoke-virtual {v14, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 101
    sget v15, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    mul-int/2addr v15, v7

    int-to-float v15, v15

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    .line 102
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    if-eq v9, v8, :cond_8

    move-object/from16 v8, p6

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move/from16 v17, v7

    move-object/from16 v7, p5

    invoke-virtual {v7, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_8

    .line 103
    move-object/from16 v7, p7

    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    move-object/from16 v7, p8

    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 104
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v7

    const/16 v8, 0x3c3

    const/16 v11, 0x490

    if-eq v7, v8, :cond_1

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v11, :cond_8

    :cond_1
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/16 v8, 0x6b0

    if-ne v7, v8, :cond_8

    .line 105
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v11, :cond_8

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v7, v8, :cond_8

    iget v7, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 106
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x43200000    # 160.0f

    mul-float/2addr v8, v11

    div-float/2addr v8, v15

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-ne v7, v8, :cond_8

    iget v7, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 107
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    div-float/2addr v8, v15

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-eq v7, v8, :cond_2

    goto/16 :goto_1

    .line 108
    :cond_2
    move-object/from16 v7, p9

    invoke-virtual {v7, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Application;

    if-nez v7, :cond_3

    .line 109
    invoke-interface {v6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 110
    :cond_3
    const-class v8, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v8}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    if-nez v7, :cond_4

    .line 111
    invoke-interface {v6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 112
    :cond_4
    invoke-virtual {v7}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v10

    .line 113
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    invoke-static {v11, v10}, Ldev/duo/hookprobe/E;->a(II)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 114
    :cond_5
    invoke-interface {v6, v8}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz p10, :cond_6

    .line 115
    invoke-virtual {v1, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    nop

    .line 116
    invoke-virtual {v1, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eq v8, v0, :cond_7

    .line 117
    invoke-interface {v6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 118
    :cond_7
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 119
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    mul-int v1, v1, v17

    int-to-float v1, v1

    div-float v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 120
    move-object/from16 v1, p14

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 121
    move-object/from16 v1, p15

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 122
    move-object/from16 v1, p16

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 123
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, p17

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 125
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 126
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 127
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 128
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v1, v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 129
    :cond_8
    :goto_1
    invoke-interface {v6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 130
    :cond_9
    :goto_2
    invoke-interface {v6}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;Ljava/util/function/BooleanSupplier;Ljava/util/function/IntSupplier;)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "DuoOuterDensity"

    :try_start_0
    const-string v0, "miuix.autodensity.AutoDensityConfig"

    const/4 v4, 0x0

    invoke-static {v0, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 9
    :try_start_1
    const-string v0, "miuix.autodensity.DensityUtil"

    invoke-static {v0, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x1

    move/from16 v16, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_f

    :catch_1
    move-exception v0

    .line 12
    :try_start_2
    const-string v0, "miuix.autodensity.g"

    invoke-static {v0, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move/from16 v16, v4

    :goto_0
    if-eqz v16, :cond_0

    .line 17
    const-string v5, "miuix.view.DisplayConfig"

    goto :goto_1

    .line 18
    :cond_0
    const-string v5, "miuix.view.e"

    .line 17
    :goto_1
    nop

    .line 18
    invoke-static {v5, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 19
    const-class v6, Landroid/content/res/Configuration;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v23

    if-eqz v16, :cond_1

    .line 20
    const-string v6, "densityDpi"

    goto :goto_2

    .line 21
    :cond_1
    const-string v6, "d"

    .line 20
    :goto_2
    nop

    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    if-eqz v16, :cond_2

    const-string v6, "density"

    goto :goto_3

    .line 22
    :cond_2
    const-string v6, "e"

    .line 21
    :goto_3
    nop

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v24

    if-eqz v16, :cond_3

    .line 23
    const-string v6, "scaledDensity"

    goto :goto_4

    .line 24
    :cond_3
    const-string v6, "f"

    .line 23
    :goto_4
    nop

    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v25

    if-eqz v16, :cond_4

    const-string v6, "fontScale"

    goto :goto_5

    .line 25
    :cond_4
    const-string v6, "g"

    .line 24
    :goto_5
    nop

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    if-eqz v16, :cond_5

    .line 26
    const-string v6, "defaultBitmapDensity"

    goto :goto_6

    .line 27
    :cond_5
    const-string v6, "c"

    .line 26
    :goto_6
    nop

    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v26

    if-eqz v16, :cond_6

    .line 28
    const-string v6, "windowWidthDp"

    goto :goto_7

    .line 29
    :cond_6
    const-string v6, "a"

    .line 28
    :goto_7
    nop

    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "b"

    if-eqz v16, :cond_7

    :try_start_3
    const-string v7, "windowHeightDp"

    goto :goto_8

    .line 30
    :cond_7
    move-object v7, v6

    .line 29
    :goto_8
    nop

    .line 30
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 31
    const-class v7, Landroid/content/res/Configuration;

    const-string v8, "windowConfiguration"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 32
    const-class v7, Landroid/content/res/Configuration;

    const-string v9, "extraConfig"

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 33
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 34
    const-string v9, "getBounds"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v11, "getMaxBounds"

    invoke-virtual {v7, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 35
    const-string v13, "getWindowingMode"

    invoke-virtual {v7, v13, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const-string v14, "getActivityType"

    invoke-virtual {v7, v14, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 36
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-string v15, "getDisplayId"

    invoke-virtual {v7, v15, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 37
    const-string v15, "android.app.ActivityThread"

    invoke-static {v15, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    const-string v4, "currentApplication"

    .line 38
    invoke-virtual {v15, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    if-eqz v16, :cond_8

    .line 39
    const-string v6, "doChangeDensity"

    goto :goto_9

    .line 40
    :cond_8
    nop

    .line 39
    :goto_9
    nop

    .line 40
    const-class v4, Landroid/content/res/Resources;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v4, v10}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v16, :cond_9

    .line 41
    const-string v5, "miuix.autodensity.DensityConfigManager"

    goto :goto_a

    .line 42
    :cond_9
    const-string v5, "miuix.autodensity.e"

    .line 41
    :goto_a
    nop

    .line 42
    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v16, :cond_a

    .line 43
    const-string v5, "getInstance"

    goto :goto_b

    .line 44
    :cond_a
    const-string v5, "h"

    .line 43
    :goto_b
    nop

    .line 44
    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    if-eqz v16, :cond_b

    .line 45
    const-string v5, "getTargetConfig"

    const-class v10, Landroid/view/Display;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_c

    .line 46
    :cond_b
    const-string v5, "j"

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object/from16 v17, v2

    .line 45
    :goto_c
    nop

    .line 47
    invoke-virtual {v1, v4}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v5, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;

    move/from16 v27, v6

    move-object v10, v11

    move-object/from16 v6, p3

    move-object v11, v7

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v26}, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v2, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    move/from16 v5, v27

    move v6, v5

    move v7, v6

    :goto_d
    if-ge v5, v2, :cond_e

    aget-object v8, v0, v5

    .line 86
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 88
    invoke-virtual {v1, v8}, Lio/github/libxposed/api/XposedModule;->deoptimize(Ljava/lang/reflect/Executable;)Z

    move-result v9

    if-eqz v9, :cond_d

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 89
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deoptimize failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 91
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "READY MIUIX outer Activity density (user scale), deoptimized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_10

    .line 93
    :goto_f
    const-string v1, "MIUIX outer density NOT installed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_2
    move-exception v0

    :goto_10
    return-void
.end method
