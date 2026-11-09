.class Ldev/duo/fold/Engine$d;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/fold/Engine;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/fold/Engine;


# direct methods
.method constructor <init>(Ldev/duo/fold/Engine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/fold/Engine$d;->a:Ldev/duo/fold/Engine;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const p4, 0x5f4e5446

    const/4 v0, 0x1

    const-string v1, "android.app.ITaskStackListener"

    if-ne p1, p4, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return v0

    .line 2
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/16 p4, 0x3e8

    if-ne p1, p4, :cond_3

    .line 3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Ldev/duo/fold/Engine$d;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->l(Ldev/duo/fold/Engine;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ldev/duo/fold/Engine$d;->a:Ldev/duo/fold/Engine;

    invoke-static {p2}, Ldev/duo/fold/Engine;->k(Ldev/duo/fold/Engine;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Ldev/duo/fold/Engine$d;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->l(Ldev/duo/fold/Engine;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ldev/duo/fold/Engine$d;->a:Ldev/duo/fold/Engine;

    invoke-static {p2}, Ldev/duo/fold/Engine;->k(Ldev/duo/fold/Engine;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_2
    return v0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "\u7cfb\u7edf\u4efb\u52a1\u56de\u8c03\u4e13\u7528"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
