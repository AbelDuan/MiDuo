.class Ldev/duo/taskcore/h$a$a;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/taskcore/h$a;


# direct methods
.method public static synthetic $r8$lambda$OLNr63kLNoJ0mCUTLnBWitnrSu4(Ljava/util/function/Consumer;Ldev/duo/taskcore/h$b;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/taskcore/h$a$a;->a(Ljava/util/function/Consumer;Ldev/duo/taskcore/h$b;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/taskcore/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/h$a$a;->a:Ldev/duo/taskcore/h$a;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/util/function/Consumer;Ldev/duo/taskcore/h$b;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    const-string p1, "dev.duo.taskcore.WorkspaceEvents"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {}, Ldev/duo/taskcore/h;->a()I

    move-result p3

    if-ne p1, p3, :cond_2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_2

    sget-object p1, Ldev/duo/taskcore/h;->J:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p2}, Ldev/duo/taskcore/h$b;->a(Landroid/os/Parcel;)Ldev/duo/taskcore/h$b;

    move-result-object p1

    .line 6
    iget-object p2, p0, Ldev/duo/taskcore/h$a$a;->a:Ldev/duo/taskcore/h$a;

    invoke-static {p2}, Ldev/duo/taskcore/h$a;->a(Ldev/duo/taskcore/h$a;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 7
    iget-object p3, p0, Ldev/duo/taskcore/h$a$a;->a:Ldev/duo/taskcore/h$a;

    invoke-static {p3}, Ldev/duo/taskcore/h$a;->b(Ldev/duo/taskcore/h$a;)Ljava/util/function/Consumer;

    move-result-object p3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 9
    new-instance p4, Ldev/duo/taskcore/h$a$a$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3, p1}, Ldev/duo/taskcore/h$a$a$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ldev/duo/taskcore/h$b;)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "source listener not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "source callback build/protocol mismatch"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
