.class final Lbtm/m/os4/systemuihook/hypermusiccover/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "IosNc "

.field private static final b:Ljava/lang/String; = "image"

.field private static c:Landroid/content/Context; = null

.field private static d:Landroid/os/Handler; = null

.field private static e:Landroid/os/Handler; = null

.field private static volatile f:Landroid/graphics/Bitmap; = null

.field private static g:Landroid/system/StructStat; = null

.field private static volatile h:Landroid/graphics/Bitmap; = null

.field private static volatile i:Z = false

.field private static volatile j:I = 0x0

.field private static volatile k:J = 0x0L

.field private static final l:J = 0x96L

.field private static m:Ljava/lang/String; = ""

.field private static n:Ljava/lang/String; = ""

.field private static o:J = 0x0L

.field private static p:Z = true

.field private static q:Z = true

.field private static r:Z

.field private static s:Lbtm/m/os4/systemuihook/hypermusiccover/a;

.field private static t:Z

.field private static u:I

.field private static v:Z


# direct methods
.method public static synthetic $r8$lambda$3qSGgTcyX9dUuiQnGkxHEOkdGbM(I)V
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8lCtikB5shclIrJ1dcptJqctPl0(Landroid/content/Context;ZLandroid/graphics/Bitmap;Landroid/system/StructStat;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/content/Context;ZLandroid/graphics/Bitmap;Landroid/system/StructStat;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FS2w5fwaI3uyhL-USXxWx1E0oDM(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/system/StructStat;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/system/StructStat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MrMVOryK_GFUXKafKX2UDntlrso(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WCXehuNdddjvDvNXa8_S6DTe3D0(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a6a6DRuqUpokAH2HoV2x2qB58VI(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mc85HaNJaY5HLiUFAAQ50LFQiIw(Landroid/app/WallpaperColors;I)V
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/app/WallpaperColors;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    .line 2
    sput-wide p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->o:J

    return-wide p0
.end method

.method private static a(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 4

    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 93
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 94
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 95
    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    return-object p0

    :catchall_1
    move-exception v1

    .line 98
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    .line 99
    :goto_0
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IosNc reading the home wallpaper file failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 105
    :cond_0
    :try_start_5
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 106
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 107
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_1
    return-object v0

    :catchall_4
    move-exception p0

    :cond_2
    return-object v0
.end method

.method private static a(Landroid/app/WallpaperManager;ZLandroid/graphics/Bitmap;Landroid/system/StructStat;[Landroid/system/StructStat;I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 57
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    if-nez v1, :cond_3

    .line 61
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    return-object p1

    .line 62
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 64
    :cond_3
    new-instance p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 65
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    .line 66
    aput-object v1, p4, v0

    if-eqz p2, :cond_4

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {p3, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/system/StructStat;Landroid/system/StructStat;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_4

    .line 76
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 77
    :try_start_1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda0;

    invoke-direct {p3, p5}, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_5
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 82
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    .line 76
    :catchall_0
    move-exception p1

    .line 84
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 138
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "constant_template_editor_info"

    .line 139
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 144
    :cond_1
    const-string v1, "wallpaperInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 146
    :cond_2
    const-string v1, "resourceType"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IosNc cannot read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " from the editor info: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 109
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/theme_magic/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 110
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const v4, 0x186a0

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/wallpaper/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 112
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 113
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 114
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 115
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    const-string v3, "type"

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_2

    .line 123
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :catchall_0
    move-exception p0

    return-object v3

    .line 124
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 132
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    .line 123
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 132
    :catchall_2
    move-exception v1

    move-object v2, v0

    .line 133
    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IosNc cannot read MIUI\'s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " wallpaper record: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_4

    .line 135
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 132
    :catchall_3
    move-exception p0

    .line 135
    :cond_4
    :goto_3
    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v2, :cond_5

    .line 136
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    .line 137
    :cond_5
    :goto_4
    throw p0
.end method

.method private static synthetic a(I)V
    .locals 1

    .line 85
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->j:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/system/StructStat;)V
    .locals 2

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->i:Z

    .line 36
    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/c;->j:I

    if-eq p0, v1, :cond_2

    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    :cond_0
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g()V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 42
    const/4 p0, 0x0

    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g:Landroid/system/StructStat;

    .line 43
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Landroid/graphics/Bitmap;)V

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    const-wide/16 p2, 0x1388

    add-long/2addr p0, p2

    sput-wide p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->k:J

    return-void

    :cond_3
    nop

    .line 47
    aget-object p0, p3, v0

    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g:Landroid/system/StructStat;

    if-ne p1, p2, :cond_4

    .line 49
    const-string p0, "IosNc shade wallpaper file unchanged; bitmap retained"

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_4
    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Landroid/graphics/Bitmap;)V

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IosNc shade wallpaper loaded "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Landroid/app/WallpaperColors;I)V
    .locals 0

    .line 9
    sget p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->j:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->j:I

    .line 10
    const-wide/16 p0, 0x0

    sput-wide p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->k:J

    .line 11
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g()V

    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    .line 4
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->k()V

    .line 5
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->l()V

    .line 6
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->s:Lbtm/m/os4/systemuihook/hypermusiccover/a;

    if-eqz p0, :cond_1

    .line 7
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda5;-><init>(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic a(Landroid/content/Context;ZLandroid/graphics/Bitmap;Landroid/system/StructStat;I)V
    .locals 7

    .line 14
    const/4 v0, 0x1

    new-array v5, v0, [Landroid/system/StructStat;

    if-eqz p1, :cond_0

    .line 16
    :try_start_0
    const-string v0, "lock"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p2

    move v6, p4

    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    const-string v0, "home"

    .line 16
    :goto_0
    nop

    .line 17
    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 18
    :try_start_2
    const-string v1, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "IosNc shade wallpaper is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "; keeping the platform background"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p2

    move v6, p4

    goto :goto_4

    .line 24
    :cond_2
    :goto_1
    :try_start_3
    const-string v0, "wallpaper"

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/WallpaperManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_3

    .line 26
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    :try_start_4
    invoke-static/range {v1 .. v6}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/app/WallpaperManager;ZLandroid/graphics/Bitmap;Landroid/system/StructStat;[Landroid/system/StructStat;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 16
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 25
    :cond_3
    move-object v3, p2

    move v6, p4

    goto :goto_4

    .line 16
    :catchall_2
    move-exception v0

    move-object v3, p2

    move v6, p4

    :goto_2
    move-object p0, v0

    .line 31
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IosNc shade wallpaper load failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 34
    :goto_4
    const/4 p0, 0x0

    :goto_5
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda6;

    invoke-direct {p2, v6, p0, v3, v5}, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda6;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/system/StructStat;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 54
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->h:Landroid/graphics/Bitmap;

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->h:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic a(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V
    .locals 2

    .line 8
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->m()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/a;->a(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static a(Z)V
    .locals 2

    .line 12
    sput-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->p:Z

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->o:J

    return-void
.end method

.method static a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method static a(Landroid/system/StructStat;Landroid/system/StructStat;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 86
    iget v0, p1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/system/StructStat;->st_dev:J

    iget-wide v2, p1, Landroid/system/StructStat;->st_dev:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/system/StructStat;->st_ino:J

    iget-wide v2, p1, Landroid/system/StructStat;->st_ino:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/system/StructStat;->st_size:J

    iget-wide v2, p1, Landroid/system/StructStat;->st_size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iget-object v1, p1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    .line 88
    invoke-virtual {v0, v1}, Landroid/system/StructTimespec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/system/StructStat;->st_ctim:Landroid/system/StructTimespec;

    iget-object p1, p1, Landroid/system/StructStat;->st_ctim:Landroid/system/StructTimespec;

    invoke-virtual {p0, p1}, Landroid/system/StructTimespec;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 28
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 30
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 31
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 32
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 34
    aget-object p0, v1, v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(I)V
    .locals 0

    .line 2
    return-void
.end method

.method private static b(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 17
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->f:Landroid/graphics/Bitmap;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->f:Landroid/graphics/Bitmap;

    .line 20
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->h:Landroid/graphics/Bitmap;

    .line 23
    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->h:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_2

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    :cond_2
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v2, 0x20

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic b(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V
    .locals 2

    .line 3
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->m()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/a;->a(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method static b()Z
    .locals 4

    .line 4
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v2, v0, Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 8
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/content/Context;)V

    .line 9
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->u:I

    if-lez v0, :cond_1

    const-string v0, "IosNc application context attached"

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IosNc application context lookup failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    .line 14
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "power"

    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    return v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 11
    const-string v0, "lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 12
    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUI\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 15
    const-string v2, "flag_lock_wallpaper_type"

    invoke-static {p0, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    nop

    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 19
    const-string v1, "lockscreenInfo"

    goto :goto_0

    :cond_1
    const-string v1, "homeInfo"

    :goto_0
    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    const-string v2, "constant_template_editor_info"

    :cond_2
    if-eqz v0, :cond_3

    .line 22
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->m:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->n:Ljava/lang/String;

    .line 23
    :goto_1
    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IosNc "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " wallpaper is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v1, :cond_4

    const-string p1, "unknown"

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v1, :cond_5

    .line 25
    const-string p1, ""

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " per "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    .line 28
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/c;->m:Ljava/lang/String;

    return-object v1

    .line 29
    :cond_6
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/c;->n:Ljava/lang/String;

    :cond_7
    return-object v1
.end method

.method static c()V
    .locals 2

    .line 7
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->j:I

    .line 8
    const-wide/16 v0, 0x0

    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->k:J

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g:Landroid/system/StructStat;

    .line 10
    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static c(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V
    .locals 2

    .line 2
    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->s:Lbtm/m/os4/systemuihook/hypermusiccover/a;

    .line 3
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda7;-><init>(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static c(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    .line 4
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "keyguard"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0

    :catchall_0
    move-exception p0

    return v0
.end method

.method static d()Z
    .locals 1

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->f()V

    .line 2
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->p:Z

    return v0
.end method

.method private static e()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e:Landroid/os/Handler;

    .line 2
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private static f()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lbtm/m/os4/systemuihook/hypermusiccover/c;->o:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    if-nez v2, :cond_1

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b()Z

    .line 4
    :cond_1
    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    if-nez v2, :cond_2

    :goto_0
    return-void

    .line 6
    :cond_2
    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->o:J

    .line 7
    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->p:Z

    .line 8
    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->q:Z

    return-void
.end method

.method static g()V
    .locals 10

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->u:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lbtm/m/os4/systemuihook/hypermusiccover/c;->u:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_5

    .line 4
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->v:Z

    if-nez v0, :cond_1

    .line 5
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/c;->v:Z

    .line 6
    const-string v0, "IosNc waiting for the application context"

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda3;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 12
    :cond_2
    sget-object v5, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    if-eqz v5, :cond_5

    .line 13
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->i:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v6, Lbtm/m/os4/systemuihook/hypermusiccover/c;->k:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D()Z

    move-result v6

    .line 16
    sget v9, Lbtm/m/os4/systemuihook/hypermusiccover/c;->j:I

    .line 17
    sget-object v7, Lbtm/m/os4/systemuihook/hypermusiccover/c;->f:Landroid/graphics/Bitmap;

    .line 18
    sget-object v8, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g:Landroid/system/StructStat;

    .line 19
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/c;->i:Z

    .line 20
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda4;

    invoke-direct/range {v4 .. v9}, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;ZLandroid/graphics/Bitmap;Landroid/system/StructStat;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method static h()Z
    .locals 1

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->f()V

    .line 2
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->q:Z

    return v0
.end method

.method static i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "0"

    return-object v0
.end method

.method private static k()V
    .locals 4

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->r:Z

    if-nez v0, :cond_1

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->r:Z

    .line 4
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    new-instance v2, Lbtm/m/os4/systemuihook/hypermusiccover/c$a;

    invoke-direct {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/c$a;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IosNc screen watch failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static l()V
    .locals 3

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->t:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->t:Z

    .line 4
    :try_start_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 5
    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/c$$ExternalSyntheticLambda1;-><init>()V

    .line 9
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->e()Landroid/os/Handler;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IosNc wallpaper watch failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static declared-synchronized m()Landroid/os/Handler;
    .locals 4

    const-class v0, Lbtm/m/os4/systemuihook/hypermusiccover/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/c;->d:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ios-nc-wallpaper"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/c;->d:Landroid/os/Handler;

    .line 6
    :cond_0
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/c;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
