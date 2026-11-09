.class public final synthetic Ldev/duo/hookprobe/DetailActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/DetailActivity;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/DetailActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/DetailActivity$$ExternalSyntheticLambda0;->f$0:Ldev/duo/hookprobe/DetailActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/DetailActivity$$ExternalSyntheticLambda0;->f$0:Ldev/duo/hookprobe/DetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
