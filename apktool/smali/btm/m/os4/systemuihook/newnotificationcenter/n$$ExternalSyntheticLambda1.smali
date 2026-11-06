.class public final synthetic Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->$r8$lambda$NGVk5Hfw5rmMQHQYLqoQQFfKnoQ(ILio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
