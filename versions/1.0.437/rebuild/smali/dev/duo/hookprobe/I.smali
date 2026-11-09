.class public final Ldev/duo/hookprobe/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F = 0.5f

.field private static final b:Ljava/lang/String; = "com.android.systemui"

.field private static final c:Ljava/lang/String; = "miui.systemui.plugin"

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v17, "cast"

    const-string v18, "calculator"

    const-string v1, "screenshot"

    const-string v2, "torch"

    const-string v3, "sleep"

    const-string v4, "ringer"

    const-string v5, "rotation"

    const-string v6, "hotspot"

    const-string v7, "dark"

    const-string v8, "autobright"

    const-string v9, "location"

    const-string v10, "eyecare"

    const-string v11, "bluetooth"

    const-string v12, "airplane"

    const-string v13, "powersave"

    const-string v14, "translate"

    const-string v15, "huanji"

    const-string v16, "screenrecord"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ldev/duo/hookprobe/I;->d:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 2
    invoke-static {p1}, Ldev/duo/hookprobe/I;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x10

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0xf

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "translate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "powersave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0xd

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0xc

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "sleep"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/16 p1, 0xb

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "autobright"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/16 p1, 0xa

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "dark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x9

    goto/16 :goto_2

    :sswitch_9
    const-string v0, "cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/16 p1, 0x8

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x7

    goto :goto_2

    :sswitch_b
    const-string v0, "screenshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p1, 0x6

    goto :goto_2

    :sswitch_c
    const-string v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 p1, 0x5

    goto :goto_2

    :sswitch_d
    const-string v0, "screenrecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 p1, 0x4

    goto :goto_2

    :sswitch_e
    const-string v0, "ringer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 p1, 0x3

    goto :goto_2

    :sswitch_f
    const-string v0, "calculator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 p1, 0x2

    goto :goto_2

    :sswitch_10
    const-string v0, "huanji"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 p1, 0x1

    goto :goto_2

    :sswitch_11
    const-string v0, "eyecare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    const/4 p1, -0x1

    :goto_2
    const-string v0, "miui.systemui.plugin"

    const-string v2, "com.android.systemui"

    packed-switch p1, :pswitch_data_0

    return-object v1

    .line 14
    :pswitch_0
    const-string p1, "ic_qs_lite_bluetooth"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_1
    const-string p1, "ic_cc_qs_location_off"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 16
    :pswitch_2
    const-string p1, "ic_qs_lite_hotspot"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_3
    const-string p1, "ic_qs_aitranslate"

    invoke-static {p0, v0, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_4
    const-string p1, "ic_qs_lite_power_save"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_5
    const-string p1, "ic_qs_lite_flashlight"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_6
    const-string p1, "ic_cc_qs_screen_lock_off"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 32
    :pswitch_7
    const-string p1, "ic_qs_lite_auto_brightness"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_8
    const-string p1, "ic_qs_lite_dark_mode"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_9
    const-string p1, "com.milink.service"

    const-string v0, "com.milink.ui.service.MiLinkTileService"

    invoke-static {p0, p1, v0}, Ldev/duo/hookprobe/I;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 44
    :pswitch_a
    const-string p1, "ic_qs_lite_auto_rotate_off"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 45
    :pswitch_b
    const-string p1, "ic_cc_qs_screen_shot_off"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 56
    :pswitch_c
    const-string p1, "ic_qs_lite_airplane"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 60
    :pswitch_d
    const-string p1, "com.miui.screenrecorder"

    const-string v0, "com.miui.screenrecorder.service.QuickService"

    invoke-static {p0, p1, v0}, Ldev/duo/hookprobe/I;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 61
    :pswitch_e
    const-string p1, "ic_qs_lite_mute_off"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 75
    :pswitch_f
    const-string p1, "com.miui.calculator"

    const-string v0, "com.miui.calculator.service.QSTileService"

    invoke-static {p0, p1, v0}, Ldev/duo/hookprobe/I;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 76
    :pswitch_10
    const-string p1, "ic_qs_mishare"

    invoke-static {p0, v0, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 77
    :pswitch_11
    const-string p1, "ic_qs_lite_paper_mode"

    invoke-static {p0, v2, p1}, Ldev/duo/hookprobe/I;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cf27b3e -> :sswitch_11
        -0x47e97f47 -> :sswitch_10
        -0x43dc94fe -> :sswitch_f
        -0x377c5523 -> :sswitch_e
        -0x3002d443 -> :sswitch_d
        -0x285a60ae -> :sswitch_c
        -0x18d27a9a -> :sswitch_b
        -0x266f082 -> :sswitch_a
        0x2e7b3f -> :sswitch_9
        0x2eef76 -> :sswitch_8
        0x2a94d69 -> :sswitch_7
        0x6872ed7 -> :sswitch_6
        0x696d3fc -> :sswitch_5
        0x326e4002 -> :sswitch_4
        0x3ec0f14e -> :sswitch_3
        0x418a9ecf -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x755ac2ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
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

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 78
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 79
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v1, p2, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 80
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/I;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v0
.end method
