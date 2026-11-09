.class final Ldev/duo/workspaceprobe/b$P;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "P"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:D

.field final e:D

.field final f:D

.field final g:D

.field final h:D

.field final i:J

.field final j:J

.field final k:J

.field final l:J

.field final m:J

.field final n:J

.field final o:J

.field final p:J


# direct methods
.method constructor <init>([BJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->p:J

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    const p3, 0x44555332    # 853.2999f

    if-ne p2, p3, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Ldev/duo/workspaceprobe/b$P;->a:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Ldev/duo/workspaceprobe/b$P;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Ldev/duo/workspaceprobe/b$P;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->d:D

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->l:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->m:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->n:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->o:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->e:D

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->f:D

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->i:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->g:D

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->h:D

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p2

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$P;->j:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    iput-wide p1, p0, Ldev/duo/workspaceprobe/b$P;->k:J

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Native frame protocol"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
