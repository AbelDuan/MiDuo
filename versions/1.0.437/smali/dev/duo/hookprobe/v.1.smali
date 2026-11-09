.class final Ldev/duo/hookprobe/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 2
    const-string v1, "OS4.0.22.0.XPNCNXM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OS4.0.21.0.XPNCNXM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-string v1, "OS4.0.26.0.XPNCNXM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "\u5f53\u524d\u7cfb\u7edf\u7248\u672c\u4e0d\u5728\u5f00\u5408\u52a8\u753b\u652f\u6301\u8303\u56f4"

    return-object p0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.miui.home"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    const-wide/32 v2, 0x2fbeb115

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    .line 6
    const-string p0, "\u5f53\u524d\u5c0f\u7c73\u684c\u9762\u7248\u672c\u4e0d\u5728\u5f00\u5408\u52a8\u753b\u652f\u6301\u8303\u56f4"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    const-string p0, "\u672a\u627e\u5230\u5c0f\u7c73\u684c\u9762"

    return-object p0
.end method
