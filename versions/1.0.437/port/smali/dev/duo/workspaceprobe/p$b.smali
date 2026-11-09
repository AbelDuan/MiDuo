.class final Ldev/duo/workspaceprobe/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/duo/workspaceprobe/p$b;->a:I

    iput p2, p0, Ldev/duo/workspaceprobe/p$b;->b:I

    return-void
.end method


# virtual methods
.method a(II)Z
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/workspaceprobe/p$b;->a:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Ldev/duo/workspaceprobe/p$b;->b:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
