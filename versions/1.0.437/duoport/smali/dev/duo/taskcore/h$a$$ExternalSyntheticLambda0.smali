.class public final synthetic Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceProtocol$Client$Writer;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder;

    iput-object p2, p0, Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    iput p4, p0, Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder;

    iget-object v1, p0, Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    iget v3, p0, Ldev/duo/taskcore/h$a$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->$r8$lambda$mAZHWvG0TE-fy5A4qsmA7GY9B7E(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;ILandroid/os/Parcel;)V

    return-void
.end method
