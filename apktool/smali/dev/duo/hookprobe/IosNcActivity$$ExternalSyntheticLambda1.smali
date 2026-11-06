.class public final synthetic Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/IosNcActivity;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/IosNcActivity;Landroid/content/SharedPreferences;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;->f$0:Ldev/duo/hookprobe/IosNcActivity;

    iput-object p2, p0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;->f$0:Ldev/duo/hookprobe/IosNcActivity;

    iget-object v1, p0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2}, Ldev/duo/hookprobe/IosNcActivity;->$r8$lambda$RhnCDqU5H9MFjaJnRWZT_ZK9LBs(Ldev/duo/hookprobe/IosNcActivity;Landroid/content/SharedPreferences;Ljava/util/function/Consumer;)V

    return-void
.end method
