.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/j;

.field public final synthetic f$1:Ljava/lang/reflect/Method;

.field public final synthetic f$2:Ljava/lang/reflect/Constructor;

.field public final synthetic f$3:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/j;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;->f$0:Ldev/duo/taskcore/j;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;->f$1:Ljava/lang/reflect/Method;

    iput-object p3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;->f$2:Ljava/lang/reflect/Constructor;

    iput-object p4, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;->f$3:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;->f$0:Ldev/duo/taskcore/j;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;->f$1:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;->f$2:Ljava/lang/reflect/Constructor;

    iget-object v3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda31;->f$3:Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/taskcore/j;->$r8$lambda$5C1WqtA7jJIYOou43NvoNzpR8-E(Ldev/duo/taskcore/j;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
