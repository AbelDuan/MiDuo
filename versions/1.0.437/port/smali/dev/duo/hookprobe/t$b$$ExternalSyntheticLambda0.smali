.class public final synthetic Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ldev/duo/workspaceprobe/b;


# direct methods
.method public synthetic constructor <init>(ZLandroid/os/IBinder;JIIZLdev/duo/workspaceprobe/b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iput-wide p3, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$2:J

    iput p5, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$3:I

    iput p6, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$4:I

    iput-boolean p7, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$5:Z

    iput-object p8, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$6:Ldev/duo/workspaceprobe/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-boolean v0, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-wide v2, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$2:J

    iget v4, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$3:I

    iget v5, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$4:I

    iget-boolean v6, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$5:Z

    iget-object v7, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda0;->f$6:Ldev/duo/workspaceprobe/b;

    invoke-static/range {v0 .. v7}, Ldev/duo/hookprobe/t$b;->$r8$lambda$P90XUYiUV9LsVJc15S6lAQxRf38(ZLandroid/os/IBinder;JIIZLdev/duo/workspaceprobe/b;)V

    return-void
.end method
