.class final Ldev/duo/hookprobe/K;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DuoRatioGate"

.field private static final b:J = 0xabf9183L

.field private static final c:J = 0xc2368d6L

.field private static final d:J = 0x138268edL

.field private static final e:I = 0x688

.field private static final f:I = 0x93c

.field private static final g:I = 0x1

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TsaqtBO6IDNfe-36hC-p_hEAg5g(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p7}, Ldev/duo/hookprobe/K;->a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pfWhZyD5VFk1-KVW90h3bn9ccGM(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p12}, Ldev/duo/hookprobe/K;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/K;->h:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p8

    move-object/from16 v2, p12

    const-string v3, "DuoRatioGate"

    .line 72
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v7, v5

    goto :goto_0

    .line 76
    :cond_1
    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_0
    if-nez v7, :cond_2

    move-object v8, v5

    goto :goto_1

    .line 77
    :cond_2
    move-object/from16 v8, p2

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_3

    move-object v9, v5

    goto :goto_2

    .line 78
    :cond_3
    move-object/from16 v9, p3

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    :goto_2
    if-eqz v9, :cond_5

    .line 79
    invoke-static {}, Ldev/duo/hookprobe/n;->g()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 80
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Configuration;

    .line 81
    move-object/from16 v10, p5

    invoke-virtual {v10, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    move-object/from16 v11, p6

    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    move-object/from16 v12, p7

    invoke-virtual {v12, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    .line 82
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 83
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    iget v14, v8, Landroid/content/res/Configuration;->orientation:I

    .line 84
    move-object/from16 v15, p10

    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v4, p9

    invoke-virtual {v4, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 85
    move/from16 p4, v0

    move/from16 p7, v4

    move/from16 p3, v7

    move/from16 p0, v10

    move/from16 p1, v11

    move/from16 p2, v12

    move/from16 p5, v13

    move/from16 p6, v14

    invoke-static/range {p0 .. p7}, Ldev/duo/hookprobe/K;->a(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    const-string v0, "debug.duo.outer_orientation"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v4, p11

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_5

    .line 91
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outer:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {v0, v4}, Ldev/duo/hookprobe/K;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OUTER stale landscape -> task portrait pkg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " requested="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move-object v5, v8

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v8

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 99
    :goto_3
    const-string v1, "outerError"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Ldev/duo/hookprobe/K;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "outer orientation skipped, native answer kept"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    if-nez v5, :cond_6

    .line 101
    invoke-interface {v2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_6
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method private static synthetic a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "DuoRatioGate"

    .line 47
    invoke-interface {p7}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v1

    .line 48
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 50
    :cond_0
    :try_start_0
    const-string v3, "debug.duo.ratio_gate"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_1

    .line 51
    :cond_1
    invoke-interface {p7}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_3

    goto/16 :goto_1

    .line 54
    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/16 p4, 0x688

    if-ne p3, p4, :cond_9

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/16 p4, 0x93c

    if-eq p3, p4, :cond_4

    goto/16 :goto_1

    .line 56
    :cond_4
    invoke-virtual {p5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_5

    goto/16 :goto_1

    .line 58
    :cond_5
    invoke-static {}, Ldev/duo/hookprobe/n;->g()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 60
    iget-object p3, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    goto/16 :goto_1

    :cond_6
    nop

    .line 61
    const-wide/32 p3, 0xabf9183

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p6, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 62
    const-wide/32 p3, 0xc2368d6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p6, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_9

    .line 63
    const-wide/32 p3, 0x138268ed

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p6, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_1

    .line 67
    :cond_7
    iget-object p3, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 p4, 0x2

    invoke-static {p3, p4}, Ldev/duo/hookprobe/K;->a(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "INNER native ratio pkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " display="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 60
    :catchall_0
    move-exception p0

    .line 71
    const-string p1, "error"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ldev/duo/hookprobe/K;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "gate skipped, native answer kept"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    return-object v1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 104
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object p0
.end method

.method static a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 13

    const-string v1, "DuoRatioGate"

    .line 1
    :try_start_0
    const-string v0, "com.android.server.wm.AppCompatAspectRatioOverrides"

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v3, "shouldOverrideMinAspectRatio"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3
    const-string v4, "mActivityRecord"

    invoke-static {v0, v4}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 4
    const-string v0, "com.android.server.wm.WindowContainer"

    invoke-static {v0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mDisplayContent"

    invoke-static {v0, v4}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 5
    const-string v0, "com.android.server.wm.DisplayContent"

    invoke-static {v0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 6
    const-string v4, "mInitialDisplayWidth"

    invoke-static {v0, v4}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 7
    const-string v4, "mInitialDisplayHeight"

    invoke-static {v0, v4}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 8
    const-string v0, "com.android.server.wm.ActivityRecord"

    invoke-static {v0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "info"

    invoke-static {v0, v2}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 9
    const-class v0, Landroid/content/pm/ActivityInfo;

    const-string v2, "isChangeEnabled"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 10
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 11
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getBoolean"

    const-class v4, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    .line 12
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 13
    invoke-virtual {p0, v3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v5, Ldev/duo/hookprobe/K$$ExternalSyntheticLambda0;

    invoke-direct/range {v5 .. v12}, Ldev/duo/hookprobe/K$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 42
    const-string v0, "READY shouldOverrideMinAspectRatio gated on inner 1672x2364"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 44
    const-string v2, "NOT installed, native ratio behaviour unchanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :goto_0
    invoke-static {p0, p1}, Ldev/duo/hookprobe/K;->b(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static a(IIIIIIII)Z
    .locals 0

    if-nez p0, :cond_0

    .line 102
    invoke-static {p1, p2}, Ldev/duo/hookprobe/E;->a(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    if-eqz p5, :cond_0

    const/4 p1, 0x6

    if-eq p5, p1, :cond_0

    const/16 p1, 0x8

    if-eq p5, p1, :cond_0

    const/16 p1, 0xb

    if-eq p5, p1, :cond_0

    if-ne p6, p0, :cond_0

    if-ne p7, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized a(Ljava/lang/String;I)Z
    .locals 4

    const-class v0, Ldev/duo/hookprobe/K;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/K;->h:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-lt v2, p1, :cond_1

    monitor-exit v0

    return v3

    :cond_1
    const/4 p1, 0x1

    add-int/2addr v2, p1

    .line 107
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0xc8

    monitor-exit v0

    if-ge p0, v1, :cond_2

    return p1

    :cond_2
    return v3

    .line 104
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static b(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "skipWideFoldFullscreenOverride"

    const-string v3, "BoundsCompatController"

    const-string v4, "DuoRatioGate"

    .line 1
    :try_start_0
    const-string v5, "com.android.server.wm.BoundsCompatController"

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 2
    const-string v7, "com.android.server.wm.WindowContainer"

    invoke-static {v7, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 3
    const-string v8, "com.android.server.wm.DisplayContent"

    invoke-static {v8, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 4
    const-string v9, "mOwner"

    invoke-static {v5, v9}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 5
    const-string v9, "com.android.server.wm.ActivityRecord"

    invoke-static {v9, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "info"

    invoke-static {v9, v10}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 6
    const-string v9, "com.android.server.wm.ConfigurationContainer"

    invoke-static {v9, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "mFullConfiguration"

    invoke-static {v9, v10}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 7
    const-string v9, "mParent"

    invoke-static {v7, v9}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const-string v9, "mOverrideOrientation"

    invoke-static {v7, v9}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 8
    const-string v9, "mDisplayContent"

    invoke-static {v7, v9}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 9
    const-string v7, "mDisplayId"

    invoke-static {v8, v7}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 10
    const-string v7, "mInitialDisplayWidth"

    invoke-static {v8, v7}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    const-string v7, "mInitialDisplayHeight"

    invoke-static {v8, v7}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 11
    const-class v7, Landroid/content/res/Configuration;

    const-string v8, "windowConfiguration"

    invoke-static {v7, v8}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    .line 12
    const-string v7, "android.app.WindowConfiguration"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mWindowingMode"

    invoke-static {v7, v8}, Ldev/duo/hookprobe/K;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    .line 13
    const-string v7, "android.os.SystemProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getBoolean"

    const-class v9, Ljava/lang/String;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v9, v10}, [Ljava/lang/Class;

    move-result-object v9

    .line 14
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 15
    const-string v7, "isLandscapeForWideFoldCompat"

    const-class v8, Landroid/content/res/Configuration;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    new-instance v10, Ldev/duo/hookprobe/K$$ExternalSyntheticLambda1;

    invoke-direct/range {v10 .. v22}, Ldev/duo/hookprobe/K$$ExternalSyntheticLambda1;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    invoke-interface {v5, v10}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 43
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "isWideFoldLandscapeTempFullscreen"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v3

    const-string v7, "AppCompatAspectRatioOverrides"

    filled-new-array {v7, v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v3, v2}, [[Ljava/lang/String;

    move-result-object v2

    move v3, v6

    move v5, v3

    :goto_0
    const/4 v7, 0x3

    if-ge v3, v7, :cond_3

    aget-object v7, v2, v3

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.android.server.wm."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 48
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 49
    invoke-virtual {v0, v11}, Lio/github/libxposed/api/XposedModule;->deoptimize(Ljava/lang/reflect/Executable;)Z

    move-result v12

    if-eqz v12, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 50
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deoptimize failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "READY outer stale landscape correction, deoptimized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 55
    const-string v1, "outer orientation NOT installed, native behaviour unchanged"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
