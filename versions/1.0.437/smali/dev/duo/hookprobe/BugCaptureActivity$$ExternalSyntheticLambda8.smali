.class public final synthetic Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/BugCaptureActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/BugCaptureActivity;Ljava/io/File;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;->f$0:Ldev/duo/hookprobe/BugCaptureActivity;

    iput-object p2, p0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;->f$1:Ljava/io/File;

    iput-object p3, p0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;->f$2:Landroid/content/Context;

    iput-object p4, p0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;->f$0:Ldev/duo/hookprobe/BugCaptureActivity;

    iget-object v1, p0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;->f$1:Ljava/io/File;

    iget-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;->f$2:Landroid/content/Context;

    iget-object v3, p0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;->f$3:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Ldev/duo/hookprobe/BugCaptureActivity;->$r8$lambda$fjZ53-s3Gx1GEK8WgCjkfNVyhLQ(Ldev/duo/hookprobe/BugCaptureActivity;Ljava/io/File;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
