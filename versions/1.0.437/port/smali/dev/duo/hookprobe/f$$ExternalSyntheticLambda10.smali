.class public final synthetic Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/f;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I

.field public final synthetic f$4:[Ljava/lang/String;

.field public final synthetic f$5:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/f;Landroid/widget/EditText;Ljava/util/List;I[Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$0:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    iput p4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$3:I

    iput-object p5, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$4:[Ljava/lang/String;

    iput-object p6, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$5:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$0:Ldev/duo/hookprobe/f;

    iget-object v1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    iget v3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$3:I

    iget-object v4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$4:[Ljava/lang/String;

    iget-object v5, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda10;->f$5:Landroid/widget/TextView;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Ldev/duo/hookprobe/f;->$r8$lambda$E3gLLuKOggr9Z81qbOzNM5ssmmc(Ldev/duo/hookprobe/f;Landroid/widget/EditText;Ljava/util/List;I[Ljava/lang/String;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
