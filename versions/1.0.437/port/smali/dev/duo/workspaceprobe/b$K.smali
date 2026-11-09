.class final Ldev/duo/workspaceprobe/b$K;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "K"
.end annotation


# instance fields
.field A:F

.field final synthetic B:Ldev/duo/workspaceprobe/b;

.field a:Ldev/duo/workspaceprobe/q;

.field b:Landroid/view/SurfaceControl;

.field c:Ldev/duo/workspaceprobe/b$R;

.field d:Landroid/widget/FrameLayout;

.field e:Landroid/widget/FrameLayout;

.field final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldev/duo/workspaceprobe/b$J;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field h:Ldev/duo/workspaceprobe/b$S;

.field final i:[Landroid/widget/ImageView;

.field j:Landroid/widget/FrameLayout;

.field k:Landroid/widget/LinearLayout;

.field l:Ldev/duo/workspaceprobe/b$c0;

.field m:J

.field n:J

.field o:Landroid/widget/FrameLayout;

.field p:Z

.field q:Landroid/view/SurfaceControl;

.field r:Ldev/duo/workspaceprobe/b$h0;

.field s:Ldev/duo/workspaceprobe/b$U;

.field t:Ldev/duo/workspaceprobe/b$N;

.field volatile u:I

.field v:I

.field w:J

.field x:I

.field y:I

.field volatile z:I


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$K;->B:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$K;->f:Ljava/util/ArrayList;

    .line 10
    const/4 p1, 0x3

    new-array p1, p1, [Landroid/widget/ImageView;

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$K;->i:[Landroid/widget/ImageView;

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/duo/workspaceprobe/b$K;->m:J

    .line 18
    iput-wide v0, p0, Ldev/duo/workspaceprobe/b$K;->n:J

    .line 27
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/workspaceprobe/b$K;->u:I

    .line 29
    iput-wide v0, p0, Ldev/duo/workspaceprobe/b$K;->w:J

    .line 30
    iput p1, p0, Ldev/duo/workspaceprobe/b$K;->x:I

    .line 32
    iput p1, p0, Ldev/duo/workspaceprobe/b$K;->z:I

    .line 33
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Ldev/duo/workspaceprobe/b$K;->A:F

    return-void
.end method
