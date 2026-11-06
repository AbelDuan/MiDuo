.class final Ldev/duo/workspaceprobe/b$O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "O"
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/net/Socket;


# direct methods
.method constructor <init>(JLjava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldev/duo/workspaceprobe/b$O;->a:J

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$O;->b:Ljava/net/Socket;

    return-void
.end method
