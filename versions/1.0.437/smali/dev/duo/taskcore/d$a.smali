.class public final enum Ldev/duo/taskcore/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/duo/taskcore/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldev/duo/taskcore/d$a;

.field public static final enum b:Ldev/duo/taskcore/d$a;

.field public static final enum c:Ldev/duo/taskcore/d$a;

.field public static final enum d:Ldev/duo/taskcore/d$a;

.field public static final enum e:Ldev/duo/taskcore/d$a;

.field public static final enum f:Ldev/duo/taskcore/d$a;

.field public static final enum g:Ldev/duo/taskcore/d$a;

.field private static final synthetic h:[Ldev/duo/taskcore/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ldev/duo/taskcore/d$a;

    const-string v1, "OBSERVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/d$a;->a:Ldev/duo/taskcore/d$a;

    new-instance v0, Ldev/duo/taskcore/d$a;

    const-string v1, "OWNER_ACQUIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/d$a;->b:Ldev/duo/taskcore/d$a;

    new-instance v0, Ldev/duo/taskcore/d$a;

    const-string v1, "SURFACE_ATTACHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/d$a;->c:Ldev/duo/taskcore/d$a;

    new-instance v0, Ldev/duo/taskcore/d$a;

    const-string v1, "RETURN_REQUESTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/d$a;->d:Ldev/duo/taskcore/d$a;

    new-instance v0, Ldev/duo/taskcore/d$a;

    const-string v1, "OWNER_RETURNED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/d$a;->e:Ldev/duo/taskcore/d$a;

    new-instance v0, Ldev/duo/taskcore/d$a;

    const-string v1, "RELEASED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/d$a;->f:Ldev/duo/taskcore/d$a;

    new-instance v0, Ldev/duo/taskcore/d$a;

    const-string v1, "TASK_GONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/taskcore/d$a;->g:Ldev/duo/taskcore/d$a;

    invoke-static {}, Ldev/duo/taskcore/d$a;->a()[Ldev/duo/taskcore/d$a;

    move-result-object v0

    sput-object v0, Ldev/duo/taskcore/d$a;->h:[Ldev/duo/taskcore/d$a;

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

.method public static a(Ljava/lang/String;)Ldev/duo/taskcore/d$a;
    .locals 1

    .line 2
    const-class v0, Ldev/duo/taskcore/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/duo/taskcore/d$a;

    return-object p0
.end method

.method private static synthetic a()[Ldev/duo/taskcore/d$a;
    .locals 7

    .line 1
    sget-object v0, Ldev/duo/taskcore/d$a;->a:Ldev/duo/taskcore/d$a;

    sget-object v1, Ldev/duo/taskcore/d$a;->b:Ldev/duo/taskcore/d$a;

    sget-object v2, Ldev/duo/taskcore/d$a;->c:Ldev/duo/taskcore/d$a;

    sget-object v3, Ldev/duo/taskcore/d$a;->d:Ldev/duo/taskcore/d$a;

    sget-object v4, Ldev/duo/taskcore/d$a;->e:Ldev/duo/taskcore/d$a;

    sget-object v5, Ldev/duo/taskcore/d$a;->f:Ldev/duo/taskcore/d$a;

    sget-object v6, Ldev/duo/taskcore/d$a;->g:Ldev/duo/taskcore/d$a;

    filled-new-array/range {v0 .. v6}, [Ldev/duo/taskcore/d$a;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Ldev/duo/taskcore/d$a;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/taskcore/d$a;->h:[Ldev/duo/taskcore/d$a;

    invoke-virtual {v0}, [Ldev/duo/taskcore/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/taskcore/d$a;

    return-object v0
.end method
