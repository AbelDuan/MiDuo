.class public final enum Ldev/duo/taskcore/TaskBinding$Lease;
.super Ljava/lang/Enum;
.source "TaskBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/TaskBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Lease"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/duo/taskcore/TaskBinding$Lease;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldev/duo/taskcore/TaskBinding$Lease;

.field public static final enum OBSERVED:Ldev/duo/taskcore/TaskBinding$Lease;

.field public static final enum OWNER_ACQUIRED:Ldev/duo/taskcore/TaskBinding$Lease;

.field public static final enum OWNER_RETURNED:Ldev/duo/taskcore/TaskBinding$Lease;

.field public static final enum RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

.field public static final enum RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

.field public static final enum SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

.field public static final enum TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;


# direct methods
.method private static synthetic $values()[Ldev/duo/taskcore/TaskBinding$Lease;
    .locals 7

    .line 10
    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->OBSERVED:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v1, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_ACQUIRED:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v2, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v4, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_RETURNED:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v5, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v6, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    filled-new-array/range {v0 .. v6}, [Ldev/duo/taskcore/TaskBinding$Lease;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Ldev/duo/taskcore/TaskBinding$Lease;

    const-string v1, "OBSERVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/TaskBinding$Lease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->OBSERVED:Ldev/duo/taskcore/TaskBinding$Lease;

    new-instance v0, Ldev/duo/taskcore/TaskBinding$Lease;

    const-string v1, "OWNER_ACQUIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/TaskBinding$Lease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_ACQUIRED:Ldev/duo/taskcore/TaskBinding$Lease;

    new-instance v0, Ldev/duo/taskcore/TaskBinding$Lease;

    const-string v1, "SURFACE_ATTACHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/TaskBinding$Lease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    new-instance v0, Ldev/duo/taskcore/TaskBinding$Lease;

    const-string v1, "RETURN_REQUESTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/TaskBinding$Lease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->RETURN_REQUESTED:Ldev/duo/taskcore/TaskBinding$Lease;

    new-instance v0, Ldev/duo/taskcore/TaskBinding$Lease;

    const-string v1, "OWNER_RETURNED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/TaskBinding$Lease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->OWNER_RETURNED:Ldev/duo/taskcore/TaskBinding$Lease;

    new-instance v0, Ldev/duo/taskcore/TaskBinding$Lease;

    const-string v1, "RELEASED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/TaskBinding$Lease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    new-instance v0, Ldev/duo/taskcore/TaskBinding$Lease;

    const-string v1, "TASK_GONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/TaskBinding$Lease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->TASK_GONE:Ldev/duo/taskcore/TaskBinding$Lease;

    invoke-static {}, Ldev/duo/taskcore/TaskBinding$Lease;->$values()[Ldev/duo/taskcore/TaskBinding$Lease;

    move-result-object v0

    sput-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->$VALUES:[Ldev/duo/taskcore/TaskBinding$Lease;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/duo/taskcore/TaskBinding$Lease;
    .locals 1

    .line 10
    const-class v0, Ldev/duo/taskcore/TaskBinding$Lease;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/duo/taskcore/TaskBinding$Lease;

    return-object p0
.end method

.method public static values()[Ldev/duo/taskcore/TaskBinding$Lease;
    .locals 1

    .line 10
    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->$VALUES:[Ldev/duo/taskcore/TaskBinding$Lease;

    invoke-virtual {v0}, [Ldev/duo/taskcore/TaskBinding$Lease;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/TaskBinding$Lease;

    return-object v0
.end method
