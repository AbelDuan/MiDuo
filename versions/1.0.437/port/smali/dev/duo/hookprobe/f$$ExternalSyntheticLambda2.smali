.class public final synthetic Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/f;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/f;ZIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;->f$0:Ldev/duo/hookprobe/f;

    iput-boolean p2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;->f$1:Z

    iput p3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;->f$2:I

    iput-boolean p4, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;->f$0:Ldev/duo/hookprobe/f;

    iget-boolean v1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;->f$1:Z

    iget v2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;->f$2:I

    iget-boolean v3, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda2;->f$3:Z

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Ldev/duo/hookprobe/f;->$r8$lambda$xsf_6IhxBqJNyaWVeqlfRtQcwx0(Ldev/duo/hookprobe/f;ZIZLandroid/content/DialogInterface;I)V

    return-void
.end method
