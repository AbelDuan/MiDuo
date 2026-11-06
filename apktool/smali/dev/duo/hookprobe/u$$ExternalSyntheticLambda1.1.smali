.class public final synthetic Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/u;

.field public final synthetic f$1:Ljava/lang/reflect/Method;

.field public final synthetic f$2:Ljava/lang/reflect/Method;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/u;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;->f$0:Ldev/duo/hookprobe/u;

    iput-object p2, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;->f$1:Ljava/lang/reflect/Method;

    iput-object p3, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;->f$2:Ljava/lang/reflect/Method;

    iput-object p4, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;->f$0:Ldev/duo/hookprobe/u;

    iget-object v1, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;->f$1:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;->f$2:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/hookprobe/u;->$r8$lambda$JGghfClh9aRnQl5Yd9iW2erVXJI(Ldev/duo/hookprobe/u;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
