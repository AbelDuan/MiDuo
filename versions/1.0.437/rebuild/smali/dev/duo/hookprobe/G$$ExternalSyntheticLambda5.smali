.class public final synthetic Ldev/duo/hookprobe/G$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/G;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/G;Landroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda5;->f$0:Ldev/duo/hookprobe/G;

    iput-object p2, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda5;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda5;->f$0:Ldev/duo/hookprobe/G;

    iget-object v1, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda5;->f$1:Landroid/util/SparseArray;

    invoke-static {v0, v1, p1}, Ldev/duo/hookprobe/G;->$r8$lambda$mmkHFRaKbGnrYsPLiJ5_Xk7DgTE(Ldev/duo/hookprobe/G;Landroid/util/SparseArray;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
