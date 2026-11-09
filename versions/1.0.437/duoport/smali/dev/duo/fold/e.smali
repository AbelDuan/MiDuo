.class final Ldev/duo/fold/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/fold/e$b;,
        Ldev/duo/fold/e$c;
    }
.end annotation


# static fields
.field static final c:Ljava/lang/String; = "dev.duo.foldanim1.CONTROL"

.field static final d:I = 0xd0f247

.field static final e:I = 0x2

.field static final f:Ljava/lang/String; = "local:4639175402683733248"

.field static final g:Ljava/lang/String; = "local:4639175068132267009"


# instance fields
.field final a:Landroid/os/IBinder;

.field final b:Landroid/os/Binder;


# direct methods
.method public static synthetic $r8$lambda$3Q2VubI-iOeuDjIIQ0HNnbUxnzM(Ldev/duo/fold/e;JLjava/lang/String;IIZILandroid/os/Parcel;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Ldev/duo/fold/e;->a(JLjava/lang/String;IIZILandroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8iifO_8iqg-o7fTJB5wqzi6AT3I(Ldev/duo/fold/e;Ljava/lang/String;IIZLjava/lang/String;JIIILandroid/os/Parcel;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Ldev/duo/fold/e;->a(Ljava/lang/String;IIZLjava/lang/String;JIIILandroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vv3oNuk5XAkW6hjBNKEBGDg8niU(Ldev/duo/fold/e;IIILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/fold/e;->a(IIILandroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$abpR3cGRy7P2-iCm3gB6Ur95lIw(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/fold/e;->a(Ljava/lang/String;Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cWOgTVsyfZjZk3hKbndiBJsojrg(Ldev/duo/fold/e;Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/fold/e;->b(Ljava/lang/String;Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_voTQU7HsyMYEsIjq0a_WrOdqI(Ldev/duo/fold/e;JLandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/fold/e;->b(JLandroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kMIRaCgYxziBaqgd-CohimTUdy0(Ldev/duo/fold/e;ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/fold/e;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mseN9edqEWdMcA7bY-t707DwSwk(Ldev/duo/fold/e;IIIIZLandroid/view/Surface;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Ldev/duo/fold/e;->a(IIIIZLandroid/view/Surface;Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oSTyNRfh5KOlHxMTr5UVIEeAJT4(Ldev/duo/fold/e;JLandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/fold/e;->a(JLandroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Ldev/duo/fold/e$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldev/duo/fold/e$a;

    invoke-direct {v0, p0, p1, p2}, Ldev/duo/fold/e$a;-><init>(Ldev/duo/fold/e;Landroid/os/Handler;Ldev/duo/fold/e$b;)V

    iput-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    .line 13
    const-string p1, "android.os.ServiceManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getService"

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 14
    const-string p2, "display"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Ldev/duo/fold/e;->a:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "display service missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3
    :try_start_0
    const-string v2, "dev.duo.foldanim1.CONTROL"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2, v0}, Ldev/duo/fold/e$c;->a(Landroid/os/Parcel;)V

    .line 6
    :cond_0
    iget-object p1, p0, Ldev/duo/fold/e;->a:Landroid/os/IBinder;

    const p2, 0xd0f247

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 15
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "transaction not handled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 24
    throw p1
.end method

.method private synthetic a(IIIIZLandroid/view/Surface;Landroid/os/Parcel;)V
    .locals 1

    .line 94
    iget-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    invoke-virtual {p7, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p7, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p7, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p7, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p7, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p7, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 p1, 0x0

    invoke-virtual {p6, p7, p1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method private synthetic a(IIILandroid/os/Parcel;)V
    .locals 1

    .line 76
    iget-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    invoke-virtual {p4, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, p3}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private synthetic a(ILandroid/os/Parcel;)V
    .locals 1

    .line 101
    iget-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private synthetic a(JLandroid/os/Parcel;)V
    .locals 1

    .line 75
    iget-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method private synthetic a(JLjava/lang/String;IIZILandroid/os/Parcel;)V
    .locals 1

    .line 110
    iget-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    invoke-virtual {p8, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p8, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p8, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p8, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p8, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p8, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p8, p7}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;IIZLjava/lang/String;JIIILandroid/os/Parcel;)V
    .locals 1

    .line 40
    iget-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    invoke-virtual {p11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p11, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p11, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p11, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p11, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p11, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p11, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    if-ltz p8, :cond_0

    .line 42
    invoke-virtual {p11, p8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p11, p9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p11, p10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    .line 43
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method static a([F)[F
    .locals 12

    .line 68
    const/4 v0, 0x0

    aget v1, p0, v0

    const v2, 0x4513c000    # 2364.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const v2, 0x4493c000    # 1182.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-float/2addr v1, v2

    .line 69
    const/4 v3, 0x2

    aget v4, p0, v3

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    const/4 v5, 0x3

    aget v6, p0, v5

    const/4 v7, 0x1

    aget v8, p0, v7

    div-float/2addr v6, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v6, v9, v6

    const/4 v10, 0x4

    aget v11, p0, v10

    div-float/2addr v11, v8

    sub-float/2addr v9, v11

    const/4 v8, 0x5

    aget p0, p0, v8

    sub-float/2addr p0, v2

    div-float/2addr p0, v1

    new-array v1, v10, [F

    aput v4, v1, v0

    aput v6, v1, v7

    aput v9, v1, v3

    aput p0, v1, v5

    return-object v1
.end method

.method private synthetic b(JLandroid/os/Parcel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1

    .line 4
    iget-object v0, p0, Ldev/duo/fold/e;->b:Landroid/os/Binder;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(III)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Ldev/duo/fold/e$$ExternalSyntheticLambda2;-><init>(Ldev/duo/fold/e;III)V

    const/16 p1, 0xd

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p1

    .line 79
    :try_start_0
    const-class p2, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p2

    .line 80
    const-string p3, "protocol"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2

    .line 83
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "\u5206\u5c42\u534f\u8bae\u4e0d\u5339\u914d"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2
.end method

.method a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Ldev/duo/fold/e$$ExternalSyntheticLambda6;-><init>(Ldev/duo/fold/e;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p1

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 99
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5b9e\u65f6\u6d41\u672a\u91ca\u653e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method a(IIIILandroid/view/Surface;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ldev/duo/fold/e$$ExternalSyntheticLambda0;-><init>(Ldev/duo/fold/e;IIIIZLandroid/view/Surface;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p1

    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 92
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "\u5b9e\u65f6\u6d41\u672a\u5efa\u7acb"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2
.end method

.method a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Ldev/duo/fold/e$$ExternalSyntheticLambda5;-><init>(Ldev/duo/fold/e;J)V

    const/16 p1, 0x11

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p1

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 73
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "\u76ee\u6807\u8ba2\u9605\u672a\u89e3\u9664"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2
.end method

.method a(JLjava/lang/String;IIZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ldev/duo/fold/e$$ExternalSyntheticLambda4;-><init>(Ldev/duo/fold/e;JLjava/lang/String;IIZI)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p1

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 108
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "\u76ee\u6807\u95e8\u69db\u672a\u5efa\u7acb"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2
.end method

.method a(Ljava/lang/String;IIZLjava/lang/String;JIII)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Ldev/duo/fold/e$$ExternalSyntheticLambda1;-><init>(Ldev/duo/fold/e;Ljava/lang/String;IIZLjava/lang/String;JIII)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p2

    .line 39
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method a(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object v0

    .line 55
    :try_start_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v2, v1, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_1

    and-int/lit8 v2, v1, 0x10

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-ne v2, p1, :cond_1

    and-int/lit8 p1, v1, 0x4

    if-nez p1, :cond_1

    move v3, v4

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method a(II)[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object v0

    .line 61
    :try_start_0
    invoke-virtual {v0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    if-eqz v2, :cond_1

    .line 63
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    aget p1, v2, p1

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v2}, Ldev/duo/fold/e;->a([F)[F

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 65
    :catchall_0
    move-exception p1

    .line 67
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method a()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object v1

    .line 27
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_0

    .line 28
    filled-new-array {v0, v0, v0}, [I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    filled-new-array {v2, v0, v3}, [I

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method a(Ljava/lang/String;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Ldev/duo/fold/e$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p1

    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 47
    filled-new-array {v0}, [I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 50
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/4 v1, 0x1

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method b(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Ldev/duo/fold/e$$ExternalSyntheticLambda7;-><init>(Ldev/duo/fold/e;J)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2
.end method

.method b(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    new-instance v0, Ldev/duo/fold/e$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Ldev/duo/fold/e$$ExternalSyntheticLambda8;-><init>(Ldev/duo/fold/e;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0}, Ldev/duo/fold/e;->a(ILdev/duo/fold/e$c;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
