.class public final synthetic Lio/github/libxposed/service/XposedServiceHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lio/github/libxposed/service/XposedService;


# direct methods
.method public synthetic constructor <init>(Lio/github/libxposed/service/XposedService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/libxposed/service/XposedServiceHelper$$ExternalSyntheticLambda1;->f$0:Lio/github/libxposed/service/XposedService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/libxposed/service/XposedServiceHelper$$ExternalSyntheticLambda1;->f$0:Lio/github/libxposed/service/XposedService;

    invoke-static {v0}, Lio/github/libxposed/service/XposedServiceHelper;->lambda$onBinderReceived$0(Lio/github/libxposed/service/XposedService;)V

    return-void
.end method
