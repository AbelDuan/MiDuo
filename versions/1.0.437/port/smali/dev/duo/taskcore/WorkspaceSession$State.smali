.class public final enum Ldev/duo/taskcore/WorkspaceSession$State;
.super Ljava/lang/Enum;
.source "SourceFile"


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
.field public static final enum a:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum b:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum c:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum d:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum e:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum f:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum g:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum h:Ldev/duo/taskcore/WorkspaceSession$State;

.field public static final enum i:Ldev/duo/taskcore/WorkspaceSession$State;

.field private static final synthetic j:[Ldev/duo/taskcore/WorkspaceSession$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->a:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "PREPARING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->b:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "ATTACHING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->c:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->d:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "TRANSITIONING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->e:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "RETURNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->f:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->g:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "RETURN_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->h:Ldev/duo/taskcore/WorkspaceSession$State;

    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$State;

    const-string v1, "PAUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->i:Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-static {}, Ldev/duo/taskcore/WorkspaceSession$State;->a()[Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    sput-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->j:[Ldev/duo/taskcore/WorkspaceSession$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ldev/duo/taskcore/WorkspaceSession$State;
    .locals 1

    .line 2
    const-class v0, Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/duo/taskcore/WorkspaceSession$State;

    return-object p0
.end method

.method private static synthetic a()[Ldev/duo/taskcore/WorkspaceSession$State;
    .locals 9

    .line 1
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->a:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v1, Ldev/duo/taskcore/WorkspaceSession$State;->b:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v2, Ldev/duo/taskcore/WorkspaceSession$State;->c:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v3, Ldev/duo/taskcore/WorkspaceSession$State;->d:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v4, Ldev/duo/taskcore/WorkspaceSession$State;->e:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v5, Ldev/duo/taskcore/WorkspaceSession$State;->f:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v6, Ldev/duo/taskcore/WorkspaceSession$State;->g:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v7, Ldev/duo/taskcore/WorkspaceSession$State;->h:Ldev/duo/taskcore/WorkspaceSession$State;

    sget-object v8, Ldev/duo/taskcore/WorkspaceSession$State;->i:Ldev/duo/taskcore/WorkspaceSession$State;

    filled-new-array/range {v0 .. v8}, [Ldev/duo/taskcore/WorkspaceSession$State;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Ldev/duo/taskcore/WorkspaceSession$State;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/taskcore/WorkspaceSession$State;->j:[Ldev/duo/taskcore/WorkspaceSession$State;

    invoke-virtual {v0}, [Ldev/duo/taskcore/WorkspaceSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/WorkspaceSession$State;

    return-object v0
.end method
