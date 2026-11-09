.class final Ldev/duo/fold/g$b;
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
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field d:I

.field e:I

.field volatile f:Z

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field i:Landroid/view/SurfaceControl;

.field j:Ljava/lang/Object;

.field k:Landroid/view/Surface;

.field l:Landroid/opengl/EGLSurface;

.field final synthetic m:Ldev/duo/fold/g;


# direct methods
.method public static synthetic $r8$lambda$tkl2w52b-zK71DXMIo3H5ZogYBo(Ldev/duo/fold/g$b;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/fold/g$b;->a(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wO1kUGrsCnTmwsAGJS9XQioi3Uc(Ldev/duo/fold/g$b;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/fold/g$b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/fold/g;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/fold/g$b;->m:Ldev/duo/fold/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Ldev/duo/fold/g$b;->l:Landroid/opengl/EGLSurface;

    .line 3
    iput p2, p0, Ldev/duo/fold/g$b;->a:I

    iput p3, p0, Ldev/duo/fold/g$b;->b:I

    iput p4, p0, Ldev/duo/fold/g$b;->c:I

    return-void
.end method

.method private synthetic a(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 38
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ldev/duo/fold/g$b$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ldev/duo/fold/g$b$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Ldev/duo/fold/g$b$$ExternalSyntheticLambda2;-><init>(Ldev/duo/fold/g$b;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0, p1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 39
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 41
    :try_start_1
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
.end method

.method private synthetic a(Ljava/lang/Runnable;)V
    .locals 1

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/fold/g$b;->f:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Ldev/duo/fold/g$b;->g:Landroid/os/Handler;

    iput-object v2, v0, Ldev/duo/fold/g$b;->h:Ljava/lang/Runnable;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiDuoFold-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Ldev/duo/fold/g$b;->a:I

    if-nez v4, :cond_0

    const-string v4, "inner"

    goto :goto_0

    :cond_0
    const-string v4, "outer"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 4
    const-class v5, Landroid/view/SurfaceControl$Builder;

    const-string v6, "setBLASTLayer"

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v5, v0, Ldev/duo/fold/g$b;->m:Ldev/duo/fold/g;

    invoke-static {v5}, Ldev/duo/fold/g;->g(Ldev/duo/fold/g;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v5, Landroid/view/SurfaceControl$Builder;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setSecure"

    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget v5, v0, Ldev/duo/fold/g$b;->b:I

    iget v6, v0, Ldev/duo/fold/g$b;->c:I

    invoke-virtual {v3, v5, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    .line 7
    const-string v3, "android.graphics.BLASTBufferQueue"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 8
    const-class v12, Ljava/lang/String;

    const-class v13, Landroid/view/SurfaceControl;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v17, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object v15, v14

    move-object/from16 v16, v14

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    iget-object v5, v0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    iget v6, v0, Ldev/duo/fold/g$b;->b:I

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Ldev/duo/fold/g$b;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ldev/duo/fold/g$b;->j:Ljava/lang/Object;

    .line 10
    const-string v4, "createSurface"

    invoke-virtual {v3, v4, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, v0, Ldev/duo/fold/g$b;->j:Ljava/lang/Object;

    invoke-virtual {v4, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    iput-object v4, v0, Ldev/duo/fold/g$b;->k:Landroid/view/Surface;

    .line 11
    new-instance v4, Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;-><init>(Ldev/duo/fold/g$b;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 17
    const-class v1, Ljava/util/function/Consumer;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "syncNextTransaction"

    invoke-virtual {v3, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, v0, Ldev/duo/fold/g$b;->j:Ljava/lang/Object;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    iget-object v1, v0, Ldev/duo/fold/g$b;->m:Ldev/duo/fold/g;

    invoke-static {v1}, Ldev/duo/fold/g;->h(Ldev/duo/fold/g;)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iget-object v2, v0, Ldev/duo/fold/g$b;->m:Ldev/duo/fold/g;

    invoke-static {v2}, Ldev/duo/fold/g;->b(Ldev/duo/fold/g;)Landroid/opengl/EGLConfig;

    move-result-object v2

    iget-object v3, v0, Ldev/duo/fold/g$b;->k:Landroid/view/Surface;

    const/16 v4, 0x3038

    filled-new-array {v4}, [I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Ldev/duo/fold/g$b;->l:Landroid/opengl/EGLSurface;

    .line 20
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_2

    move v1, v11

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    const-string v2, "eglCreateWindowSurface"

    invoke-static {v1, v2}, Ldev/duo/fold/g;->a(ZLjava/lang/String;)V

    iget-object v1, v0, Ldev/duo/fold/g$b;->m:Ldev/duo/fold/g;

    iget-object v2, v0, Ldev/duo/fold/g$b;->l:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Ldev/duo/fold/g;->a(Ldev/duo/fold/g;Landroid/opengl/EGLSurface;)V

    .line 21
    iget-object v1, v0, Ldev/duo/fold/g$b;->m:Ldev/duo/fold/g;

    invoke-static {v1}, Ldev/duo/fold/g;->h(Ldev/duo/fold/g;)Landroid/opengl/EGLDisplay;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/opengl/EGL14;->eglSwapInterval(Landroid/opengl/EGLDisplay;I)Z

    move-result v1

    const-string v2, "eglSwapInterval"

    invoke-static {v1, v2}, Ldev/duo/fold/g;->a(ZLjava/lang/String;)V

    .line 22
    const/16 v1, 0xde1

    invoke-static {v1}, Ldev/duo/fold/g;->a(I)I

    move-result v2

    iput v2, v0, Ldev/duo/fold/g$b;->d:I

    .line 23
    iget v2, v0, Ldev/duo/fold/g$b;->b:I

    iget v3, v0, Ldev/duo/fold/g$b;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    iget v3, v0, Ldev/duo/fold/g$b;->b:I

    iget v4, v0, Ldev/duo/fold/g$b;->c:I

    const v6, 0x8058

    invoke-static {v1, v2, v6, v3, v4}, Landroid/opengl/GLES30;->glTexStorage2D(IIIII)V

    .line 24
    const/16 v2, 0x2801

    const/16 v3, 0x2703

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 25
    new-array v2, v11, [I

    invoke-static {v11, v2, v5}, Landroid/opengl/GLES30;->glGenFramebuffers(I[II)V

    aget v2, v2, v5

    iput v2, v0, Ldev/duo/fold/g$b;->e:I

    .line 26
    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 27
    iget v2, v0, Ldev/duo/fold/g$b;->d:I

    const v4, 0x8ce0

    invoke-static {v3, v4, v1, v2, v5}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    .line 28
    invoke-static {v3}, Landroid/opengl/GLES30;->glCheckFramebufferStatus(I)I

    move-result v1

    const v2, 0x8cd5

    if-ne v1, v2, :cond_4

    .line 29
    invoke-static {v3, v5}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const-string v1, "\u6750\u8d28\u7f13\u51b2"

    invoke-static {v1}, Ldev/duo/fold/g;->a(Ljava/lang/String;)V

    .line 30
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 31
    :try_start_0
    iget-object v2, v0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    iget v3, v0, Ldev/duo/fold/g$b;->a:I

    if-nez v3, :cond_3

    const v3, 0xd02471

    goto :goto_2

    :cond_3
    const v3, 0xd02472

    :goto_2
    invoke-static {v1, v2, v3}, Ldev/duo/fold/Surfaces;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 32
    iget-object v2, v0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    invoke-static {v1, v0}, Ldev/duo/fold/Surfaces;->b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 34
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    .line 35
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u6750\u8d28 FBO \u4e0d\u5b8c\u6574"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u9996\u5e27\u9501\u5b58\u76d1\u542c\u88ab\u62d2\u7edd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldev/duo/fold/g$b;->e:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    iget v0, p0, Ldev/duo/fold/g$b;->d:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 2
    iget-object v0, p0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    invoke-static {v0, v2}, Ldev/duo/fold/Surfaces;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 4
    :try_start_3
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3
    :catch_0
    move-exception v0

    .line 5
    invoke-static {v1, v0}, Ldev/duo/fold/g;->a(Ljava/lang/Exception;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    .line 6
    :goto_1
    iget-object v2, p0, Ldev/duo/fold/g$b;->i:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    goto :goto_2

    .line 2
    :cond_0
    move-object v0, v1

    .line 8
    :goto_2
    :try_start_5
    iget-object v2, p0, Ldev/duo/fold/g$b;->l:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Ldev/duo/fold/g$b;->m:Ldev/duo/fold/g;

    invoke-static {v2}, Ldev/duo/fold/g;->h(Ldev/duo/fold/g;)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/fold/g$b;->l:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v2

    const-string v3, "eglDestroySurface"

    invoke-static {v2, v3}, Ldev/duo/fold/g;->a(ZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 9
    invoke-static {v0, v2}, Ldev/duo/fold/g;->a(Ljava/lang/Exception;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    .line 10
    :cond_1
    :goto_3
    iget-object v2, p0, Ldev/duo/fold/g$b;->k:Landroid/view/Surface;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 11
    :cond_2
    :try_start_6
    iget-object v2, p0, Ldev/duo/fold/g$b;->j:Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "destroy"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/fold/g$b;->j:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 12
    invoke-static {v0, v1}, Ldev/duo/fold/g;->a(Ljava/lang/Exception;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    :cond_3
    :goto_4
    if-nez v0, :cond_4

    return-void

    .line 13
    :cond_4
    throw v0
.end method
