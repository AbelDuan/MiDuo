.class public final synthetic Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/f;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/f;Landroid/widget/EditText;ZLandroid/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;->f$0:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;->f$1:Landroid/widget/EditText;

    iput-boolean p3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;->f$2:Z

    iput-object p4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;->f$3:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;->f$0:Ldev/duo/hookprobe/f;

    iget-object v1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;->f$1:Landroid/widget/EditText;

    iget-boolean v2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;->f$2:Z

    iget-object v3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda19;->f$3:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, v3, p1}, Ldev/duo/hookprobe/f;->$r8$lambda$7xvZLjHgFUVdkPvsYrsSiuQ-yJ4(Ldev/duo/hookprobe/f;Landroid/widget/EditText;ZLandroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
