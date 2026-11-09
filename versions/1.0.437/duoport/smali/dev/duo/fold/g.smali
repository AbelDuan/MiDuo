.class final Ldev/duo/fold/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/fold/g$a;,
        Ldev/duo/fold/g$b;
    }
.end annotation


# static fields
.field static final o:I = 0xd02471

.field static final p:I = 0xd02472

.field static final q:I = 0xd02473

.field static final r:I = 0xd02474

.field static final s:I = 0xd02475

.field static final t:I = 0x93c

.field static final u:I = 0x688

.field static final v:I = 0x490

.field static final w:I = 0x6b0

.field static final x:F = 157.2002f

.field static final y:F = 111.2002f


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLSurface;

.field private d:Landroid/opengl/EGLConfig;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/fold/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/fold/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    .line 7
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Ldev/duo/fold/g;->b:Landroid/opengl/EGLContext;

    .line 8
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Ldev/duo/fold/g;->c:Landroid/opengl/EGLSurface;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/fold/g;->k:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/duo/fold/g;->l:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/duo/fold/g;->m:Ljava/util/List;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 5
    invoke-static {p0}, Ldev/duo/fold/g;->b(I)I

    move-result p0

    return p0
.end method

.method private static a(ILjava/lang/String;)I
    .locals 2

    .line 43
    invoke-static {p0}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result p0

    invoke-static {p0, p1}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES30;->glCompileShader(I)V

    .line 44
    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 45
    aget p1, p1, v1

    if-eqz p1, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES30;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Ldev/duo/fold/g;)Landroid/opengl/EGLSurface;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/fold/g;->c:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Exception;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Ldev/duo/fold/g;->b(Ljava/lang/Exception;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets/fold/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 8
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 10
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 13
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 12
    :catchall_2
    move-exception p1

    .line 13
    if-eqz p0, :cond_1

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 12
    :catchall_4
    move-exception p0

    .line 13
    :try_start_9
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method private a(Landroid/opengl/EGLSurface;)V
    .locals 2

    .line 42
    iget-object v0, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Ldev/duo/fold/g;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    const-string v0, "eglMakeCurrent"

    invoke-static {p1, v0}, Ldev/duo/fold/g;->b(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ldev/duo/fold/g;Landroid/opengl/EGLSurface;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldev/duo/fold/g;->a(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-static {p0}, Ldev/duo/fold/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;F)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glUniform1f(IF)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glUniform1i(II)V

    return-void
.end method

.method private a(Ljava/lang/String;Ldev/duo/fold/g$a;I)V
    .locals 2

    const v0, 0x84c0

    add-int/2addr v0, p3

    .line 56
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    iget v0, p2, Ldev/duo/fold/g$a;->e:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    invoke-direct {p0, p1, p3}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "Size"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result p1

    iget p3, p2, Ldev/duo/fold/g$a;->a:I

    int-to-float p3, p3

    iget p2, p2, Ldev/duo/fold/g$a;->b:I

    int-to-float p2, p2

    invoke-static {p1, p3, p2}, Landroid/opengl/GLES30;->glUniform2f(IFF)V

    return-void
.end method

.method static synthetic a(ZLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Ldev/duo/fold/g;->b(ZLjava/lang/String;)V

    return-void
.end method

.method private static b(I)I
    .locals 4

    .line 18
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    aget v0, v1, v2

    invoke-static {p0, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 19
    const/16 v0, 0x2801

    const/16 v3, 0x2601

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 20
    const/16 v0, 0x2802

    const v3, 0x812f

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 21
    aget p0, v1, v2

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 5
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v0

    .line 7
    const/4 v1, 0x0

    const v2, 0x8b31

    :try_start_0
    invoke-static {v2, p0}, Ldev/duo/fold/g;->a(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v2, 0x8b30

    :try_start_1
    invoke-static {v2, p1}, Ldev/duo/fold/g;->a(ILjava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glAttachShader(II)V

    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    invoke-static {v0}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    .line 9
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b82

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 10
    aget v1, v2, v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    if-eqz p0, :cond_0

    .line 13
    invoke-static {p0}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    :cond_1
    return v0

    .line 14
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Landroid/opengl/GLES30;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move p1, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move v4, v1

    move-object v1, p1

    move p1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move p1, v1

    goto :goto_2

    :catch_2
    move-exception p0

    move p1, v1

    move-object v1, p0

    move p0, p1

    .line 16
    :goto_0
    :try_start_4
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 14
    :catchall_2
    move-exception v0

    :goto_1
    move v1, p0

    .line 16
    :goto_2
    if-eqz v1, :cond_3

    .line 17
    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    :cond_4
    throw v0
.end method

.method static synthetic b(Ldev/duo/fold/g;)Landroid/opengl/EGLConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/fold/g;->d:Landroid/opengl/EGLConfig;

    return-object p0
.end method

.method private static b(Ljava/lang/Exception;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .line 4
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " GL="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(ZLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " EGL="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic c(Ldev/duo/fold/g;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/fold/g;->e:I

    return p0
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    .line 2
    iget-object v0, p0, Ldev/duo/fold/g;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Ldev/duo/fold/g;->f:I

    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/fold/g;->k:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method static synthetic d(Ldev/duo/fold/g;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/fold/g;->g:I

    return p0
.end method

.method static synthetic e(Ldev/duo/fold/g;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/fold/g;->i:I

    return p0
.end method

.method static synthetic f(Ldev/duo/fold/g;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/fold/g;->j:I

    return p0
.end method

.method static synthetic g(Ldev/duo/fold/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/fold/g;->n:Z

    return p0
.end method

.method static synthetic h(Ldev/duo/fold/g;)Landroid/opengl/EGLDisplay;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    return-object p0
.end method


# virtual methods
.method a(IILandroid/os/Handler;Ljava/lang/Runnable;Z)Ldev/duo/fold/g$a;
    .locals 1

    .line 46
    new-instance v0, Ldev/duo/fold/g$a;

    if-eqz p5, :cond_0

    mul-int/lit8 p5, p2, 0x2

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    invoke-direct {v0, p0, p1, p2, p5}, Ldev/duo/fold/g$a;-><init>(Ldev/duo/fold/g;III)V

    iget-object p1, p0, Ldev/duo/fold/g;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3, p4}, Ldev/duo/fold/g$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method a(Landroid/graphics/Bitmap;)Ldev/duo/fold/g$a;
    .locals 6

    .line 47
    new-instance v0, Ldev/duo/fold/g$a;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Ldev/duo/fold/g$a;-><init>(Ldev/duo/fold/g;III)V

    iget-object v1, p0, Ldev/duo/fold/g;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, p0, Ldev/duo/fold/g;->c:Landroid/opengl/EGLSurface;

    invoke-direct {p0, v1}, Ldev/duo/fold/g;->a(Landroid/opengl/EGLSurface;)V

    .line 49
    const/16 v1, 0xde1

    invoke-static {v1}, Ldev/duo/fold/g;->b(I)I

    move-result v2

    iput v2, v0, Ldev/duo/fold/g$a;->e:I

    .line 50
    iget v2, v0, Ldev/duo/fold/g$a;->a:I

    iget v3, v0, Ldev/duo/fold/g$a;->b:I

    const v4, 0x8058

    const/4 v5, 0x1

    invoke-static {v1, v5, v4, v2, v3}, Landroid/opengl/GLES30;->glTexStorage2D(IIIII)V

    .line 51
    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 52
    const-string p1, "\u4e0a\u4f20\u539f\u59cb\u58c1\u7eb8"

    invoke-static {p1}, Ldev/duo/fold/g;->b(Ljava/lang/String;)V

    iput-boolean v5, v0, Ldev/duo/fold/g$a;->k:Z

    return-object v0
.end method

.method a(ILandroid/os/Handler;Ljava/lang/Runnable;)Ldev/duo/fold/g$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    new-instance v0, Ldev/duo/fold/g$b;

    if-nez p1, :cond_0

    const/16 v1, 0x93c

    goto :goto_0

    :cond_0
    const/16 v1, 0x490

    :goto_0
    if-nez p1, :cond_1

    const/16 v2, 0x688

    goto :goto_1

    :cond_1
    const/16 v2, 0x6b0

    :goto_1
    invoke-direct {v0, p0, p1, v1, v2}, Ldev/duo/fold/g$b;-><init>(Ldev/duo/fold/g;III)V

    iget-object p1, p0, Ldev/duo/fold/g;->m:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2, p3}, Ldev/duo/fold/g$b;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method a(Ldev/duo/fold/g$a;)V
    .locals 1

    .line 57
    iget-object v0, p0, Ldev/duo/fold/g;->c:Landroid/opengl/EGLSurface;

    invoke-direct {p0, v0}, Ldev/duo/fold/g;->a(Landroid/opengl/EGLSurface;)V

    invoke-static {}, Landroid/opengl/GLES30;->glFinish()V

    invoke-virtual {p1}, Ldev/duo/fold/g$a;->close()V

    iget-object v0, p0, Ldev/duo/fold/g;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ldev/duo/fold/g$b;Ldev/duo/fold/g$a;Ldev/duo/fold/g$a;Ldev/duo/fold/g$a;Ldev/duo/fold/d;FFF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    if-eqz v2, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    if-eqz v7, :cond_14

    .line 58
    iget-boolean v8, v7, Ldev/duo/fold/g$a;->k:Z

    if-eqz v8, :cond_14

    iget-boolean v8, v4, Ldev/duo/fold/g$a;->k:Z

    if-eqz v8, :cond_14

    .line 59
    iget-object v8, v1, Ldev/duo/fold/g$b;->l:Landroid/opengl/EGLSurface;

    invoke-direct {v0, v8}, Ldev/duo/fold/g;->a(Landroid/opengl/EGLSurface;)V

    iget v8, v1, Ldev/duo/fold/g$b;->e:I

    const v9, 0x8d40

    invoke-static {v9, v8}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget v8, v1, Ldev/duo/fold/g$b;->b:I

    iget v10, v1, Ldev/duo/fold/g$b;->c:I

    const/4 v11, 0x0

    invoke-static {v11, v11, v8, v10}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 60
    iget v8, v0, Ldev/duo/fold/g;->f:I

    invoke-static {v8}, Landroid/opengl/GLES30;->glUseProgram(I)V

    iget v8, v0, Ldev/duo/fold/g;->g:I

    invoke-static {v8}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 61
    if-eqz v2, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    const-string v10, "uCover"

    invoke-direct {v0, v10, v8, v11}, Ldev/duo/fold/g;->a(Ljava/lang/String;Ldev/duo/fold/g$a;I)V

    if-eqz v3, :cond_2

    move-object v7, v3

    :cond_2
    const-string v8, "uInner"

    const/4 v10, 0x1

    invoke-direct {v0, v8, v7, v10}, Ldev/duo/fold/g;->a(Ljava/lang/String;Ldev/duo/fold/g$a;I)V

    const v7, 0x84c2

    invoke-static {v7}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    iget v7, v4, Ldev/duo/fold/g$a;->e:I

    const/16 v8, 0xde1

    invoke-static {v8, v7}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const-string v7, "uWall"

    const/4 v12, 0x2

    invoke-direct {v0, v7, v12}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    if-eqz v2, :cond_3

    .line 62
    iget-object v7, v2, Ldev/duo/fold/g$a;->m:[F

    goto :goto_2

    :cond_3
    iget-object v7, v3, Ldev/duo/fold/g$a;->m:[F

    :goto_2
    if-eqz v3, :cond_4

    iget-object v12, v3, Ldev/duo/fold/g$a;->m:[F

    goto :goto_3

    :cond_4
    iget-object v12, v2, Ldev/duo/fold/g$a;->m:[F

    :goto_3
    if-eqz v2, :cond_5

    .line 63
    iget-boolean v13, v2, Ldev/duo/fold/g$a;->l:Z

    if-nez v13, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    iget-boolean v13, v3, Ldev/duo/fold/g$a;->l:Z

    if-eqz v13, :cond_7

    :cond_6
    move v13, v10

    goto :goto_4

    :cond_7
    move v13, v11

    :goto_4
    if-eqz v5, :cond_8

    if-nez v13, :cond_8

    move v14, v10

    goto :goto_5

    :cond_8
    move v14, v11

    :goto_5
    if-eqz v14, :cond_9

    .line 66
    iget-object v7, v5, Ldev/duo/fold/d;->c:[F

    iget-object v12, v5, Ldev/duo/fold/d;->d:[F

    :cond_9
    if-eqz v3, :cond_a

    .line 67
    iget v15, v3, Ldev/duo/fold/g$a;->g:I

    if-eqz v15, :cond_a

    move-object v12, v7

    .line 68
    :cond_a
    if-eqz v3, :cond_b

    iget v15, v3, Ldev/duo/fold/g$a;->g:I

    goto :goto_6

    :cond_b
    move v15, v11

    :goto_6
    const-string v9, "uInnerRotation"

    invoke-direct {v0, v9, v15}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    iget v4, v4, Ldev/duo/fold/g$a;->g:I

    const-string v9, "uWallRotation"

    invoke-direct {v0, v9, v4}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    .line 69
    iget-boolean v4, v0, Ldev/duo/fold/g;->n:Z

    if-nez v4, :cond_d

    if-eqz v13, :cond_c

    goto :goto_7

    :cond_c
    move v4, v10

    goto :goto_8

    :cond_d
    :goto_7
    move v4, v11

    :goto_8
    const-string v9, "uDesktop"

    invoke-direct {v0, v9, v4}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    if-eqz v13, :cond_e

    if-eqz v5, :cond_e

    move v4, v10

    goto :goto_9

    :cond_e
    move v4, v11

    :goto_9
    const-string v9, "uWallBitmap"

    invoke-direct {v0, v9, v4}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    const-string v4, "uApp"

    invoke-direct {v0, v4, v13}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    .line 70
    const-string v4, "uLayered"

    invoke-direct {v0, v4, v14}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    if-eqz v5, :cond_f

    .line 72
    const-string v4, "uCoverWallCrop"

    invoke-direct {v0, v4}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v4

    iget-object v9, v5, Ldev/duo/fold/d;->a:[F

    invoke-static {v4, v10, v9, v11}, Landroid/opengl/GLES30;->glUniform4fv(II[FI)V

    .line 73
    const-string v4, "uInnerWallCrop"

    invoke-direct {v0, v4}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v4

    iget-object v9, v5, Ldev/duo/fold/d;->b:[F

    invoke-static {v4, v10, v9, v11}, Landroid/opengl/GLES30;->glUniform4fv(II[FI)V

    :cond_f
    const/4 v4, 0x3

    if-eqz v14, :cond_10

    .line 76
    const-string v9, "uCoverSideRects[0]"

    invoke-direct {v0, v9}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v9

    iget-object v13, v5, Ldev/duo/fold/d;->e:[F

    invoke-static {v9, v4, v13, v11}, Landroid/opengl/GLES30;->glUniform4fv(II[FI)V

    .line 77
    const-string v9, "uInnerSideRects[0]"

    invoke-direct {v0, v9}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v9

    iget-object v5, v5, Ldev/duo/fold/d;->f:[F

    invoke-static {v9, v4, v5, v11}, Landroid/opengl/GLES30;->glUniform4fv(II[FI)V

    .line 79
    :cond_10
    const-string v5, "uCoverGeometry"

    invoke-direct {v0, v5}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v10, v7, v11}, Landroid/opengl/GLES30;->glUniform4fv(II[FI)V

    const-string v5, "uInnerGeometry"

    invoke-direct {v0, v5}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v10, v12, v11}, Landroid/opengl/GLES30;->glUniform4fv(II[FI)V

    .line 80
    iget v5, v1, Ldev/duo/fold/g$b;->a:I

    const-string v7, "uPanel"

    invoke-direct {v0, v7, v5}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    if-eqz v2, :cond_11

    move v2, v10

    goto :goto_a

    :cond_11
    move v2, v11

    :goto_a
    const-string v5, "uCoverReady"

    invoke-direct {v0, v5, v2}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    if-eqz v3, :cond_12

    move v2, v10

    goto :goto_b

    :cond_12
    move v2, v11

    :goto_b
    const-string v3, "uInnerReady"

    invoke-direct {v0, v3, v2}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    .line 81
    const-string v2, "uInnerMix"

    move/from16 v3, p7

    invoke-direct {v0, v2, v3}, Ldev/duo/fold/g;->a(Ljava/lang/String;F)V

    const-string v2, "uCoverMix"

    move/from16 v3, p8

    invoke-direct {v0, v2, v3}, Ldev/duo/fold/g;->a(Ljava/lang/String;F)V

    const-string v2, "uAngle"

    invoke-direct {v0, v2, v6}, Ldev/duo/fold/g;->a(Ljava/lang/String;F)V

    const-string v2, "uEyeDistance"

    const v3, 0x40744646

    invoke-direct {v0, v2, v3}, Ldev/duo/fold/g;->a(Ljava/lang/String;F)V

    const/high16 v2, 0x432a0000    # 170.0f

    sub-float v2, v6, v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v2, v3

    .line 82
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 83
    iget v5, v1, Ldev/duo/fold/g$b;->a:I

    if-nez v5, :cond_13

    mul-float v5, v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    const/high16 v6, 0x40400000    # 3.0f

    sub-float/2addr v6, v2

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    :cond_13
    const-string v2, "uProjection"

    invoke-direct {v0, v2, v3}, Ldev/duo/fold/g;->a(Ljava/lang/String;F)V

    .line 85
    const-string v2, "uInnerStretch"

    const v3, 0x3fe66666    # 1.8f

    invoke-direct {v0, v2, v3}, Ldev/duo/fold/g;->a(Ljava/lang/String;F)V

    const-string v2, "uCoverStretch"

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v2, v3}, Ldev/duo/fold/g;->a(Ljava/lang/String;F)V

    .line 86
    const-string v2, "uPanelSize"

    invoke-direct {v0, v2}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v2

    const v3, 0x431d3340

    const v5, 0x42de6681

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES30;->glUniform2f(IFF)V

    .line 87
    const-string v2, "uCoverRatios"

    invoke-direct {v0, v2}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v2

    const v3, 0x3f7ac9e9

    const v5, 0x3f81f4e5

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES30;->glUniform2f(IFF)V

    .line 88
    const v2, 0x84c3

    invoke-static {v2}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    invoke-static {v8, v11}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const-string v2, "uComposed"

    invoke-direct {v0, v2, v4}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    const-string v2, "uOpticsPass"

    invoke-direct {v0, v2, v11}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    .line 89
    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-static {v3, v11, v4}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    const-string v5, "\u5408\u6210\u672c\u5e27\u5185\u5bb9"

    invoke-static {v5}, Ldev/duo/fold/g;->b(Ljava/lang/String;)V

    .line 90
    const v5, 0x8d40

    invoke-static {v5, v11}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget v5, v1, Ldev/duo/fold/g$b;->d:I

    invoke-static {v8, v5}, Landroid/opengl/GLES30;->glBindTexture(II)V

    invoke-static {v8}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    .line 91
    const-string v5, "uComposedSize"

    invoke-direct {v0, v5}, Ldev/duo/fold/g;->c(Ljava/lang/String;)I

    move-result v5

    iget v6, v1, Ldev/duo/fold/g$b;->b:I

    int-to-float v6, v6

    iget v7, v1, Ldev/duo/fold/g$b;->c:I

    int-to-float v7, v7

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES30;->glUniform2f(IFF)V

    invoke-direct {v0, v2, v10}, Ldev/duo/fold/g;->a(Ljava/lang/String;I)V

    .line 92
    invoke-static {v3, v11, v4}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    const-string v2, "\u8f93\u51fa\u6750\u8d28\u753b\u9762"

    invoke-static {v2}, Ldev/duo/fold/g;->b(Ljava/lang/String;)V

    .line 93
    iget-object v0, v0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, v1, Ldev/duo/fold/g$b;->l:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    const-string v1, "eglSwapBuffers"

    invoke-static {v0, v1}, Ldev/duo/fold/g;->b(ZLjava/lang/String;)V

    return-void

    .line 94
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u7981\u6b62\u4f7f\u7528\u65e0\u6548\u5e27"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    iput-boolean p2, p0, Ldev/duo/fold/g;->n:Z

    .line 15
    const/4 p2, 0x0

    invoke-static {p2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    .line 16
    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 17
    invoke-static {v0, v2, p2, v2, v1}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    const-string v2, "eglInitialize"

    invoke-static {v0, v2}, Ldev/duo/fold/g;->b(ZLjava/lang/String;)V

    .line 18
    new-array v5, v1, [Landroid/opengl/EGLConfig;

    .line 19
    iget-object v2, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    const/16 v0, 0xd

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v0, v8, p2

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const-string v2, "eglChooseConfig"

    invoke-static {v0, v2}, Ldev/duo/fold/g;->b(ZLjava/lang/String;)V

    .line 22
    aget-object v0, v5, p2

    iput-object v0, p0, Ldev/duo/fold/g;->d:Landroid/opengl/EGLConfig;

    .line 23
    iget-object v2, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v4, 0x3098

    const/4 v5, 0x3

    const/16 v6, 0x3038

    filled-new-array {v4, v5, v6}, [I

    move-result-object v4

    invoke-static {v2, v0, v3, v4, p2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/fold/g;->b:Landroid/opengl/EGLContext;

    .line 24
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    const-string v2, "eglCreateContext"

    invoke-static {v0, v2}, Ldev/duo/fold/g;->b(ZLjava/lang/String;)V

    .line 25
    iget-object v0, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Ldev/duo/fold/g;->d:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3057

    const/16 v4, 0x3056

    filled-new-array {v3, v1, v4, v1, v6}, [I

    move-result-object v3

    invoke-static {v0, v2, v3, p2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/fold/g;->c:Landroid/opengl/EGLSurface;

    .line 26
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v2, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, p2

    :goto_2
    const-string v2, "eglCreatePbufferSurface"

    invoke-static {v0, v2}, Ldev/duo/fold/g;->b(ZLjava/lang/String;)V

    .line 27
    iget-object v0, p0, Ldev/duo/fold/g;->c:Landroid/opengl/EGLSurface;

    invoke-direct {p0, v0}, Ldev/duo/fold/g;->a(Landroid/opengl/EGLSurface;)V

    .line 28
    const-string v0, "duo.vert"

    invoke-static {p1, v0}, Ldev/duo/fold/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "duo.frag"

    invoke-static {p1, v2}, Ldev/duo/fold/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/duo/fold/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldev/duo/fold/g;->f:I

    .line 29
    const-string p1, "#version 300 es\nlayout(location=0) in vec2 p;out vec2 uv;uniform mat4 transform;void main(){uv=(transform*vec4((p+1.0)*0.5,0.0,1.0)).xy;gl_Position=vec4(p,0.0,1.0);}"

    const-string v0, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision highp float;in vec2 uv;uniform samplerExternalOES stream;out vec4 color;void main(){color=texture(stream,uv);}"

    invoke-static {p1, v0}, Ldev/duo/fold/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldev/duo/fold/g;->e:I

    .line 33
    const-string v0, "stream"

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Ldev/duo/fold/g;->i:I

    iget p1, p0, Ldev/duo/fold/g;->e:I

    const-string v0, "transform"

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Ldev/duo/fold/g;->j:I

    .line 34
    new-array p1, v1, [I

    .line 35
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    aget v0, p1, p2

    iput v0, p0, Ldev/duo/fold/g;->g:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 36
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    aget p1, p1, p2

    iput p1, p0, Ldev/duo/fold/g;->h:I

    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 37
    const/16 p1, 0x20

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 38
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/FloatBuffer;

    .line 39
    const v2, 0x88e4

    invoke-static {v0, p1, v1, v2}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {p2}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 40
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 41
    const-string p1, "\u521d\u59cb\u5316"

    invoke-static {p1}, Ldev/duo/fold/g;->b(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x40
        0x3033
        0x5
        0x3038
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldev/duo/fold/g;->b:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldev/duo/fold/g;->c:Landroid/opengl/EGLSurface;

    invoke-direct {p0, v0}, Ldev/duo/fold/g;->a(Landroid/opengl/EGLSurface;)V

    invoke-static {}, Landroid/opengl/GLES30;->glFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ldev/duo/fold/g;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/fold/g$b;

    :try_start_1
    invoke-virtual {v2}, Ldev/duo/fold/g$b;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-static {v0, v2}, Ldev/duo/fold/g;->b(Ljava/lang/Exception;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    goto :goto_2

    .line 3
    :cond_1
    iget-object v1, p0, Ldev/duo/fold/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/fold/g$a;

    :try_start_2
    invoke-virtual {v2}, Ldev/duo/fold/g$a;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-static {v0, v2}, Ldev/duo/fold/g;->b(Ljava/lang/Exception;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    goto :goto_3

    .line 4
    :cond_2
    iget-object v1, p0, Ldev/duo/fold/g;->b:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v2, :cond_3

    iget v1, p0, Ldev/duo/fold/g;->f:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    iget v1, p0, Ldev/duo/fold/g;->e:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    iget v1, p0, Ldev/duo/fold/g;->h:I

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    iget v1, p0, Ldev/duo/fold/g;->g:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 5
    :cond_3
    iget-object v1, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_6

    .line 6
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 7
    iget-object v1, p0, Ldev/duo/fold/g;->c:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 8
    :cond_4
    iget-object v1, p0, Ldev/duo/fold/g;->b:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 9
    :cond_5
    iget-object v1, p0, Ldev/duo/fold/g;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    :cond_6
    if-nez v0, :cond_7

    return-void

    .line 11
    :cond_7
    throw v0
.end method
