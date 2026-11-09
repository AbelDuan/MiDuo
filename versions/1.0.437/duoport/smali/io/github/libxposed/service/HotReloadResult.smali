.class public final Lio/github/libxposed/service/HotReloadResult;
.super Ljava/lang/Record;
.source "HotReloadResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/libxposed/service/HotReloadResult$Status;
    }
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field private final status:Lio/github/libxposed/service/HotReloadResult$Status;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/github/libxposed/service/HotReloadResult;

    if-eqz v0, :cond_0

    check-cast p1, Lio/github/libxposed/service/HotReloadResult;

    iget-object v0, p0, Lio/github/libxposed/service/HotReloadResult;->status:Lio/github/libxposed/service/HotReloadResult$Status;

    iget-object v1, p1, Lio/github/libxposed/service/HotReloadResult;->status:Lio/github/libxposed/service/HotReloadResult$Status;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/libxposed/service/HotReloadResult;->message:Ljava/lang/String;

    iget-object p1, p1, Lio/github/libxposed/service/HotReloadResult;->message:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/github/libxposed/service/HotReloadResult;->status:Lio/github/libxposed/service/HotReloadResult$Status;

    iget-object v1, p0, Lio/github/libxposed/service/HotReloadResult;->message:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lio/github/libxposed/service/HotReloadResult$Status;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Lio/github/libxposed/service/HotReloadResult$Status;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "message"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lio/github/libxposed/service/HotReloadResult;->status:Lio/github/libxposed/service/HotReloadResult$Status;

    iput-object p2, p0, Lio/github/libxposed/service/HotReloadResult;->message:Ljava/lang/String;

    return-void
.end method

.method static from(ILjava/lang/String;)Lio/github/libxposed/service/HotReloadResult;
    .locals 3
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 59
    packed-switch p0, :pswitch_data_0

    .line 65
    new-instance v0, Lio/github/libxposed/service/XposedService$ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hot reload status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    sget-object v0, Lio/github/libxposed/service/HotReloadResult$Status;->PROCESS_DIED:Lio/github/libxposed/service/HotReloadResult$Status;

    goto :goto_0

    .line 63
    :pswitch_1
    sget-object v0, Lio/github/libxposed/service/HotReloadResult$Status;->IN_PROGRESS:Lio/github/libxposed/service/HotReloadResult$Status;

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object v0, Lio/github/libxposed/service/HotReloadResult$Status;->UNSUPPORTED:Lio/github/libxposed/service/HotReloadResult$Status;

    goto :goto_0

    .line 61
    :pswitch_3
    sget-object v0, Lio/github/libxposed/service/HotReloadResult$Status;->FAILED:Lio/github/libxposed/service/HotReloadResult$Status;

    goto :goto_0

    .line 60
    :pswitch_4
    sget-object v0, Lio/github/libxposed/service/HotReloadResult$Status;->SUCCEEDED:Lio/github/libxposed/service/HotReloadResult$Status;

    .line 65
    :goto_0
    nop

    .line 67
    .local v0, "status":Lio/github/libxposed/service/HotReloadResult$Status;
    new-instance v1, Lio/github/libxposed/service/HotReloadResult;

    invoke-direct {v1, v0, p1}, Lio/github/libxposed/service/HotReloadResult;-><init>(Lio/github/libxposed/service/HotReloadResult$Status;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0, p1}, Lio/github/libxposed/service/HotReloadResult;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 16
    iget-object v0, p0, Lio/github/libxposed/service/HotReloadResult;->status:Lio/github/libxposed/service/HotReloadResult$Status;

    iget-object v1, p0, Lio/github/libxposed/service/HotReloadResult;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/github/libxposed/service/HotReloadResult$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/libxposed/service/HotReloadResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public status()Lio/github/libxposed/service/HotReloadResult$Status;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/libxposed/service/HotReloadResult;->status:Lio/github/libxposed/service/HotReloadResult$Status;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 16
    invoke-direct {p0}, Lio/github/libxposed/service/HotReloadResult;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lio/github/libxposed/service/HotReloadResult;

    const-string v2, "status;message"

    invoke-static {v0, v1, v2}, Lio/github/libxposed/service/HotReloadResult$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
