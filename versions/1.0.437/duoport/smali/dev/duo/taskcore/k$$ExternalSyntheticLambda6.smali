.class public final synthetic Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceWm;

.field public final synthetic f$1:Ljava/lang/reflect/Field;

.field public final synthetic f$2:Ljava/lang/reflect/Field;

.field public final synthetic f$3:Ljava/lang/reflect/Field;

.field public final synthetic f$4:Ljava/lang/reflect/Field;

.field public final synthetic f$5:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceWm;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$0:Ldev/duo/taskcore/WorkspaceWm;

    iput-object p2, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$1:Ljava/lang/reflect/Field;

    iput-object p3, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$2:Ljava/lang/reflect/Field;

    iput-object p4, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$3:Ljava/lang/reflect/Field;

    iput-object p5, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$4:Ljava/lang/reflect/Field;

    iput-object p6, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$5:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$0:Ldev/duo/taskcore/WorkspaceWm;

    iget-object v1, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$1:Ljava/lang/reflect/Field;

    iget-object v2, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$2:Ljava/lang/reflect/Field;

    iget-object v3, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$3:Ljava/lang/reflect/Field;

    iget-object v4, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$4:Ljava/lang/reflect/Field;

    iget-object v5, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda6;->f$5:Ljava/lang/reflect/Field;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceWm;->$r8$lambda$R-ucgUVie7fYPZquJMoLmnWMSgw(Ldev/duo/taskcore/WorkspaceWm;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
