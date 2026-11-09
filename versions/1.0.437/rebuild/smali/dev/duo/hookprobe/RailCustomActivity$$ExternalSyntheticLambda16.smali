.class public final synthetic Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda16;->f$0:Ljava/util/List;

    iput-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda16;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda16;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda16;->f$0:Ljava/util/List;

    iget-object v1, p0, Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda16;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda16;->f$2:Ljava/util/function/Consumer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Ldev/duo/hookprobe/RailCustomActivity;->$r8$lambda$kYUIT9LeWCcraDW-Dvh9KezMDVE(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/Consumer;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
