.class final Ldev/duo/workspaceprobe/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:Z

.field final d:Z

.field final e:I

.field final f:I


# direct methods
.method constructor <init>(ZZIZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p6, p0, Ldev/duo/workspaceprobe/a$b;->e:I

    .line 3
    iput-boolean p5, p0, Ldev/duo/workspaceprobe/a$b;->d:Z

    .line 4
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/a$b;->a:Z

    iput-boolean p2, p0, Ldev/duo/workspaceprobe/a$b;->b:Z

    iput p3, p0, Ldev/duo/workspaceprobe/a$b;->f:I

    iput-boolean p4, p0, Ldev/duo/workspaceprobe/a$b;->c:Z

    return-void
.end method


# virtual methods
.method a(Ldev/duo/workspaceprobe/a$b;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, p1, Ldev/duo/workspaceprobe/a$b;->a:Z

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/a$b;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/a$b;->b:Z

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/a$b;->b:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Ldev/duo/workspaceprobe/a$b;->f:I

    iget v1, p0, Ldev/duo/workspaceprobe/a$b;->f:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/a$b;->c:Z

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/a$b;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Ldev/duo/workspaceprobe/a$b;->d:Z

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/a$b;->d:Z

    if-ne v0, v1, :cond_0

    iget p1, p1, Ldev/duo/workspaceprobe/a$b;->e:I

    iget v0, p0, Ldev/duo/workspaceprobe/a$b;->e:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method a(ZZZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_3

    .line 1
    :cond_1
    iget p3, p0, Ldev/duo/workspaceprobe/a$b;->e:I

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    and-int/2addr p3, v1

    if-eqz p3, :cond_3

    return p1

    .line 2
    :cond_3
    iget-boolean p3, p0, Ldev/duo/workspaceprobe/a$b;->a:Z

    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Ldev/duo/workspaceprobe/a$b;->d:Z

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    return p1

    :cond_5
    :goto_1
    return v0
.end method
