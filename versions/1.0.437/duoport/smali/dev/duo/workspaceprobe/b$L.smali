.class final Ldev/duo/workspaceprobe/b$L;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "L"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/view/SurfaceControl;

.field c:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$L;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$L;->b:Landroid/view/SurfaceControl;

    return-void
.end method
