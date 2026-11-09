.class final Ldev/duo/fold/Engine$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/fold/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field a:Ldev/duo/fold/g;

.field b:Ldev/duo/fold/g$a;

.field c:Ldev/duo/fold/g$a;

.field d:Ldev/duo/fold/g$a;

.field e:Ldev/duo/fold/g$a;

.field f:Ldev/duo/fold/g$b;

.field g:Ldev/duo/fold/g$b;

.field h:Ldev/duo/fold/d;

.field i:Ldev/duo/fold/d;

.field j:I

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field l:Ldev/duo/fold/a;

.field m:J

.field n:J

.field o:J

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field t:J

.field u:J

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/duo/fold/Engine$f;->m:J

    iput-wide v0, p0, Ldev/duo/fold/Engine$f;->n:J

    .line 12
    const/4 v2, -0x1

    iput v2, p0, Ldev/duo/fold/Engine$f;->s:I

    .line 13
    iput-wide v0, p0, Ldev/duo/fold/Engine$f;->t:J

    iput-wide v0, p0, Ldev/duo/fold/Engine$f;->u:J

    .line 14
    const-string v0, "\u5df2\u5efa\u8f93\u5165\u4f46\u65e0 buffer\uff08\u6e90\u6216\u58c1\u7eb8\uff09"

    iput-object v0, p0, Ldev/duo/fold/Engine$f;->v:Ljava/lang/String;

    const-string v0, "\u672a\u83b7\u8bb8\u53ef"

    iput-object v0, p0, Ldev/duo/fold/Engine$f;->w:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ldev/duo/fold/Engine$a;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ldev/duo/fold/Engine$f;-><init>()V

    return-void
.end method
