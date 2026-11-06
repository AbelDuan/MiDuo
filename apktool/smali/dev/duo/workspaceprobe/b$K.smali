.class final Ldev/duo/workspaceprobe/b$K;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "K"
.end annotation


# instance fields
.field final synthetic A:Ldev/duo/workspaceprobe/b;

.field a:Landroid/view/SurfaceControl;

.field b:Ldev/duo/workspaceprobe/b$R;

.field c:Landroid/widget/FrameLayout;

.field d:Landroid/widget/FrameLayout;

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldev/duo/workspaceprobe/b$J;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:Ldev/duo/workspaceprobe/b$S;

.field final h:[Landroid/widget/ImageView;

.field i:Landroid/widget/FrameLayout;

.field j:Landroid/widget/LinearLayout;

.field k:Ldev/duo/workspaceprobe/b$c0;

.field l:J

.field m:J

.field n:Landroid/widget/FrameLayout;

.field o:Z

.field p:Landroid/view/SurfaceControl;

.field q:Ldev/duo/workspaceprobe/b$h0;

.field r:Ldev/duo/workspaceprobe/b$U;

.field s:Ldev/duo/workspaceprobe/b$N;

.field volatile t:I

.field u:I

.field v:J

.field w:I

.field x:I

.field volatile y:I

.field z:F


# direct methods
.method private constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$K;->A:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$K;->e:Ljava/util/ArrayList;

    .line 8
    const/4 p1, 0x3

    new-array p1, p1, [Landroid/widget/ImageView;

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$K;->h:[Landroid/widget/ImageView;

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/duo/workspaceprobe/b$K;->l:J

    .line 16
    iput-wide v0, p0, Ldev/duo/workspaceprobe/b$K;->m:J

    .line 25
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/workspaceprobe/b$K;->t:I

    .line 27
    iput-wide v0, p0, Ldev/duo/workspaceprobe/b$K;->v:J

    .line 28
    iput p1, p0, Ldev/duo/workspaceprobe/b$K;->w:I

    .line 30
    iput p1, p0, Ldev/duo/workspaceprobe/b$K;->y:I

    .line 31
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Ldev/duo/workspaceprobe/b$K;->z:F

    return-void
.end method

.method synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$k;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$K;-><init>(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
