.class public final synthetic Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/f;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/f;Landroid/widget/EditText;ZZILandroid/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$0:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$1:Landroid/widget/EditText;

    iput-boolean p3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$2:Z

    iput-boolean p4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$3:Z

    iput p5, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$4:I

    iput-object p6, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$5:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$0:Ldev/duo/hookprobe/f;

    iget-object v1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$1:Landroid/widget/EditText;

    iget-boolean v2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$2:Z

    iget-boolean v3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$3:Z

    iget v4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$4:I

    iget-object v5, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda27;->f$5:Landroid/app/AlertDialog;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ldev/duo/hookprobe/f;->$r8$lambda$8wG393VwCYfn-OGvagdI4PbVPOs(Ldev/duo/hookprobe/f;Landroid/widget/EditText;ZZILandroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
