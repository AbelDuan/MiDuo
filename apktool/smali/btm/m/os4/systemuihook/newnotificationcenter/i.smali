.class public final Lbtm/m/os4/systemuihook/newnotificationcenter/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ios_notification_header"

.field public static final b:Ljava/lang/String; = "ios_notification_clear_style"

.field public static final c:Ljava/lang/String; = "ios_notification_clear_material"

.field public static final d:Ljava/lang/String; = "ios_notification_clear_radius"

.field public static final e:Ljava/lang/String; = "ios_notification_clear_pure_color"

.field public static final f:Ljava/lang/String; = "ios_notification_clear_advanced_color"

.field public static final g:Ljava/lang/String; = "ios_notification_clear_advanced_opacity"

.field public static final h:Ljava/lang/String; = "ios_notification_clear_advanced_blur"

.field public static final i:Ljava/lang/String; = "ios_notification_clear_advanced_highlight"

.field public static final j:Ljava/lang/String; = "ios_notification_clear_soft_color"

.field public static final k:Ljava/lang/String; = "ios_notification_clear_soft_opacity"

.field public static final l:Ljava/lang/String; = "ios_notification_clear_soft_backdrop_blur"

.field public static final m:Ljava/lang/String; = "ios_notification_clear_soft_blur"

.field public static final n:Ljava/lang/String; = "ios_notification_clear_soft_luminance"

.field public static final o:Ljava/lang/String; = "ios_notification_clear_soft_refraction"

.field public static final p:Ljava/lang/String; = "ios_notification_header_content_mode"

.field public static final q:Ljava/lang/String; = "ios_notification_header_content_text"

.field public static final r:Ljava/lang/String; = "ios_notification_header_content_icon"

.field public static final s:Ljava/lang/String; = "ios_notification_header_builtin_icon"

.field public static final t:Ljava/lang/String; = "ios_notification_header_icon_scale"

.field public static final u:Ljava/lang/String; = "ios_notification_header_text_scale"

.field public static final v:Ljava/lang/String; = "ios_notification_header_icon_text_spacing"

.field public static final w:I = 0x3

.field public static final x:I = 0x48

.field public static final y:I = 0x60000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)I
    .locals 3

    const/4 v0, 0x1

    .line 1
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    div-int/2addr v1, v2

    if-lt v1, p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method
