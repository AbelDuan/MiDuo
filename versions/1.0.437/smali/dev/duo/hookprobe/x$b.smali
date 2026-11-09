.class final Ldev/duo/hookprobe/x$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Object;

.field final c:I

.field final d:I

.field final e:I

.field final f:J

.field g:J

.field h:Z

.field i:Z

.field j:I

.field k:[F

.field l:Z

.field m:Z

.field n:Z

.field o:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;IIIJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    iput-object p2, p0, Ldev/duo/hookprobe/x$b;->b:Ljava/lang/Object;

    iput p3, p0, Ldev/duo/hookprobe/x$b;->c:I

    iput p4, p0, Ldev/duo/hookprobe/x$b;->d:I

    .line 3
    iput p5, p0, Ldev/duo/hookprobe/x$b;->e:I

    iput-wide p6, p0, Ldev/duo/hookprobe/x$b;->f:J

    add-long/2addr p6, p8

    iput-wide p6, p0, Ldev/duo/hookprobe/x$b;->g:J

    return-void
.end method


# virtual methods
.method a(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Ldev/duo/hookprobe/x$b;->g:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
