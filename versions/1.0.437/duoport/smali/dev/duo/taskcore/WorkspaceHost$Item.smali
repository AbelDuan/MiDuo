.class final Ldev/duo/taskcore/WorkspaceHost$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Item"
.end annotation


# instance fields
.field final a:Ldev/duo/taskcore/WorkspaceHost$Panel;

.field final b:Landroid/view/SurfaceControl;

.field final c:Landroid/graphics/Rect;

.field final d:Landroid/graphics/Rect;

.field e:I


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->c:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->d:Landroid/graphics/Rect;

    .line 4
    const/16 v0, 0xa

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->e:I

    .line 6
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->a:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->b:Landroid/view/SurfaceControl;

    return-void
.end method
