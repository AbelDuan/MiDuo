.class public final synthetic Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda7;
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

    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda7;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/RailCustomActivity$$ExternalSyntheticLambda7;->f$0:Ljava/text/Collator;

    check-cast p1, Ldev/duo/hookprobe/RailCustomActivity$f;

    check-cast p2, Ldev/duo/hookprobe/RailCustomActivity$f;

    invoke-static {v0, p1, p2}, Ldev/duo/hookprobe/RailCustomActivity;->$r8$lambda$IdsRpo6OgYD-a6gFKvGvF2h35lA(Ljava/text/Collator;Ldev/duo/hookprobe/RailCustomActivity$f;Ldev/duo/hookprobe/RailCustomActivity$f;)I

    move-result p1

    return p1
.end method
