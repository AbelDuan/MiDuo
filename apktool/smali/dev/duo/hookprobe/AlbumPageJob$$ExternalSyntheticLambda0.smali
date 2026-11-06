.class public final synthetic Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/AlbumPageJob;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/AlbumPageJob;Landroid/content/Context;[ILandroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;->f$0:Ldev/duo/hookprobe/AlbumPageJob;

    iput-object p2, p0, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;->f$2:[I

    iput-object p4, p0, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;->f$3:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;->f$0:Ldev/duo/hookprobe/AlbumPageJob;

    iget-object v1, p0, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;->f$2:[I

    iget-object v3, p0, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;->f$3:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, v2, v3}, Ldev/duo/hookprobe/AlbumPageJob;->$r8$lambda$yLEFu_sqBSk0-Sv42UVHt2TOTiE(Ldev/duo/hookprobe/AlbumPageJob;Landroid/content/Context;[ILandroid/app/job/JobParameters;)V

    return-void
.end method
