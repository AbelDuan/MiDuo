.class public final Ldev/duo/hookprobe/s;
.super Lio/github/libxposed/api/XposedModule;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MiDuoFoldLease"

.field private static final b:Ljava/lang/String; = "dev.duo.foldanim1.CONTROL"

.field static final c:I = 0xd0f247

.field static final d:I = 0xfe

.field static final e:I = 0x0

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:I = 0x3

.field static final i:I = 0x4


# instance fields
.field private A:Ljava/lang/reflect/Method;

.field private B:Ljava/lang/reflect/Method;

.field private C:Ljava/lang/reflect/Method;

.field private D:Ljava/lang/reflect/Method;

.field private E:Ljava/lang/reflect/Field;

.field private F:Ljava/lang/reflect/Field;

.field private G:Ljava/lang/reflect/Method;

.field private H:Ljava/lang/reflect/Method;

.field private I:Ljava/lang/reflect/Method;

.field private J:Ljava/lang/reflect/Method;

.field private K:Ljava/lang/reflect/Method;

.field private L:Ljava/lang/reflect/Method;

.field private M:Ljava/lang/reflect/Method;

.field private N:Ljava/lang/reflect/Method;

.field private O:Ljava/lang/reflect/Method;

.field private P:Ljava/lang/reflect/Field;

.field private Q:Ljava/lang/reflect/Field;

.field private R:Ljava/lang/reflect/Field;

.field private S:Ljava/lang/reflect/Field;

.field private T:Ljava/lang/reflect/Field;

.field private U:Ljava/lang/reflect/Field;

.field private V:Ljava/lang/reflect/Field;

.field private W:Ljava/lang/reflect/Field;

.field private X:Ljava/lang/reflect/Field;

.field private Y:Ljava/lang/reflect/Field;

.field private Z:Ljava/lang/reflect/Field;

.field private a0:Ljava/lang/reflect/Field;

.field private b0:Ljava/lang/reflect/Field;

.field private c0:Ljava/lang/reflect/Field;

.field private d0:Ljava/lang/reflect/Field;

.field private e0:Ljava/lang/reflect/Field;

.field private f0:Ljava/lang/reflect/Field;

.field private g0:Ljava/lang/reflect/Field;

.field private final h0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i0:Ljava/lang/Runnable;

.field private final j:Ldev/duo/hookprobe/x;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/libxposed/api/XposedInterface$HookHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "[F>;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o:Z

.field private volatile p:Ljava/lang/Object;

.field private q:Z

.field private r:Landroid/os/Handler;

.field private s:Ldev/duo/hookprobe/u;

.field private volatile t:Ljava/lang/Throwable;

.field private u:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/reflect/Method;

.field private z:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$1WOd9AqhBylADohB6ZEER4UE36U(Ldev/duo/hookprobe/s;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/s;->b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DQHlEjaEArpg5tnVLP4YvGge8lQ(Ldev/duo/hookprobe/s;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/s;->c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EM0nGACXcX2m3Qy0HKO-7bb64bQ(Ldev/duo/hookprobe/s;Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N_KPFpbeI_hK2PdPxXYXoKR9kaw(Ldev/duo/hookprobe/s;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/s;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hUtliqA3QWMrbNIffj81Lj_Klx0(Ldev/duo/hookprobe/s;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/s;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$rSipHAYc-PNbiLWVwJEmN97Wimo(Ldev/duo/hookprobe/s;Ldev/duo/hookprobe/x$b;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Ldev/duo/hookprobe/s;->a(Ldev/duo/hookprobe/x$b;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2MnhFnVhj1Tf_nWTL0Bd9hlB_U(Ldev/duo/hookprobe/s;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/s;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/github/libxposed/api/XposedModule;-><init>()V

    .line 6
    new-instance v0, Ldev/duo/hookprobe/x;

    invoke-direct {v0}, Ldev/duo/hookprobe/x;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/s;->m:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/s;->n:Ljava/util/Map;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/s;->h0:Ljava/util/Map;

    .line 468
    new-instance v0, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/s;)V

    iput-object v0, p0, Ldev/duo/hookprobe/s;->i0:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/os/IBinder;ILjava/lang/String;IIZLjava/lang/String;JIII)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v11, p6

    const/4 v12, 0x0

    if-eqz p1, :cond_b

    .line 271
    invoke-interface/range {p1 .. p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 272
    :cond_0
    iget-object v1, v0, Ldev/duo/hookprobe/s;->P:Ljava/lang/reflect/Field;

    iget-object v2, v0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 275
    monitor-enter v13

    .line 276
    :try_start_0
    invoke-direct {v0, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 277
    iget-object v1, v0, Ldev/duo/hookprobe/s;->x:Ljava/lang/Class;

    invoke-virtual {v1, v14}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v5, v13

    goto/16 :goto_4

    .line 278
    :cond_1
    iget-object v1, v0, Ldev/duo/hookprobe/s;->J:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/os/IBinder;

    .line 279
    iget-object v1, v0, Ldev/duo/hookprobe/s;->h0:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, v0, Ldev/duo/hookprobe/s;->h0:Ljava/util/Map;

    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :try_start_2
    iget-object v1, v0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v1, v3}, Ldev/duo/hookprobe/x;->b(Ljava/lang/String;)Ldev/duo/hookprobe/x$b;

    move-result-object v1

    const/16 v16, 0x1

    if-nez v1, :cond_2

    move/from16 v17, v16

    goto :goto_0

    :cond_2
    move/from16 v17, v12

    :goto_0
    if-eqz v17, :cond_3

    .line 281
    iget-object v1, v0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v1, v3}, Ldev/duo/hookprobe/x;->a(Ljava/lang/String;)Ldev/duo/hookprobe/x$a;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "MiDuoFoldLease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GUARD_DROPPED panel="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " reason=new_lease"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_3
    iget-object v1, v0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v7

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v9, p8

    move-object v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v10}, Ldev/duo/hookprobe/x;->a(Ljava/lang/String;Ljava/lang/Object;IIIJJ)Ldev/duo/hookprobe/x$b;

    move-result-object v7

    move-object v8, v2

    move v9, v5

    if-nez v7, :cond_4

    .line 283
    monitor-exit v13

    return v12

    :cond_4
    if-eqz v17, :cond_6

    const/4 v1, 0x2

    if-ne v9, v1, :cond_6

    .line 285
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 286
    iget-object v2, v0, Ldev/duo/hookprobe/s;->B:Ljava/lang/reflect/Method;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v15, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p10, :cond_5

    if-lez p11, :cond_5

    if-lez p12, :cond_5

    .line 287
    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    move-object v2, v14

    move-object v3, v15

    invoke-direct/range {v0 .. v6}, Ldev/duo/hookprobe/s;->a(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Landroid/os/IBinder;III)V

    goto :goto_1

    .line 286
    :cond_5
    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    move-object v2, v14

    move-object v3, v15

    .line 288
    :goto_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_2

    .line 283
    :cond_6
    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    move-object v2, v14

    move-object v3, v15

    .line 288
    :goto_2
    if-eqz v17, :cond_7

    .line 290
    const-string v1, "MiDuoFoldLease"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEASE panel="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " mode="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v10, p5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " power_on="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ttl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 291
    invoke-static/range {p8 .. p9}, Ldev/duo/hookprobe/x;->a(J)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rotation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " stack_size="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_7
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 296
    invoke-direct/range {p0 .. p1}, Ldev/duo/hookprobe/s;->b(Landroid/os/IBinder;)V

    if-nez v11, :cond_8

    if-eqz p7, :cond_9

    .line 303
    :cond_8
    iget-object v10, v0, Ldev/duo/hookprobe/s;->r:Landroid/os/Handler;

    new-instance v0, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object v6, v2

    move-object v2, v7

    move v4, v11

    move-object v5, v13

    move-object v7, v3

    move-object v3, v8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/s;Ldev/duo/hookprobe/x$b;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    :cond_9
    invoke-direct/range {p0 .. p0}, Ldev/duo/hookprobe/s;->b()V

    return v16

    :catchall_0
    move-exception v0

    move-object v5, v13

    .line 343
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 342
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 276
    :cond_a
    move-object v5, v13

    .line 344
    :goto_4
    monitor-exit v5

    return v12

    .line 281
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v13

    .line 360
    :goto_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_b
    :goto_6
    return v12
.end method

.method private static a()J
    .locals 2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 139
    const-string v0, "MiDuoFoldLease"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v1}, Ldev/duo/hookprobe/x;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 142
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 143
    invoke-direct {p0, v2}, Ldev/duo/hookprobe/s;->c(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 144
    iget-object v5, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v6

    invoke-virtual {v5, v2, v4, v6, v7}, Ldev/duo/hookprobe/x;->a(Ljava/lang/String;IJ)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HOLD_POWER panel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " requested_mode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 146
    const-string v4, " (already lit by lease)"

    goto :goto_1

    .line 147
    :cond_2
    const-string v4, ""

    .line 146
    :goto_1
    nop

    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_3
    move v1, v3

    goto :goto_2

    .line 144
    :catchall_0
    move-exception v2

    .line 150
    iput-object v2, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    const-string v3, "power hook failed; passthrough"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    .line 151
    :cond_4
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1

    .line 152
    :cond_5
    :goto_4
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xd0f247

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    .line 155
    iget-object v1, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/hookprobe/s;->R:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    .line 156
    :cond_1
    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcel;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Ldev/duo/hookprobe/s;->a(Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Ldev/duo/hookprobe/s;->H:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/hookprobe/s;->Q:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "display service not captured"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object p0
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method

.method private a(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    iget-boolean p1, p0, Ldev/duo/hookprobe/s;->o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1}, Ldev/duo/hookprobe/u;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xfe

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p1, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {p1}, Ldev/duo/hookprobe/x;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 226
    :cond_1
    iget-boolean v3, p0, Ldev/duo/hookprobe/s;->o:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    :cond_2
    if-eq p1, v4, :cond_4

    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    const-string v1, "\u79df\u7ea6\u4e0d\u53ef\u7528"

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_1
    const/16 v3, 0xc

    if-ne p1, v3, :cond_5

    .line 227
    iget-object p1, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1, v0}, Ldev/duo/hookprobe/u;->a(Landroid/os/Parcel;)V

    return-void

    :cond_5
    const/16 v5, 0x10

    if-ne p1, v5, :cond_6

    .line 228
    iget-object p1, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1, v0}, Ldev/duo/hookprobe/u;->b(Landroid/os/Parcel;)V

    return-void

    :cond_6
    const/4 v5, 0x5

    if-lt p1, v5, :cond_9

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 231
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 232
    invoke-direct {p0, v1}, Ldev/duo/hookprobe/s;->b(Landroid/os/IBinder;)V

    .line 233
    iget-object v2, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    move-object/from16 v5, p2

    invoke-virtual {v2, p1, v1, v5, v0}, Ldev/duo/hookprobe/u;->a(ILandroid/os/IBinder;Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 234
    iget-object p1, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1, v1}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {p1, v1}, Ldev/duo/hookprobe/x;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/s;->d(Landroid/os/IBinder;)V

    .line 235
    :cond_7
    invoke-direct {p0}, Ldev/duo/hookprobe/s;->b()V

    return-void

    .line 236
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "owner \u4e0d\u53ef\u7528"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move-object/from16 v5, p2

    if-ne p1, v1, :cond_c

    .line 244
    move p1, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 245
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    move v7, v1

    goto :goto_2

    :cond_a
    move v7, p1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lt v1, v3, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v11, p1

    move v12, v1

    move v13, v3

    goto :goto_3

    :cond_b
    const/4 v1, -0x1

    move v12, p1

    move v13, v12

    move v11, v1

    .line 251
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    move-object v1, p0

    move/from16 v3, p4

    invoke-direct/range {v1 .. v13}, Ldev/duo/hookprobe/s;->a(Landroid/os/IBinder;ILjava/lang/String;IIZLjava/lang/String;JIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_c
    const/4 v2, 0x2

    if-ne p1, v2, :cond_d

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 255
    iget-object p1, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1, v6}, Ldev/duo/hookprobe/u;->b(Landroid/os/IBinder;)V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    iget-object v5, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v8

    move/from16 v7, p4

    invoke-virtual/range {v5 .. v11}, Ldev/duo/hookprobe/x;->a(Ljava/lang/Object;IJJ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_d
    if-ne p1, v4, :cond_11

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    iget-object v3, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    move/from16 v7, p4

    invoke-virtual {v3, p1, v7, v2}, Ldev/duo/hookprobe/x;->a(Ljava/lang/Object;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 260
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/duo/hookprobe/x$b;

    const-string v5, "client"

    invoke-direct {p0, v4, v5}, Ldev/duo/hookprobe/s;->a(Ldev/duo/hookprobe/x$b;Ljava/lang/String;)V

    goto :goto_4

    .line 261
    :cond_e
    iget-object v3, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v3, p1}, Ldev/duo/hookprobe/x;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {v3, p1}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/s;->d(Landroid/os/IBinder;)V

    .line 262
    :cond_f
    iget-object p1, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    if-nez p1, :cond_10

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 264
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    const-string v1, "\u9762\u677f\u5f52\u8fd8\u5931\u8d25"

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_11
    const/4 v2, 0x4

    if-ne p1, v2, :cond_12

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    invoke-direct {p0, p1, v0}, Ldev/duo/hookprobe/s;->a(Ljava/lang/String;Landroid/os/Parcel;)V

    return-void

    .line 270
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic a(Landroid/os/IBinder;)V
    .locals 3

    .line 539
    iget-object v0, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/u;->d(Landroid/os/IBinder;)V

    .line 540
    iget-object v0, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/x;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/hookprobe/x$b;

    const-string v2, "owner_died"

    invoke-direct {p0, v1, v2}, Ldev/duo/hookprobe/s;->a(Ldev/duo/hookprobe/x$b;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/s;->n:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldev/duo/hookprobe/s;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Landroid/os/IBinder;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Ldev/duo/hookprobe/s;->K:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    iget-object v2, p0, Ldev/duo/hookprobe/s;->g0:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr p4, v2

    rem-int/lit8 p4, p4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p4, v3, :cond_1

    const/4 v4, 0x3

    if-ne p4, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 419
    iget-object v4, p0, Ldev/duo/hookprobe/s;->f0:Ljava/lang/reflect/Field;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ldev/duo/hookprobe/s;->e0:Ljava/lang/reflect/Field;

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz v3, :cond_3

    .line 420
    iget-object v3, p0, Ldev/duo/hookprobe/s;->e0:Ljava/lang/reflect/Field;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Ldev/duo/hookprobe/s;->f0:Ljava/lang/reflect/Field;

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    mul-int v3, v4, p6

    mul-int v5, v0, p5

    if-ge v3, v5, :cond_4

    .line 422
    div-int/2addr v3, p5

    move v5, v4

    goto :goto_3

    :cond_4
    div-int/2addr v5, p6

    move v3, v0

    :goto_3
    sub-int/2addr v4, v5

    .line 423
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 424
    new-instance v6, Landroid/graphics/Rect;

    add-int/2addr v5, v4

    add-int/2addr v3, v0

    invoke-direct {v6, v4, v0, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 425
    iget-object v0, p0, Ldev/duo/hookprobe/s;->C:Ljava/lang/reflect/Method;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {p3, v3, v4, v6}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object p1, p0, Ldev/duo/hookprobe/s;->Y:Ljava/lang/reflect/Field;

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    iget-object p1, p0, Ldev/duo/hookprobe/s;->Z:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Ldev/duo/hookprobe/s;->a0:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LEASE_PROJECTION orientation="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " stack="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " display="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiDuoFoldLease"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ldev/duo/hookprobe/x$a;)V
    .locals 9

    .line 543
    :try_start_0
    iget-boolean v0, p1, Ldev/duo/hookprobe/x$a;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Ldev/duo/hookprobe/x$a;->d:[F

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 545
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/s;->P:Ljava/lang/reflect/Field;

    iget-object v1, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p1, Ldev/duo/hookprobe/x$a;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 547
    :cond_1
    :try_start_2
    iget-object v0, p1, Ldev/duo/hookprobe/x$a;->d:[F

    .line 548
    iget-object v2, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 550
    :try_start_3
    iget-object v2, p0, Ldev/duo/hookprobe/s;->T:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 551
    iget-boolean v2, p1, Ldev/duo/hookprobe/x$a;->f:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldev/duo/hookprobe/s;->O:Ljava/lang/reflect/Method;

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aget v7, v0, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-boolean v8, p1, Ldev/duo/hookprobe/x$a;->g:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v5, v4, v7, v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 552
    :cond_2
    iget-object v2, p0, Ldev/duo/hookprobe/s;->N:Ljava/lang/reflect/Method;

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aget v7, v0, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v5, v4, v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 551
    :goto_0
    nop

    .line 553
    :try_start_4
    iget-object v1, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 554
    const-string v1, "MiDuoFoldLease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GUARD_END panel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ldev/duo/hookprobe/x$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " replay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 551
    :catchall_0
    move-exception v0

    .line 555
    iget-object v1, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v1

    .line 556
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 557
    :cond_3
    :goto_1
    const-string v0, "MiDuoFoldLease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUARD_END panel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ldev/duo/hookprobe/x$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " replay=none"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    .line 554
    :catchall_2
    move-exception v0

    .line 570
    iput-object v0, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUARD_END_FAILED panel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Ldev/duo/hookprobe/x$a;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MiDuoFoldLease"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private a(Ldev/duo/hookprobe/x$b;Ljava/lang/String;)V
    .locals 12

    .line 428
    monitor-enter p1

    .line 430
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/s;->P:Ljava/lang/reflect/Field;

    iget-object v1, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 433
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 434
    :try_start_1
    iget-object v1, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 435
    const-string v1, "MiDuoFoldLease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELEASE_NO_DEVICE panel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    return-void

    .line 436
    :cond_0
    :try_start_3
    iget-object v2, p0, Ldev/duo/hookprobe/s;->J:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 438
    iget-object v4, p0, Ldev/duo/hookprobe/s;->X:Ljava/lang/reflect/Field;

    const v5, -0x7ffffff9

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    iget-object v4, p0, Ldev/duo/hookprobe/s;->Y:Ljava/lang/reflect/Field;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 439
    iget-object v4, p0, Ldev/duo/hookprobe/s;->Z:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Ldev/duo/hookprobe/s;->a0:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    iget-object v4, p0, Ldev/duo/hookprobe/s;->b0:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    iget-object v4, p0, Ldev/duo/hookprobe/s;->c0:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    iget-object v4, p0, Ldev/duo/hookprobe/s;->d0:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 441
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 442
    iget-object v6, p0, Ldev/duo/hookprobe/s;->y:Ljava/lang/reflect/Method;

    iget-object v7, p0, Ldev/duo/hookprobe/s;->E:Ljava/lang/reflect/Field;

    iget-object v8, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1

    .line 444
    iget-object v6, p0, Ldev/duo/hookprobe/s;->B:Ljava/lang/reflect/Method;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 446
    :cond_1
    iget-object v5, p0, Ldev/duo/hookprobe/s;->V:Ljava/lang/reflect/Field;

    iget-object v9, p0, Ldev/duo/hookprobe/s;->K:Ljava/lang/reflect/Method;

    invoke-virtual {v9, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v8, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v7

    .line 447
    :goto_0
    iget-object v9, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 448
    :try_start_4
    iget-object v9, p0, Ldev/duo/hookprobe/s;->z:Ljava/lang/reflect/Method;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v10, p0, Ldev/duo/hookprobe/s;->F:Ljava/lang/reflect/Field;

    iget-object v11, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    filled-new-array {v4, v1, v5, v10}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 449
    :try_start_5
    iget-object v5, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 451
    :goto_1
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 452
    iget-object v4, p0, Ldev/duo/hookprobe/s;->A:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v4, p0, Ldev/duo/hookprobe/s;->U:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 455
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 456
    :try_start_6
    iget-boolean v0, p1, Ldev/duo/hookprobe/x$b;->h:Z

    if-eqz v0, :cond_4

    .line 457
    iget-object v0, p0, Ldev/duo/hookprobe/s;->M:Ljava/lang/reflect/Method;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 458
    invoke-static {p1, v5}, Ldev/duo/hookprobe/x;->a(Ldev/duo/hookprobe/x$b;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 459
    iget-object v6, p0, Ldev/duo/hookprobe/s;->D:Ljava/lang/reflect/Method;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v0, "MiDuoFoldLease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELEASE_POWER panel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 462
    :cond_3
    const-string v0, "MiDuoFoldLease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELEASE_POWER_SKIPPED panel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already_on held_on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldev/duo/hookprobe/x$b;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_2
    nop

    .line 466
    :cond_4
    iget-object v0, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Ldev/duo/hookprobe/x;->a(Ldev/duo/hookprobe/x$b;J)Ldev/duo/hookprobe/x$a;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    .line 468
    const-string v1, "MiDuoFoldLease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RELEASE_GUARD panel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " floor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Ldev/duo/hookprobe/x$a;->b:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x2bc

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " carried="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 469
    iget-boolean v4, v0, Ldev/duo/hookprobe/x$a;->e:Z

    if-eqz v4, :cond_5

    iget-object v0, v0, Ldev/duo/hookprobe/x$a;->d:[F

    if-eqz v0, :cond_5

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 470
    :cond_5
    const-string v0, "none"

    .line 469
    :goto_3
    nop

    .line 470
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Ldev/duo/hookprobe/s;->b()V

    goto :goto_5

    .line 474
    :cond_6
    iget-object v0, p1, Ldev/duo/hookprobe/x$b;->k:[F

    if-eqz v0, :cond_8

    iget-boolean v3, p1, Ldev/duo/hookprobe/x$b;->l:Z

    if-eqz v3, :cond_8

    .line 476
    iget-object v3, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 478
    :try_start_7
    iget-object v3, p0, Ldev/duo/hookprobe/s;->T:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 479
    iget-boolean v3, p1, Ldev/duo/hookprobe/x$b;->n:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_7

    iget-object v3, p0, Ldev/duo/hookprobe/s;->O:Ljava/lang/reflect/Method;

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget v6, v0, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-boolean v4, p1, Ldev/duo/hookprobe/x$b;->m:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v5, v6, v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 480
    :cond_7
    iget-object v3, p0, Ldev/duo/hookprobe/s;->N:Ljava/lang/reflect/Method;

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget v6, v0, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v5, v6, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 479
    :goto_4
    nop

    .line 481
    :try_start_8
    iget-object v0, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_5

    .line 479
    :catchall_0
    move-exception v0

    .line 482
    iget-object v1, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0

    .line 484
    :cond_8
    :goto_5
    const-string v0, "MiDuoFoldLease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RELEASED panel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " held_ms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v2

    iget-wide v4, p1, Ldev/duo/hookprobe/x$b;->f:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_1
    move-exception v1

    .line 485
    :try_start_9
    iget-object v2, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    throw v1

    .line 435
    :catchall_2
    move-exception v1

    .line 491
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 460
    :catchall_3
    move-exception v0

    .line 518
    :try_start_b
    iput-object v0, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    .line 519
    const-string v1, "MiDuoFoldLease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELEASE_FAILED panel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    :goto_6
    nop

    .line 521
    monitor-exit p1

    return-void

    .line 435
    :catchall_4
    move-exception p2

    .line 522
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p2
.end method

.method private synthetic a(Ldev/duo/hookprobe/x$b;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    .line 361
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 362
    :try_start_1
    iget-object v0, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v0, p2}, Ldev/duo/hookprobe/x;->b(Ljava/lang/String;)Ldev/duo/hookprobe/x$b;

    move-result-object v0

    if-eq v0, p1, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p3, :cond_2

    .line 365
    monitor-enter p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object p3, p0, Ldev/duo/hookprobe/s;->U:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    .line 368
    :try_start_3
    const-string p3, "MiDuoFoldLease"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEASE_POWER_SKIPPED panel="

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v2, " already_on_by_platform"

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_1
    iget-object p3, p0, Ldev/duo/hookprobe/s;->D:Ljava/lang/reflect/Method;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p6, v2}, [Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p3, v0, p6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object p3, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {p3, p1}, Ldev/duo/hookprobe/x;->a(Ldev/duo/hookprobe/x$b;)V

    .line 372
    const-string p3, "MiDuoFoldLease"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEASE_POWER_ON panel="

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 368
    :goto_0
    goto :goto_1

    .line 372
    :catchall_0
    move-exception p3

    .line 373
    :try_start_4
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p3

    :cond_2
    :goto_1
    if-eqz p7, :cond_6

    .line 385
    monitor-enter p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 386
    :try_start_6
    invoke-direct {p0, p7}, Ldev/duo/hookprobe/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 387
    iget-object p6, p0, Ldev/duo/hookprobe/s;->J:Ljava/lang/reflect/Method;

    invoke-virtual {p6, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    goto :goto_2

    .line 386
    :cond_3
    move-object p3, v0

    .line 388
    :goto_2
    monitor-exit p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 390
    :try_start_7
    iget-object p4, p0, Ldev/duo/hookprobe/s;->m:Ljava/util/Map;

    monitor-enter p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez p3, :cond_4

    :goto_3
    goto :goto_4

    :cond_4
    :try_start_8
    iget-object p6, p0, Ldev/duo/hookprobe/s;->m:Ljava/util/Map;

    invoke-interface {p6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, [F

    goto :goto_3

    :goto_4
    monitor-exit p4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_5

    .line 392
    :try_start_9
    iget-object p3, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 393
    :try_start_a
    iget-object p3, p0, Ldev/duo/hookprobe/s;->N:Ljava/lang/reflect/Method;

    iget-object p4, p0, Ldev/duo/hookprobe/s;->T:Ljava/lang/reflect/Field;

    invoke-virtual {p4, p5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const/4 p5, 0x0

    aget p5, v0, p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const/4 p6, 0x1

    aget p6, v0, p6

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    aget v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {p5, p6, v2, v3}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 394
    :try_start_b
    iget-object p3, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->remove()V

    .line 395
    iget-object p3, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    aget p4, v0, v1

    invoke-virtual {p3, p1, p4}, Ldev/duo/hookprobe/x;->a(Ldev/duo/hookprobe/x$b;F)V

    .line 396
    const-string p3, "MiDuoFoldLease"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "LEASE_BACKLIGHT panel="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " from="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " value="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    aget p5, v0, v1

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " floor=on"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception p3

    .line 397
    iget-object p4, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {p4}, Ljava/lang/ThreadLocal;->remove()V

    throw p3

    .line 398
    :cond_5
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "\u5f53\u524d\u6e90\u9762\u677f\u4eae\u5ea6\u5c1a\u672a\u91c7\u96c6"

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_2
    move-exception p3

    .line 399
    :try_start_c
    monitor-exit p4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 387
    :catchall_3
    move-exception p3

    .line 400
    :try_start_e
    monitor-exit p4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw p3

    .line 410
    :cond_6
    :goto_5
    monitor-exit p1

    return-void

    .line 362
    :catchall_4
    move-exception p3

    .line 411
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw p3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception p1

    .line 413
    iput-object p1, p0, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    .line 414
    iget-object p3, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {p3, p8}, Ldev/duo/hookprobe/x;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ldev/duo/hookprobe/x$b;

    const-string p5, "apply_failed"

    invoke-direct {p0, p4, p5}, Ldev/duo/hookprobe/s;->a(Ldev/duo/hookprobe/x$b;Ljava/lang/String;)V

    goto :goto_6

    .line 415
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "LEASE_APPLY_FAILED panel="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MiDuoFoldLease"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Ljava/lang/ClassLoader;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "com.android.server.display.DisplayManagerService"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    .line 5
    const-string v2, "com.android.server.display.LogicalDisplay"

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/hookprobe/s;->v:Ljava/lang/Class;

    .line 6
    const-string v2, "com.android.server.display.DisplayDevice"

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    .line 7
    const-string v2, "com.android.server.display.DisplayAdapter"

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 8
    const-string v4, "com.android.server.display.LocalDisplayAdapter"

    invoke-static {v4, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 9
    const-string v4, "com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice"

    invoke-static {v4, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v0, Ldev/duo/hookprobe/s;->x:Ljava/lang/Class;

    .line 10
    const-string v4, "com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$1"

    invoke-static {v4, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 11
    const-string v5, "com.android.server.display.LocalDisplayAdapter$SurfaceControlProxy"

    invoke-static {v5, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 12
    const-string v6, "com.android.server.display.LocalDisplayAdapter$BacklightAdapter"

    invoke-static {v6, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 13
    const-string v7, "com.android.server.display.DisplayDeviceRepository"

    invoke-static {v7, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 14
    const-string v8, "com.android.server.display.DisplayDeviceInfo"

    invoke-static {v8, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 15
    const-string v9, "com.android.server.display.DisplayManagerService$BinderService"

    invoke-static {v9, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 16
    const-class v10, Landroid/view/SurfaceControl$Transaction;

    .line 17
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v12, Landroid/os/IBinder;

    filled-new-array {v12, v11}, [Ljava/lang/Class;

    move-result-object v12

    const-string v13, "setDisplayLayerStack"

    invoke-static {v10, v13, v12}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    iput-object v12, v0, Ldev/duo/hookprobe/s;->B:Ljava/lang/reflect/Method;

    .line 18
    const-class v12, Landroid/os/IBinder;

    const-class v13, Landroid/graphics/Rect;

    const-class v14, Landroid/graphics/Rect;

    filled-new-array {v12, v11, v13, v14}, [Ljava/lang/Class;

    move-result-object v12

    const-string v13, "setDisplayProjection"

    invoke-static {v10, v13, v12}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    iput-object v12, v0, Ldev/duo/hookprobe/s;->C:Ljava/lang/reflect/Method;

    .line 19
    const-class v12, Landroid/view/SurfaceControl;

    const-class v13, Landroid/os/IBinder;

    filled-new-array {v13, v11}, [Ljava/lang/Class;

    move-result-object v13

    const-string v14, "setDisplayPowerMode"

    invoke-static {v12, v14, v13}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    iput-object v12, v0, Ldev/duo/hookprobe/s;->D:Ljava/lang/reflect/Method;

    .line 21
    iget-object v12, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    iget-object v13, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    filled-new-array {v10, v13}, [Ljava/lang/Class;

    move-result-object v13

    const-string v15, "configureDisplayLocked"

    invoke-static {v12, v15, v13}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    iput-object v12, v0, Ldev/duo/hookprobe/s;->G:Ljava/lang/reflect/Method;

    .line 22
    const-string v12, "com.android.server.display.LogicalDisplayMapper"

    invoke-static {v12, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 23
    iget-object v13, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    const-string v3, "mLogicalDisplayMapper"

    invoke-static {v13, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->E:Ljava/lang/reflect/Field;

    iget-object v3, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    const-string v13, "mHandlerExecutor"

    invoke-static {v3, v13}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->F:Ljava/lang/reflect/Field;

    .line 24
    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v13, "getDisplayLocked"

    invoke-static {v12, v13, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->y:Ljava/lang/reflect/Method;

    .line 25
    iget-object v3, v0, Ldev/duo/hookprobe/s;->v:Ljava/lang/Class;

    iget-object v12, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v16, v5

    const-class v5, Ljava/util/concurrent/Executor;

    filled-new-array {v10, v12, v13, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3, v15, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->z:Ljava/lang/reflect/Method;

    .line 26
    iget-object v3, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v5

    const-string v12, "scheduleTraversalLocked"

    invoke-static {v3, v12, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->A:Ljava/lang/reflect/Method;

    .line 27
    iget-object v3, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    const-string v5, "mSyncRoot"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->P:Ljava/lang/reflect/Field;

    iget-object v3, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    const-string v5, "mDisplayDeviceRepo"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->Q:Ljava/lang/reflect/Field;

    .line 28
    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getByUniqueIdLocked"

    invoke-static {v7, v5, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->H:Ljava/lang/reflect/Method;

    .line 29
    const-string v3, "this$0"

    invoke-static {v9, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->R:Ljava/lang/reflect/Field;

    .line 30
    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Class;

    const-string v12, "getUniqueId"

    invoke-static {v3, v12, v7}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->I:Ljava/lang/reflect/Method;

    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Class;

    const-string v12, "getDisplayTokenLocked"

    invoke-static {v3, v12, v7}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->J:Ljava/lang/reflect/Method;

    .line 31
    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Class;

    const-string v5, "getDisplayDeviceInfoLocked"

    invoke-static {v3, v5, v7}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->K:Ljava/lang/reflect/Method;

    .line 32
    const-string v3, "state"

    invoke-static {v8, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->V:Ljava/lang/reflect/Field;

    .line 33
    const-string v3, "width"

    invoke-static {v8, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->e0:Ljava/lang/reflect/Field;

    const-string v3, "height"

    invoke-static {v8, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->f0:Ljava/lang/reflect/Field;

    const-string v3, "rotation"

    invoke-static {v8, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->g0:Ljava/lang/reflect/Field;

    .line 34
    iget-object v3, v0, Ldev/duo/hookprobe/s;->v:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Class;

    const-string v5, "getDisplayInfoLocked"

    invoke-static {v3, v5, v7}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->L:Ljava/lang/reflect/Method;

    .line 35
    const-string v3, "android.view.DisplayInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "uniqueId"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->W:Ljava/lang/reflect/Field;

    .line 36
    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getPowerModeForState"

    invoke-static {v2, v5, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/hookprobe/s;->M:Ljava/lang/reflect/Method;

    .line 37
    const-string v2, "mDisplayToken"

    invoke-static {v6, v2}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/hookprobe/s;->S:Ljava/lang/reflect/Field;

    .line 38
    iget-object v2, v0, Ldev/duo/hookprobe/s;->x:Ljava/lang/Class;

    const-string v3, "mBacklightAdapter"

    invoke-static {v2, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/hookprobe/s;->T:Ljava/lang/reflect/Field;

    .line 39
    iget-object v2, v0, Ldev/duo/hookprobe/s;->x:Ljava/lang/Class;

    const-string v3, "mState"

    invoke-static {v2, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Ldev/duo/hookprobe/s;->U:Ljava/lang/reflect/Field;

    .line 40
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setBacklight"

    invoke-static {v6, v5, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->N:Ljava/lang/reflect/Method;

    .line 41
    filled-new-array {v2, v2, v2, v2, v13}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v6, v5, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->O:Ljava/lang/reflect/Method;

    .line 42
    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    const-string v5, "mCurrentLayerStack"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->X:Ljava/lang/reflect/Field;

    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    const-string v5, "mCurrentOrientation"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->Y:Ljava/lang/reflect/Field;

    .line 43
    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    const-string v5, "mCurrentLayerStackRect"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->Z:Ljava/lang/reflect/Field;

    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    const-string v5, "mCurrentDisplayRect"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->a0:Ljava/lang/reflect/Field;

    .line 44
    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    const-string v5, "mCurrentFlags"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->b0:Ljava/lang/reflect/Field;

    .line 45
    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    const-string v5, "mLastDisplayWidth"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->c0:Ljava/lang/reflect/Field;

    iget-object v3, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    const-string v5, "mLastDisplayHeight"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Ldev/duo/hookprobe/s;->d0:Ljava/lang/reflect/Field;

    .line 48
    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v3

    .line 49
    const-string v5, "setDisplayState"

    invoke-static {v4, v5, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Class;

    const-string v6, "run"

    invoke-static {v4, v6, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 50
    const-string v3, "setDisplayBrightness"

    invoke-static {v4, v3, v2}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    iget-object v2, v0, Ldev/duo/hookprobe/s;->G:Ljava/lang/reflect/Method;

    iget-object v3, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    iget-object v4, v0, Ldev/duo/hookprobe/s;->v:Ljava/lang/Class;

    const-class v6, Landroid/util/SparseArray;

    filled-new-array {v6, v10, v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 51
    const-string v6, "lambda$performTraversalLocked$22"

    invoke-static {v3, v6, v4}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    iget-object v3, v0, Ldev/duo/hookprobe/s;->u:Ljava/lang/Class;

    const-class v4, Landroid/util/SparseArray;

    filled-new-array {v10, v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 52
    const-string v6, "performTraversalLocked"

    invoke-static {v3, v6, v4}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    const-class v3, Landroid/os/Parcel;

    const-class v4, Landroid/os/Parcel;

    filled-new-array {v11, v3, v4, v11}, [Ljava/lang/Class;

    move-result-object v3

    .line 53
    const-string v4, "onTransact"

    invoke-static {v9, v4, v3}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    move-object/from16 v20, v2

    filled-new-array/range {v17 .. v23}, [Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    move v6, v3

    :goto_0
    const-string v7, "MiDuoFoldLease"

    const/4 v8, 0x7

    if-ge v5, v8, :cond_0

    .line 54
    aget-object v8, v2, v5

    .line 60
    invoke-virtual {v0, v8}, Lio/github/libxposed/api/XposedModule;->deoptimize(Ljava/lang/reflect/Executable;)Z

    move-result v11

    and-int/2addr v6, v11

    .line 61
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CALLER_DEOPT method="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " result="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_2

    .line 65
    new-instance v2, Ldev/duo/hookprobe/u;

    invoke-direct {v2, v1}, Ldev/duo/hookprobe/u;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v2, v0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    .line 67
    iget-object v1, v0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    filled-new-array {v5, v2}, [Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v6, v16

    invoke-static {v6, v14, v5}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    sget-object v6, Lio/github/libxposed/api/XposedInterface$ExceptionMode;->PROTECTIVE:Lio/github/libxposed/api/XposedInterface$ExceptionMode;

    .line 68
    invoke-interface {v5, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->setExceptionMode(Lio/github/libxposed/api/XposedInterface$ExceptionMode;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    new-instance v8, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda3;-><init>(Ldev/duo/hookprobe/s;)V

    invoke-interface {v5, v8}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    move-result-object v5

    .line 69
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda4;-><init>(Ldev/duo/hookprobe/s;)V

    .line 103
    iget-object v5, v0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    iget-object v8, v0, Ldev/duo/hookprobe/s;->N:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v8}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v8

    invoke-interface {v8, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->setExceptionMode(Lio/github/libxposed/api/XposedInterface$ExceptionMode;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v8

    invoke-interface {v8, v1}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v5, v0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    iget-object v8, v0, Ldev/duo/hookprobe/s;->O:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v8}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v8

    invoke-interface {v8, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->setExceptionMode(Lio/github/libxposed/api/XposedInterface$ExceptionMode;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v8

    invoke-interface {v8, v1}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, v0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    iget-object v5, v0, Ldev/duo/hookprobe/s;->v:Ljava/lang/Class;

    iget-object v8, v0, Ldev/duo/hookprobe/s;->w:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/util/concurrent/Executor;

    filled-new-array {v10, v8, v11, v12}, [Ljava/lang/Class;

    move-result-object v8

    invoke-static {v5, v15, v8}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    .line 106
    invoke-interface {v5, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->setExceptionMode(Lio/github/libxposed/api/XposedInterface$ExceptionMode;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    new-instance v6, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/s;)V

    invoke-interface {v5, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    move-result-object v5

    .line 107
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, v0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    const-string v5, "android.hardware.display.IDisplayManager$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/os/Parcel;

    const-class v8, Landroid/os/Parcel;

    filled-new-array {v2, v6, v8, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v5, v4, v2}, Ldev/duo/hookprobe/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    sget-object v4, Lio/github/libxposed/api/XposedInterface$ExceptionMode;->PASSTHROUGH:Lio/github/libxposed/api/XposedInterface$ExceptionMode;

    .line 123
    invoke-interface {v2, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->setExceptionMode(Lio/github/libxposed/api/XposedInterface$ExceptionMode;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v4, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v9}, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda6;-><init>(Ldev/duo/hookprobe/s;Ljava/lang/Class;)V

    invoke-interface {v2, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    move-result-object v2

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 134
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Ldev/duo/hookprobe/s;->r:Landroid/os/Handler;

    .line 135
    iget-object v1, v0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    iget-object v4, v0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    invoke-virtual {v1, v0, v4, v2}, Ldev/duo/hookprobe/u;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;Landroid/os/Handler;)V

    .line 136
    iput-boolean v3, v0, Ldev/duo/hookprobe/s;->o:Z

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, v0, Ldev/duo/hookprobe/s;->o:Z

    if-eqz v2, :cond_1

    const-string v2, "READY"

    goto :goto_1

    :cond_1
    const-string v2, "NOT_READY_CALLER_DEOPT"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xfe

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hooks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dormant_without_lease=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u79df\u7ea6\u8c03\u7528\u94fe\u53bb\u4f18\u5316\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Ldev/duo/hookprobe/s;->P:Ljava/lang/reflect/Field;

    iget-object v1, p0, Ldev/duo/hookprobe/s;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 524
    monitor-enter v0

    .line 525
    :try_start_0
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 526
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    monitor-exit v0

    return-void

    .line 527
    :cond_0
    iget-object v3, p0, Ldev/duo/hookprobe/s;->K:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 528
    iget-object v4, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v4, p1}, Ldev/duo/hookprobe/x;->b(Ljava/lang/String;)Ldev/duo/hookprobe/x$b;

    move-result-object p1

    .line 529
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-object v4, p0, Ldev/duo/hookprobe/s;->V:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object v3, p0, Ldev/duo/hookprobe/s;->x:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldev/duo/hookprobe/s;->U:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 532
    :goto_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-object v3, p0, Ldev/duo/hookprobe/s;->X:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget-object v3, p0, Ldev/duo/hookprobe/s;->Y:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p1, :cond_2

    move v1, v2

    goto :goto_1

    .line 535
    :cond_2
    iget v1, p1, Ldev/duo/hookprobe/x$b;->d:I

    :goto_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p1, :cond_3

    goto :goto_2

    .line 536
    :cond_3
    iget v2, p1, Ldev/duo/hookprobe/x$b;->e:I

    :goto_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    monitor-exit v0

    return-void

    .line 526
    :catchall_0
    move-exception p1

    .line 538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    const-string v0, "root synchronous caller required"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_8

    and-int/2addr p3, v2

    if-nez p3, :cond_8

    .line 161
    :try_start_0
    const-string p3, "dev.duo.foldanim1.CONTROL"

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x8

    const/16 v6, 0x12

    const/16 v7, 0xe

    const/16 v8, 0xb

    const/16 v9, 0x9

    if-eq p3, v5, :cond_2

    if-eq p3, v9, :cond_2

    const/16 v5, 0xa

    if-eq p3, v5, :cond_2

    if-eq p3, v8, :cond_2

    if-eq p3, v7, :cond_2

    const/16 v5, 0xf

    if-eq p3, v5, :cond_2

    if-ne p3, v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    invoke-direct {p0, p3, p1, p2, v3}, Ldev/duo/hookprobe/s;->a(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 182
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    throw p1

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_2
    :goto_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 186
    const-string v3, "currentActivityThread"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    const-string v10, "getSystemContext"

    invoke-virtual {v0, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-ne p3, v9, :cond_3

    .line 188
    const-string v3, "com.miui.personalassistant"

    goto :goto_1

    .line 189
    :cond_3
    const-string v3, "com.android.systemui"

    .line 188
    :goto_1
    nop

    .line 190
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v0, :cond_7

    if-ne p3, v7, :cond_4

    .line 191
    iget-object p3, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3, p1}, Ldev/duo/hookprobe/u;->c(Landroid/os/IBinder;)V

    goto :goto_2

    :cond_4
    if-ne p3, v6, :cond_5

    .line 192
    iget-object v3, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;JIJ)V

    goto :goto_2

    :cond_5
    if-ne p3, v8, :cond_6

    .line 193
    iget-object p3, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    invoke-virtual {p3, p1}, Ldev/duo/hookprobe/u;->a([F)V

    goto :goto_2

    .line 194
    :cond_6
    iget-object v0, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v0, p3, v3, v4, v5}, Ldev/duo/hookprobe/u;->a(IIJ)V

    .line 195
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 196
    :cond_7
    new-instance p1, Ljava/lang/SecurityException;

    const-string p3, "\u5c31\u7eea\u4fe1\u53f7 UID \u4e0d\u5339\u914d"

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_8
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 221
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CONTROL_REJECTED "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MiDuoFoldLease"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9

    .line 222
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataSize(I)V

    new-instance p3, Ljava/lang/IllegalStateException;

    const-string v0, "\u5f00\u5408\u63a7\u5236\u5931\u8d25"

    invoke-direct {p3, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    :cond_9
    :goto_3
    return v2
.end method

.method private synthetic b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Ldev/duo/hookprobe/s;->S:Ljava/lang/reflect/Field;

    invoke-interface {v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2
    invoke-interface {v2, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x3

    invoke-interface {v2, v9}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/4 v11, 0x4

    new-array v14, v11, [F

    aput v4, v14, v3

    aput v6, v14, v5

    aput v8, v14, v7

    aput v10, v14, v9

    .line 3
    aget v4, v14, v7

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, v1, Ldev/duo/hookprobe/s;->m:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v1, Ldev/duo/hookprobe/s;->m:Ljava/util/Map;

    invoke-virtual {v14}, [F->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 4
    :cond_0
    :goto_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v1, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v1, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v4}, Ldev/duo/hookprobe/x;->a()Z

    move-result v4

    if-nez v4, :cond_a

    .line 5
    invoke-interface {v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    move v15, v5

    goto :goto_1

    :cond_1
    move v15, v3

    :goto_1
    if-eqz v15, :cond_2

    .line 6
    invoke-interface {v2, v11}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v16, v5

    goto :goto_2

    :cond_2
    move/from16 v16, v3

    .line 7
    :goto_2
    invoke-direct {v1, v0}, Ldev/duo/hookprobe/s;->c(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 8
    iget-object v0, v1, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v0, v13}, Ldev/duo/hookprobe/x;->b(Ljava/lang/String;)Ldev/duo/hookprobe/x$b;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    .line 9
    iget-object v12, v1, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v17

    invoke-virtual/range {v12 .. v18}, Ldev/duo/hookprobe/x;->a(Ljava/lang/String;[FZZJ)Z

    move-result v5

    move/from16 v6, v16

    goto :goto_4

    :cond_4
    if-eqz v13, :cond_5

    .line 10
    iget-object v12, v1, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v17

    invoke-virtual/range {v12 .. v18}, Ldev/duo/hookprobe/x;->b(Ljava/lang/String;[FZZJ)Z

    move-result v4

    move/from16 v6, v16

    if-eqz v4, :cond_6

    goto :goto_4

    .line 9
    :cond_5
    move/from16 v6, v16

    .line 10
    :cond_6
    move v5, v3

    :goto_4
    if-eqz v5, :cond_9

    .line 12
    const-string v4, "MiDuoFoldLease"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HOLD_BACKLIGHT panel="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " requested="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v7, v14, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nits="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v14, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_7

    .line 13
    const-string v0, " leased"

    goto :goto_5

    .line 14
    :cond_7
    const-string v0, " guard"

    .line 13
    :goto_5
    nop

    .line 14
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v15, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " dim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 15
    :cond_8
    const-string v6, ""

    .line 14
    :goto_6
    nop

    .line 15
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    move v3, v5

    goto :goto_7

    .line 3
    :catchall_1
    move-exception v0

    .line 20
    iput-object v0, v1, Ldev/duo/hookprobe/s;->t:Ljava/lang/Throwable;

    const-string v1, "MiDuoFoldLease"

    const-string v4, "backlight hook failed; passthrough"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    const/4 v0, 0x0

    goto :goto_8

    .line 21
    :cond_b
    invoke-interface {v2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private b()V
    .locals 4

    .line 39
    iget-object v0, p0, Ldev/duo/hookprobe/s;->r:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/s;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Ldev/duo/hookprobe/s;->r:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/s;->i0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(Landroid/os/IBinder;)V
    .locals 4

    .line 22
    iget-object v0, p0, Ldev/duo/hookprobe/s;->n:Ljava/util/Map;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Ldev/duo/hookprobe/s;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 24
    :cond_0
    new-instance v1, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/s;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Ldev/duo/hookprobe/s;->n:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 35
    iget-object v2, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v2, p1}, Ldev/duo/hookprobe/x;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/hookprobe/x$b;

    const-string v3, "link_failed"

    invoke-direct {p0, v2, v3}, Ldev/duo/hookprobe/s;->a(Ldev/duo/hookprobe/x$b;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "\u79df\u7ea6\u6b7b\u4ea1\u76d1\u542c\u5931\u8d25"

    invoke-direct {p1, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 23
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private synthetic c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Ldev/duo/hookprobe/s;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v0}, Ldev/duo/hookprobe/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/s;->I:Ljava/lang/reflect/Method;

    invoke-interface {p1, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 5
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 6
    iget-object v0, p0, Ldev/duo/hookprobe/s;->L:Ljava/lang/reflect/Method;

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 7
    iget-object v4, p0, Ldev/duo/hookprobe/s;->W:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v1

    .line 8
    :goto_0
    iget-object v4, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ldev/duo/hookprobe/x;->a(Ljava/lang/String;ZZJ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 7
    :catchall_0
    move-exception v0

    .line 9
    const-string v4, "MiDuoFoldLease"

    const-string v5, "config hook failed; passthrough"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-ne v1, v3, :cond_2

    return-object v2

    .line 11
    :cond_2
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    :goto_2
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/s;->h0:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldev/duo/hookprobe/s;->h0:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c()V
    .locals 4

    .line 14
    iget-object v0, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldev/duo/hookprobe/u;->a(J)V

    .line 15
    iget-object v0, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldev/duo/hookprobe/x;->b(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/hookprobe/x$b;

    const-string v2, "expired"

    invoke-direct {p0, v1, v2}, Ldev/duo/hookprobe/s;->a(Ldev/duo/hookprobe/x$b;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-static {}, Ldev/duo/hookprobe/s;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldev/duo/hookprobe/x;->c(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/hookprobe/x$a;

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/s;->a(Ldev/duo/hookprobe/x$a;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Ldev/duo/hookprobe/s;->j:Ldev/duo/hookprobe/x;

    invoke-virtual {v0}, Ldev/duo/hookprobe/x;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/duo/hookprobe/s;->s:Ldev/duo/hookprobe/u;

    invoke-virtual {v0}, Ldev/duo/hookprobe/u;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    .line 18
    :cond_3
    :goto_2
    iget-object v0, p0, Ldev/duo/hookprobe/s;->r:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/s;->i0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/s;->n:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldev/duo/hookprobe/s;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    .line 3
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    .line 3
    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public onSystemServerStarting(Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/s;->q:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/hookprobe/s;->q:Z

    .line 4
    :try_start_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/s;->a(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/hookprobe/s;->o:Z

    .line 7
    iget-object v0, p0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "MiDuoFoldLease"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 8
    :try_start_1
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$HookHandle;->unhook()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    const-string v3, "Unhook failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Ldev/duo/hookprobe/s;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Ldev/duo/hookprobe/s;->r:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 12
    :cond_2
    const-string v0, "NOT_READY; hooks rolled back"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v2, v0, p1}, Lio/github/libxposed/api/XposedModule;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
