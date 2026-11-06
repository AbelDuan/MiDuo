.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Ljava/lang/reflect/Method;

.field public final synthetic f$2:Ljava/lang/reflect/Method;

.field public final synthetic f$3:Ljava/lang/reflect/Method;

.field public final synthetic f$4:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$1:Ljava/lang/reflect/Method;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$2:Ljava/lang/reflect/Method;

    iput-object p4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$3:Ljava/lang/reflect/Method;

    iput-object p5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$4:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$1:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$2:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$3:Ljava/lang/reflect/Method;

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda199;->f$4:Ljava/lang/reflect/Method;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ldev/duo/workspaceprobe/b;->$r8$lambda$-7oBFKftqxE91TTqxULDFC3QAUw(Ldev/duo/workspaceprobe/b;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
