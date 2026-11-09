.class public final synthetic Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Ldev/duo/hookprobe/O;->$r8$lambda$XDo09qFbuaOitMMLDigz2gUYlO0(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
