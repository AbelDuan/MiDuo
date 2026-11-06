.class final Ldev/duo/taskcore/WorkspaceHost$Item;
.super Ljava/lang/Object;
.source "WorkspaceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Item"
.end annotation


# instance fields
.field final host:Ldev/duo/taskcore/WorkspaceHost$Panel;

.field layer:I

.field final motion:Landroid/view/SurfaceControl;

.field final rest:Landroid/graphics/Rect;

.field final shown:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceHost$Panel;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->shown:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->rest:Landroid/graphics/Rect;

    .line 130
    const/16 v0, 0xa

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->layer:I

    .line 132
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->host:Ldev/duo/taskcore/WorkspaceHost$Panel;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$Item;->motion:Landroid/view/SurfaceControl;

    return-void
.end method
