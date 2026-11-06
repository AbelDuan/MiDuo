.class public final Lbtm/m/os4/systemuihook/newnotificationcenter/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ios_notification_shortcuts"

.field public static final b:Ljava/lang/String; = "ios_notification_shortcuts_bottom_offset_dp"

.field public static final c:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Z
    .locals 2

    .line 1
    const-string v0, "ios_notification_shortcuts"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/SharedPreferences;)I
    .locals 2

    .line 1
    const-string v0, "ios_notification_shortcuts_bottom_offset_dp"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, -0x28

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x78

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method
