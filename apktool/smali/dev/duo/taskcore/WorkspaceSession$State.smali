.class public final enum Ldev/duo/taskcore/WorkspaceSession$State;
.super Ljava/lang/Enum;
.source "WorkspaceSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/duo/taskcore/WorkspaceSession$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum IDLE:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum PREPARING:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum RETURNING:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;


# direct methods
.method private static synthetic $values()[Ldev/duo/taskcore/WorkspaceSession$State;
    .locals 9

    .line 15
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->IDLE:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->PREPARING:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v4, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v5, Ldev/duo/taskcore/WorkspaceSession$State;->RETURNING:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v6, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v7, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v8, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    filled-new-array/range {v0 .. v8}, [Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->IDLE:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "PREPARING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->PREPARING:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "ATTACHING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ATTACHING:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->ACTIVE:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "TRANSITIONING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->TRANSITIONING:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "RETURNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->RETURNING:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->CLOSED:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "RETURN_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->RETURN_FAILED:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "PAUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->PAUSED:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-static {}, Ldev/duo/taskcore/WorkspaceSession$State;->$values()[Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->$VALUES:[Ldev/duo/taskcore/WorkspaceSession$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/duo/taskcore/WorkspaceSession$State;
    .locals 1

    .line 15
    const-class v0, Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/duo/taskcore/WorkspaceSession$State;

    return-object p0
.end method

.method public static values()[Ldev/duo/taskcore/WorkspaceSession$State;
    .locals 1

    .line 15
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->$VALUES:[Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-virtual {v0}, [Ldev/duo/taskcore/WorkspaceSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/WorkspaceSession$State;

    return-object v0
.end method
