.class public final Lbtm/m/os4/systemuihook/newnotificationcenter/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ios_notification_center"

.field public static final b:Ljava/lang/String; = "ios_notification_wallpaper"

.field public static final c:Ljava/lang/String; = "ios_notification_hide_clear"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
