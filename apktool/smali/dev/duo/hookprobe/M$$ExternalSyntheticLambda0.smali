.class public final synthetic Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Process;

.field public final synthetic f$1:Ljava/io/ByteArrayOutputStream;

.field public final synthetic f$2:[Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Process;Ljava/io/ByteArrayOutputStream;[Ljava/io/IOException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Process;

    iput-object p2, p0, Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;->f$1:Ljava/io/ByteArrayOutputStream;

    iput-object p3, p0, Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;->f$2:[Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Process;

    iget-object v1, p0, Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;->f$1:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;->f$2:[Ljava/io/IOException;

    invoke-static {v0, v1, v2}, Ldev/duo/hookprobe/M;->$r8$lambda$BMcfLJtL-4uY5i-D-x4LXS9x4EM(Ljava/lang/Process;Ljava/io/ByteArrayOutputStream;[Ljava/io/IOException;)V

    return-void
.end method
