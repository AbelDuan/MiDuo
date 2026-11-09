.class final Ldev/duo/hookprobe/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/IBinder; = null

.field private static b:I = 0x0

.field private static c:Ldev/duo/hookprobe/w; = null

.field private static d:Ldev/duo/hookprobe/w; = null

.field private static volatile e:Z = false

.field private static f:Z = false

.field private static g:Z = false

.field private static h:Landroid/os/IBinder; = null

.field private static i:J = 0x0L

.field private static j:J = 0x0L

.field private static k:I = 0x0

.field private static l:I = 0x0

.field private static m:Z = false

.field private static n:Ljava/lang/String; = null

.field private static o:I = 0x0

.field private static p:I = 0x0

.field private static q:I = 0x0

.field private static r:J = -0x1L

.field private static s:J = 0x0L

.field private static t:J = 0x0L

.field private static u:Ljava/lang/String; = "\u5c1a\u65e0\u6837\u672c"

.field private static final v:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static w:[F


# direct methods
.method public static synthetic $r8$lambda$8j20ODmucoH0Pbb4OuqmqriYERc(Ldev/duo/workspaceprobe/b;[ZLandroid/view/Choreographer$FrameCallback;[ZLandroid/view/Choreographer$FrameCallback;[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;[ZLandroid/view/Choreographer$FrameCallback;[ZLandroid/view/Choreographer$FrameCallback;[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$aYKPEulRcoAU-pYyWU4MMZWRVZ0(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->c(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cTDpC1wgzrCWcLV413dcOCjQpXs(Landroid/os/IBinder;JLandroid/view/View;Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ldev/duo/hookprobe/t;->a(Landroid/os/IBinder;JLandroid/view/View;Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$frQJ56RN79nlV3zRWR72-g0tlDg(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->d(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o7sCSAt0o7xuSZ3aAxWJHfNPWoY(Ldev/duo/workspaceprobe/b;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$tuTEdOI6u0l9e3bw3bMVWxFbFmw(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/t;->c(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/t;->v:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 3
    sput p0, Ldev/duo/hookprobe/t;->q:I

    return p0
.end method

.method static synthetic a(J)J
    .locals 0

    .line 5
    sput-wide p0, Ldev/duo/hookprobe/t;->s:J

    return-wide p0
.end method

.method static synthetic a(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 11
    sput-object p0, Ldev/duo/hookprobe/t;->h:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    sput-object p0, Ldev/duo/hookprobe/t;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(IIJ)V
    .locals 0

    .line 7
    invoke-static {p0, p1, p2, p3}, Ldev/duo/hookprobe/t;->b(IIJ)V

    return-void
.end method

.method static synthetic a(IJ)V
    .locals 0

    .line 6
    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/t;->b(IJ)V

    return-void
.end method

.method private static synthetic a(Landroid/os/IBinder;JLandroid/view/View;Ldev/duo/workspaceprobe/b;)V
    .locals 5

    .line 37
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-nez v0, :cond_9

    sget-object v0, Ldev/duo/hookprobe/t;->h:Landroid/os/IBinder;

    if-ne p0, v0, :cond_9

    sget-wide v0, Ldev/duo/hookprobe/t;->i:J

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    goto/16 :goto_5

    .line 38
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 39
    sget p2, Ldev/duo/hookprobe/t;->k:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x93c

    if-eq p2, v2, :cond_2

    sget v3, Ldev/duo/hookprobe/t;->l:I

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    :goto_1
    if-ne p0, p2, :cond_3

    .line 40
    sget v4, Ldev/duo/hookprobe/t;->l:I

    if-eq p1, v4, :cond_4

    :cond_3
    if-ne p1, p2, :cond_5

    sget p1, Ldev/duo/hookprobe/t;->l:I

    if-ne p0, p1, :cond_5

    .line 41
    :cond_4
    invoke-static {p4}, Ldev/duo/hookprobe/t;->d(Ldev/duo/workspaceprobe/b;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Ldev/duo/hookprobe/t;->n:Ljava/lang/String;

    const-string p1, "local:4639175402683733248"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne v3, p0, :cond_5

    move p0, v1

    goto :goto_2

    :cond_5
    move p0, v0

    .line 42
    :goto_2
    invoke-virtual {p4}, Ldev/duo/workspaceprobe/b;->E()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p3}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    .line 43
    sget p0, Ldev/duo/hookprobe/t;->k:I

    if-eq p0, v2, :cond_7

    sget p0, Ldev/duo/hookprobe/t;->l:I

    if-ne p0, v2, :cond_6

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    :goto_3
    const/16 v0, 0x11

    goto :goto_4

    :cond_8
    nop

    .line 44
    :goto_4
    invoke-static {p4}, Ldev/duo/hookprobe/t;->b(Ldev/duo/workspaceprobe/b;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Ldev/duo/hookprobe/t;->b(IJ)V

    :cond_9
    :goto_5
    return-void
.end method

.method private static a(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 4

    .line 12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/t;->a:Landroid/os/IBinder;

    const v2, 0xd0f247

    const/4 v3, 0x0

    invoke-interface {v1, v2, p0, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 20
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\u5c31\u7eea\u63a5\u6536\u7aef\u4e0d\u53ef\u7528"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 23
    :try_start_2
    invoke-static {}, Ldev/duo/hookprobe/t;->o()V

    .line 24
    const-string v2, "MiDuoFold"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\u53d1\u9001\u5931\u8d25\uff0c\u672c\u8fdb\u7a0b\u505c\u6b62\u5c31\u7eea\u89c2\u5bdf"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V
    .locals 0

    .line 10
    invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->b(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->b(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/b;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_1

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 45
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->b(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/b;[ZLandroid/view/Choreographer$FrameCallback;[ZLandroid/view/Choreographer$FrameCallback;[J)V
    .locals 3

    .line 46
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0}, Ldev/duo/hookprobe/t;->b(Ldev/duo/workspaceprobe/b;)V

    .line 48
    invoke-static {p0, p5}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;[J)[J

    move-result-object p0

    .line 49
    sget-boolean p5, Ldev/duo/hookprobe/t;->e:Z

    if-eqz p5, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    sget-object p5, Ldev/duo/hookprobe/t;->d:Ldev/duo/hookprobe/w;

    invoke-virtual {p5, p0}, Ldev/duo/hookprobe/w;->a([J)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    .line 51
    aget-boolean p5, p1, v0

    if-eqz p5, :cond_2

    aput-boolean v0, p1, v0

    sget-object p1, Ldev/duo/hookprobe/t;->d:Ldev/duo/hookprobe/w;

    iget p5, p1, Ldev/duo/hookprobe/w;->i:I

    and-int/lit16 p5, p5, -0x81

    iget-wide v1, p1, Ldev/duo/hookprobe/w;->h:J

    const/16 p1, 0xf

    invoke-static {p1, p5, v1, v2}, Ldev/duo/hookprobe/t;->b(IIJ)V

    .line 52
    :cond_2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 53
    sget-object p1, Ldev/duo/hookprobe/t;->d:Ldev/duo/hookprobe/w;

    invoke-virtual {p1}, Ldev/duo/hookprobe/w;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 55
    :cond_3
    sget-object p1, Ldev/duo/hookprobe/t;->c:Ldev/duo/hookprobe/w;

    invoke-virtual {p1, p0}, Ldev/duo/hookprobe/w;->a([J)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 57
    :cond_4
    aget-boolean p0, p3, v0

    if-eqz p0, :cond_5

    aput-boolean v0, p3, v0

    sget-object p0, Ldev/duo/hookprobe/t;->c:Ldev/duo/hookprobe/w;

    iget p1, p0, Ldev/duo/hookprobe/w;->i:I

    and-int/lit8 p1, p1, -0x9

    iget-wide p2, p0, Ldev/duo/hookprobe/w;->h:J

    const/16 p0, 0x8

    invoke-static {p0, p1, p2, p3}, Ldev/duo/hookprobe/t;->b(IIJ)V

    .line 58
    :cond_5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 59
    sget-object p0, Ldev/duo/hookprobe/t;->c:Ldev/duo/hookprobe/w;

    invoke-virtual {p0}, Ldev/duo/hookprobe/w;->d()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    return v0
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/t;->d(Ldev/duo/workspaceprobe/b;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 8
    sput-boolean p0, Ldev/duo/hookprobe/t;->m:Z

    return p0
.end method

.method private static a(Ldev/duo/workspaceprobe/b;[J)[J
    .locals 7

    .line 27
    invoke-static {p0}, Ldev/duo/hookprobe/t;->d(Ldev/duo/workspaceprobe/b;)Z

    move-result p0

    const-string v0, "\u63a5\u6536"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const-string p0, "\u663e\u793a\u4e0d\u53ef\u8bfb"

    goto :goto_1

    :cond_0
    aget-wide v3, p1, v2

    sget-wide v5, Ldev/duo/hookprobe/t;->j:J

    cmp-long p0, v3, v5

    if-gez p0, :cond_1

    const-string p0, "\u7ed8\u5236\u65e9\u4e8e\u5207\u5c4f\u89c2\u5bdf"

    goto :goto_1

    .line 28
    :cond_1
    aget-wide v3, p1, v1

    const-wide/16 v5, 0x10

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    sget-object v3, Ldev/duo/hookprobe/t;->n:Ljava/lang/String;

    const-string v4, "local:4639175402683733248"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq p0, v3, :cond_3

    const-string p0, "\u7269\u7406\u5c4f\u4e0d\u5339\u914d"

    goto :goto_1

    :cond_3
    move-object p0, v0

    .line 29
    :goto_1
    sget-object v3, Ldev/duo/hookprobe/t;->h:Landroid/os/IBinder;

    if-eqz v3, :cond_6

    sget-boolean v3, Ldev/duo/hookprobe/t;->m:Z

    if-nez v3, :cond_6

    .line 30
    sget v3, Ldev/duo/hookprobe/t;->o:I

    add-int/2addr v3, v2

    sput v3, Ldev/duo/hookprobe/t;->o:I

    .line 31
    aget-wide v3, p1, v1

    const/16 v5, 0x8

    ushr-long/2addr v3, v5

    const-wide/32 v5, 0xffffff

    and-long/2addr v3, v5

    .line 32
    sget-wide v5, Ldev/duo/hookprobe/t;->r:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    sget v5, Ldev/duo/hookprobe/t;->p:I

    add-int/2addr v5, v2

    sput v5, Ldev/duo/hookprobe/t;->p:I

    sput-wide v3, Ldev/duo/hookprobe/t;->r:J

    .line 33
    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget v3, Ldev/duo/hookprobe/t;->q:I

    add-int/2addr v3, v2

    sput v3, Ldev/duo/hookprobe/t;->q:I

    .line 34
    :cond_5
    sput-object p0, Ldev/duo/hookprobe/t;->u:Ljava/lang/String;

    aget-wide v3, p1, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    sput-wide v3, Ldev/duo/hookprobe/t;->s:J

    aget-wide v1, p1, v2

    sput-wide v1, Ldev/duo/hookprobe/t;->t:J

    .line 36
    :cond_6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object p1

    :cond_7
    const/4 p0, 0x4

    new-array p0, p0, [J

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic b()I
    .locals 1

    .line 1
    sget v0, Ldev/duo/hookprobe/t;->q:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 3
    sput p0, Ldev/duo/hookprobe/t;->k:I

    return p0
.end method

.method static synthetic b(J)J
    .locals 0

    .line 2
    sput-wide p0, Ldev/duo/hookprobe/t;->t:J

    return-wide p0
.end method

.method private static b(IIJ)V
    .locals 2

    .line 37
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 38
    sget-boolean p0, Ldev/duo/hookprobe/t;->m:Z

    if-nez p0, :cond_1

    invoke-static {p1, p2, p3}, Ldev/duo/hookprobe/t;->b(IJ)V

    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 40
    const-string v1, "dev.duo.foldanim1.CONTROL"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    const-string p0, "\u5c31\u7eea\u4fe1\u53f7"

    invoke-static {v0, p0}, Ldev/duo/hookprobe/t;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    return-void
.end method

.method private static b(IJ)V
    .locals 3

    .line 14
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-nez v0, :cond_1

    sget-object v0, Ldev/duo/hookprobe/t;->h:Landroid/os/IBinder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 16
    const-string v1, "dev.duo.foldanim1.CONTROL"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    sget-object v1, Ldev/duo/hookprobe/t;->h:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    sget-wide v1, Ldev/duo/hookprobe/t;->i:J

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    const-string p0, "\u672c\u4ee3\u76ee\u6807\u5185\u5bb9"

    invoke-static {v0, p0}, Ldev/duo/hookprobe/t;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ldev/duo/workspaceprobe/b;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b;->D()[F

    move-result-object p0

    .line 44
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v0, Ldev/duo/hookprobe/t;->w:[F

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    sput-object p0, Ldev/duo/hookprobe/t;->w:[F

    .line 46
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 47
    const-string v1, "dev.duo.foldanim1.CONTROL"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 48
    const-string p0, "\u4fa7\u680f\u5750\u6807"

    invoke-static {v0, p0}, Ldev/duo/hookprobe/t;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ldev/duo/workspaceprobe/b;Landroid/os/Bundle;)V
    .locals 1

    .line 49
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ldev/duo/workspaceprobe/b;->a(Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 50
    const-string p1, "MiDuoFold"

    const-string v0, "\u672a\u79fb\u4ea4\u955c\u50cf\u6e05\u7406\u5931\u8d25\uff0c\u4fdd\u7559\u5230\u4e0b\u6b21\u53d6\u5c42\u6536\u5c3e"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static b(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 7

    .line 20
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-nez v0, :cond_3

    sget-object v2, Ldev/duo/hookprobe/t;->h:Landroid/os/IBinder;

    if-eqz v2, :cond_3

    sget-boolean v0, Ldev/duo/hookprobe/t;->m:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    sget-wide v3, Ldev/duo/hookprobe/t;->i:J

    .line 22
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;

    move-object v6, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda3;-><init>(Landroid/os/IBinder;JLandroid/view/View;Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->registerFrameCommitCallback(Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    return-void

    .line 36
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ldev/duo/hookprobe/t;->b(IJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_0
    const-string p0, "assets/fold/curve.properties"

    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 8
    const-string p0, "quiet_frames"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Ldev/duo/hookprobe/t;->b:I

    .line 9
    new-instance v0, Ldev/duo/hookprobe/w;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/w;-><init>(I)V

    sput-object v0, Ldev/duo/hookprobe/t;->c:Ldev/duo/hookprobe/w;

    .line 10
    new-instance p0, Ldev/duo/hookprobe/w;

    sget v0, Ldev/duo/hookprobe/t;->b:I

    const/16 v1, 0xc0

    invoke-direct {p0, v0, v1}, Ldev/duo/hookprobe/w;-><init>(II)V

    sput-object p0, Ldev/duo/hookprobe/t;->d:Ldev/duo/hookprobe/w;

    .line 11
    const-string p0, "android.os.ServiceManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v0, "display"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    sput-object p0, Ldev/duo/hookprobe/t;->a:Landroid/os/IBinder;

    if-eqz p0, :cond_1

    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "display \u670d\u52a1\u4e0d\u53ef\u7528"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 13
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6
    :catchall_2
    move-exception p0

    .line 13
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method static synthetic c(I)I
    .locals 0

    .line 2
    sput p0, Ldev/duo/hookprobe/t;->l:I

    return p0
.end method

.method static synthetic c(J)J
    .locals 0

    .line 3
    sput-wide p0, Ldev/duo/hookprobe/t;->r:J

    return-wide p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/t;->u:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic c(Ldev/duo/workspaceprobe/b;)V
    .locals 2

    .line 4
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b;->E()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-static {p0, v0, v1}, Ldev/duo/hookprobe/t;->b(IJ)V

    return-void

    .line 6
    :cond_1
    sget-object v0, Ldev/duo/hookprobe/t;->v:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Ldev/duo/hookprobe/t;->b(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic c(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 1

    .line 7
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ldev/duo/hookprobe/t;->b(Ldev/duo/workspaceprobe/b;)V

    return-void

    .line 9
    :cond_1
    sget-boolean p0, Ldev/duo/hookprobe/t;->m:Z

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ldev/duo/hookprobe/t;->b(IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic d(I)I
    .locals 0

    .line 3
    sput p0, Ldev/duo/hookprobe/t;->o:I

    return p0
.end method

.method static synthetic d()J
    .locals 2

    .line 1
    sget-wide v0, Ldev/duo/hookprobe/t;->s:J

    return-wide v0
.end method

.method static synthetic d(J)J
    .locals 0

    .line 2
    sput-wide p0, Ldev/duo/hookprobe/t;->i:J

    return-wide p0
.end method

.method private static synthetic d(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V
    .locals 2

    .line 35
    sget-object v0, Ldev/duo/hookprobe/t;->v:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda4;-><init>(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 41
    new-instance v0, Ldev/duo/hookprobe/t$c;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/t$c;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 45
    new-instance v0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda5;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 48
    invoke-static {p0, p1}, Ldev/duo/hookprobe/t;->b(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method

.method private static d(Ldev/duo/workspaceprobe/b;)Z
    .locals 6

    .line 4
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b;->B()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 7
    :cond_0
    sget-boolean v2, Ldev/duo/hookprobe/t;->g:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/b;->C()Landroid/hardware/display/DisplayManager;

    move-result-object v2

    new-instance v4, Ldev/duo/hookprobe/t$a;

    invoke-direct {v4, p0}, Ldev/duo/hookprobe/t$a;-><init>(Ldev/duo/workspaceprobe/b;)V

    new-instance p0, Landroid/os/Handler;

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    invoke-virtual {v2, v4, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 24
    sput-boolean v3, Ldev/duo/hookprobe/t;->g:Z

    .line 26
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "getUniqueId"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 27
    sget-object v1, Ldev/duo/hookprobe/t;->n:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 28
    sget-object v1, Ldev/duo/hookprobe/t;->n:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Ldev/duo/hookprobe/t;->j:J

    .line 29
    :cond_2
    sput-object p0, Ldev/duo/hookprobe/t;->n:Ljava/lang/String;

    .line 30
    sget-object p0, Ldev/duo/hookprobe/t;->c:Ldev/duo/hookprobe/w;

    const/4 v1, 0x4

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Ldev/duo/hookprobe/w;->a([J)Z

    sget-object p0, Ldev/duo/hookprobe/t;->d:Ldev/duo/hookprobe/w;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-virtual {p0, v1}, Ldev/duo/hookprobe/w;->a([J)Z

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 p0, 0xf

    invoke-static {p0, v0, v1, v2}, Ldev/duo/hookprobe/t;->b(IIJ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ldev/duo/hookprobe/t;->b(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v3

    .line 24
    :catch_0
    move-exception p0

    .line 34
    invoke-static {}, Ldev/duo/hookprobe/t;->o()V

    const-string v1, "MiDuoFold"

    const-string v2, "\u8bfb\u53d6\u5f53\u524d\u5c4f\u8eab\u4efd\u5931\u8d25"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic e(I)I
    .locals 0

    .line 2
    sput p0, Ldev/duo/hookprobe/t;->p:I

    return p0
.end method

.method static synthetic e()J
    .locals 2

    .line 1
    sget-wide v0, Ldev/duo/hookprobe/t;->t:J

    return-wide v0
.end method

.method static e(Ldev/duo/workspaceprobe/b;)V
    .locals 8

    .line 3
    const/4 v0, 0x1

    sput-boolean v0, Ldev/duo/hookprobe/t;->f:Z

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    new-instance v2, Ldev/duo/hookprobe/t$b;

    invoke-direct {v2, v1, p0}, Ldev/duo/hookprobe/t$b;-><init>(Landroid/os/Handler;Ldev/duo/workspaceprobe/b;)V

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 79
    const-string v3, "dev.duo.foldanim1.CONTROL"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 81
    const-string v2, "\u4fa7\u680f\u53d6\u5c42\u63a5\u53e3"

    invoke-static {v1, v2}, Ldev/duo/hookprobe/t;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Ldev/duo/hookprobe/t;->d(Ldev/duo/workspaceprobe/b;)Z

    .line 83
    new-instance v1, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b;)V

    iput-object v1, p0, Ldev/duo/workspaceprobe/b;->K6:Ljava/lang/Runnable;

    .line 88
    new-instance v1, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b;)V

    iput-object v1, p0, Ldev/duo/workspaceprobe/b;->J6:Ljava/util/function/Consumer;

    .line 104
    new-array v6, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v6, v1

    .line 105
    new-instance v7, Ldev/duo/hookprobe/t$d;

    invoke-direct {v7, v6}, Ldev/duo/hookprobe/t$d;-><init>([Z)V

    .line 112
    new-array v4, v0, [Z

    aput-boolean v1, v4, v1

    .line 113
    new-instance v5, Ldev/duo/hookprobe/t$e;

    invoke-direct {v5, v4}, Ldev/duo/hookprobe/t$e;-><init>([Z)V

    .line 120
    new-instance v2, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;-><init>(Ldev/duo/workspaceprobe/b;[ZLandroid/view/Choreographer$FrameCallback;[ZLandroid/view/Choreographer$FrameCallback;)V

    iput-object v2, v3, Ldev/duo/workspaceprobe/b;->I6:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic f()J
    .locals 2

    .line 1
    sget-wide v0, Ldev/duo/hookprobe/t;->j:J

    return-wide v0
.end method

.method static synthetic g()Ldev/duo/hookprobe/w;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/t;->c:Ldev/duo/hookprobe/w;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .line 1
    sget-boolean v0, Ldev/duo/hookprobe/t;->m:Z

    return v0
.end method

.method static synthetic i()Ldev/duo/hookprobe/w;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/t;->d:Ldev/duo/hookprobe/w;

    return-object v0
.end method

.method static synthetic j()Ljava/util/WeakHashMap;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/t;->v:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic k()Landroid/os/IBinder;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/t;->h:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic l()J
    .locals 2

    .line 1
    sget-wide v0, Ldev/duo/hookprobe/t;->i:J

    return-wide v0
.end method

.method static synthetic m()I
    .locals 1

    .line 1
    sget v0, Ldev/duo/hookprobe/t;->o:I

    return v0
.end method

.method static synthetic n()I
    .locals 1

    .line 1
    sget v0, Ldev/duo/hookprobe/t;->p:I

    return v0
.end method

.method private static o()V
    .locals 7

    .line 1
    sget-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Ldev/duo/hookprobe/t;->e:Z

    .line 4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "dev.duo.foldanim1.CONTROL"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7
    sget-boolean v3, Ldev/duo/hookprobe/t;->f:Z

    if-eqz v3, :cond_1

    const/16 v3, 0xe

    goto :goto_0

    :cond_1
    const/16 v3, 0x9

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    sget-boolean v3, Ldev/duo/hookprobe/t;->f:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    :goto_1
    sget-object v3, Ldev/duo/hookprobe/t;->a:Landroid/os/IBinder;

    const v5, 0xd0f247

    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    goto :goto_2

    .line 14
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "\u89c2\u5bdf\u505c\u6b62\u64a4\u9500\u672a\u5904\u7406"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v3

    .line 16
    :try_start_1
    const-string v4, "MiDuoFold"

    const-string v5, "\u89c2\u5bdf\u505c\u6b62\u64a4\u9500\u5931\u8d25"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    nop

    .line 18
    sput-object v2, Ldev/duo/hookprobe/t;->h:Landroid/os/IBinder;

    return-void

    .line 19
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
