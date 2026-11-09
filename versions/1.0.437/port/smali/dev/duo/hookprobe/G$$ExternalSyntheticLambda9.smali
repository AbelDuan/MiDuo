.class public final synthetic Ldev/duo/hookprobe/G$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda9;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda9;->f$0:Landroid/content/SharedPreferences;

    invoke-static {v0}, Ldev/duo/hookprobe/G;->$r8$lambda$digyPPAZIktqiHyriydn2ptuXnY(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method
