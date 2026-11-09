.class final enum Ldev/duo/fold/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/fold/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/duo/fold/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldev/duo/fold/f$a;

.field public static final enum b:Ldev/duo/fold/f$a;

.field public static final enum c:Ldev/duo/fold/f$a;

.field public static final enum d:Ldev/duo/fold/f$a;

.field private static final synthetic e:[Ldev/duo/fold/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ldev/duo/fold/f$a;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldev/duo/fold/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/fold/f$a;->a:Ldev/duo/fold/f$a;

    new-instance v0, Ldev/duo/fold/f$a;

    const-string v1, "SHUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/duo/fold/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/fold/f$a;->b:Ldev/duo/fold/f$a;

    new-instance v0, Ldev/duo/fold/f$a;

    const-string v1, "OPEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldev/duo/fold/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/fold/f$a;->c:Ldev/duo/fold/f$a;

    new-instance v0, Ldev/duo/fold/f$a;

    const-string v1, "FALLBACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldev/duo/fold/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldev/duo/fold/f$a;->d:Ldev/duo/fold/f$a;

    invoke-static {}, Ldev/duo/fold/f$a;->a()[Ldev/duo/fold/f$a;

    move-result-object v0

    sput-object v0, Ldev/duo/fold/f$a;->e:[Ldev/duo/fold/f$a;

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

.method public static a(Ljava/lang/String;)Ldev/duo/fold/f$a;
    .locals 1

    .line 2
    const-class v0, Ldev/duo/fold/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/duo/fold/f$a;

    return-object p0
.end method

.method private static synthetic a()[Ldev/duo/fold/f$a;
    .locals 4

    .line 1
    sget-object v0, Ldev/duo/fold/f$a;->a:Ldev/duo/fold/f$a;

    sget-object v1, Ldev/duo/fold/f$a;->b:Ldev/duo/fold/f$a;

    sget-object v2, Ldev/duo/fold/f$a;->c:Ldev/duo/fold/f$a;

    sget-object v3, Ldev/duo/fold/f$a;->d:Ldev/duo/fold/f$a;

    filled-new-array {v0, v1, v2, v3}, [Ldev/duo/fold/f$a;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Ldev/duo/fold/f$a;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/fold/f$a;->e:[Ldev/duo/fold/f$a;

    invoke-virtual {v0}, [Ldev/duo/fold/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/duo/fold/f$a;

    return-object v0
.end method
