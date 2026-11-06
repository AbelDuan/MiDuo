.class final Ldev/duo/workspaceprobe/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceShell$Events;
.implements Ldev/duo/taskcore/WorkspaceHost$Actions;


# static fields
.field private static final a:Ljava/lang/String; = "DuoWorkbench"

.field private static final b:Ljava/lang/String; = "dev.duo.hookprobe"

.field private static final c:I = 0x8c

.field private static final d:I = 0x12c

.field private static final e:I = 0xdc

.field private static final f:I = 0xc8

.field private static final g:I = 0x1000001

.field private static final h:I = 0x7d0

.field private static final i:J = 0x1388L

.field private static final j:I = 0x3c

.field static final k:I = 0x20

.field static final l:I = 0x78

.field private static final m:I = 0x1000002

.field private static final n:I = 0x3c

.field private static final o:I = 0x1cc

.field private static final p:J = 0x140L

.field private static final q:J = 0xb4L

.field private static final r:I = 0xc

.field private static final s:F = 160.0f

.field private static final t:I = 0xa


# instance fields
.field private A:J

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:F

.field private G:F

.field private H:[I

.field private I:I

.field private J:Ljava/lang/Runnable;

.field private K:Ldev/duo/workspaceprobe/b$R;

.field private L:Ldev/duo/workspaceprobe/b$R;

.field private M:Ldev/duo/workspaceprobe/m;

.field private N:Landroid/animation/ValueAnimator;

.field private O:Z

.field private P:Z

.field private Q:Ldev/duo/workspaceprobe/b$R;

.field private R:Ldev/duo/workspaceprobe/b$R;

.field private S:Ljava/lang/Thread;

.field private T:I

.field private U:Landroid/os/IBinder;

.field private V:I

.field private W:Landroid/graphics/Rect;

.field private final X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/concurrent/ExecutorService;

.field private Z:Ldev/duo/workspaceprobe/j;

.field private a0:F

.field private b0:F

.field private c0:Z

.field private d0:Z

.field private e0:Z

.field private f0:Z

.field private volatile g0:Ljava/lang/Object;

.field private h0:Ljava/lang/Object;

.field private i0:Ljava/lang/reflect/Method;

.field private j0:I

.field private k0:I

.field private l0:I

.field private m0:Ldev/duo/workspaceprobe/i;

.field private n0:Landroid/animation/ValueAnimator;

.field private final u:Ldev/duo/workspaceprobe/b;

.field private final v:Ldev/duo/workspaceprobe/p;

.field private w:Ldev/duo/taskcore/WorkspaceShell;

.field private volatile x:Ldev/duo/taskcore/WorkspaceSession;

.field private y:Ldev/duo/taskcore/WorkspaceHost;

.field private z:Ldev/duo/workspaceprobe/o;


# direct methods
.method public static synthetic $r8$lambda$-2ryn2fr9ZfwT3wNN6qKDu3M7vc(JILjava/lang/Object;ZLdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ldev/duo/workspaceprobe/n;->a(JILjava/lang/Object;ZLdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-OCS3qEDaugwcBcar-YXT8joGbI(Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-l3qj2srvlWrI2iE0SBn9A7OpoU(Ldev/duo/workspaceprobe/n;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0sBzweoxQqx-2bRgFX1xrrPyN7M(Ldev/duo/workspaceprobe/n;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1OPF8DkgMWji2sTOHTcU9asxO8g(ZZLdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(ZZLdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2q053yjYZtWDFbqeYdIb5WyHGmU(Ldev/duo/workspaceprobe/n;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5We7aSDu3jjK2y4jZnpFKdp5uL4(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->f(Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5isIbtdcSJaXxylwq0atmyAU-D4(Ldev/duo/workspaceprobe/n;ILdev/duo/workspaceprobe/i;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/n;->a(ILdev/duo/workspaceprobe/i;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6-Bgy2BeII72D1Ozpd5O2lHuoVs(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceSession$State;ZLjava/lang/String;[Ldev/duo/taskcore/TaskBinding;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceSession$State;ZLjava/lang/String;[Ldev/duo/taskcore/TaskBinding;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$63HlSvnAg__yPxRqma8ypkquYIc(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->e(Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6C18iKt6Z1LC_2zRNEG0J2aRzbY(Ldev/duo/taskcore/SystemGate;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/SystemGate;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6falM0xx69hyr-QTiKxrkF8Vz5Y(Ldev/duo/taskcore/WorkspaceSession;[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/WorkspaceSession;[I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$73oqJLy8aHTb9WLGTkWIEMu4Sy0(Ldev/duo/workspaceprobe/l;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/l;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7dX2uqy0eOwLLhdH1wB3k4YR-r8(Ldev/duo/workspaceprobe/n;ILdev/duo/workspaceprobe/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(ILdev/duo/workspaceprobe/i;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7qQ54vr7xaTtsw7Bx-6nh1f22_I(Ldev/duo/workspaceprobe/n;ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->b(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Exxf25pYL6yy2uY9zS4mfKqcUk(Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->b(Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8WAIe6E6dGgp5wBkPsSw8ckiE9c(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/WorkspaceSession;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/WorkspaceSession;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$98PjRsjy0bEh67y38QRDKBahQ1o(Ldev/duo/workspaceprobe/n;Landroid/content/Context;Ljava/util/Set;Ldev/duo/workspaceprobe/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/n;->a(Landroid/content/Context;Ljava/util/Set;Ldev/duo/workspaceprobe/l;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A9GpbE3c_P72fEV3oVG7OD1bKw0(Ldev/duo/workspaceprobe/n;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$BkMDYLZy2C23RxVgNCgQQAQORSs(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->e(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BlFl238Ix_ciQ6XiU8v3gqp2-bU(Ldev/duo/workspaceprobe/n;ILdev/duo/workspaceprobe/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->b(ILdev/duo/workspaceprobe/i;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DL5-4oQCu1jNFvyUyVmbupcl_Cw(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->c(Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FNX21qhR-vrl_kZc0RieQ-4r9aA(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->h(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FgyZvC3cJC6iRyvDjv9ekMbGBWQ(Ljava/lang/String;ZLdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;ZLdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fyznz5nZ6rBX9e4QltU7FsRD2kU(ILjava/lang/Object;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(ILjava/lang/Object;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MaUH7DRk4LgCywrvkQZg1mPyS30(Ldev/duo/workspaceprobe/n;IILdev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/n;->a(IILdev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QhB3wBB79u2-ZHMg9wy85b1qLqI(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->b(Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTv-0Xm7bvvzqXiNZ1VQ2oJJU6k(Ldev/duo/workspaceprobe/b$R;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->c(Ldev/duo/workspaceprobe/b$R;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RbEd-DPC9yCLSZGukoEG_YTye-E(Ldev/duo/workspaceprobe/n;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$SL3BgXK1xPjWkD354eu3m5sLDNw(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->c(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SVzbyQJ2c475DKpFPO1ktyZxbqw(Ldev/duo/workspaceprobe/n;Ldev/duo/workspaceprobe/m;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/m;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SvFKW7nbhstIDnk6U4DKhDZh5cE(Ldev/duo/workspaceprobe/n;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTZ_GLiGG3eL5_mG7iIfD7M1nTg(Ldev/duo/workspaceprobe/n;IILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/n;->a(IILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTnVQCUVtEssx1JOzSk1aEg22-M(Ldev/duo/workspaceprobe/n;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$VwvQMCbaDR5EGnZ2jI6oDmhob3U(Ldev/duo/workspaceprobe/n;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->j()V

    return-void
.end method

.method public static synthetic $r8$lambda$WjuaaC6lze1E5SKSVcyFRcHdd5M(Ldev/duo/workspaceprobe/n;Ljava/util/function/Consumer;Ldev/duo/workspaceprobe/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;Ldev/duo/workspaceprobe/i;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XgHfpWqp8yBy2VkTHH3lRiP0I-M(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->d(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XqTqN0Ax8Wnn2v-kgCEGKpf4kK4(JILjava/lang/Object;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/n;->a(JILjava/lang/Object;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ymo2bQYK12VPG59q0iiUuS4_W9s(Ldev/duo/workspaceprobe/l;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->b(Ldev/duo/workspaceprobe/l;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZQA2LiBSGp22Fbeha6M3BHmq1kA(Ldev/duo/workspaceprobe/n;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZS8SZg-tQJDwpSbVLma3tSqXeRo(Ldev/duo/workspaceprobe/n;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_8sHlJHM5cLDTRDZbeDhcXCO7g4(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_EwlhSwGdcoTEsfwJudxBr7fteQ(Ldev/duo/workspaceprobe/n;IILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/n;->b(IILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1CaMUjc3StMfStdHTZz5ktQVdo(Ldev/duo/workspaceprobe/b$R;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->b(Ldev/duo/workspaceprobe/b$R;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aVTuxJ8HGjQFV7WoTwbEufGIWGU(ILjava/lang/Object;IILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/n;->a(ILjava/lang/Object;IILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cASmH7h02QdwbQvYoWNUUqzbTZE(Ldev/duo/workspaceprobe/n;Landroid/os/IBinder;Ldev/duo/workspaceprobe/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Landroid/os/IBinder;Ldev/duo/workspaceprobe/i;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ccCJwrvICxLCvrdEHQ8B-eSKR9I(Ldev/duo/workspaceprobe/n;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->l()V

    return-void
.end method

.method public static synthetic $r8$lambda$drTgglWRIefh-Ca0NtI595kWRrk(Ldev/duo/workspaceprobe/n;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->k()V

    return-void
.end method

.method public static synthetic $r8$lambda$e8AO_zOdgBFstLuIXmrbnhdalW8(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fHT5phvCi6ZsyJlY3VqUZK9eBus(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/SystemGate;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/SystemGate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fmi0O4GZ780JbQwai3RwvpLtKJ8(Ldev/duo/workspaceprobe/m;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->b(Ldev/duo/workspaceprobe/m;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$goKa0AcAgIaN-cf21gyLh6GwqGc(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->g(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0aV6mrg1s8lTf71kClYRfqnsck(Ldev/duo/workspaceprobe/n;I)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->b(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iFtcCyujpG2BtLYBJ0VfDg-1rxg(Ldev/duo/workspaceprobe/n;[Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a([Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jYBQKPCzxEkfuwubT7C_LX7K9AM(Ldev/duo/workspaceprobe/n;Ldev/duo/workspaceprobe/b$R;FIFILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/b$R;FIFILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jb5iqvk8wvf0iv_DKD3NvJUNQGI(Ldev/duo/workspaceprobe/n;I)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->c(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGaGKkM1Nx8-CDlZvCQ2OCvRFjg(Ldev/duo/workspaceprobe/n;ILdev/duo/workspaceprobe/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->c(ILdev/duo/workspaceprobe/i;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kZxaLHPL3_ltSGt1Qgf-MJ8NDrA(Ldev/duo/workspaceprobe/n;ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKHi90yhDcrXNWfZVPE1zNe56jQ(Ldev/duo/workspaceprobe/n;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$lO2j1EmqSLoe9mbu-H5ijMgFCO0(Ldev/duo/workspaceprobe/n;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->r()V

    return-void
.end method

.method public static synthetic $r8$lambda$nERGjSqy3FLObAkBUibRLs2bOeI(Ldev/duo/workspaceprobe/n;[Landroid/graphics/Rect;[Landroid/graphics/Rect;Ldev/duo/workspaceprobe/j;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Ldev/duo/workspaceprobe/n;->a([Landroid/graphics/Rect;[Landroid/graphics/Rect;Ldev/duo/workspaceprobe/j;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nyO_FqK3G56bkYyF9ckGrrD4VrU(Ldev/duo/workspaceprobe/n;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pMSg-e1KSfiSF_infWENC67BA3c(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->f(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q3yJbcpwquy8BI02FVAFLhcFjFo(Ldev/duo/workspaceprobe/n;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$qFzov-q9D-BJYxKuOyftrGedioA(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->d(Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rULCx9X89gczvHl0T37s1zES1UI(Ldev/duo/workspaceprobe/l;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/l;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uwZX3iK4LeW13dLWKtbjZ8MBJTI(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/Geometry;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/Geometry;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vzZ_OOHALeZMpI2Dl1Lu77VvYLY(Ldev/duo/workspaceprobe/l;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/l;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x38fKzbCgCFKocAAaN-nCo30b4w(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yCUL_y6GaG4Ajj0kpDAhdfPZVqg(Ljava/text/Collator;Ldev/duo/workspaceprobe/i;Ldev/duo/workspaceprobe/i;)I
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->a(Ljava/text/Collator;Ldev/duo/workspaceprobe/i;Ldev/duo/workspaceprobe/i;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yRK1Ta_XhmC_KQ1B2GZgZ1GO19k(Ldev/duo/workspaceprobe/n;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zk6JY5bi-aYAAbezBeQhRX2hojA(Ldev/duo/workspaceprobe/n;Landroid/view/Choreographer;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/n;->a(Landroid/view/Choreographer;J)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldev/duo/workspaceprobe/p;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/p;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->v:Ldev/duo/workspaceprobe/p;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/duo/workspaceprobe/n;->A:J

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/workspaceprobe/n;->I:I

    .line 28
    iput v0, p0, Ldev/duo/workspaceprobe/n;->T:I

    .line 30
    iput v0, p0, Ldev/duo/workspaceprobe/n;->V:I

    .line 183
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->W:Landroid/graphics/Rect;

    .line 238
    new-instance v1, Ldev/duo/workspaceprobe/n$a;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-direct {v1, p0, v4, v2, v3}, Ldev/duo/workspaceprobe/n$a;-><init>(Ldev/duo/workspaceprobe/n;IFZ)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->X:Ljava/util/Map;

    .line 586
    const/high16 v1, -0x80000000

    iput v1, p0, Ldev/duo/workspaceprobe/n;->j0:I

    iput v1, p0, Ldev/duo/workspaceprobe/n;->k0:I

    .line 684
    iput v0, p0, Ldev/duo/workspaceprobe/n;->l0:I

    .line 685
    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    return-void
.end method

.method static a(F)F
    .locals 1

    const v0, 0x4513c000    # 2364.0f

    sub-float/2addr v0, p0

    const p0, 0x4413c000    # 591.0f

    div-float/2addr v0, p0

    .line 3
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private static synthetic a(Ljava/text/Collator;Ldev/duo/workspaceprobe/i;Ldev/duo/workspaceprobe/i;)I
    .locals 3

    .line 422
    iget v0, p1, Ldev/duo/workspaceprobe/i;->e:I

    if-gez v0, :cond_0

    iget v1, p2, Ldev/duo/workspaceprobe/i;->e:I

    if-ltz v1, :cond_3

    :cond_0
    const v1, 0x7fffffff

    if-gez v0, :cond_1

    move v0, v1

    .line 423
    :cond_1
    iget v2, p2, Ldev/duo/workspaceprobe/i;->e:I

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 426
    :cond_3
    iget-object p1, p1, Ldev/duo/workspaceprobe/i;->c:Ljava/lang/String;

    iget-object p2, p2, Ldev/duo/workspaceprobe/i;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/n;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/n;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 2
    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->X:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v1, :cond_1

    .line 167
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    .line 171
    :cond_2
    :try_start_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    return-object v0
.end method

.method private synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 300
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v0, "onDeviceStateChanged"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v0, "hashCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_2

    :sswitch_2
    const-string v0, "equals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v1

    goto :goto_2

    :sswitch_3
    const-string v0, "toString"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move p2, v2

    goto :goto_2

    :goto_1
    const/4 p2, -0x1

    :goto_2
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return-object v0

    .line 301
    :pswitch_0
    aget-object p1, p3, v2

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->g0:Ljava/lang/Object;

    invoke-virtual {p0}, Ldev/duo/workspaceprobe/n;->m()V

    return-object v0

    .line 302
    :pswitch_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    nop

    .line 303
    aget-object p2, p3, v2

    if-ne p1, p2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 304
    :pswitch_3
    const-string p1, "MiDuo workbench device state"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_3
        -0x4d378041 -> :sswitch_2
        0x8cdac1b -> :sswitch_1
        0x5f027298 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DuoWorkbenchIcons"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ldev/duo/workspaceprobe/i;",
            ">;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 401
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 402
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v2, 0x40

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 403
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 404
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 406
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 408
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 409
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 410
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 411
    :cond_4
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 412
    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.miui.home"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 413
    :cond_5
    invoke-interface {p2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v6, Ldev/duo/workspaceprobe/i;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 415
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_6
    const/4 v5, -0x1

    :goto_3
    move v10, v5

    invoke-interface {p0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v4}, Ldev/duo/workspaceprobe/n;->a(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    invoke-direct/range {v6 .. v12}, Ldev/duo/workspaceprobe/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 416
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 419
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    .line 421
    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda21;

    invoke-direct {p2, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda21;-><init>(Ljava/text/Collator;)V

    invoke-interface {p0, p2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method private a()V
    .locals 18

    .line 73
    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput-object v2, v1, Ldev/duo/workspaceprobe/n;->J:Ljava/lang/Runnable;

    .line 74
    iget-boolean v0, v1, Ldev/duo/workspaceprobe/n;->C:Z

    if-eqz v0, :cond_8

    invoke-direct {v1}, Ldev/duo/workspaceprobe/n;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 75
    :cond_0
    iget-boolean v0, v1, Ldev/duo/workspaceprobe/n;->B:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v4, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-virtual {v0, v4}, Ldev/duo/taskcore/WorkspaceShell;->attachContext(Landroid/content/Context;)V

    iput-boolean v3, v1, Ldev/duo/workspaceprobe/n;->B:Z

    .line 76
    :cond_1
    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceShell;->ready()Z

    move-result v0

    const-string v4, "DuoWorkbench"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corner: core not ready "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v2}, Ldev/duo/taskcore/WorkspaceShell;->readiness()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ldev/duo/workspaceprobe/n;->w()V

    return-void

    .line 77
    :cond_2
    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-string v5, "dev.duo.hookprobe"

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v0, v5}, Ldev/duo/taskcore/WorkspaceShell;->pickTasks(Landroid/content/Context;Ljava/util/Set;)[I

    move-result-object v0

    .line 80
    iget-object v5, v1, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    .line 81
    const/4 v6, -0x1

    iput v6, v1, Ldev/duo/workspaceprobe/n;->I:I

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {v5}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v7

    sget-object v8, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v7, v8, :cond_3

    invoke-virtual {v1}, Ldev/duo/workspaceprobe/n;->w()V

    return-void

    .line 84
    :cond_3
    aget v0, v0, v6

    iput v0, v1, Ldev/duo/workspaceprobe/n;->I:I

    .line 85
    invoke-static {v5, v0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/WorkspaceSession;I)[I

    move-result-object v0

    .line 87
    :cond_4
    iget-object v5, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b;->D1:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    if-nez v5, :cond_5

    goto/16 :goto_1

    .line 90
    :cond_5
    :try_start_0
    new-instance v7, Ldev/duo/workspaceprobe/b$R;

    iget-object v8, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "workbench_handle"

    new-instance v10, Ldev/duo/workspaceprobe/k;

    iget-object v11, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v11, v11, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v10, v11}, Ldev/duo/workspaceprobe/k;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc8

    const/16 v14, 0xc8

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v17}, Ldev/duo/workspaceprobe/b$R;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFZ)V

    iput-object v7, v1, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :try_start_1
    invoke-direct {v1, v5, v0}, Ldev/duo/workspaceprobe/n;->a(Landroid/view/SurfaceControl;[I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    iget-object v2, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v2}, Ldev/duo/workspaceprobe/b;->E0()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {v1}, Ldev/duo/workspaceprobe/n;->c()V

    invoke-virtual {v1}, Ldev/duo/workspaceprobe/n;->w()V

    return-void

    .line 96
    :cond_6
    iput-object v0, v1, Ldev/duo/workspaceprobe/n;->H:[I

    .line 97
    iput-boolean v3, v1, Ldev/duo/workspaceprobe/n;->D:Z

    .line 98
    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ldev/duo/workspaceprobe/b;->B(I)V

    .line 99
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 100
    :try_start_2
    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, v1, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const v5, 0x45074000    # 2164.0f

    const/high16 v7, 0x44b80000    # 1472.0f

    invoke-virtual {v0, v4, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, v1, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0xc8

    invoke-direct {v5, v6, v6, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, v1, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    .line 102
    const v5, 0x1000001

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v1, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 104
    :try_start_3
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :catch_0
    move-exception v0

    .line 105
    const-string v3, "Entry mask unavailable"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    invoke-static {v0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/b$R;)V

    iput-object v2, v1, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    invoke-virtual {v1}, Ldev/duo/workspaceprobe/n;->w()V

    return-void

    :catch_1
    move-exception v0

    .line 106
    const-string v2, "Handle unavailable"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ldev/duo/workspaceprobe/n;->w()V

    return-void

    .line 107
    :cond_7
    :goto_1
    invoke-virtual {v1}, Ldev/duo/workspaceprobe/n;->w()V

    return-void

    .line 108
    :cond_8
    :goto_2
    invoke-virtual {v1}, Ldev/duo/workspaceprobe/n;->w()V

    return-void
.end method

.method private a(FFZ)V
    .locals 5

    .line 109
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v1, p1

    float-to-double v3, p2

    .line 111
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 112
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 113
    :try_start_0
    iget-object v3, v0, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const v4, 0x45074000    # 2164.0f

    sub-float/2addr v4, p1

    const/high16 p1, 0x44b80000    # 1472.0f

    sub-float/2addr p1, p2

    invoke-virtual {v2, v3, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 114
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p1, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const/high16 p2, 0x42700000    # 60.0f

    div-float p2, v1, p2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {v2, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 116
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->M:Ldev/duo/workspaceprobe/m;

    const/high16 p2, 0x43e60000    # 460.0f

    div-float/2addr v1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ldev/duo/workspaceprobe/m;->a(FF)V

    .line 118
    :cond_1
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 120
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/n;->E:Z

    if-eq p3, p1, :cond_2

    .line 121
    iput-boolean p3, p0, Ldev/duo/workspaceprobe/n;->E:Z

    .line 122
    iget-object p1, v0, Ldev/duo/workspaceprobe/b$R;->d:Landroid/view/View;

    check-cast p1, Ldev/duo/workspaceprobe/k;

    invoke-virtual {p1, p3}, Ldev/duo/workspaceprobe/k;->a(Z)V

    if-eqz p3, :cond_2

    .line 123
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ldev/duo/workspaceprobe/b;->B(I)V

    :cond_2
    :goto_0
    return-void

    .line 116
    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private a(I)V
    .locals 4

    .line 289
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_1

    .line 290
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    new-instance v1, Ldev/duo/taskcore/Geometry;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->W:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Ldev/duo/taskcore/Geometry;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/Geometry;I)V

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corner into paused session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": incoming "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuoWorkbench"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda31;-><init>(Ldev/duo/workspaceprobe/n;I)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void

    .line 294
    :cond_1
    :goto_0
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->b()V

    return-void
.end method

.method private synthetic a(IILdev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 307
    invoke-virtual {p4, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->reorder(II)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic a(IILdev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 519
    invoke-virtual {p3, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->add(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 520
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launched task "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not taken: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ldev/duo/taskcore/WorkspaceSession;->log()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DuoWorkbench"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {p1, p2}, Ldev/duo/taskcore/WorkspaceShell;->revealTask(I)V

    .line 522
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda44;

    invoke-direct {p2, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda44;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 513
    invoke-virtual {p2, p1}, Ldev/duo/taskcore/WorkspaceSession;->adopt(I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {p2, p1}, Ldev/duo/taskcore/WorkspaceShell;->adoptRefused(I)V

    :cond_0
    return-void
.end method

.method private synthetic a(ILdev/duo/workspaceprobe/i;)V
    .locals 1

    .line 313
    iget v0, p0, Ldev/duo/workspaceprobe/n;->l0:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->m0:Ldev/duo/workspaceprobe/i;

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/workspaceprobe/n;->l0:I

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->m0:Ldev/duo/workspaceprobe/i;

    :cond_0
    return-void
.end method

.method private synthetic a(ILdev/duo/workspaceprobe/i;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 309
    invoke-virtual {p3, p1}, Ldev/duo/taskcore/WorkspaceSession;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replace in slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cancelled: remove refused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ldev/duo/taskcore/WorkspaceSession;->log()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DuoWorkbench"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p3, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p3, p3, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda27;-><init>(Ldev/duo/workspaceprobe/n;ILdev/duo/workspaceprobe/i;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic a(ILjava/lang/Object;IILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 499
    invoke-virtual {p4, p0, p1, p2, p3}, Ldev/duo/taskcore/WorkspaceSession;->memberChanged(ILjava/lang/Object;II)V

    return-void
.end method

.method private static synthetic a(ILjava/lang/Object;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 498
    invoke-virtual {p2, p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->systemFocused(ILjava/lang/Object;)V

    return-void
.end method

.method private a(ILjava/util/function/Consumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ldev/duo/workspaceprobe/i;",
            ">;)V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-nez v0, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    if-gez p1, :cond_1

    move-object v7, v0

    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceHost;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v1

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object p1, v1, p1

    move-object v7, p1

    .line 317
    :goto_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceHost;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object p1

    iget-object p1, p1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget-object p1, p1, v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x432c0000    # 172.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 318
    new-instance v2, Ldev/duo/workspaceprobe/l;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    new-instance v3, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda17;-><init>(Ldev/duo/workspaceprobe/n;)V

    new-instance v4, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda18;-><init>(Ldev/duo/workspaceprobe/n;Ljava/util/function/Consumer;)V

    invoke-direct {v2, v1, p1, v3, v4}, Ldev/duo/workspaceprobe/l;-><init>(Landroid/content/Context;FLjava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 323
    iget p2, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->s()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 324
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/high16 v1, 0x441b0000    # 620.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p2, v4

    const/high16 p2, 0x42080000    # 34.0f

    mul-float v8, p1, p2

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ldev/duo/workspaceprobe/n;->a(Landroid/view/View;IIIILandroid/graphics/Rect;F)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_1
    return-void

    .line 325
    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 326
    iget-object p2, v1, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz p2, :cond_4

    .line 327
    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceShell;->members(Ldev/duo/taskcore/WorkspaceSession;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    :goto_2
    if-ge v9, v0, :cond_4

    aget-object v3, p2, v9

    if-eqz v3, :cond_3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 328
    :cond_4
    const-string p2, "dev.duo.hookprobe"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object p2, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p2, p2, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    .line 330
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, p2, p1, v2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda19;-><init>(Ldev/duo/workspaceprobe/n;Landroid/content/Context;Ljava/util/Set;Ldev/duo/workspaceprobe/l;)V

    const-string p1, "workbench-picker"

    invoke-direct {v0, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 355
    iput-object v0, v1, Ldev/duo/workspaceprobe/n;->S:Ljava/lang/Thread;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic a(J)V
    .locals 2

    .line 231
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda8;-><init>(Ldev/duo/workspaceprobe/n;)V

    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;-><init>(Ldev/duo/workspaceprobe/n;)V

    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1, p1, p2}, Ldev/duo/workspaceprobe/n;->a(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(JILjava/lang/Object;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 481
    iget-wide v0, p4, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    invoke-virtual {p4, p2, p3}, Ldev/duo/taskcore/WorkspaceSession;->pipStarting(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(JILjava/lang/Object;ZLdev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 482
    iget-wide v0, p5, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    invoke-virtual {p5, p2, p3, p4}, Ldev/duo/taskcore/WorkspaceSession;->pipFinished(ILjava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private a(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V
    .locals 2

    .line 172
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    nop

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 179
    new-instance p1, Ldev/duo/workspaceprobe/n$b;

    invoke-direct {p1, p0, p4}, Ldev/duo/workspaceprobe/n$b;-><init>(Ldev/duo/workspaceprobe/n;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    .line 183
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->b(F)V

    return-void
.end method

.method private synthetic a(Landroid/content/Context;)V
    .locals 3

    .line 157
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 159
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1

    .line 160
    :cond_1
    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 159
    :goto_1
    nop

    .line 160
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 159
    :catch_0
    move-exception p1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry icons not prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DuoWorkbench"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Ljava/util/Set;Ldev/duo/workspaceprobe/l;)V
    .locals 5

    .line 359
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 361
    invoke-static {p1, p2, v1}, Ldev/duo/workspaceprobe/n;->a(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 363
    :cond_0
    iget-object p2, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p2, p2, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda12;

    invoke-direct {v2, p3, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda12;-><init>(Ldev/duo/workspaceprobe/l;Ljava/util/List;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 366
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/workspaceprobe/i;

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 368
    :cond_2
    iget-object v2, v2, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 371
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 372
    iget-object v3, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v4, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda13;

    invoke-direct {v4, p3, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda13;-><init>(Ldev/duo/workspaceprobe/l;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p2, v2

    goto :goto_0

    .line 376
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda14;-><init>(Ldev/duo/workspaceprobe/l;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 372
    :catch_0
    move-exception p1

    .line 378
    const-string p2, "DuoWorkbench"

    const-string v0, "App list unavailable"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda15;

    invoke-direct {p2, p3}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda15;-><init>(Ldev/duo/workspaceprobe/l;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic a(Landroid/os/IBinder;)V
    .locals 1

    .line 592
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceShell;->cancelLaunch(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic a(Landroid/os/IBinder;I)V
    .locals 1

    .line 515
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->U:Landroid/os/IBinder;

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {p1, p2}, Ldev/duo/taskcore/WorkspaceShell;->revealTask(I)V

    return-void

    .line 516
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->U:Landroid/os/IBinder;

    .line 517
    iget p1, p0, Ldev/duo/workspaceprobe/n;->V:I

    .line 518
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0, p1, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda70;-><init>(Ldev/duo/workspaceprobe/n;II)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic a(Landroid/os/IBinder;Ldev/duo/workspaceprobe/i;)V
    .locals 2

    .line 383
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->U:Landroid/os/IBinder;

    if-eq v0, p1, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceShell;->cancelLaunch(Landroid/os/IBinder;)V

    .line 385
    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->U:Landroid/os/IBinder;

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launch of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not seen in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms: slot stays empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DuoWorkbench"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->j()V

    return-void
.end method

.method private synthetic a(Landroid/view/Choreographer;J)V
    .locals 0

    .line 230
    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda78;

    invoke-direct {p2, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda78;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private a(Landroid/view/SurfaceControl;[I)V
    .locals 18

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ldev/duo/taskcore/Geometry;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n;->e()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Ldev/duo/taskcore/Geometry;-><init>(Landroid/graphics/Rect;)V

    .line 127
    const/4 v3, 0x5

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-direct {v0}, Ldev/duo/workspaceprobe/n;->u()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 129
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_0

    if-ge v7, v3, :cond_0

    aget v8, v1, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v0, v8}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance v1, Ldev/duo/workspaceprobe/m;

    iget-object v3, v0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n;->p()I

    move-result v5

    invoke-direct {v1, v3, v5, v4}, Ldev/duo/workspaceprobe/m;-><init>(Landroid/content/Context;I[Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Ldev/duo/workspaceprobe/n;->M:Ldev/duo/workspaceprobe/m;

    .line 131
    iget-object v2, v2, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    new-array v3, v6, [Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ldev/duo/workspaceprobe/m;->a(Landroid/graphics/Rect;[Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 132
    new-instance v7, Ldev/duo/workspaceprobe/b$R;

    iget-object v8, v0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Ldev/duo/workspaceprobe/n;->M:Ldev/duo/workspaceprobe/m;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v9, "workbench_stage"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x93c

    const/16 v14, 0x688

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v17}, Ldev/duo/workspaceprobe/b$R;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFZ)V

    iput-object v7, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    .line 133
    iput-boolean v6, v0, Ldev/duo/workspaceprobe/n;->P:Z

    iput-boolean v6, v0, Ldev/duo/workspaceprobe/n;->O:Z

    .line 134
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 135
    :try_start_0
    iget-object v2, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v2, v2, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x93c

    const/16 v7, 0x688

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    .line 136
    const v4, 0x1000002

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v0, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 138
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method private a(Ldev/duo/taskcore/Geometry;FF)V
    .locals 7

    .line 214
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->Z:Ldev/duo/workspaceprobe/j;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [Landroid/graphics/Rect;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 217
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v5, v2, v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1, p2}, Ldev/duo/taskcore/Geometry;->mainFollowing(F)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Ldev/duo/workspaceprobe/j;->a(Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    .line 219
    invoke-direct {p0, p3}, Ldev/duo/workspaceprobe/n;->b(F)V

    .line 220
    iput p2, p0, Ldev/duo/workspaceprobe/n;->a0:F

    .line 221
    iput p3, p0, Ldev/duo/workspaceprobe/n;->b0:F

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic a(Ldev/duo/taskcore/Geometry;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 222
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/Geometry;FF)V

    return-void
.end method

.method private a(Ldev/duo/taskcore/Geometry;I)V
    .locals 6

    .line 184
    iget-object p2, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-nez p2, :cond_0

    return-void

    .line 185
    :cond_0
    const/4 p2, 0x4

    new-array v0, p2, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 186
    iget-object v3, p1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    iget-object v2, p1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v3, v2, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x3

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->M:Ldev/duo/workspaceprobe/m;

    .line 189
    iget-object p1, p1, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, p2}, Ldev/duo/workspaceprobe/m;->a(Landroid/graphics/Rect;[Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 190
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->b(F)V

    .line 191
    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda22;

    invoke-direct {p1, v1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda22;-><init>(Ldev/duo/workspaceprobe/m;)V

    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda23;-><init>(Ldev/duo/workspaceprobe/n;)V

    const-wide/16 v0, 0x140

    invoke-direct {p0, v0, v1, p1, p2}, Ldev/duo/workspaceprobe/n;->a(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ldev/duo/taskcore/SystemGate;)V
    .locals 2

    .line 25
    invoke-virtual {p1}, Ldev/duo/taskcore/SystemGate;->blocksActions()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ldev/duo/taskcore/SystemGate;->requiresClose()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 27
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/n;->C:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->b()V

    invoke-virtual {p0}, Ldev/duo/workspaceprobe/n;->w()V

    .line 28
    :cond_2
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    .line 30
    :cond_3
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ldev/duo/taskcore/WorkspaceHost;->setBlocked(Z)V

    .line 31
    :cond_4
    invoke-virtual {p1}, Ldev/duo/taskcore/SystemGate;->requiresClose()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda71;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda71;-><init>(Ldev/duo/taskcore/SystemGate;)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void

    .line 32
    :cond_5
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->r()V

    return-void
.end method

.method private static synthetic a(Ldev/duo/taskcore/SystemGate;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Ldev/duo/taskcore/SystemGate;->unknown:Z

    if-eqz p0, :cond_0

    const-string p0, "state unknown"

    goto :goto_0

    :cond_0
    const-string p0, "switching user"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic a(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 5

    .line 483
    iget-wide v0, p1, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    iget-wide v2, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->epoch:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->event:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 485
    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->returnedToMember:Z

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/WorkspaceSession;->interruptionFinished(Z)V

    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 487
    iget v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->startResult:I

    iget-boolean p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->returnedToMember:Z

    invoke-virtual {p1, v0, p0}, Ldev/duo/taskcore/WorkspaceSession;->callState(IZ)V

    return-void

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 488
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    if-eqz v0, :cond_6

    .line 489
    iget v3, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget p0, v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/WorkspaceSession;->interruptionStarted(I)V

    return-void

    :cond_3
    if-ne v3, v2, :cond_4

    .line 491
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->foreground:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    if-eqz p0, :cond_6

    iget v1, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskToken:Landroid/os/IBinder;

    iget v0, v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    invoke-virtual {p1, v1, p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->mainLeftToHome(ILjava/lang/Object;I)V

    return-void

    :cond_4
    if-ne v3, v1, :cond_5

    .line 495
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->foreground:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    if-eqz p0, :cond_6

    iget p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    iget v1, v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, v1, v0}, Ldev/duo/taskcore/WorkspaceSession;->crossAppToMember(IILjava/lang/Object;)V

    return-void

    .line 497
    :cond_5
    iget v1, v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v0}, Ldev/duo/taskcore/WorkspaceSession;->find(ILjava/lang/Object;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iget p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/WorkspaceSession;->userSelected(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private static synthetic a(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 308
    const-string v0, "bar exit"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic a(Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceSession$State;ZLjava/lang/String;[Ldev/duo/taskcore/TaskBinding;[Ljava/lang/String;)V
    .locals 9

    .line 523
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v0, :cond_12

    .line 524
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eq v1, p1, :cond_0

    goto/16 :goto_1

    .line 525
    :cond_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->v:Ldev/duo/workspaceprobe/p;

    iget-wide v2, p1, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-virtual {v1, p2, p3, v2, v3}, Ldev/duo/workspaceprobe/p;->a(Ldev/duo/taskcore/WorkspaceSession$State;ZJ)V

    .line 526
    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    .line 528
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/n;->e0:Z

    if-nez p1, :cond_12

    iput-boolean v2, p0, Ldev/duo/workspaceprobe/n;->e0:Z

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    invoke-virtual {v0, v3}, Ldev/duo/taskcore/WorkspaceHost;->setShown(Z)V

    return-void

    .line 531
    :cond_1
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/n;->e0:Z

    if-eqz v1, :cond_2

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p2, v1, :cond_2

    .line 533
    iput-boolean v3, p0, Ldev/duo/workspaceprobe/n;->e0:Z

    .line 534
    invoke-virtual {v0, v2}, Ldev/duo/taskcore/WorkspaceHost;->setShown(Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 537
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/n;->e0:Z

    if-nez v1, :cond_3

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p2, v1, :cond_3

    invoke-virtual {v0, v3}, Ldev/duo/taskcore/WorkspaceHost;->setShown(Z)V

    .line 538
    :cond_3
    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p2, v1, :cond_4

    sget-object v4, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p2, v4, :cond_5

    .line 539
    :cond_4
    iput-boolean v3, p0, Ldev/duo/workspaceprobe/n;->e0:Z

    .line 540
    iput-boolean v3, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    :cond_5
    const-string v4, "audio"

    const-string v5, "DuoWorkbench"

    const-string v6, "popup"

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-ne p2, v1, :cond_b

    .line 544
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-eqz p1, :cond_8

    .line 545
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/n;->O:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->b()V

    goto :goto_0

    .line 546
    :cond_6
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/n;->c0:Z

    if-eqz p1, :cond_7

    iput-boolean v2, p0, Ldev/duo/workspaceprobe/n;->d0:Z

    goto :goto_0

    .line 547
    :cond_7
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->h()V

    :cond_8
    :goto_0
    nop

    .line 550
    iput v7, p0, Ldev/duo/workspaceprobe/n;->l0:I

    .line 551
    iput-object v8, p0, Ldev/duo/workspaceprobe/n;->m0:Ldev/duo/workspaceprobe/i;

    .line 552
    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda17;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-static {v6, p1}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 553
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->U:Landroid/os/IBinder;

    .line 554
    iput-object v8, p0, Ldev/duo/workspaceprobe/n;->U:Landroid/os/IBinder;

    if-eqz p1, :cond_9

    .line 555
    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda37;

    invoke-direct {p2, p0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda37;-><init>(Ldev/duo/workspaceprobe/n;Landroid/os/IBinder;)V

    const-string p1, "launch"

    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 556
    :cond_9
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    .line 557
    iput-object v8, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    if-eqz p1, :cond_a

    .line 558
    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda38;

    invoke-direct {p2, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda38;-><init>(Ldev/duo/workspaceprobe/o;)V

    invoke-static {v4, p2}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 559
    :cond_a
    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda39;

    invoke-direct {p1, v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda39;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string p2, "host"

    invoke-static {p2, p1}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 560
    iput-object v8, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    .line 561
    iput-object v8, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Closed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 563
    :cond_b
    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p2, v1, :cond_e

    .line 566
    iput v7, p0, Ldev/duo/workspaceprobe/n;->l0:I

    .line 567
    iput-object v8, p0, Ldev/duo/workspaceprobe/n;->m0:Ldev/duo/workspaceprobe/i;

    .line 568
    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda40;

    invoke-direct {p1, v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda40;-><init>(Ldev/duo/taskcore/WorkspaceHost;)V

    const-string p2, "retain tasks only"

    invoke-static {p2, p1}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 569
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-eqz p1, :cond_c

    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;-><init>(Ldev/duo/workspaceprobe/n;)V

    const-string p2, "stage"

    invoke-static {p2, p1}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 570
    :cond_c
    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda17;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-static {v6, p1}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 571
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    .line 572
    iput-object v8, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    if-eqz p1, :cond_d

    .line 573
    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda38;

    invoke-direct {p2, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda38;-><init>(Ldev/duo/workspaceprobe/o;)V

    invoke-static {v4, p2}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 574
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RETURN_FAILED "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 576
    :cond_e
    invoke-virtual {v0, p5}, Ldev/duo/taskcore/WorkspaceHost;->showSlots([Ldev/duo/taskcore/TaskBinding;)V

    .line 577
    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->main()Ldev/duo/taskcore/TaskBinding;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceHost;->showMain(Ldev/duo/taskcore/TaskBinding;)V

    .line 578
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p2, p1, :cond_f

    if-nez p3, :cond_f

    move v3, v2

    :cond_f
    invoke-virtual {v0, v3}, Ldev/duo/taskcore/WorkspaceHost;->setInteractive(Z)V

    if-ne p2, p1, :cond_12

    if-nez p3, :cond_12

    .line 582
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/n;->P:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-eqz p1, :cond_10

    iput-boolean v2, p0, Ldev/duo/workspaceprobe/n;->P:Z

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->i()V

    .line 583
    :cond_10
    invoke-static {p6}, Ldev/duo/workspaceprobe/n;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/Collection;)V

    .line 584
    iget p1, p0, Ldev/duo/workspaceprobe/n;->T:I

    if-ltz p1, :cond_11

    .line 585
    aget-object p2, p5, p1

    if-nez p2, :cond_11

    iput v7, p0, Ldev/duo/workspaceprobe/n;->T:I

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/n;->plus(I)V

    .line 586
    :cond_11
    iget p1, p0, Ldev/duo/workspaceprobe/n;->l0:I

    if-ltz p1, :cond_12

    .line 587
    aget-object p2, p5, p1

    if-nez p2, :cond_12

    .line 588
    iget-object p2, p0, Ldev/duo/workspaceprobe/n;->m0:Ldev/duo/workspaceprobe/i;

    .line 589
    iput v7, p0, Ldev/duo/workspaceprobe/n;->l0:I

    .line 590
    iput-object v8, p0, Ldev/duo/workspaceprobe/n;->m0:Ldev/duo/workspaceprobe/i;

    if-eqz p2, :cond_12

    .line 591
    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->d(ILdev/duo/workspaceprobe/i;)V

    :cond_12
    :goto_1
    return-void
.end method

.method private synthetic a(Ldev/duo/taskcore/WorkspaceSession;Ljava/util/function/Consumer;)V
    .locals 1

    .line 298
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-ne v0, p1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ldev/duo/taskcore/WorkspaceSession;[I[I)V
    .locals 1

    .line 266
    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->open(I[I)V

    return-void
.end method

.method private static a(Ldev/duo/workspaceprobe/b$R;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 235
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b$R;->b()V

    return-void

    :catchall_0
    move-exception p0

    .line 236
    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private synthetic a(Ldev/duo/workspaceprobe/b$R;FIFILandroid/animation/ValueAnimator;)V
    .locals 3

    .line 473
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    if-eq p1, v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    const v0, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, p6

    const v1, 0x3da3d70a    # 0.08f

    add-float/2addr v0, v1

    .line 475
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 476
    :try_start_0
    iget-object v2, p1, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    int-to-float p3, p3

    sub-float/2addr p3, p2

    mul-float/2addr p3, p6

    add-float/2addr p2, p3

    int-to-float p3, p5

    sub-float/2addr p3, p4

    mul-float/2addr p3, p6

    add-float/2addr p4, p3

    invoke-virtual {v1, v2, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p1, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p3, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p1, p1, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, p6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 478
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/l;)V
    .locals 1

    .line 382
    const-string v0, "\u65e0\u6cd5\u8bfb\u53d6\u5e94\u7528\u5217\u8868\uff0c\u8bf7\u5173\u95ed\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Ldev/duo/workspaceprobe/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/l;Ljava/util/List;)V
    .locals 1

    .line 380
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/l;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/l;Ljava/util/Map;)V
    .locals 1

    .line 381
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/l;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ldev/duo/workspaceprobe/m;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 192
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ldev/duo/workspaceprobe/m;->a(FF)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->b(F)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 514
    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->callActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->callScreen()V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ldev/duo/taskcore/WorkspaceSession;->leave(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 479
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close step failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DuoWorkbench"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;ZLdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 299
    invoke-virtual {p2, p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->Y:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda73;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->Y:Ljava/util/concurrent/ExecutorService;

    .line 142
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    .line 144
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->Y:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda74;

    invoke-direct {v2, p0, v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda74;-><init>(Ldev/duo/workspaceprobe/n;Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic a(Ljava/util/List;Landroid/content/Context;)V
    .locals 5

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->X:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0xb4

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 152
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->X:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plate icon not prepared for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuoWorkbench"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ldev/duo/taskcore/WorkspaceSession;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    .line 296
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceShell;->shellHandler()Landroid/os/Handler;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 297
    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;

    invoke-direct {v2, p0, v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda51;-><init>(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/WorkspaceSession;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/util/function/Consumer;Ldev/duo/workspaceprobe/i;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    .line 358
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(ZZLdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 34
    invoke-virtual {p2, p0, p1}, Ldev/duo/taskcore/WorkspaceSession;->setLocked(ZZ)V

    return-void
.end method

.method private a([I)V
    .locals 9

    const-string v0, "DuoWorkbench"

    .line 237
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-nez v1, :cond_4

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 239
    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->t()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 241
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_1

    if-ge v5, v1, :cond_1

    aget v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 243
    :cond_1
    :try_start_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    if-nez v1, :cond_2

    new-instance v1, Ldev/duo/workspaceprobe/o;

    iget-object v3, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v5, v3, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    invoke-direct {v1, v5, v3}, Ldev/duo/workspaceprobe/o;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    .line 244
    :cond_2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    invoke-virtual {v1, v2}, Ldev/duo/workspaceprobe/o;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->W:Landroid/graphics/Rect;

    .line 252
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->v()V

    .line 253
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->W:Landroid/graphics/Rect;

    invoke-virtual {v1, p0, v2}, Ldev/duo/taskcore/WorkspaceShell;->prepare(Ldev/duo/taskcore/WorkspaceShell$Events;Landroid/graphics/Rect;)V

    .line 254
    new-instance v1, Ldev/duo/taskcore/Geometry;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->W:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Ldev/duo/taskcore/Geometry;-><init>(Landroid/graphics/Rect;)V

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/Geometry;I)V

    .line 255
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceShell;->host()Ldev/duo/taskcore/WorkspaceHost;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    .line 256
    invoke-virtual {v1, p0}, Ldev/duo/taskcore/WorkspaceHost;->setActions(Ldev/duo/taskcore/WorkspaceHost$Actions;)V

    .line 257
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceHost;->open()V

    .line 258
    new-instance v1, Ldev/duo/taskcore/WorkspaceSession;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    iget-wide v5, p0, Ldev/duo/workspaceprobe/n;->A:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Ldev/duo/workspaceprobe/n;->A:J

    invoke-direct {v1, v2, v5, v6}, Ldev/duo/taskcore/WorkspaceSession;-><init>(Ldev/duo/taskcore/WorkspaceSession$Platform;J)V

    .line 259
    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    .line 260
    array-length v2, p1

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter session "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v1, Ldev/duo/taskcore/WorkspaceSession;->epoch:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": main "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceShell;->shellHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;

    invoke-direct {v3, v1, p1, v2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda33;-><init>(Ldev/duo/taskcore/WorkspaceSession;[I[I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 243
    :catch_0
    move-exception p1

    .line 263
    const-string v1, "Video isolation not ready: workbench not opened"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ldev/duo/workspaceprobe/o;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    .line 265
    :cond_3
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic a([Landroid/graphics/Rect;[Landroid/graphics/Rect;Ldev/duo/workspaceprobe/j;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V
    .locals 6

    .line 223
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Float;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p7

    .line 224
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 225
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v3, v4, p7, v5}, Ldev/duo/taskcore/Geometry;->between(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p4, p5, p7, p1}, Ldev/duo/taskcore/Geometry;->between(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p3, p1, v1}, Ldev/duo/workspaceprobe/j;->a(Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p6

    const/high16 p3, 0x40400000    # 3.0f

    mul-float/2addr p7, p3

    .line 227
    invoke-static {p1, p7}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr p2, p3

    add-float/2addr p6, p2

    invoke-static {p1, p6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 228
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->b(F)V

    .line 229
    iput p1, p0, Ldev/duo/workspaceprobe/n;->b0:F

    return-void
.end method

.method private synthetic a([Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 3

    .line 500
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    if-nez v0, :cond_0

    new-instance v0, Ldev/duo/workspaceprobe/o;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v2, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    invoke-direct {v0, v2, v1}, Ldev/duo/workspaceprobe/o;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    .line 502
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    invoke-virtual {v0, p1}, Ldev/duo/workspaceprobe/o;->a([Ljava/lang/String;)V

    .line 503
    const-string p1, "isolated"

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void

    .line 504
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :catch_0
    move-exception p1

    .line 509
    const-string v0, "DuoWorkbench"

    const-string v1, "Video isolation failed: closing the workbench"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 5

    .line 388
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceShell;->members(Ldev/duo/taskcore/WorkspaceSession;)[Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_3

    add-int/lit8 v2, p1, 0x1

    .line 391
    array-length v3, v0

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 392
    :cond_1
    aput-object p2, v0, v2

    .line 394
    :try_start_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    if-nez v2, :cond_2

    new-instance v2, Ldev/duo/workspaceprobe/o;

    iget-object v3, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v4, v3, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    invoke-direct {v2, v4, v3}, Ldev/duo/workspaceprobe/o;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    .line 395
    :cond_2
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    invoke-virtual {v2, v0}, Ldev/duo/workspaceprobe/o;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 394
    :catch_0
    move-exception v0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video isolation not ready: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " not opened in slot "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DuoWorkbench"

    invoke-static {p2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->j()V

    :cond_3
    :goto_0
    return v1
.end method

.method private static a(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 427
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/content/pm/ActivityInfo;

    const-string v2, "resizeMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    return v0
.end method

.method private a(Landroid/view/View;IIIILandroid/graphics/Rect;F)Z
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "DuoWorkbench"

    .line 428
    invoke-direct {v1}, Ldev/duo/workspaceprobe/n;->d()V

    .line 429
    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 431
    :cond_0
    new-instance v7, Landroid/view/View;

    iget-object v4, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v7, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance v4, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda61;

    invoke-direct {v4, v1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda61;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    :try_start_0
    new-instance v4, Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "workbench_popup_outside"

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x93c

    const/16 v11, 0x688

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v14}, Ldev/duo/workspaceprobe/b$R;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFI)V

    iput-object v4, v1, Ldev/duo/workspaceprobe/n;->R:Ldev/duo/workspaceprobe/b$R;

    .line 436
    new-instance v5, Ldev/duo/workspaceprobe/b$R;

    iget-object v6, v1, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "workbench_popup"

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v5 .. v15}, Ldev/duo/workspaceprobe/b$R;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFI)V

    iput-object v5, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 443
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 444
    :try_start_1
    iget-object v5, v1, Ldev/duo/workspaceprobe/n;->R:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v6, v1, Ldev/duo/workspaceprobe/n;->R:Ldev/duo/workspaceprobe/b$R;

    iget-object v6, v6, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v6, v1, Ldev/duo/workspaceprobe/n;->R:Ldev/duo/workspaceprobe/b$R;

    iget-object v6, v6, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 445
    iget-object v5, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v5, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const/16 v6, 0x7d1

    invoke-virtual {v0, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v5, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    move/from16 v6, p2

    int-to-float v8, v6

    move/from16 v9, p3

    int-to-float v10, v9

    invoke-virtual {v0, v5, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v5, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    new-instance v8, Landroid/graphics/Rect;

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct {v8, v3, v3, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 446
    invoke-virtual {v0, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v3, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3, v7}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v3, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    .line 447
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v3, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const v5, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v3, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v3, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v3, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :try_start_2
    const-class v0, Landroid/view/SurfaceControl$Transaction;

    const-string v3, "setCornerRadius"

    const-class v5, Landroid/view/SurfaceControl;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v8}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-class v0, Landroid/view/SurfaceControl$Transaction;

    const-string v3, "setBackgroundBlurRadius"

    const-class v5, Landroid/view/SurfaceControl;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v8}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 453
    :try_start_3
    const-string v3, "Popup blur unavailable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    :goto_0
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 455
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 456
    iget-object v2, v1, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    .line 457
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v5, v0

    .line 458
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Ldev/duo/workspaceprobe/n;->n0:Landroid/animation/ValueAnimator;

    .line 459
    const-wide/16 v10, 0xdc

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 460
    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->n0:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v4, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    iget-object v8, v1, Ldev/duo/workspaceprobe/n;->n0:Landroid/animation/ValueAnimator;

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda62;

    move v4, v6

    move v6, v9

    invoke-direct/range {v0 .. v6}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda62;-><init>(Ldev/duo/workspaceprobe/n;Ldev/duo/workspaceprobe/b$R;FIFI)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    iget-object v0, v1, Ldev/duo/workspaceprobe/n;->n0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return v7

    .line 452
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 469
    :try_start_4
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :catch_1
    move-exception v0

    .line 470
    const-string v4, "Popup unavailable"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    invoke-direct {v1}, Ldev/duo/workspaceprobe/n;->d()V

    return v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 472
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    :cond_0
    return p2
.end method

.method private a(Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceHost;)Z
    .locals 19

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->D1:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 195
    :cond_0
    invoke-direct {v0}, Ldev/duo/workspaceprobe/n;->c()V

    .line 196
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual/range {p1 .. p1}, Ldev/duo/taskcore/WorkspaceSession;->main()Ldev/duo/taskcore/TaskBinding;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ldev/duo/taskcore/WorkspaceSession;->main()Ldev/duo/taskcore/TaskBinding;

    move-result-object v4

    iget-object v4, v4, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    aput-object v4, v3, v2

    move v4, v2

    :goto_1
    const/4 v6, 0x4

    if-ge v4, v6, :cond_3

    .line 198
    move-object/from16 v6, p1

    invoke-virtual {v6, v4}, Ldev/duo/taskcore/WorkspaceSession;->slot(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    if-nez v7, :cond_2

    move-object v7, v5

    goto :goto_2

    :cond_2
    iget-object v7, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v7, v7, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    invoke-direct {v0, v7}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_2
    aput-object v7, v3, v4

    goto :goto_1

    .line 199
    :cond_3
    new-instance v11, Ldev/duo/workspaceprobe/j;

    iget-object v4, v0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v4, v4, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n;->p()I

    move-result v5

    invoke-direct {v11, v4, v5, v3}, Ldev/duo/workspaceprobe/j;-><init>(Landroid/content/Context;I[Landroid/graphics/drawable/Drawable;)V

    .line 201
    :try_start_0
    new-instance v8, Ldev/duo/workspaceprobe/b$R;

    iget-object v9, v0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "workbench_exit"

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x93c

    const/16 v15, 0x688

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v18}, Ldev/duo/workspaceprobe/b$R;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFZ)V

    iput-object v8, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    iput-object v11, v0, Ldev/duo/workspaceprobe/n;->Z:Ldev/duo/workspaceprobe/j;

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, v0, Ldev/duo/workspaceprobe/n;->O:Z

    .line 205
    const/4 v3, 0x0

    iput v3, v0, Ldev/duo/workspaceprobe/n;->a0:F

    .line 206
    iput v3, v0, Ldev/duo/workspaceprobe/n;->b0:F

    .line 207
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 208
    :try_start_1
    iget-object v5, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    const v6, 0x1000002

    invoke-virtual {v1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, v0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v5, v5, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    .line 209
    invoke-virtual {v1, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 211
    invoke-virtual/range {p2 .. p2}, Ldev/duo/taskcore/WorkspaceHost;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/Geometry;FF)V

    return v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 212
    :try_start_2
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    :catch_0
    move-exception v0

    .line 213
    const-string v1, "DuoWorkbench"

    const-string v3, "Exit mask unavailable"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private static a(Ldev/duo/taskcore/WorkspaceSession;I)[I
    .locals 9

    .line 267
    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 268
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 269
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->main()Ldev/duo/taskcore/TaskBinding;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 270
    iget-object v5, v3, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v5, v5, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    aput v5, v1, v4

    :cond_0
    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 271
    iget-object v3, v3, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v3, p1, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    move v6, v4

    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    .line 273
    invoke-virtual {p0, v6}, Ldev/duo/taskcore/WorkspaceSession;->slot(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v7

    if-eqz v7, :cond_3

    add-int/lit8 v8, v6, 0x1

    .line 274
    iget-object v7, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v7, v7, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    aput v7, v1, v8

    if-ne v7, p1, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    or-int/2addr v3, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    return-object v1

    .line 277
    :cond_5
    new-array p0, v0, [I

    .line 278
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 279
    aput p1, p0, v4

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    aget v3, v1, v4

    if-ltz v3, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_6
    aget v3, v1, v4

    if-gez v3, :cond_7

    move v3, v5

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    move v6, v5

    :goto_4
    if-ge v6, v0, :cond_a

    .line 284
    aget v8, v1, v6

    if-ltz v8, :cond_8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    if-nez v3, :cond_9

    move v3, v5

    goto :goto_5

    .line 286
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    nop

    :goto_6
    if-ge v4, v7, :cond_b

    .line 288
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    add-int/lit8 v0, v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v0

    move v4, v0

    goto :goto_6

    :cond_b
    return-object p0
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 511
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 512
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b()V
    .locals 5

    .line 6
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->M:Ldev/duo/workspaceprobe/m;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x93c

    const/16 v3, 0x688

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-array v2, v4, [Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ldev/duo/workspaceprobe/m;->a(Landroid/graphics/Rect;[Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 9
    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda32;-><init>(Ldev/duo/workspaceprobe/n;Ldev/duo/workspaceprobe/m;)V

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;-><init>(Ldev/duo/workspaceprobe/n;)V

    const-wide/16 v2, 0xb4

    invoke-direct {p0, v2, v3, v1, v0}, Ldev/duo/workspaceprobe/n;->a(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private synthetic b(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    .line 14
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda59;

    invoke-direct {v0, p0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda59;-><init>(Ldev/duo/workspaceprobe/n;I)V

    invoke-direct {p0, p1, v0}, Ldev/duo/workspaceprobe/n;->a(ILjava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic b(IILdev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 19
    invoke-virtual {p3, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->add(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not taken into slot "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ldev/duo/taskcore/WorkspaceSession;->log()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DuoWorkbench"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda44;

    invoke-direct {p2, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda44;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic b(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 10
    invoke-virtual {p2, p1}, Ldev/duo/taskcore/WorkspaceSession;->enterFrom(I)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Corner entry refused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ldev/duo/taskcore/WorkspaceSession;->log()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DuoWorkbench"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance p2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda50;

    invoke-direct {p2, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda50;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic b(ILdev/duo/workspaceprobe/i;)V
    .locals 1

    .line 15
    iput p1, p0, Ldev/duo/workspaceprobe/n;->l0:I

    .line 16
    iput-object p2, p0, Ldev/duo/workspaceprobe/n;->m0:Ldev/duo/workspaceprobe/i;

    .line 17
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda35;-><init>(Ldev/duo/workspaceprobe/n;ILdev/duo/workspaceprobe/i;)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->b(F)V

    return-void
.end method

.method private static synthetic b(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 11
    const-string v0, "master off"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic b(Ldev/duo/workspaceprobe/b$R;)V
    .locals 0

    .line 22
    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/b$R;)V

    return-void
.end method

.method private static synthetic b(Ldev/duo/workspaceprobe/l;Ljava/util/Map;)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ldev/duo/workspaceprobe/l;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Ldev/duo/workspaceprobe/m;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p1}, Ldev/duo/workspaceprobe/m;->a(FF)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 23
    invoke-virtual {p1, p0}, Ldev/duo/taskcore/WorkspaceSession;->systemSurface(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/n;->c0:Z

    .line 2
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/n;->d0:Z

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    invoke-static {v0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/b$R;)V

    .line 5
    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    .line 6
    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->M:Ldev/duo/workspaceprobe/m;

    .line 7
    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->Z:Ldev/duo/workspaceprobe/j;

    return-void
.end method

.method private synthetic c(I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    .line 10
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda28;-><init>(I)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic c(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 13
    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->callActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->callScreen()V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ldev/duo/taskcore/WorkspaceSession;->interstitial(I)V

    return-void
.end method

.method private synthetic c(ILdev/duo/workspaceprobe/i;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/n;->d(ILdev/duo/workspaceprobe/i;)V

    return-void
.end method

.method private static synthetic c(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->setDisplayMismatch(Z)V

    return-void
.end method

.method private static synthetic c(Ldev/duo/workspaceprobe/b$R;)V
    .locals 0

    .line 12
    invoke-static {p0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/b$R;)V

    return-void
.end method

.method private d()V
    .locals 5

    .line 35
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->R:Ldev/duo/workspaceprobe/b$R;

    .line 36
    const/4 v2, 0x0

    iput-object v2, p0, Ldev/duo/workspaceprobe/n;->R:Ldev/duo/workspaceprobe/b$R;

    iput-object v2, p0, Ldev/duo/workspaceprobe/n;->Q:Ldev/duo/workspaceprobe/b$R;

    .line 37
    iget-object v3, p0, Ldev/duo/workspaceprobe/n;->n0:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    iput-object v2, p0, Ldev/duo/workspaceprobe/n;->n0:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda4;

    invoke-direct {v4, v3}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda4;-><init>(Landroid/animation/ValueAnimator;)V

    const-string v3, "popup animation"

    invoke-static {v3, v4}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 38
    :cond_0
    iget-object v3, p0, Ldev/duo/workspaceprobe/n;->S:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    iput-object v2, p0, Ldev/duo/workspaceprobe/n;->S:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda5;

    invoke-direct {v2, v3}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Thread;)V

    const-string v3, "picker thread"

    invoke-static {v3, v2}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 39
    :cond_1
    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda6;-><init>(Ldev/duo/workspaceprobe/b$R;)V

    const-string v0, "popup"

    invoke-static {v0, v2}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 40
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda7;-><init>(Ldev/duo/workspaceprobe/b$R;)V

    const-string v1, "popup outside"

    invoke-static {v1, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic d(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->memberToBack(ILjava/lang/Object;)V

    return-void
.end method

.method private d(ILdev/duo/workspaceprobe/i;)V
    .locals 5

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "DuoWorkbench"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v4, p2, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    :try_start_0
    invoke-static {v1}, Ldev/duo/workspaceprobe/o;->a(Landroid/app/TaskInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-direct {p0, p1, v0}, Ldev/duo/workspaceprobe/n;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;

    invoke-direct {v0, p0, p1, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda65;-><init>(Ldev/duo/workspaceprobe/n;II)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task member unreadable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": not taken"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const v3, 0x186a0

    div-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldev/duo/workspaceprobe/n;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 22
    :cond_3
    :try_start_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p2, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    iget-object v4, p2, Ldev/duo/workspaceprobe/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/duo/taskcore/WorkspaceShell;->launch(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->U:Landroid/os/IBinder;

    .line 24
    iput p1, p0, Ldev/duo/workspaceprobe/n;->V:I

    .line 25
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0, v0, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda66;-><init>(Ldev/duo/workspaceprobe/n;Landroid/os/IBinder;Ldev/duo/workspaceprobe/i;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p2, p2, Ldev/duo/workspaceprobe/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->j()V

    :goto_0
    return-void
.end method

.method private static synthetic d(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->setDisplayMismatch(Z)V

    return-void
.end method

.method private e()Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private static synthetic e(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->systemFocused(ILjava/lang/Object;)V

    return-void
.end method

.method private static synthetic e(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 5
    const-string v0, "workbench off"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceSession;->close(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic f(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 10
    invoke-virtual {p1, p0}, Ldev/duo/taskcore/WorkspaceSession;->remove(I)Z

    return-void
.end method

.method private static synthetic f(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->retryReturn()V

    return-void
.end method

.method private f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceShell;->systemGate()Ldev/duo/taskcore/SystemGate;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ldev/duo/taskcore/SystemGate;->blocksActions()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ldev/duo/taskcore/SystemGate;->requiresClose()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v2, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Ldev/duo/workspaceprobe/b;->I1:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Ldev/duo/workspaceprobe/b;->L1:Z

    if-nez v2, :cond_4

    iget-boolean v0, v0, Ldev/duo/workspaceprobe/b;->N1:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    .line 4
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v2, :cond_4

    .line 5
    :cond_2
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    .line 6
    invoke-virtual {v0}, Ldev/duo/workspaceprobe/b;->v0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v0}, Ldev/duo/workspaceprobe/b;->p2()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v0}, Ldev/duo/workspaceprobe/b;->R0()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/16 v3, 0x93c

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v2, 0x688

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private g()V
    .locals 11

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->Z:Ldev/duo/workspaceprobe/j;

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/n;->P:Z

    .line 6
    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceHost;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v1

    .line 7
    iget-object v6, p0, Ldev/duo/workspaceprobe/n;->Z:Ldev/duo/workspaceprobe/j;

    .line 8
    iget v2, p0, Ldev/duo/workspaceprobe/n;->a0:F

    invoke-virtual {v1, v2}, Ldev/duo/taskcore/Geometry;->mainFollowing(F)Landroid/graphics/Rect;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    const/16 v2, 0x93c

    const/16 v3, 0x688

    invoke-direct {v8, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    const/4 v2, 0x4

    new-array v4, v2, [Landroid/graphics/Rect;

    new-array v5, v2, [Landroid/graphics/Rect;

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 11
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v10, v10, v3

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v9, v4, v3

    iget v10, p0, Ldev/duo/workspaceprobe/n;->a0:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 12
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v10, v10, v3

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v9, v5, v3

    iget-object v10, v1, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v10, v10, v3

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v10, v10, 0x28

    neg-int v10, v10

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget v9, p0, Ldev/duo/workspaceprobe/n;->b0:F

    .line 15
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldev/duo/workspaceprobe/n;->c0:Z

    .line 16
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/n;->d0:Z

    .line 17
    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda25;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda25;-><init>(Ldev/duo/workspaceprobe/n;[Landroid/graphics/Rect;[Landroid/graphics/Rect;Ldev/duo/workspaceprobe/j;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda26;-><init>(Ldev/duo/workspaceprobe/n;)V

    const-wide/16 v4, 0x140

    invoke-direct {p0, v4, v5, v2, v0}, Ldev/duo/workspaceprobe/n;->a(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic g(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 0

    .line 18
    invoke-virtual {p1, p0}, Ldev/duo/taskcore/WorkspaceSession;->swap(I)Z

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 2
    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda36;-><init>(Ldev/duo/workspaceprobe/n;Landroid/view/Choreographer;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private static synthetic h(ILdev/duo/taskcore/WorkspaceSession;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ldev/duo/taskcore/WorkspaceSession;->taskGone(ILjava/lang/Object;)V

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->L:Ldev/duo/workspaceprobe/b$R;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/workspaceprobe/n;->O:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/workspaceprobe/n;->P:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda29;-><init>(Ldev/duo/workspaceprobe/n;)V

    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;-><init>(Ldev/duo/workspaceprobe/n;)V

    const-wide/16 v2, 0xb4

    invoke-direct {p0, v2, v3, v0, v1}, Ldev/duo/workspaceprobe/n;->a(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->z:Ldev/duo/workspaceprobe/o;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceShell;->members(Ldev/duo/taskcore/WorkspaceSession;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldev/duo/workspaceprobe/o;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    const-string v1, "DuoWorkbench"

    const-string v2, "Video isolation not rolled back to the session members"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic k()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/n;->c0:Z

    .line 2
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/n;->d0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/n;->d0:Z

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->h()V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/n;->O:Z

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->i()V

    return-void
.end method

.method private o()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->g0:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->i0:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    iget v3, p0, Ldev/duo/workspaceprobe/n;->j0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->i0:Ljava/lang/reflect/Method;

    iget v3, p0, Ldev/duo/workspaceprobe/n;->k0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 6
    const-string v2, "DuoWorkbench"

    const-string v3, "Device state unreadable: treated as folded"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return v1
.end method

.method private p()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xe3e3e2

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->F1:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/Collection;)V

    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->Y:Ljava/util/concurrent/ExecutorService;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    .line 6
    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0, v1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda46;-><init>(Ldev/duo/workspaceprobe/n;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private r()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceShell;->systemGate()Ldev/duo/taskcore/SystemGate;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Ldev/duo/taskcore/SystemGate;->requiresPause()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 6
    :goto_2
    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda67;

    invoke-direct {v1, v2, v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda67;-><init>(ZZ)V

    invoke-direct {p0, v1}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private s()I
    .locals 7

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    const-string v1, "status_bar_height_landscape"

    const-string v2, "status_bar_height_portrait"

    const-string v3, "status_bar_height"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    aget-object v4, v1, v2

    .line 4
    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private t()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3
    :try_start_0
    invoke-static {v2}, Ldev/duo/workspaceprobe/o;->a(Landroid/app/TaskInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task member unreadable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DuoWorkbench"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private u()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private v()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->h0:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    const-string v0, "android.hardware.devicestate.DeviceStateManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4
    const-string v1, "android.hardware.devicestate.DeviceStateManager$DeviceStateCallback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    const-string v2, "android.hardware.devicestate.DeviceState"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "hasProperty"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Ldev/duo/workspaceprobe/n;->i0:Ljava/lang/reflect/Method;

    .line 7
    const-string v3, "PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Ldev/duo/workspaceprobe/n;->j0:I

    .line 8
    const-string v3, "PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Ldev/duo/workspaceprobe/n;->k0:I

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda10;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    const-string v3, "registerCallback"

    const-class v4, Ljava/util/concurrent/Executor;

    filled-new-array {v4, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    .line 19
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ldev/duo/fold/g$b$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Ldev/duo/fold/g$b$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object v2, p0, Ldev/duo/workspaceprobe/n;->h0:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 22
    const-string v1, "DuoWorkbench"

    const-string v2, "Device state unavailable: any display change ends the workbench"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)V
    .locals 8

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 37
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/n;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldev/duo/workspaceprobe/n;->w()V

    .line 38
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    const v2, 0x44bf8000    # 1532.0f

    const/high16 v3, 0x450b0000    # 2224.0f

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    sget-object v4, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v4, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 42
    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda76;

    invoke-direct {p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda76;-><init>()V

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_b

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    iput-boolean v1, p0, Ldev/duo/workspaceprobe/n;->C:Z

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Ldev/duo/workspaceprobe/n;->F:F

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Ldev/duo/workspaceprobe/n;->G:F

    .line 49
    new-instance p1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda77;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda77;-><init>(Ldev/duo/workspaceprobe/n;)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n;->J:Ljava/lang/Runnable;

    .line 50
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    if-eqz p1, :cond_b

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->q()V

    return-void

    .line 55
    :cond_2
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/n;->C:Z

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x5

    if-eq v0, v2, :cond_c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    goto/16 :goto_2

    .line 57
    :cond_4
    iget v2, p0, Ldev/duo/workspaceprobe/n;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, p0, Ldev/duo/workspaceprobe/n;->G:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 58
    iget-boolean v4, p0, Ldev/duo/workspaceprobe/n;->D:Z

    if-nez v4, :cond_6

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Ldev/duo/workspaceprobe/n;->F:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v4, p0, Ldev/duo/workspaceprobe/n;->G:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    if-eq v0, v1, :cond_5

    .line 60
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    :cond_5
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/n;->w()V

    return-void

    :cond_6
    float-to-double v4, v2

    float-to-double v6, v3

    .line 63
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide v6, 0x406b800000000000L    # 220.0

    cmpl-double p1, v4, v6

    if-ltz p1, :cond_7

    move p1, v1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 64
    invoke-direct {p0, v2, v3, p1}, Ldev/duo/workspaceprobe/n;->a(FFZ)V

    return-void

    :cond_8
    if-ne v0, v1, :cond_b

    .line 66
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->H:[I

    .line 67
    iget v1, p0, Ldev/duo/workspaceprobe/n;->I:I

    .line 68
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/n;->w()V

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    if-ltz v1, :cond_9

    .line 69
    invoke-direct {p0, v1}, Ldev/duo/workspaceprobe/n;->a(I)V

    return-void

    :cond_9
    if-eqz p1, :cond_a

    if-eqz v0, :cond_a

    .line 70
    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a([I)V

    return-void

    .line 71
    :cond_a
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->b()V

    :cond_b
    :goto_1
    return-void

    .line 72
    :cond_c
    :goto_2
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->b()V

    invoke-virtual {p0}, Ldev/duo/workspaceprobe/n;->w()V

    return-void
.end method

.method a(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 4
    const-string v0, "DuoWorkbench"

    :try_start_0
    new-instance v1, Ldev/duo/taskcore/WorkspaceShell;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    invoke-direct {v1, v2, p1}, Ldev/duo/taskcore/WorkspaceShell;-><init>(Lio/github/libxposed/api/XposedInterface;Ljava/lang/ClassLoader;)V

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    .line 5
    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceShell;->install()V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskView workbench core installed 1.0.415-1-05e92cb34b03 wmProtocol="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    .line 11
    const-string v1, "TaskView workbench core unavailable: the corner stays the App\'s"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :goto_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->v:Ldev/duo/workspaceprobe/p;

    invoke-virtual {p1}, Ldev/duo/workspaceprobe/p;->a()V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 2

    .line 14
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-static {p1}, Ldev/duo/taskcore/SystemGate;->read(Ljava/lang/Object;)Ldev/duo/taskcore/SystemGate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    const-string v0, "DuoWorkbench"

    const-string v1, "Shade state unreadable: treated as unknown (blocked, workbench returns)"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    sget-object p1, Ldev/duo/taskcore/SystemGate;->UNKNOWN:Ldev/duo/taskcore/SystemGate;

    .line 23
    :goto_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceShell;->setSystemGate(Ldev/duo/taskcore/SystemGate;)V

    .line 24
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda60;-><init>(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/SystemGate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 305
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ldev/duo/taskcore/WorkspaceHost;->setNight(Z)V

    .line 306
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->M:Ldev/duo/workspaceprobe/m;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const p1, -0xe3e3e2

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Ldev/duo/workspaceprobe/m;->a(I)V

    :cond_2
    return-void
.end method

.method public acceptsOverlay()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->closing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v1

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->acceptsAdopt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public adopt(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 2
    const-string v1, "dev.duo.hookprobe"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-boolean p2, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object p2

    .line 5
    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->interstitialPending()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->acceptsAdopt()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 6
    :cond_1
    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p2, v1, :cond_2

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p2, v1, :cond_2

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq p2, v1, :cond_2

    return v0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->acceptsAdopt()Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public adoptReady(I)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda48;-><init>(Ldev/duo/workspaceprobe/n;I)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public barCancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->Z:Ldev/duo/workspaceprobe/j;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v0

    .line 3
    iget v1, p0, Ldev/duo/workspaceprobe/n;->a0:F

    iget v2, p0, Ldev/duo/workspaceprobe/n;->b0:F

    .line 4
    new-instance v3, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;

    invoke-direct {v3, p0, v0, v1, v2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda34;-><init>(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/Geometry;FF)V

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda9;-><init>(Ldev/duo/workspaceprobe/n;)V

    const-wide/16 v1, 0xb4

    invoke-direct {p0, v1, v2, v3, v0}, Ldev/duo/workspaceprobe/n;->a(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public barDrag(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 3
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v2

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->Z:Ldev/duo/workspaceprobe/j;

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Ldev/duo/workspaceprobe/n;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_2
    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceHost;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/taskcore/Geometry;FF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public canAnimateGroup()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->closing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public changed(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 9

    .line 1
    const/4 v0, 0x4

    new-array v7, v0, [Ldev/duo/taskcore/TaskBinding;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Ldev/duo/taskcore/WorkspaceSession;->slot(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v2

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->closing()Z

    move-result v5

    if-nez v5, :cond_3

    .line 5
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v4, v0, :cond_3

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v4, v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v4, v0, :cond_2

    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v4, v0, :cond_4

    .line 8
    :cond_2
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->main()Ldev/duo/taskcore/TaskBinding;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ldev/duo/taskcore/WorkspaceShell;->registerRecentsGroup(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->w:Ldev/duo/taskcore/WorkspaceShell;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceShell;->clearRecentsGroup()V

    .line 12
    :cond_4
    :goto_2
    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceShell;->members(Ldev/duo/taskcore/WorkspaceSession;)[Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession;->toString()Ljava/lang/String;

    move-result-object v6

    .line 14
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;-><init>(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceSession$State;ZLjava/lang/String;[Ldev/duo/taskcore/TaskBinding;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    .line 2
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    .line 3
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->g()V

    .line 4
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda16;-><init>()V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public external(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda52;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda52;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public focused(ILjava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda63;

    invoke-direct {v0, p1, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda63;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public interstitial(I)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda30;-><init>(I)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isolate([Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, p1, p2}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda58;-><init>(Ldev/duo/workspaceprobe/n;[Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public keepsOverlay()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->closing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Ldev/duo/workspaceprobe/n;->f0:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->acceptsAdopt()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    .line 4
    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public keyguardExitAborted()V
    .locals 2

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda68;-><init>()V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda69;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda69;-><init>(Ldev/duo/workspaceprobe/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public launched(ILandroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p2, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda41;-><init>(Ldev/duo/workspaceprobe/n;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method m()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_7

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v2, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {v1}, Ldev/duo/workspaceprobe/b;->v0()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda53;-><init>()V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->e()Landroid/graphics/Rect;

    move-result-object v1

    .line 5
    iget-object v2, p0, Ldev/duo/workspaceprobe/n;->W:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 8
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->o()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda54;-><init>()V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    goto :goto_3

    .line 15
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->o()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "folded, display "

    goto :goto_2

    :cond_5
    const-string v3, "display changed "

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda55;

    invoke-direct {v2, v1, v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda55;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void

    .line 20
    :cond_6
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda56;-><init>()V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    .line 21
    :goto_3
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->r()V

    :cond_7
    :goto_4
    return-void
.end method

.method public memberToBack(I)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda49;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda49;-><init>(I)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public memberToFront(I)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public menu(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->geometry()Ldev/duo/taskcore/Geometry;

    move-result-object v0

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v7, v0, p1

    .line 3
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x432c0000    # 172.0f

    div-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    new-instance v2, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda42;-><init>(Ldev/duo/workspaceprobe/n;I)V

    new-instance v3, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda43;

    invoke-direct {v3, p0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda43;-><init>(Ldev/duo/workspaceprobe/n;I)V

    invoke-static {v1, v0, v2, v3}, Ldev/duo/workspaceprobe/l;->a(Landroid/content/Context;FLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    .line 22
    iget p1, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, p1, 0x18

    iget p1, v7, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->s()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 p1, 0x435c0000    # 220.0f

    mul-float/2addr p1, v0

    .line 23
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/high16 p1, 0x42f40000    # 122.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/high16 p1, 0x41c00000    # 24.0f

    mul-float v8, v0, p1

    .line 24
    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ldev/duo/workspaceprobe/n;->a(Landroid/view/View;IIIILandroid/graphics/Rect;F)Z

    return-void
.end method

.method n()V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda45;-><init>()V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public ownsNotificationLaunch()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->closing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->state()Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v1

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->acceptsAdopt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pipFinished(JILjava/lang/Object;Z)V
    .locals 6

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;-><init>(JILjava/lang/Object;Z)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public pipStarting(JILjava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda75;

    invoke-direct {v0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda75;-><init>(JILjava/lang/Object;)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public plus(I)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda3;-><init>(Ldev/duo/workspaceprobe/n;I)V

    invoke-direct {p0, p1, v0}, Ldev/duo/workspaceprobe/n;->a(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public recentsReturned()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->recentsReturned()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reorder(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    .line 3
    new-instance v1, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2, v0}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda20;-><init>(Ldev/duo/workspaceprobe/n;IILdev/duo/taskcore/WorkspaceHost;)V

    invoke-direct {p0, v1}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resumeRequested(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession;->userResume(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sourceEvent(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda24;-><init>(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public swap(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/n;->d()V

    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda47;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda47;-><init>(I)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public systemSurface(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda57;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda57;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public taskChanged(ILjava/lang/Object;II)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda64;

    invoke-direct {v0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda64;-><init>(ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public taskGone(I)V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/n;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unlocking()Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->x:Ldev/duo/taskcore/WorkspaceSession;

    .line 2
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->y:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceSession;->unlocking()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method w()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n;->J:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->u:Ldev/duo/workspaceprobe/b;

    iget-object v1, v1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->J:Ljava/lang/Runnable;

    .line 3
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldev/duo/workspaceprobe/n;->E:Z

    iput-boolean v1, p0, Ldev/duo/workspaceprobe/n;->D:Z

    iput-boolean v1, p0, Ldev/duo/workspaceprobe/n;->C:Z

    .line 4
    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->H:[I

    .line 5
    const/4 v1, -0x1

    iput v1, p0, Ldev/duo/workspaceprobe/n;->I:I

    .line 6
    iget-object v1, p0, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    invoke-static {v1}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/b$R;)V

    .line 7
    iput-object v0, p0, Ldev/duo/workspaceprobe/n;->K:Ldev/duo/workspaceprobe/b$R;

    return-void
.end method
