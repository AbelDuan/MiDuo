.class public final synthetic Ldev/duo/taskcore/k$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/k;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/k;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda11;->f$0:Ldev/duo/taskcore/k;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda11;->f$0:Ldev/duo/taskcore/k;

    invoke-static {v0, p1}, Ldev/duo/taskcore/k;->$r8$lambda$IcMpsljjyJVB1pZek6_dHhfXHCU(Ldev/duo/taskcore/k;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
