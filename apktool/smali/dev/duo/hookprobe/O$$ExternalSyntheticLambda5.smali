.class public final synthetic Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Ldev/duo/hookprobe/O;->$r8$lambda$ZsIp83Sld2AISp9JFxCIGtO4fnM(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
