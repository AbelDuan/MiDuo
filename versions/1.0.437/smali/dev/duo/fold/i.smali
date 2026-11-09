.class public final Ldev/duo/fold/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/fold/i$a;
    }
.end annotation


# static fields
.field static volatile a:Ljava/lang/String;

.field static volatile b:Ljava/lang/String;

.field static volatile c:Ldev/duo/fold/i$a;


# direct methods
.method public static synthetic $r8$lambda$DyKk4IwmhWK7YGDScJXZWDZ07Pw([[FLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldev/duo/fold/i;->a([[FLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)Ldev/duo/fold/i$a;
    .locals 3

    .line 1
    new-instance v0, Ldev/duo/fold/i$a;

    invoke-direct {v0}, Ldev/duo/fold/i$a;-><init>()V

    iput p0, v0, Ldev/duo/fold/i$a;->a:I

    .line 3
    :try_start_0
    invoke-static {v0, p0}, Ldev/duo/fold/i;->a(Ldev/duo/fold/i$a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    sget-object v1, Ldev/duo/fold/i;->c:Ldev/duo/fold/i$a;

    .line 6
    iget-object v2, v0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    iget-object v2, v0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u539f\u59cb\u58c1\u7eb8\u65e0\u6cd5\u8bfb\u53d6\u6216\u89e3\u7801 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Ldev/duo/fold/i$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/io/File;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0, p1}, Ldev/duo/fold/i;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static a(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wallpaper_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "which"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    const-string p1, "type"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "pathSize"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    const-string p1, "component"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.miwallpaper/com.miui.miwallpaper.wallpaperservice.ImageWallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    const-string p1, "effect_id"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "enable_blur"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    const-string p1, "support_dark"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "path0"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ldev/duo/fold/i$a;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/theme_magic/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/wallpaper/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "small_home.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ldev/duo/fold/i;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "home.xml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v4, v2}, Ldev/duo/fold/i;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_9

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 14
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_3

    .line 17
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v7, 0x7c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 18
    sget-object v4, Ldev/duo/fold/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 19
    sget-object v4, Ldev/duo/fold/i;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    sput-object v3, Ldev/duo/fold/i;->a:Ljava/lang/String;

    goto :goto_1

    .line 24
    :cond_3
    :goto_0
    sput-object v3, Ldev/duo/fold/i;->b:Ljava/lang/String;

    .line 25
    const-string p1, "\u5185\u5916\u5c4f\u4f7f\u7528\u4e0d\u540c\u58c1\u7eb8\u539f\u56fe"

    iput-object p1, p0, Ldev/duo/fold/i$a;->e:Ljava/lang/String;

    return-void

    .line 29
    :cond_4
    :goto_1
    sget-object v4, Ldev/duo/fold/i;->c:Ldev/duo/fold/i$a;

    if-eqz v4, :cond_5

    .line 30
    iget v6, v4, Ldev/duo/fold/i$a;->a:I

    if-ne v6, p1, :cond_5

    iget-object v6, v4, Ldev/duo/fold/i$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 31
    iget-object p1, v4, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    iput-object p1, p0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    iget-object p1, v4, Ldev/duo/fold/i$a;->c:[F

    iput-object p1, p0, Ldev/duo/fold/i$a;->c:[F

    iget-object p1, v4, Ldev/duo/fold/i$a;->d:[F

    iput-object p1, p0, Ldev/duo/fold/i$a;->d:[F

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Ldev/duo/fold/i$a;->g:J

    return-void

    :cond_5
    nop

    .line 35
    const/4 v4, 0x2

    new-array v4, v4, [[F

    .line 37
    invoke-static {v5}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v5

    new-instance v6, Ldev/duo/fold/i$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Ldev/duo/fold/i$$ExternalSyntheticLambda0;-><init>([[F)V

    invoke-static {v5, v6}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    .line 46
    const/4 v6, 0x0

    aget-object v6, v4, v6

    if-eqz v6, :cond_7

    aget-object v2, v4, v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 47
    :cond_6
    iput-object v6, p0, Ldev/duo/fold/i$a;->c:[F

    iput-object v2, p0, Ldev/duo/fold/i$a;->d:[F

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, p0, Ldev/duo/fold/i$a;->g:J

    .line 50
    new-instance v0, Ldev/duo/fold/i$a;

    invoke-direct {v0}, Ldev/duo/fold/i$a;-><init>()V

    .line 51
    iput p1, v0, Ldev/duo/fold/i$a;->a:I

    iget-object p1, p0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    iput-object p1, v0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    iget-object p1, p0, Ldev/duo/fold/i$a;->c:[F

    iput-object p1, v0, Ldev/duo/fold/i$a;->c:[F

    iget-object p0, p0, Ldev/duo/fold/i$a;->d:[F

    iput-object p0, v0, Ldev/duo/fold/i$a;->d:[F

    iput-object v3, v0, Ldev/duo/fold/i$a;->f:Ljava/lang/String;

    .line 52
    sput-object v0, Ldev/duo/fold/i;->c:Ldev/duo/fold/i$a;

    return-void

    .line 53
    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/fold/i$a;->b:Landroid/graphics/Bitmap;

    const-string p1, "\u539f\u59cb\u58c1\u7eb8\u5c3a\u5bf8\u65e0\u6548"

    iput-object p1, p0, Ldev/duo/fold/i$a;->e:Ljava/lang/String;

    return-void

    .line 54
    :cond_8
    :goto_3
    const-string p1, "\u9759\u6001\u58c1\u7eb8\u539f\u56fe\u4e0d\u53ef\u8bfb"

    iput-object p1, p0, Ldev/duo/fold/i$a;->e:Ljava/lang/String;

    return-void

    .line 55
    :cond_9
    :goto_4
    const-string p1, "\u58c1\u7eb8\u4e0d\u662f\u65e0\u7279\u6548\u7684\u9759\u6001\u5355\u56fe\uff0c\u6216\u539f\u56fe\u8bb0\u5f55\u4e0d\u53ef\u8bfb"

    iput-object p1, p0, Ldev/duo/fold/i$a;->e:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a([[FLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 5

    .line 56
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    .line 57
    const/16 v0, 0x490

    const/16 v1, 0x6b0

    invoke-static {p3, p2, v0, v1}, Ldev/duo/fold/i;->a(IIII)[F

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0x93c

    const/16 v2, 0x688

    invoke-static {p3, p2, v0, v2}, Ldev/duo/fold/i;->a(IIII)[F

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p0, v2

    .line 58
    aget-object p0, p0, v1

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    const/4 v1, 0x3

    aget p0, p0, v1

    int-to-float v3, p2

    mul-float/2addr p0, v3

    const/high16 v4, 0x44d60000    # 1712.0f

    div-float/2addr v4, p0

    aget p0, v0, v1

    mul-float/2addr p0, v3

    const/high16 v0, 0x44d10000    # 1672.0f

    div-float/2addr v0, p0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    .line 60
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    int-to-double v3, p3

    mul-double/2addr v3, v0

    .line 61
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double p2, p2

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 62
    invoke-virtual {p1, v2}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static a(Landroid/os/Bundle;)Z
    .locals 9

    .line 63
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 64
    const-string v1, "offsets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 65
    const-string v2, "displayOffset"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 66
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 68
    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.miui.miwallpaper"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 69
    const-string v4, "wallpaperDim"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    const/4 v4, 0x4

    aget v4, v1, v4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    aget v4, v1, v5

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    const/4 v4, 0x1

    aget v8, v1, v4

    cmpl-float v7, v8, v7

    if-nez v7, :cond_2

    const/4 v7, 0x2

    aget v7, v1, v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_2

    const/4 v7, 0x3

    aget v1, v1, v7

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_2

    aget v1, v2, v5

    const/high16 v6, -0x80000000

    if-eq v1, v6, :cond_0

    if-nez v1, :cond_2

    :cond_0
    aget v1, v2, v4

    if-eq v1, v6, :cond_1

    if-nez v1, :cond_2

    :cond_1
    iget v1, v3, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_2

    iget v1, v3, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_2

    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 73
    const-string v2, "width"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    const-string v2, "height"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne v1, p0, :cond_2

    .line 74
    const-string p0, "matrix"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p0

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_2

    return v4

    :cond_2
    return v5

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static a(IIII)[F
    .locals 8

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p0

    int-to-double v2, p2

    div-double v4, v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double v6, p0, p2

    .line 84
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v0

    mul-double/2addr p2, v4

    div-double/2addr p2, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double v0, p0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    double-to-float v0, v0

    sub-double/2addr p0, p2

    div-double/2addr p0, v4

    double-to-float p0, p0

    double-to-float p1, v2

    double-to-float p2, p2

    .line 86
    const/4 p3, 0x4

    new-array p3, p3, [F

    const/4 v1, 0x0

    aput v0, p3, v1

    const/4 v0, 0x1

    aput p0, p3, v0

    const/4 p0, 0x2

    aput p1, p3, p0

    const/4 p0, 0x3

    aput p2, p3, p0

    return-object p3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
