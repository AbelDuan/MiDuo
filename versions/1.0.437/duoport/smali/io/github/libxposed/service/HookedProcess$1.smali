.class Lio/github/libxposed/service/HookedProcess$1;
.super Ljava/lang/Object;
.source "HookedProcess.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/libxposed/service/HookedProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/github/libxposed/service/HookedProcess;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/github/libxposed/service/HookedProcess;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 34
    new-instance v0, Lio/github/libxposed/service/HookedProcess;

    invoke-direct {v0}, Lio/github/libxposed/service/HookedProcess;-><init>()V

    .line 35
    .local v0, "_aidl_out":Lio/github/libxposed/service/HookedProcess;
    invoke-virtual {v0, p1}, Lio/github/libxposed/service/HookedProcess;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lio/github/libxposed/service/HookedProcess$1;->createFromParcel(Landroid/os/Parcel;)Lio/github/libxposed/service/HookedProcess;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/github/libxposed/service/HookedProcess;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 40
    new-array v0, p1, [Lio/github/libxposed/service/HookedProcess;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lio/github/libxposed/service/HookedProcess$1;->newArray(I)[Lio/github/libxposed/service/HookedProcess;

    move-result-object p1

    return-object p1
.end method
