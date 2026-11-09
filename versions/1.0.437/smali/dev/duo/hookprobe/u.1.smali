.class final Ldev/duo/hookprobe/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/u$a;
    }
.end annotation


# static fields
.field static final a:I = 0xd02473

.field static final b:I = 0xd02474

.field static final c:I = 0xd02475


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:I

.field private M:I

.field private N:Z

.field private volatile O:Ljava/lang/Throwable;

.field private P:[F

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Ljava/lang/reflect/Method;

.field private final g:Ljava/lang/reflect/Method;

.field private final h:Ljava/lang/reflect/Method;

.field private final i:Ljava/lang/reflect/Method;

.field private final j:Ljava/lang/reflect/Method;

.field private final k:Ljava/lang/reflect/Method;

.field private final l:Ljava/lang/reflect/Field;

.field private final m:Ljava/lang/reflect/Field;

.field private final n:Ljava/lang/reflect/Field;

.field private final o:Ljava/lang/reflect/Field;

.field private final p:Ljava/lang/reflect/Field;

.field private final q:Ljava/lang/reflect/Field;

.field private final r:Ljava/lang/reflect/Field;

.field private final s:Ljava/lang/reflect/Field;

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private volatile w:Landroid/os/IBinder;

.field private x:Landroid/os/IBinder;

.field private y:J

.field private z:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$FQfL7HZqxVI9bTkO0w61d-8Q92c(Ldev/duo/hookprobe/u;Landroid/os/Handler;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/u;->a(Landroid/os/Handler;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WNCd2T21VS-QVyl_0VdrTz6DvrQ(Ldev/duo/hookprobe/u;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Ldev/duo/hookprobe/u;->a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_X0GOSGG8pU7VMnGOqmT7xQnv3s(Ldev/duo/hookprobe/u;Landroid/os/IBinder;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/u;->b(Landroid/os/IBinder;J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/u;->t:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/hookprobe/u;->C:I

    .line 18
    const-string v1, "\u5c1a\u672a\u8bf7\u6c42\u5206\u5c42"

    iput-object v1, p0, Ldev/duo/hookprobe/u;->J:Ljava/lang/String;

    .line 20
    iput v0, p0, Ldev/duo/hookprobe/u;->L:I

    .line 156
    const-string v0, "com.android.server.display.DisplayControl"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 157
    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createVirtualDisplay"

    invoke-static {v0, v3, v2}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/u;->d:Ljava/lang/reflect/Method;

    .line 158
    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "destroyVirtualDisplay"

    invoke-static {v0, v3, v2}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->e:Ljava/lang/reflect/Method;

    .line 159
    const-class v0, Landroid/view/SurfaceControl$Transaction;

    .line 160
    const-class v2, Landroid/os/IBinder;

    const-class v3, Landroid/view/Surface;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDisplaySurface"

    invoke-static {v0, v3, v2}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/u;->f:Ljava/lang/reflect/Method;

    .line 161
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3, v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setDisplayLayerStack"

    invoke-static {v0, v4, v3}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Ldev/duo/hookprobe/u;->g:Ljava/lang/reflect/Method;

    .line 162
    const-class v3, Landroid/os/IBinder;

    const-class v4, Landroid/graphics/Rect;

    const-class v5, Landroid/graphics/Rect;

    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setDisplayProjection"

    invoke-static {v0, v4, v3}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Ldev/duo/hookprobe/u;->h:Ljava/lang/reflect/Method;

    .line 163
    const-string v3, "com.android.server.wm.WindowState"

    invoke-static {v3, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 164
    const-string v4, "com.android.server.wm.WindowContainer"

    invoke-static {v4, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 165
    const-string v5, "com.android.server.wm.DisplayContent"

    invoke-static {v5, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 166
    filled-new-array {v0, v2}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "finishDrawing"

    invoke-static {v3, v2, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->i:Ljava/lang/reflect/Method;

    .line 167
    const-string v0, "mDisplayContent"

    invoke-static {v4, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->l:Ljava/lang/reflect/Field;

    .line 168
    new-array v0, v1, [Ljava/lang/Class;

    const-string v2, "getDisplayInfo"

    invoke-static {v5, v2, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->j:Ljava/lang/reflect/Method;

    .line 170
    const-string v0, "mAttrs"

    invoke-static {v3, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->m:Ljava/lang/reflect/Field;

    const-string v0, "mWmService"

    invoke-static {v4, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->n:Ljava/lang/reflect/Field;

    .line 171
    const-string v0, "com.android.server.wm.WindowManagerService"

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mAlwaysSeqId"

    invoke-static {v0, v2}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->o:Ljava/lang/reflect/Field;

    .line 172
    const-string v0, "mSyncState"

    invoke-static {v4, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->p:Ljava/lang/reflect/Field;

    const-string v0, "mBufferSeqId"

    invoke-static {v3, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->q:Ljava/lang/reflect/Field;

    .line 173
    const-string v0, "mPrepareSyncSeqId"

    invoke-static {v3, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->r:Ljava/lang/reflect/Field;

    .line 174
    new-array v0, v1, [Ljava/lang/Class;

    const-string v2, "getTask"

    invoke-static {v3, v2, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/u;->k:Ljava/lang/reflect/Method;

    const-string v0, "com.android.server.wm.Task"

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "mTaskId"

    invoke-static {p1, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/hookprobe/u;->s:Ljava/lang/reflect/Field;

    return-void
.end method

.method private a(IILjava/util/ArrayList;)Landroid/os/Bundle;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v1, Ldev/duo/hookprobe/u;->w:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    .line 9
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 13
    :try_start_0
    const-string v4, "dev.duo.foldanim1.LAYERS"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v0, v11, v2, v3, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    const-class v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 17
    const-string v2, "unavailable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 18
    const-string v2, "layers"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v12

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "mirror"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_0
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v2, "protocol"

    invoke-virtual {v13, v2, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "sidebar"

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "window"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 22
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 23
    const-string v2, "com.android.server.wm.WindowContainer"

    invoke-static {v2, v12, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 24
    const-string v3, "com.android.server.wm.WindowState"

    invoke-static {v3, v12, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 25
    new-array v4, v12, [Ljava/lang/Class;

    const-string v5, "isVisible"

    invoke-static {v3, v5, v4}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Class;

    const-string v6, "getDisplayId"

    invoke-static {v3, v6, v5}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 26
    const-class v6, Ljava/util/function/Predicate;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getWindow"

    invoke-static {v2, v7, v6}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 30
    const-string v7, "mOwnerUid"

    invoke-static {v3, v7}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move/from16 v16, v11

    const-string v11, "mActivityRecord"

    invoke-static {v3, v11}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 31
    const-string v14, "com.android.server.wm.ActivityRecord"

    invoke-static {v14, v12, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v14, "info"

    invoke-static {v0, v14}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 32
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v12, "mGlobalLock"

    invoke-static {v14, v12}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 33
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v17, v0

    const-string v0, "mRoot"

    invoke-static {v14, v0}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 34
    const-string v0, "home"

    const-string v1, "wallpaper"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v18

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    move-object v1, v3

    move-object v3, v4

    aget-object v4, v18, v0

    .line 35
    move/from16 v19, v0

    new-instance v0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;

    move-object/from16 v20, v11

    move-object v11, v2

    move-object v2, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v15

    move-object v15, v6

    move-object v6, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v20

    move/from16 v20, v19

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/u;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 46
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 48
    move-object/from16 v21, v2

    iget-object v2, v1, Ldev/duo/hookprobe/u;->j:Ljava/lang/reflect/Method;

    move-object/from16 v22, v3

    iget-object v3, v1, Ldev/duo/hookprobe/u;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "logicalWidth"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "logicalHeight"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v9, :cond_5

    .line 52
    const-string v3, "displayUniqueId"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v24, v6

    const-string v6, "uniqueId"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v13, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "rotation"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "rotation"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v13, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    iget-object v2, v1, Ldev/duo/hookprobe/u;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 55
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-nez v3, :cond_4

    .line 57
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v5, "home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    const-string v5, "getSurfaceControl"

    const/4 v6, 0x0

    new-array v1, v6, [Ljava/lang/Class;

    invoke-static {v11, v5, v1}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 60
    const-class v5, Landroid/view/SurfaceControl;

    const-string v6, "mirrorSurface"

    const-class v25, Landroid/view/SurfaceControl;

    move-object/from16 v26, v1

    filled-new-array/range {v25 .. v25}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array/range {v26 .. v26}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 61
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "mirror"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    :cond_1
    const-string v1, "frame"

    new-instance v5, Landroid/graphics/Rect;

    const-string v6, "getFrame"

    move-object/from16 v25, v7

    const/4 v7, 0x0

    new-array v10, v7, [Ljava/lang/Class;

    move-object/from16 v7, v19

    invoke-static {v7, v6, v10}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const/16 v1, 0x9

    new-array v1, v1, [F

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    const-string v6, "getTransformationMatrix"

    const-class v10, [F

    move-object/from16 v19, v11

    const-class v11, Landroid/graphics/Matrix;

    filled-new-array {v10, v11}, [Ljava/lang/Class;

    move-result-object v10

    invoke-static {v7, v6, v10}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v5, "matrix"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 67
    const-string v1, "width"

    const-string v5, "getSurfaceWidth"

    const/4 v6, 0x0

    new-array v10, v6, [Ljava/lang/Class;

    invoke-static {v7, v5, v10}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v1, "height"

    const-string v5, "getSurfaceHeight"

    const/4 v6, 0x0

    new-array v10, v6, [Ljava/lang/Class;

    invoke-static {v7, v5, v10}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v1, "package"

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "wallpaper"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v26, "mWallpaperX"

    const-string v27, "mWallpaperY"

    const-string v28, "mWallpaperXStep"

    const-string v29, "mWallpaperYStep"

    const-string v30, "mWallpaperScale"

    const-string v31, "mWallpaperZoomOut"

    filled-new-array/range {v26 .. v31}, [Ljava/lang/String;

    move-result-object v1

    .line 72
    const/4 v2, 0x6

    new-array v5, v2, [F

    move v10, v6

    :goto_2
    if-ge v10, v2, :cond_2

    .line 73
    aget-object v11, v1, v10

    invoke-static {v7, v11}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v11

    aput v11, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 74
    :cond_2
    const-string v1, "offsets"

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 75
    const-string v1, "displayOffset"

    const-string v2, "mWallpaperDisplayOffsetX"

    invoke-static {v7, v2}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v5, "mWallpaperDisplayOffsetY"

    invoke-static {v7, v5}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 77
    :cond_3
    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v20, 0x1

    move-object/from16 v10, p3

    move-object v3, v7

    move-object v6, v15

    move-object/from16 v15, v17

    move-object/from16 v2, v19

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v11, v23

    move-object/from16 v7, v24

    move-object/from16 v17, v25

    goto/16 :goto_1

    .line 78
    :cond_4
    new-instance v0, Ldev/duo/hookprobe/u$a;

    const-string v1, "\u684c\u9762\u5206\u5c42\u4e0d\u5bfc\u51fa\u5b89\u5168\u7a97\u53e3"

    invoke-direct {v0, v1}, Ldev/duo/hookprobe/u$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_5
    new-instance v0, Ldev/duo/hookprobe/u$a;

    const-string v1, "\u53d6\u5c42\u671f\u95f4\u663e\u793a\u5c3a\u5bf8\u6539\u53d8"

    invoke-direct {v0, v1}, Ldev/duo/hookprobe/u$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_6
    new-instance v0, Ldev/duo/hookprobe/u$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53ef\u89c1\u7a97\u53e3\u4e0d\u5b58\u5728 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldev/duo/hookprobe/u$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_7
    move-object/from16 v17, v15

    const-string v0, "user"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mCurrentUserId"

    invoke-static {v1, v2}, Ldev/duo/hookprobe/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "wallpaper"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    const-string v1, "android.app.IWallpaperManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 117
    const-string v2, "android.app.IWallpaperManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    const-string v2, "user"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 119
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getWallpaperIdForUser"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 120
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 121
    new-instance v6, Landroid/graphics/Point;

    const/16 v7, 0x490

    const/16 v10, 0x6b0

    invoke-direct {v6, v7, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Landroid/graphics/Point;

    const/16 v10, 0x93c

    const/16 v11, 0x688

    invoke-direct {v7, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    filled-new-array {v6, v7}, [Landroid/graphics/Point;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 122
    const-class v7, Ljava/util/List;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v3, v10, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 123
    const-string v7, "getBitmapCrops"

    invoke-virtual {v1, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v6, v7, v11, v10}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 124
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v5, v2, :cond_9

    .line 125
    const-string v2, "wallpaperId"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v2, "getWallpaperDimAmount"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "wallpaperDim"

    invoke-virtual {v13, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 127
    const-string v0, "bitmapCrops"

    if-nez v3, :cond_8

    move-object v14, v5

    goto :goto_3

    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 128
    const-string v0, "width"

    invoke-virtual {v13, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-virtual {v13, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v13

    .line 129
    :cond_9
    new-instance v0, Ldev/duo/hookprobe/u$a;

    const-string v1, "\u53d6\u5c42\u671f\u95f4\u58c1\u7eb8\u5df2\u66f4\u6362"

    invoke-direct {v0, v1}, Ldev/duo/hookprobe/u$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :catchall_0
    move-exception v0

    .line 130
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 131
    :cond_a
    new-instance v1, Ldev/duo/hookprobe/u$a;

    const-string v2, "unavailable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/u$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_b
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4fa7\u680f\u53d6\u5c42\u672a\u5904\u7406"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    :catchall_1
    move-exception v0

    .line 134
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 135
    :cond_c
    new-instance v0, Ldev/duo/hookprobe/u$a;

    const-string v1, "\u4fa7\u680f\u53d6\u5c42\u63a5\u53e3\u672a\u5c31\u7eea"

    invoke-direct {v0, v1}, Ldev/duo/hookprobe/u$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic a(Landroid/os/Handler;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    .line 149
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object v4, v1, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    iget-wide v5, v1, Ldev/duo/hookprobe/u;->y:J

    iget-object v7, v1, Ldev/duo/hookprobe/u;->z:Ljava/lang/String;

    iget v8, v1, Ldev/duo/hookprobe/u;->A:I

    iget v9, v1, Ldev/duo/hookprobe/u;->B:I

    iget-boolean v10, v1, Ldev/duo/hookprobe/u;->H:Z

    iget v11, v1, Ldev/duo/hookprobe/u;->C:I

    .line 151
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    .line 153
    :try_start_2
    invoke-interface {v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v12

    .line 154
    iget-object v13, v1, Ldev/duo/hookprobe/u;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v13, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager$LayoutParams;

    .line 155
    const/4 v14, 0x1

    invoke-interface {v2, v14}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 156
    iget-object v0, v1, Ldev/duo/hookprobe/u;->o:Ljava/lang/reflect/Field;

    iget-object v14, v1, Ldev/duo/hookprobe/u;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, v1, Ldev/duo/hookprobe/u;->p:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/4 v14, 0x1

    if-ne v0, v14, :cond_1

    iget-object v0, v1, Ldev/duo/hookprobe/u;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-le v0, v15, :cond_1

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, v1, Ldev/duo/hookprobe/u;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v1, Ldev/duo/hookprobe/u;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-le v0, v15, :cond_1

    .line 157
    :goto_0
    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 158
    :goto_1
    if-ltz v11, :cond_2

    .line 162
    iget v15, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    if-ne v15, v0, :cond_2

    iget-object v15, v1, Ldev/duo/hookprobe/u;->k:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {v15, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 163
    iget-object v15, v1, Ldev/duo/hookprobe/u;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v11, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v14, :cond_9

    if-eqz v10, :cond_4

    .line 164
    const-string v11, "com.android.systemui"

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    if-eqz v0, :cond_9

    .line 165
    :cond_5
    iget-object v11, v1, Ldev/duo/hookprobe/u;->j:Ljava/lang/reflect/Method;

    iget-object v13, v1, Ldev/duo/hookprobe/u;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v13, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 166
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "uniqueId"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 167
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v12, "logicalWidth"

    invoke-virtual {v7, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-ne v8, v7, :cond_6

    .line 168
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v12, "logicalHeight"

    invoke-virtual {v7, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-eq v9, v7, :cond_8

    :cond_6
    if-nez v10, :cond_7

    if-eqz v0, :cond_9

    .line 169
    :cond_7
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "logicalWidth"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-ne v9, v0, :cond_9

    .line 170
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "logicalHeight"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-ne v8, v0, :cond_9

    .line 172
    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda1;

    move-object/from16 v7, p1

    invoke-direct {v0, v7}, Ldev/duo/fold/g$b$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    new-instance v7, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v4, v5, v6}, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/u;Landroid/os/IBinder;J)V

    invoke-virtual {v3, v0, v7}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 173
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    :catchall_1
    move-exception v0

    .line 199
    iput-object v0, v1, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    .line 200
    const-string v1, "MiDuoFold"

    const-string v3, "\u76ee\u6807\u63d0\u4ea4\u76d1\u542c\u5931\u8d25"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :cond_9
    :goto_4
    invoke-interface {v2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 6
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

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method

.method private a(Landroid/os/IBinder;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v1, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 348
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    move-object v9, v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v12, -0x1

    if-eq v3, v12, :cond_2

    if-eq v3, v0, :cond_2

    :cond_1
    :goto_1
    move v0, v11

    goto :goto_0

    .line 350
    :cond_2
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/ArrayList;

    .line 351
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v14, :cond_4

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v0, 0x1

    check-cast v15, Landroid/view/SurfaceControl;

    .line 353
    :try_start_0
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :try_start_1
    invoke-virtual {v7, v15, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 356
    invoke-virtual {v15}, Landroid/view/SurfaceControl;->release()V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v15, v0

    .line 357
    :try_start_3
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v15, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    if-nez v9, :cond_3

    move-object v9, v0

    move/from16 v0, v16

    goto :goto_2

    .line 361
    :cond_3
    invoke-virtual {v9, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 351
    :goto_4
    move/from16 v0, v16

    goto :goto_2

    .line 363
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 365
    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-nez v9, :cond_7

    :goto_5
    return-void

    .line 366
    :cond_7
    throw v9
.end method

.method private declared-synchronized a(Landroid/os/IBinder;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 335
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 338
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eq v1, p3, :cond_3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :cond_3
    :goto_0
    :try_start_2
    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 340
    :try_start_3
    iput-object p1, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    throw p1

    .line 333
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Landroid/os/IBinder;J)V
    .locals 2

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    if-ne v0, p1, :cond_1

    iget-wide v0, p0, Ldev/duo/hookprobe/u;->y:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/duo/hookprobe/u;->D:Z

    .line 205
    invoke-direct {p0}, Ldev/duo/hookprobe/u;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Landroid/os/IBinder;JZIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Ldev/duo/hookprobe/u;->w:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 222
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    :try_start_0
    const-string v2, "dev.duo.foldanim1.LAYERS"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 234
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5c31\u7eea\u8ba2\u9605\u672a\u5904\u7406"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_2
    :goto_0
    if-nez p4, :cond_3

    return-void

    .line 236
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5c31\u7eea\u63d0\u4f9b\u8005\u4e0d\u53ef\u7528"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 2

    .line 136
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p1, p7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "home"

    .line 138
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "com.miui.home"

    iget-object p3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne p1, p2, :cond_1

    .line 140
    invoke-virtual {p4, p7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p5, p7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p4, p7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 142
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x7dd

    if-ne p1, p3, :cond_1

    :goto_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 141
    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "\u53ea\u8bfb\u7a97\u53e3\u5339\u914d\u5931\u8d25"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private b(ILandroid/os/IBinder;Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    const/16 v4, 0x11

    const/4 v5, 0x6

    if-eqz v0, :cond_1

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v1, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    const-string v2, "\u5b9e\u65f6\u6e90\u5931\u8d25"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v0, :cond_a

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2

    move v12, v7

    goto :goto_1

    :cond_2
    move v12, v8

    .line 10
    :goto_1
    sget-object v13, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p3

    invoke-interface {v13, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Surface;

    if-ltz v0, :cond_9

    const/4 v14, 0x2

    if-gt v0, v14, :cond_9

    if-lez v9, :cond_9

    if-lez v10, :cond_9

    const/16 v15, 0x1000

    if-gt v9, v15, :cond_9

    if-gt v10, v15, :cond_9

    if-nez v0, :cond_3

    const v15, 0xd02474

    goto :goto_2

    :cond_3
    if-ne v0, v7, :cond_4

    const v15, 0xd02473

    goto :goto_2

    :cond_4
    const v15, 0xd02475

    :goto_2
    if-ne v11, v15, :cond_9

    .line 14
    :try_start_0
    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 16
    iget-object v15, v1, Ldev/duo/hookprobe/u;->t:Ljava/util/Map;

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    if-nez v15, :cond_5

    .line 17
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Ldev/duo/hookprobe/u;->t:Ljava/util/Map;

    invoke-interface {v4, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 19
    iget-object v4, v1, Ldev/duo/hookprobe/u;->d:Ljava/lang/reflect/Method;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MiDuoFold-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    if-eqz v4, :cond_7

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    :try_start_1
    iget-object v6, v1, Ldev/duo/hookprobe/u;->f:Ljava/lang/reflect/Method;

    filled-new-array {v4, v13}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v6, v1, Ldev/duo/hookprobe/u;->g:Ljava/lang/reflect/Method;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v6, v1, Ldev/duo/hookprobe/u;->h:Ljava/lang/reflect/Method;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v4, v7, v11, v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-ne v0, v14, :cond_6

    .line 27
    const/4 v4, 0x1

    iput-boolean v4, v1, Ldev/duo/hookprobe/u;->K:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_6
    :try_start_2
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 29
    invoke-virtual {v13}, Landroid/view/Surface;->release()V

    goto/16 :goto_10

    .line 27
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 30
    :try_start_3
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    .line 31
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5b9e\u65f6\u663e\u793a\u521b\u5efa\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u8f93\u5165\u69fd\u5df2\u4f7f\u7528"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5b9e\u65f6\u6e90\u53c2\u6570\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 17
    :catchall_2
    move-exception v0

    .line 47
    invoke-virtual {v13}, Landroid/view/Surface;->release()V

    throw v0

    :cond_a
    move-object/from16 v14, p3

    const/4 v4, -0x1

    const/4 v5, 0x6

    if-ne v2, v5, :cond_17

    .line 49
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 51
    iget-object v0, v1, Ldev/duo/hookprobe/u;->t:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_e

    .line 53
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object v11, v6

    move v0, v8

    :goto_4
    if-ge v0, v10, :cond_d

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v0, 0x1

    check-cast v12, Ljava/lang/Integer;

    if-eq v5, v4, :cond_b

    .line 54
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_b

    goto :goto_5

    .line 55
    :cond_b
    :try_start_5
    iget-object v0, v1, Ldev/duo/hookprobe/u;->e:Ljava/lang/reflect/Method;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    if-nez v11, :cond_c

    move-object v11, v0

    move v0, v13

    goto :goto_4

    .line 56
    :cond_c
    invoke-virtual {v11, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    :goto_5
    move v0, v13

    goto :goto_4

    .line 58
    :cond_d
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Ldev/duo/hookprobe/u;->t:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 51
    :cond_e
    move-object v11, v6

    .line 60
    :cond_f
    :goto_6
    :try_start_6
    invoke-direct {v1, v3, v5}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    if-nez v11, :cond_10

    move-object v11, v0

    goto :goto_7

    .line 61
    :cond_10
    invoke-virtual {v11, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    if-ne v5, v4, :cond_15

    .line 62
    iget-object v0, v1, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    if-ne v0, v3, :cond_15

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READY_MISSING generation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Ldev/duo/hookprobe/u;->y:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " window="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Ldev/duo/hookprobe/u;->D:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " content="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Ldev/duo/hookprobe/u;->E:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " minus="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Ldev/duo/hookprobe/u;->F:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Ldev/duo/hookprobe/u;->G:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " permit="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Ldev/duo/hookprobe/u;->I:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " geometry="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    iget-object v4, v1, Ldev/duo/hookprobe/u;->P:[F

    if-nez v4, :cond_11

    const-string v4, "\u5750\u6807\u672a\u5230"

    goto :goto_9

    .line 67
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Ldev/duo/hookprobe/u;->P:[F

    aget v7, v5, v8

    iget v9, v1, Ldev/duo/hookprobe/u;->A:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-nez v7, :cond_12

    const/16 v16, 0x1

    aget v5, v5, v16

    iget v7, v1, Ldev/duo/hookprobe/u;->B:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-nez v5, :cond_12

    const-string v5, "\u5339\u914d:"

    goto :goto_8

    :cond_12
    const-string v5, "\u8fc7\u6e21:"

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Ldev/duo/hookprobe/u;->P:[F

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Ldev/duo/hookprobe/u;->P:[F

    const/16 v16, 0x1

    aget v5, v5, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " layers="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Ldev/duo/hookprobe/u;->J:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " input="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    iget-boolean v4, v1, Ldev/duo/hookprobe/u;->K:Z

    if-eqz v4, :cond_13

    const-string v4, "\u672c\u4ee3\u66fe\u5efa\u8f93\u5165\uff0cbuffer \u7531\u5f15\u64ce\u6838\u5bf9"

    goto :goto_a

    :cond_13
    const-string v4, "\u672a\u5efa\u76ee\u6807\u8f93\u5165"

    :goto_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " last="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    iget v4, v1, Ldev/duo/hookprobe/u;->L:I

    if-gez v4, :cond_14

    const-string v4, "none"

    goto :goto_b

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Ldev/duo/hookprobe/u;->L:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v4, "MiDuoFoldLease"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object v6, v1, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    :cond_15
    if-nez v11, :cond_16

    goto/16 :goto_10

    .line 78
    :cond_16
    iput-object v11, v1, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    iget-object v0, v1, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v11

    :cond_17
    const/4 v0, 0x7

    if-ne v2, v0, :cond_1f

    .line 80
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 82
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_18

    const/4 v10, 0x1

    goto :goto_c

    :cond_18
    move v10, v8

    .line 83
    :goto_c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v10, :cond_1a

    if-gez v11, :cond_19

    goto :goto_d

    .line 84
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u9501\u5c4f\u4e0d\u80fd\u6309\u5e94\u7528\u653e\u884c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1a
    :goto_d
    iget-object v12, v1, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    if-eqz v12, :cond_1c

    if-ne v12, v3, :cond_1b

    goto :goto_e

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5df2\u6709\u5f00\u5408\u4f1a\u8bdd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1c
    :goto_e
    const-string v12, "local:4639175402683733248"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e

    const-string v12, "local:4639175068132267009"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    goto :goto_f

    .line 87
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u76ee\u6807\u9762\u677f\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1e
    :goto_f
    iput-object v3, v1, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    iput-wide v5, v1, Ldev/duo/hookprobe/u;->y:J

    iput-object v0, v1, Ldev/duo/hookprobe/u;->z:Ljava/lang/String;

    iput v7, v1, Ldev/duo/hookprobe/u;->A:I

    iput v9, v1, Ldev/duo/hookprobe/u;->B:I

    .line 89
    iput-boolean v10, v1, Ldev/duo/hookprobe/u;->H:Z

    iput v11, v1, Ldev/duo/hookprobe/u;->C:I

    .line 90
    iput-boolean v8, v1, Ldev/duo/hookprobe/u;->K:Z

    iput-boolean v8, v1, Ldev/duo/hookprobe/u;->I:Z

    iput-boolean v8, v1, Ldev/duo/hookprobe/u;->F:Z

    iput-boolean v8, v1, Ldev/duo/hookprobe/u;->E:Z

    iput-boolean v8, v1, Ldev/duo/hookprobe/u;->D:Z

    .line 91
    iget-boolean v0, v1, Ldev/duo/hookprobe/u;->N:Z

    iput-boolean v0, v1, Ldev/duo/hookprobe/u;->G:Z

    iput v4, v1, Ldev/duo/hookprobe/u;->L:I

    const-string v0, "\u5c1a\u672a\u8bf7\u6c42\u5206\u5c42"

    iput-object v0, v1, Ldev/duo/hookprobe/u;->J:Ljava/lang/String;

    goto :goto_10

    :cond_1f
    const/16 v4, 0x11

    if-ne v2, v4, :cond_23

    .line 93
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 94
    iget-object v0, v1, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    if-ne v0, v3, :cond_20

    iget-wide v7, v1, Ldev/duo/hookprobe/u;->y:J

    cmp-long v0, v7, v4

    if-nez v0, :cond_20

    iput-object v6, v1, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    :cond_20
    :goto_10
    const/4 v5, 0x6

    if-eq v2, v5, :cond_21

    const/16 v4, 0x11

    if-ne v2, v4, :cond_22

    .line 96
    :cond_21
    invoke-virtual {v1, v3}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 97
    :cond_22
    iget-object v0, v1, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v4, 0x5dc

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_11
    invoke-virtual/range {p4 .. p4}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p4

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 99
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672a\u77e5\u5b9e\u65f6\u6e90\u547d\u4ee4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic b(Landroid/os/IBinder;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;J)V

    return-void
.end method

.method private c()V
    .locals 5

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget v0, p0, Ldev/duo/hookprobe/u;->C:I

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/hookprobe/u;->D:Z

    if-eqz v0, :cond_4

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Ldev/duo/hookprobe/u;->w:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/duo/hookprobe/u;->w:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ldev/duo/hookprobe/u;->H:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ldev/duo/hookprobe/u;->D:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Ldev/duo/hookprobe/u;->E:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ldev/duo/hookprobe/u;->F:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/hookprobe/u;->G:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 7
    :goto_2
    iget-boolean v2, p0, Ldev/duo/hookprobe/u;->I:Z

    if-ne v0, v2, :cond_5

    goto :goto_5

    .line 8
    :cond_5
    iput-boolean v0, p0, Ldev/duo/hookprobe/u;->I:Z

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 11
    :try_start_0
    const-string v3, "dev.duo.foldanim1.FRAME"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    iget-wide v3, p0, Ldev/duo/hookprobe/u;->y:J

    invoke-virtual {v2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 15
    iget-object v3, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    :goto_3
    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 22
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u76ee\u6807\u5185\u5bb9\u901a\u77e5\u672a\u5904\u7406"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 25
    :try_start_2
    iget-object v1, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "MiDuoFold"

    if-nez v1, :cond_8

    :try_start_3
    const-string v1, "\u76ee\u6807\u5185\u5bb9\u901a\u77e5\u65f6\u5f15\u64ce\u5df2\u9000\u51fa"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 26
    :cond_8
    iput-object v0, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    const-string v1, "\u76ee\u6807\u5185\u5bb9\u901a\u77e5\u5931\u8d25"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :goto_4
    nop

    .line 27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_5
    return-void

    .line 28
    :goto_6
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private d()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/u;->w:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 5
    :try_start_0
    const-string v4, "dev.duo.foldanim1.LAYERS"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    const/4 v4, 0x3

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v1

    .line 10
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    move v1, v4

    .line 12
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :try_start_2
    const-string v4, "MiDuoFold"

    const-string v5, "\u89c2\u5bdf\u72b6\u6001\u67e5\u8be2\u5931\u8d25"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v1

    .line 15
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method declared-synchronized a(IIJ)V
    .locals 2

    monitor-enter p0

    .line 206
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long p3, p3, v0

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    const/16 p3, 0xf

    if-ne p1, p3, :cond_1

    .line 207
    iput p2, p0, Ldev/duo/hookprobe/u;->M:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/16 p3, 0x9

    if-ne p1, p3, :cond_3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 209
    :goto_0
    :try_start_1
    iput-boolean p1, p0, Ldev/duo/hookprobe/u;->N:Z

    .line 210
    iget-object p2, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    if-eqz p2, :cond_3

    iput-boolean p1, p0, Ldev/duo/hookprobe/u;->G:Z

    invoke-direct {p0}, Ldev/duo/hookprobe/u;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method a(ILandroid/os/IBinder;Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p4

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne p1, v3, :cond_d

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    if-ne v3, v6, :cond_c

    :cond_0
    const/16 v7, 0x490

    if-ne v0, v7, :cond_1

    const/16 v7, 0x6b0

    if-eq v5, v7, :cond_2

    :cond_1
    const/16 v7, 0x93c

    if-ne v0, v7, :cond_c

    const/16 v7, 0x688

    if-ne v5, v7, :cond_c

    .line 240
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v8, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    if-nez v8, :cond_b

    .line 243
    iget-object v8, p0, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_4

    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5206\u5c42\u69fd\u5df2\u4f7f\u7528"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v3, v6, :cond_5

    .line 245
    const-string v8, "\u5df2\u8bf7\u6c42\u5206\u5c42"

    iput-object v8, p0, Ldev/duo/hookprobe/u;->J:Ljava/lang/String;

    .line 246
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 249
    :try_start_1
    invoke-direct {p0, v0, v5, v7}, Ldev/duo/hookprobe/u;->a(IILjava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 250
    monitor-enter p0
    :try_end_1
    .catch Ldev/duo/hookprobe/u$a; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :try_start_2
    iget-object v5, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    if-nez v5, :cond_9

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 252
    iget-object v5, p0, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_6

    .line 253
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 254
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    invoke-interface {v0, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x5dc

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v6, :cond_7

    .line 259
    const-string v0, "\u5206\u5c42\u5df2\u5bfc\u51fa"

    iput-object v0, p0, Ldev/duo/hookprobe/u;->J:Ljava/lang/String;

    .line 260
    :cond_7
    monitor-exit p0

    return-void

    .line 261
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "\u5206\u5c42\u69fd\u5df2\u4f7f\u7528"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "\u5206\u5c42\u4f1a\u8bdd\u5df2\u5931\u6548"

    iget-object v8, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    invoke-direct {v0, v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 253
    :catchall_0
    move-exception v0

    .line 271
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ldev/duo/hookprobe/u$a; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 278
    :try_start_4
    invoke-direct {p0, p2, v3, v7}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;ILjava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 279
    :goto_1
    throw v1

    .line 271
    :catch_2
    move-exception v0

    .line 280
    invoke-direct {p0, p2, v3, v7}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;ILjava/util/ArrayList;)V

    .line 281
    monitor-enter p0

    if-ne v3, v6, :cond_a

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5206\u5c42\u6761\u4ef6\u672a\u5230: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/u;->J:Ljava/lang/String;

    :cond_a
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "protocol"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "unavailable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 281
    :catchall_1
    move-exception v0

    .line 284
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 285
    :cond_b
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5b9e\u65f6\u6e90\u5931\u8d25"

    iget-object v2, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 244
    :catchall_2
    move-exception v0

    .line 289
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 290
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5206\u5c42\u8bf7\u6c42\u5c3a\u5bf8/\u69fd\u4f4d\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_d
    monitor-enter p0

    .line 325
    :try_start_8
    iget-wide v5, p0, Ldev/duo/hookprobe/u;->y:J

    iget v3, p0, Ldev/duo/hookprobe/u;->A:I

    iget v7, p0, Ldev/duo/hookprobe/u;->B:I

    iget-boolean v8, p0, Ldev/duo/hookprobe/u;->H:Z

    iget v9, p0, Ldev/duo/hookprobe/u;->C:I

    const/4 v10, 0x0

    if-ltz v9, :cond_e

    move v9, v4

    goto :goto_2

    :cond_e
    move v9, v10

    .line 326
    :goto_2
    invoke-direct/range {p0 .. p4}, Ldev/duo/hookprobe/u;->b(ILandroid/os/IBinder;Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 327
    iget-object v1, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    move-wide v11, v5

    if-ne v1, p2, :cond_f

    move v5, v4

    goto :goto_3

    :cond_f
    move v5, v10

    :goto_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_11

    .line 328
    iget-wide v6, p0, Ldev/duo/hookprobe/u;->y:J

    iget v3, p0, Ldev/duo/hookprobe/u;->A:I

    iget v8, p0, Ldev/duo/hookprobe/u;->B:I

    iget-boolean v9, p0, Ldev/duo/hookprobe/u;->H:Z

    iget v11, p0, Ldev/duo/hookprobe/u;->C:I

    if-ltz v11, :cond_10

    move-wide v11, v6

    move v7, v8

    move v8, v9

    goto :goto_4

    :cond_10
    move-wide v11, v6

    move v7, v8

    move v8, v9

    move v4, v10

    :goto_4
    move v6, v3

    goto :goto_5

    .line 327
    :cond_11
    move v6, v3

    move v4, v9

    .line 329
    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v4, :cond_13

    if-eq p1, v1, :cond_12

    if-nez v5, :cond_13

    const/4 v1, 0x6

    if-eq p1, v1, :cond_12

    const/16 v1, 0x11

    if-ne p1, v1, :cond_13

    .line 332
    :cond_12
    move-object v1, p0

    move-object v2, p2

    move-wide v3, v11

    invoke-direct/range {v1 .. v8}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;JZIIZ)V

    :cond_13
    :goto_6
    return-void

    .line 328
    :catchall_3
    move-exception v0

    .line 333
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method declared-synchronized a(J)V
    .locals 6

    monitor-enter p0

    .line 342
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/os/IBinder;

    .line 343
    iget-object v4, p0, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    invoke-virtual {p0, v3}, Ldev/duo/hookprobe/u;->d(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Landroid/os/IBinder;JIJ)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_7

    .line 211
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    if-ne v0, p1, :cond_7

    iget-wide v0, p0, Ldev/duo/hookprobe/u;->y:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_7

    iget-object p1, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    if-nez p1, :cond_7

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    cmp-long p1, p5, p1

    if-lez p1, :cond_0

    goto :goto_4

    .line 213
    :cond_0
    iput p4, p0, Ldev/duo/hookprobe/u;->L:I

    .line 214
    iget-object p1, p0, Ldev/duo/hookprobe/u;->z:Ljava/lang/String;

    const-string p2, "local:4639175402683733248"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 215
    iget-boolean p2, p0, Ldev/duo/hookprobe/u;->H:Z

    const/16 p3, 0x48

    const/4 p5, 0x1

    if-eqz p2, :cond_1

    move p6, p5

    goto :goto_0

    :cond_1
    move p6, p3

    :goto_0
    and-int/2addr p6, p4

    if-eqz p2, :cond_2

    move p3, p5

    :cond_2
    const/4 v0, 0x0

    if-ne p6, p3, :cond_4

    and-int/lit8 p3, p4, 0x10

    if-eqz p3, :cond_3

    move p3, p5

    goto :goto_1

    :cond_3
    move p3, v0

    :goto_1
    if-ne p3, p1, :cond_4

    move p3, p5

    goto :goto_2

    :cond_4
    move p3, v0

    :goto_2
    iput-boolean p3, p0, Ldev/duo/hookprobe/u;->E:Z

    if-eqz p2, :cond_5

    .line 218
    iput-boolean p3, p0, Ldev/duo/hookprobe/u;->D:Z

    :cond_5
    if-nez p2, :cond_6

    if-eqz p1, :cond_6

    and-int/lit8 p1, p4, 0x20

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move p5, v0

    .line 219
    :goto_3
    iput-boolean p5, p0, Ldev/duo/hookprobe/u;->F:Z

    .line 220
    invoke-direct {p0}, Ldev/duo/hookprobe/u;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Landroid/os/Parcel;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->writeNoException()V

    iget-object v0, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/u;->P:[F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/libxposed/api/XposedModule;",
            "Ljava/util/List<",
            "Lio/github/libxposed/api/XposedInterface$HookHandle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Ldev/duo/hookprobe/u;->i:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance v0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3}, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/u;Landroid/os/Handler;)V

    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method declared-synchronized a([F)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4fa7\u680f\u5750\u6807\u65e0\u6548"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iput-object p1, p0, Ldev/duo/hookprobe/u;->P:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4fa7\u680f\u5750\u6807\u683c\u5f0f\u9519\u8bef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 341
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized a(Landroid/os/IBinder;)Z
    .locals 1

    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/hookprobe/u;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 344
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b(Landroid/os/IBinder;)V
    .locals 5

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x5dc

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b(Landroid/os/Parcel;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ldev/duo/hookprobe/u;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ldev/duo/hookprobe/u;->M:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/u;->N:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    iget v1, p0, Ldev/duo/hookprobe/u;->M:I

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b()Z
    .locals 1

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized c(Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4fa7\u680f\u63a5\u53e3\u4e0d\u53ef\u7528"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput-object p1, p0, Ldev/duo/hookprobe/u;->w:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput p1, p0, Ldev/duo/hookprobe/u;->M:I

    iput-boolean p1, p0, Ldev/duo/hookprobe/u;->N:Z

    .line 3
    iput-boolean p1, p0, Ldev/duo/hookprobe/u;->E:Z

    invoke-direct {p0}, Ldev/duo/hookprobe/u;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized d(Landroid/os/IBinder;)V
    .locals 11

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/u;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Ldev/duo/hookprobe/u;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 18
    iget-object v0, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 19
    iput-object v2, p0, Ldev/duo/hookprobe/u;->x:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iget-wide v5, p0, Ldev/duo/hookprobe/u;->y:J

    iget v8, p0, Ldev/duo/hookprobe/u;->A:I

    iget v9, p0, Ldev/duo/hookprobe/u;->B:I

    iget-boolean v10, p0, Ldev/duo/hookprobe/u;->H:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    :try_start_2
    invoke-direct/range {v3 .. v10}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;JZIIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    :goto_0
    move-object p1, v0

    .line 21
    :try_start_3
    iput-object p1, v3, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    const-string v0, "MiDuoFold"

    const-string v5, "\u7ed3\u675f\u76ee\u6807\u8ba2\u9605\u5931\u8d25"

    invoke-static {v0, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 18
    :cond_0
    move-object v3, p0

    move-object v4, p1

    .line 21
    :goto_1
    nop

    .line 23
    const/4 p1, -0x1

    :try_start_4
    invoke-direct {p0, v4, p1}, Ldev/duo/hookprobe/u;->a(Landroid/os/IBinder;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p1, v0

    :try_start_5
    iput-object p1, v3, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    const-string v0, "MiDuoFold"

    const-string v5, "\u4f1a\u8bdd\u955c\u50cf\u91ca\u653e\u5931\u8d25"

    invoke-static {v0, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez v1, :cond_1

    goto :goto_5

    .line 25
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    check-cast v6, Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 26
    :try_start_6
    iget-object v0, v3, Ldev/duo/hookprobe/u;->e:Ljava/lang/reflect/Method;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    .line 27
    :try_start_7
    iput-object v0, v3, Ldev/duo/hookprobe/u;->O:Ljava/lang/Throwable;

    const-string v6, "MiDuoFold"

    const-string v8, "\u6b7b\u4ea1\u4f1a\u8bdd\u5b9e\u65f6\u6e90\u91ca\u653e\u5931\u8d25"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :goto_4
    move v0, v7

    goto :goto_3

    .line 29
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v3, Ldev/duo/hookprobe/u;->t:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :goto_5
    monitor-exit p0

    return-void

    .line 15
    :catchall_0
    move-exception v0

    move-object v3, p0

    :goto_6
    move-object p1, v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_6
.end method
