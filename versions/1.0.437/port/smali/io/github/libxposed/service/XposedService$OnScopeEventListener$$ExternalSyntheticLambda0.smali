.class public final synthetic Lio/github/libxposed/service/XposedService$OnScopeEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lio/github/libxposed/service/XposedService$OnScopeEventListener;


# direct methods
.method public synthetic constructor <init>(Lio/github/libxposed/service/XposedService$OnScopeEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/libxposed/service/XposedService$OnScopeEventListener$$ExternalSyntheticLambda0;->f$0:Lio/github/libxposed/service/XposedService$OnScopeEventListener;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService$OnScopeEventListener$$ExternalSyntheticLambda0;->f$0:Lio/github/libxposed/service/XposedService$OnScopeEventListener;

    check-cast p1, Lio/github/libxposed/service/XposedService$OnScopeEventListener;

    invoke-static {v0, p1}, Lio/github/libxposed/service/XposedService$OnScopeEventListener;->$r8$lambda$_7Kp3wDuWmiP67V4qkcgZ3pWCbw(Lio/github/libxposed/service/XposedService$OnScopeEventListener;Lio/github/libxposed/service/XposedService$OnScopeEventListener;)Lio/github/libxposed/service/IXposedScopeCallback;

    move-result-object p1

    return-object p1
.end method
