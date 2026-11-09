.class public final synthetic Lio/github/libxposed/service/XposedService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lio/github/libxposed/service/XposedService;


# direct methods
.method public synthetic constructor <init>(Lio/github/libxposed/service/XposedService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/libxposed/service/XposedService$$ExternalSyntheticLambda0;->f$0:Lio/github/libxposed/service/XposedService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService$$ExternalSyntheticLambda0;->f$0:Lio/github/libxposed/service/XposedService;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lio/github/libxposed/service/XposedService;->$r8$lambda$T61Hp6givnZnE4Lb5F5l4UAfaGw(Lio/github/libxposed/service/XposedService;Ljava/lang/String;)Lio/github/libxposed/service/RemotePreferences;

    move-result-object p1

    return-object p1
.end method
