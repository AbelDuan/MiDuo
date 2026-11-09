.class public final Lio/github/libxposed/service/HookedTarget;
.super Ljava/lang/Object;
.source "HookedTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/libxposed/service/HookedTarget$State;
    }
.end annotation


# instance fields
.field private final mLoadedVersionCode:J

.field private final mPid:I

.field private final mProcessName:Ljava/lang/String;

.field private final mState:Lio/github/libxposed/service/HookedTarget$State;

.field final mTargetId:J

.field private final mUid:I


# direct methods
.method constructor <init>(JIILjava/lang/String;Lio/github/libxposed/service/HookedTarget$State;J)V
    .locals 1
    .param p1, "targetId"    # J
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "state"    # Lio/github/libxposed/service/HookedTarget$State;
    .param p7, "loadedVersionCode"    # J

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lio/github/libxposed/service/HookedTarget;->mTargetId:J

    .line 52
    iput p3, p0, Lio/github/libxposed/service/HookedTarget;->mUid:I

    .line 53
    iput p4, p0, Lio/github/libxposed/service/HookedTarget;->mPid:I

    .line 54
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/github/libxposed/service/HookedTarget;->mProcessName:Ljava/lang/String;

    .line 55
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/libxposed/service/HookedTarget$State;

    iput-object v0, p0, Lio/github/libxposed/service/HookedTarget;->mState:Lio/github/libxposed/service/HookedTarget$State;

    .line 56
    iput-wide p7, p0, Lio/github/libxposed/service/HookedTarget;->mLoadedVersionCode:J

    .line 57
    return-void
.end method


# virtual methods
.method public getLoadedVersionCode()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lio/github/libxposed/service/HookedTarget;->mLoadedVersionCode:J

    return-wide v0
.end method

.method public getPid()I
    .locals 1

    .line 71
    iget v0, p0, Lio/github/libxposed/service/HookedTarget;->mPid:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/github/libxposed/service/HookedTarget;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lio/github/libxposed/service/HookedTarget$State;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/github/libxposed/service/HookedTarget;->mState:Lio/github/libxposed/service/HookedTarget$State;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 63
    iget v0, p0, Lio/github/libxposed/service/HookedTarget;->mUid:I

    return v0
.end method
