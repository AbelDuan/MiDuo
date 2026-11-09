.class final Ldev/duo/workspaceprobe/q$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:F

.field final c:F

.field final d:F

.field final e:F

.field final f:F

.field final g:I

.field final h:[F

.field final i:[F


# direct methods
.method constructor <init>(Ljava/lang/String;FFIFFFFF[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/workspaceprobe/q$d;->a:Ljava/lang/String;

    iput p2, p0, Ldev/duo/workspaceprobe/q$d;->b:F

    iput p3, p0, Ldev/duo/workspaceprobe/q$d;->c:F

    iput p4, p0, Ldev/duo/workspaceprobe/q$d;->g:I

    iput p5, p0, Ldev/duo/workspaceprobe/q$d;->d:F

    iput p6, p0, Ldev/duo/workspaceprobe/q$d;->e:F

    iput p7, p0, Ldev/duo/workspaceprobe/q$d;->f:F

    .line 3
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p8, p1, p2

    const/4 p2, 0x1

    aput p9, p1, p2

    iput-object p1, p0, Ldev/duo/workspaceprobe/q$d;->h:[F

    iput-object p10, p0, Ldev/duo/workspaceprobe/q$d;->i:[F

    return-void
.end method
