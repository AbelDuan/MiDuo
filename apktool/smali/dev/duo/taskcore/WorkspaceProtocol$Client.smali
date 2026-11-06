.class public final Ldev/duo/taskcore/WorkspaceProtocol$Client;
.super Ljava/lang/Object;
.source "WorkspaceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/WorkspaceProtocol$Client$Writer;,
        Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;
    }
.end annotation


# instance fields
.field public lastRevision:I

.field public final owner:Landroid/os/IBinder;

.field private volatile sourceExecutor:Ljava/util/concurrent/Executor;

.field private volatile sourceListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final wm:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ldev/duo/taskcore/WorkspaceProtocol$Client$1;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/WorkspaceProtocol$Client$1;-><init>(Ldev/duo/taskcore/WorkspaceProtocol$Client;)V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->owner:Landroid/os/IBinder;

    .line 157
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->wm:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Ldev/duo/taskcore/WorkspaceProtocol$Client;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 136
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->sourceExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$100(Ldev/duo/taskcore/WorkspaceProtocol$Client;)Ljava/util/function/Consumer;
    .locals 0

    .line 136
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->sourceListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static connect()Ldev/duo/taskcore/WorkspaceProtocol$Client;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 160
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getWindowManagerService"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    new-instance v2, Ldev/duo/taskcore/WorkspaceProtocol$Client;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asBinder"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {v2, v0}, Ldev/duo/taskcore/WorkspaceProtocol$Client;-><init>(Landroid/os/IBinder;)V

    return-object v2
.end method

.method static synthetic lambda$cancelSource$1(Landroid/os/IBinder;Landroid/os/Parcel;)V
    .locals 0

    .line 180
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$lookupSource$2(Landroid/os/IBinder;Landroid/os/Parcel;)V
    .locals 0

    .line 189
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$lookupSource$3(Landroid/os/Parcel;)Ljava/util/List;
    .locals 4

    .line 190
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->read(Landroid/os/Parcel;)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-object v1
.end method

.method static synthetic lambda$registerSource$0(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;ILandroid/os/Parcel;)V
    .locals 0

    .line 175
    invoke-virtual {p4, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p4, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p4, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return-void
.end method


# virtual methods
.method public call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJ",
            "Ldev/duo/taskcore/WorkspaceProtocol$Client$Writer;",
            "Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    :try_start_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->owner:Landroid/os/IBinder;

    invoke-static {v0, p1, p2, p3, v2}, Ldev/duo/taskcore/WorkspaceProtocol;->header(Landroid/os/Parcel;IJLandroid/os/IBinder;)V

    .line 208
    if-eqz p4, :cond_0

    invoke-interface {p4, v0}, Ldev/duo/taskcore/WorkspaceProtocol$Client$Writer;->write(Landroid/os/Parcel;)V

    .line 209
    :cond_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->wm:Landroid/os/IBinder;

    const p2, 0xf40201

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {}, Ldev/duo/taskcore/WorkspaceProtocol;->magic()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    .line 215
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->lastRevision:I

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 217
    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    .line 218
    if-nez p5, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p5, v1}, Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;->read(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    return-object p1

    .line 217
    :cond_3
    :try_start_1
    new-instance p3, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "system_server "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ": "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p3

    .line 212
    :cond_4
    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    const-string p2, "system_server \u672a\u52a0\u8f7d\u672c\u6a21\u5757\u534f\u4f5c\u4ee3\u7801\uff08\u7cfb\u7edf\u7aef\u5c1a\u672a\u52a0\u8f7d\u672c\u7248\u672c\uff0c\u6682\u4e0d\u80fd\u8fdb\u5165\u5de5\u4f5c\u53f0\uff09"

    invoke-direct {p1, p2}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_5
    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    const-string p2, "system_server \u672a\u52a0\u8f7d\u5de5\u4f5c\u53f0\u534f\u4f5c\u4ee3\u7801\uff08\u7cfb\u7edf\u7aef\u5c1a\u672a\u52a0\u8f7d\u672c\u7248\u672c\uff0c\u6682\u4e0d\u80fd\u8fdb\u5165\u5de5\u4f5c\u53f0\uff09"

    invoke-direct {p1, p2}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 219
    :catch_0
    move-exception p1

    .line 220
    :try_start_2
    new-instance p2, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "system_server \u8c03\u7528\u5931\u8d25: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    throw p1
.end method

.method public cancelSource(JLandroid/os/IBinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 180
    new-instance v4, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda2;

    invoke-direct {v4, p3}, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda2;-><init>(Landroid/os/IBinder;)V

    const/4 v5, 0x0

    const/16 v1, 0xa

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public hello()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 199
    new-instance v5, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    sget-object v1, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    return-void

    .line 201
    :cond_0
    new-instance v1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system_server \u4ee3\u7801\u7248\u672c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2260 \u672c\u5305 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff08\u7cfb\u7edf\u7aef\u5c1a\u672a\u52a0\u8f7d\u672c\u7248\u672c\uff0c\u6682\u4e0d\u80fd\u8fdb\u5165\u5de5\u4f5c\u53f0\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public lookupSource(JLandroid/os/IBinder;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 189
    new-instance v4, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda3;

    invoke-direct {v4, p3}, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda3;-><init>(Landroid/os/IBinder;)V

    new-instance v5, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda4;-><init>()V

    const/16 v1, 0xb

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public registerSource(JLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 174
    move-object v0, p5

    new-instance p5, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda1;

    invoke-direct {p5, p3, p4, v0, p6}, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;I)V

    const/4 p6, 0x0

    move-wide p3, p1

    const/16 p2, 0x9

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public setSourceListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;",
            ">;)V"
        }
    .end annotation

    .line 168
    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->sourceListener:Ljava/util/function/Consumer;

    .line 169
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client;->sourceExecutor:Ljava/util/concurrent/Executor;

    .line 170
    return-void
.end method

.method public userSelected(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 185
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0xc

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    .line 186
    return-void
.end method
