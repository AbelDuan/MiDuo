.class public final synthetic Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/f;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/f;Landroid/app/AlertDialog;Landroid/widget/EditText;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;->f$0:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;->f$2:Landroid/widget/EditText;

    iput-boolean p4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;->f$0:Ldev/duo/hookprobe/f;

    iget-object v1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;->f$2:Landroid/widget/EditText;

    iget-boolean v3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda34;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/hookprobe/f;->$r8$lambda$1JxvUiyMnPbCJRObMyoGd9Wkkxw(Ldev/duo/hookprobe/f;Landroid/app/AlertDialog;Landroid/widget/EditText;ZLandroid/content/DialogInterface;)V

    return-void
.end method
