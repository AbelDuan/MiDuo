.class public final synthetic Ldev/duo/hookprobe/MainActivity$$ExternalSyntheticLambda64;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/MainActivity$$ExternalSyntheticLambda64;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$$ExternalSyntheticLambda64;->f$0:Ljava/text/Collator;

    check-cast p1, Ldev/duo/hookprobe/MainActivity$g;

    check-cast p2, Ldev/duo/hookprobe/MainActivity$g;

    invoke-static {v0, p1, p2}, Ldev/duo/hookprobe/MainActivity;->$r8$lambda$vuc_QVkNda4r1QI90KtgavWZaQY(Ljava/text/Collator;Ldev/duo/hookprobe/MainActivity$g;Ldev/duo/hookprobe/MainActivity$g;)I

    move-result p1

    return p1
.end method
