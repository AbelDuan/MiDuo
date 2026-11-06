.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda193;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Ljava/lang/Class;

.field public final synthetic f$2:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda193;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda193;->f$1:Ljava/lang/Class;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda193;->f$2:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda193;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda193;->f$1:Ljava/lang/Class;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda193;->f$2:Ljava/lang/Class;

    invoke-static {v0, v1, v2, p1}, Ldev/duo/workspaceprobe/b;->$r8$lambda$9yvT4he-RBqS23Kkom7iMYVKB9g(Ldev/duo/workspaceprobe/b;Ljava/lang/Class;Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
