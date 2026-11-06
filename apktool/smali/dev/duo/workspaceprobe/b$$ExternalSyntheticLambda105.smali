.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda105;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Ljava/lang/reflect/Field;

.field public final synthetic f$2:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda105;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda105;->f$1:Ljava/lang/reflect/Field;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda105;->f$2:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda105;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda105;->f$1:Ljava/lang/reflect/Field;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda105;->f$2:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, v2, p1}, Ldev/duo/workspaceprobe/b;->$r8$lambda$srmjAGPjENZzO-JVgM3PtAxkso4(Ldev/duo/workspaceprobe/b;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
