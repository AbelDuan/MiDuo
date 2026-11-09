.class Ldev/duo/hookprobe/t$b;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/t;->e(Ldev/duo/workspaceprobe/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ldev/duo/workspaceprobe/b;


# direct methods
.method public static synthetic $r8$lambda$Bs_0dbnePL-Ita3Iz3AA66PAh84(Ljava/util/concurrent/CompletableFuture;Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/t$b;->a(Ljava/util/concurrent/CompletableFuture;Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GtkKnOfqrQsiTgHlO2qBcU-BmRg(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/t$b;->b(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P90XUYiUV9LsVJc15S6lAQxRf38(ZLandroid/os/IBinder;JIIZLdev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Ldev/duo/hookprobe/t$b;->a(ZLandroid/os/IBinder;JIIZLdev/duo/workspaceprobe/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YGXXd8hCdrxB7FRUYUD4VhbKWqw(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/t$b;->a(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/t$b;->a:Landroid/os/Handler;

    iput-object p2, p0, Ldev/duo/hookprobe/t$b;->b:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/CompletableFuture;Ldev/duo/workspaceprobe/b;)V
    .locals 2

    .line 21
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ldev/duo/workspaceprobe/b;->F()Landroid/os/Bundle;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v0}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic a(ZLandroid/os/IBinder;JIIZLdev/duo/workspaceprobe/b;)V
    .locals 1

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p0, :cond_1

    .line 2
    invoke-static {}, Ldev/duo/hookprobe/t;->k()Landroid/os/IBinder;

    move-result-object p0

    if-ne p0, p1, :cond_2

    invoke-static {}, Ldev/duo/hookprobe/t;->l()J

    move-result-wide p0

    cmp-long p0, p0, p2

    if-nez p0, :cond_2

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "TARGET_WAIT_END gen="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " samples="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ldev/duo/hookprobe/t;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " paintChanges="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 4
    invoke-static {}, Ldev/duo/hookprobe/t;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " rejected="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ldev/duo/hookprobe/t;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " last="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5
    invoke-static {}, Ldev/duo/hookprobe/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " flags=0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ldev/duo/hookprobe/t;->d()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " at="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ldev/duo/hookprobe/t;->e()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " panelSince="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 6
    invoke-static {}, Ldev/duo/hookprobe/t;->f()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " gate="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ldev/duo/hookprobe/t;->g()Ldev/duo/hookprobe/w;

    move-result-object p1

    invoke-virtual {p1}, Ldev/duo/hookprobe/w;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    const-string p1, "MiDuoFold"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const/4 p0, 0x0

    invoke-static {p0}, Ldev/duo/hookprobe/t;->a(Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void

    .line 13
    :cond_1
    invoke-static {p1}, Ldev/duo/hookprobe/t;->a(Landroid/os/IBinder;)Landroid/os/IBinder;

    invoke-static {p2, p3}, Ldev/duo/hookprobe/t;->d(J)J

    invoke-static {p4}, Ldev/duo/hookprobe/t;->b(I)I

    invoke-static {p5}, Ldev/duo/hookprobe/t;->c(I)I

    invoke-static {p6}, Ldev/duo/hookprobe/t;->a(Z)Z

    .line 14
    const/4 p0, 0x0

    invoke-static {p0}, Ldev/duo/hookprobe/t;->a(I)I

    move-result p1

    invoke-static {p1}, Ldev/duo/hookprobe/t;->e(I)I

    move-result p1

    invoke-static {p1}, Ldev/duo/hookprobe/t;->d(I)I

    const-wide/16 p1, -0x1

    invoke-static {p1, p2}, Ldev/duo/hookprobe/t;->c(J)J

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ldev/duo/hookprobe/t;->b(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ldev/duo/hookprobe/t;->a(J)J

    const-string p1, "\u5c1a\u65e0\u6837\u672c"

    invoke-static {p1}, Ldev/duo/hookprobe/t;->a(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p6, :cond_3

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/t;->a(IJ)V

    .line 17
    invoke-static {}, Ldev/duo/hookprobe/t;->j()Ljava/util/WeakHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p7, p1}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 19
    :cond_3
    iget-object p1, p7, Ldev/duo/workspaceprobe/b;->I6:Ljava/util/function/Consumer;

    invoke-virtual {p7}, Ldev/duo/workspaceprobe/b;->A()[J

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Ldev/duo/hookprobe/t;->g()Ldev/duo/hookprobe/w;

    move-result-object p1

    invoke-virtual {p1}, Ldev/duo/hookprobe/w;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Ldev/duo/hookprobe/t;->g()Ldev/duo/hookprobe/w;

    move-result-object p0

    iget p0, p0, Ldev/duo/hookprobe/w;->i:I

    :cond_4
    invoke-static {}, Ldev/duo/hookprobe/t;->g()Ldev/duo/hookprobe/w;

    move-result-object p1

    iget-wide p1, p1, Ldev/duo/hookprobe/w;->h:J

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/t;->a(IJ)V

    return-void
.end method

.method private static synthetic b(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x3

    const/16 v5, 0x3e8

    const-string v6, "dev.duo.foldanim1.LAYERS"

    const/4 v7, 0x1

    if-ne v0, v4, :cond_1

    .line 1
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, v5, :cond_0

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {}, Ldev/duo/hookprobe/t;->a()Z

    move-result v0

    xor-int/2addr v0, v7

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "\u7cfb\u7edf\u89c2\u5bdf\u72b6\u6001\u4e13\u7528"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v4, 0x2

    const/4 v8, 0x0

    if-ne v0, v4, :cond_5

    .line 9
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 12
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v10, v7

    goto :goto_0

    :cond_2
    move v10, v8

    .line 13
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v16, v7

    goto :goto_1

    :cond_3
    move/from16 v16, v8

    .line 14
    :goto_1
    iget-object v0, v1, Ldev/duo/hookprobe/t$b;->a:Landroid/os/Handler;

    iget-object v1, v1, Ldev/duo/hookprobe/t$b;->b:Ldev/duo/workspaceprobe/b;

    new-instance v9, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;

    move-object/from16 v17, v1

    invoke-direct/range {v9 .. v17}, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;-><init>(ZLandroid/os/IBinder;JIIZLdev/duo/workspaceprobe/b;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v7

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "\u7cfb\u7edf\u5c31\u7eea\u8ba2\u9605\u4e13\u7528"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eq v0, v7, :cond_6

    return v8

    :cond_6
    if-eqz v3, :cond_8

    .line 42
    :try_start_0
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 45
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 46
    iget-object v0, v1, Ldev/duo/hookprobe/t$b;->a:Landroid/os/Handler;

    iget-object v4, v1, Ldev/duo/hookprobe/t$b;->b:Ldev/duo/workspaceprobe/b;

    new-instance v5, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v4}, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 63
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 64
    iget-object v1, v1, Ldev/duo/hookprobe/t$b;->b:Ldev/duo/workspaceprobe/b;

    new-instance v4, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda2;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 65
    throw v0

    .line 54
    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 67
    iget-object v0, v1, Ldev/duo/hookprobe/t$b;->b:Ldev/duo/workspaceprobe/b;

    new-instance v4, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda3;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v2, "unavailable"

    const-string v4, "SystemUI \u4e3b\u7ebf\u7a0b 1 \u79d2\u672a\u54cd\u5e94"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    :goto_2
    nop

    .line 77
    :try_start_3
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :try_start_4
    iget-object v0, v1, Ldev/duo/hookprobe/t$b;->b:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v0, v2, v7}, Ldev/duo/workspaceprobe/b;->a(Landroid/os/Bundle;Z)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 79
    iget-object v1, v1, Ldev/duo/hookprobe/t$b;->b:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v1, v2, v8}, Ldev/duo/workspaceprobe/b;->a(Landroid/os/Bundle;Z)V

    throw v0

    .line 80
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "\u7cfb\u7edf\u53ea\u8bfb\u53d6\u5c42\u4e13\u7528"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 65
    :catch_2
    move-exception v0

    .line 80
    nop

    .line 107
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataSize(I)V

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\u4fa7\u680f\u53ea\u8bfb\u5bfc\u51fa\u5931\u8d25"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    :goto_3
    return v7

    .line 109
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "\u53ea\u8bfb\u53d6\u5c42\u9700\u8981\u540c\u6b65\u56de\u590d"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
