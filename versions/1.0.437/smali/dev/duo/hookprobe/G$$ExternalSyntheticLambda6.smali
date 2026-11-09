.class public final synthetic Ldev/duo/hookprobe/G$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda6;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda6;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Ldev/duo/hookprobe/G;->$r8$lambda$fjtnS7h_PcAK4omy4NsBwAr6OgQ(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
