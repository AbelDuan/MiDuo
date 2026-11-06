.class public abstract Lio/github/libxposed/service/IXposedScopeCallback$Stub;
.super Landroid/os/Binder;
.source "IXposedScopeCallback.java"

# interfaces
.implements Lio/github/libxposed/service/IXposedScopeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/libxposed/service/IXposedScopeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/libxposed/service/IXposedScopeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onScopeRequestApproved:I = 0x2

.field static final TRANSACTION_onScopeRequestFailed:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "io.github.libxposed.service.IXposedScopeCallback"

    invoke-virtual {p0, p0, v0}, Lio/github/libxposed/service/IXposedScopeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/github/libxposed/service/IXposedScopeCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "io.github.libxposed.service.IXposedScopeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/github/libxposed/service/IXposedScopeCallback;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lio/github/libxposed/service/IXposedScopeCallback;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lio/github/libxposed/service/IXposedScopeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lio/github/libxposed/service/IXposedScopeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 57
    const-string v1, "io.github.libxposed.service.IXposedScopeCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 71
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lio/github/libxposed/service/IXposedScopeCallback$Stub;->onScopeRequestFailed(Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 64
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 65
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lio/github/libxposed/service/IXposedScopeCallback$Stub;->onScopeRequestApproved(Ljava/util/List;)V

    .line 66
    nop

    .line 80
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
