.class final Ldev/duo/fold/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/fold/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroid/graphics/SurfaceTexture;

.field i:Landroid/view/Surface;

.field j:Z

.field k:Z

.field l:Z

.field m:[F

.field private final n:[F

.field final synthetic o:Ldev/duo/fold/g;


# direct methods
.method public static synthetic $r8$lambda$kGVUfZO_tKRpnTEsSLNsi18numc(Ldev/duo/fold/g$a;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/fold/g$a;->a(Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/fold/g;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/fold/g$a;->o:Ldev/duo/fold/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Ldev/duo/fold/g$a;->n:[F

    .line 3
    iput p2, p0, Ldev/duo/fold/g$a;->a:I

    iput p3, p0, Ldev/duo/fold/g$a;->b:I

    iput p4, p0, Ldev/duo/fold/g$a;->c:I

    return-void
.end method

.method private synthetic a(Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 13
    const/4 p2, 0x1

    iput-boolean p2, p0, Ldev/duo/fold/g$a;->j:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/fold/g$a;->o:Ldev/duo/fold/g;

    invoke-static {v0}, Ldev/duo/fold/g;->a(Ldev/duo/fold/g;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/duo/fold/g;->a(Ldev/duo/fold/g;Landroid/opengl/EGLSurface;)V

    .line 2
    const v0, 0x8d65

    invoke-static {v0}, Ldev/duo/fold/g;->a(I)I

    move-result v0

    iput v0, p0, Ldev/duo/fold/g$a;->d:I

    .line 3
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Ldev/duo/fold/g$a;->d:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Ldev/duo/fold/g$a;->h:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Ldev/duo/fold/g$a;->a:I

    iget v2, p0, Ldev/duo/fold/g$a;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 4
    iget-object v0, p0, Ldev/duo/fold/g$a;->h:Landroid/graphics/SurfaceTexture;

    new-instance v1, Ldev/duo/fold/g$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Ldev/duo/fold/g$a$$ExternalSyntheticLambda0;-><init>(Ldev/duo/fold/g$a;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 5
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Ldev/duo/fold/g$a;->h:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Ldev/duo/fold/g$a;->i:Landroid/view/Surface;

    .line 6
    const/16 p1, 0xde1

    invoke-static {p1}, Ldev/duo/fold/g;->a(I)I

    move-result p2

    iput p2, p0, Ldev/duo/fold/g$a;->e:I

    .line 7
    iget p2, p0, Ldev/duo/fold/g$a;->c:I

    iget v0, p0, Ldev/duo/fold/g$a;->b:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget p2, p0, Ldev/duo/fold/g$a;->a:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x20

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget v0, p0, Ldev/duo/fold/g$a;->a:I

    iget v2, p0, Ldev/duo/fold/g$a;->c:I

    const v3, 0x8058

    invoke-static {p1, p2, v3, v0, v2}, Landroid/opengl/GLES30;->glTexStorage2D(IIIII)V

    .line 8
    new-array p2, v1, [I

    const/4 v0, 0x0

    invoke-static {v1, p2, v0}, Landroid/opengl/GLES30;->glGenFramebuffers(I[II)V

    aget p2, p2, v0

    iput p2, p0, Ldev/duo/fold/g$a;->f:I

    .line 9
    const v1, 0x8d40

    invoke-static {v1, p2}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget p2, p0, Ldev/duo/fold/g$a;->e:I

    const v2, 0x8ce0

    invoke-static {v1, v2, p1, p2, v0}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    .line 10
    invoke-static {v1}, Landroid/opengl/GLES30;->glCheckFramebufferStatus(I)I

    move-result p1

    const p2, 0x8cd5

    if-ne p1, p2, :cond_1

    .line 11
    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const-string p1, "\u8f93\u5165\u961f\u5217"

    invoke-static {p1}, Ldev/duo/fold/g;->a(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u8f93\u5165 FBO \u4e0d\u5b8c\u6574"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()Z
    .locals 6

    .line 14
    iget-boolean v0, p0, Ldev/duo/fold/g$a;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Ldev/duo/fold/g$a;->o:Ldev/duo/fold/g;

    invoke-static {v0}, Ldev/duo/fold/g;->a(Ldev/duo/fold/g;)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-static {v0, v2}, Ldev/duo/fold/g;->a(Ldev/duo/fold/g;Landroid/opengl/EGLSurface;)V

    iput-boolean v1, p0, Ldev/duo/fold/g$a;->j:Z

    .line 16
    iget-object v0, p0, Ldev/duo/fold/g$a;->h:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Ldev/duo/fold/g$a;->h:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Ldev/duo/fold/g$a;->n:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 17
    iget-object v0, p0, Ldev/duo/fold/g$a;->h:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 18
    iget v0, p0, Ldev/duo/fold/g$a;->f:I

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget v0, p0, Ldev/duo/fold/g$a;->a:I

    iget v3, p0, Ldev/duo/fold/g$a;->c:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES30;->glViewport(IIII)V

    iget-object v0, p0, Ldev/duo/fold/g$a;->o:Ldev/duo/fold/g;

    invoke-static {v0}, Ldev/duo/fold/g;->c(Ldev/duo/fold/g;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    iget-object v0, p0, Ldev/duo/fold/g$a;->o:Ldev/duo/fold/g;

    invoke-static {v0}, Ldev/duo/fold/g;->d(Ldev/duo/fold/g;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 19
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    iget v0, p0, Ldev/duo/fold/g$a;->d:I

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 20
    iget-object v0, p0, Ldev/duo/fold/g$a;->o:Ldev/duo/fold/g;

    invoke-static {v0}, Ldev/duo/fold/g;->e(Ldev/duo/fold/g;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 21
    iget-object v0, p0, Ldev/duo/fold/g$a;->o:Ldev/duo/fold/g;

    invoke-static {v0}, Ldev/duo/fold/g;->f(Ldev/duo/fold/g;)I

    move-result v0

    iget-object v3, p0, Ldev/duo/fold/g$a;->n:[F

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v3, v1}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 22
    const/4 v0, 0x5

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    .line 23
    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 24
    iget v0, p0, Ldev/duo/fold/g$a;->c:I

    iget v1, p0, Ldev/duo/fold/g$a;->b:I

    if-ne v0, v1, :cond_1

    .line 25
    iget v0, p0, Ldev/duo/fold/g$a;->e:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    invoke-static {v1}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    .line 26
    const/16 v0, 0x2801

    const/16 v2, 0x2703

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 28
    :cond_1
    const-string v0, "\u6d88\u8d39\u5b9e\u65f6\u5e27"

    invoke-static {v0}, Ldev/duo/fold/g;->a(Ljava/lang/String;)V

    iput-boolean v4, p0, Ldev/duo/fold/g$a;->k:Z

    return v4

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5b9e\u65f6\u6d41\u6ca1\u6709\u6709\u6548\u5e27\u65f6\u95f4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/fold/g$a;->h:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/fold/g$a;->i:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 3
    :cond_1
    iget-object v0, p0, Ldev/duo/fold/g$a;->h:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 4
    :cond_2
    iget v0, p0, Ldev/duo/fold/g$a;->f:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    iget v0, p0, Ldev/duo/fold/g$a;->d:I

    iget v1, p0, Ldev/duo/fold/g$a;->e:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    return-void
.end method
