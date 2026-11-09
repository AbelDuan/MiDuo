.class public final synthetic Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/f;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/f;Landroid/app/AlertDialog;Landroid/widget/EditText;ZZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$0:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$2:Landroid/widget/EditText;

    iput-boolean p4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$3:Z

    iput-boolean p5, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$4:Z

    iput p6, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$5:I

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 7

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$0:Ldev/duo/hookprobe/f;

    iget-object v1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$2:Landroid/widget/EditText;

    iget-boolean v3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$3:Z

    iget-boolean v4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$4:Z

    iget v5, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda5;->f$5:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ldev/duo/hookprobe/f;->$r8$lambda$V2Yh22YJkVVa4WhbMbLxo95Or5E(Ldev/duo/hookprobe/f;Landroid/app/AlertDialog;Landroid/widget/EditText;ZZILandroid/content/DialogInterface;)V

    return-void
.end method
