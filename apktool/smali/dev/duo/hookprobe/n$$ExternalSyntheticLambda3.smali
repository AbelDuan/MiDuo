.class public final synthetic Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Field;

.field public final synthetic f$1:Ljava/lang/reflect/Field;

.field public final synthetic f$2:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;->f$0:Ljava/lang/reflect/Field;

    iput-object p2, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;->f$1:Ljava/lang/reflect/Field;

    iput-object p3, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;->f$2:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;->f$0:Ljava/lang/reflect/Field;

    iget-object v1, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;->f$1:Ljava/lang/reflect/Field;

    iget-object v2, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;->f$2:Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Ldev/duo/hookprobe/n;->$r8$lambda$qunFQ9S6TDRVSkAvHDZV4uZVDww(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
