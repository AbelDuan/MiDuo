.class public final synthetic Ldev/duo/hookprobe/n$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Field;

.field public final synthetic f$1:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda11;->f$0:Ljava/lang/reflect/Field;

    iput-object p2, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda11;->f$1:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda11;->f$0:Ljava/lang/reflect/Field;

    iget-object v1, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda11;->f$1:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, p1}, Ldev/duo/hookprobe/n;->$r8$lambda$aiiPmk-uEuD5U5Cm7GTGivO0GVc(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
