.class public final synthetic Ldev/duo/taskcore/i$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/d;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/d;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda6;->f$0:Ldev/duo/taskcore/d;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda6;->f$0:Ldev/duo/taskcore/d;

    check-cast p1, Ldev/duo/taskcore/d$b;

    invoke-static {v0, p1}, Ldev/duo/taskcore/i;->$r8$lambda$hEkGJldG9ZoXPeu3tTp06tgjIjA(Ldev/duo/taskcore/d;Ldev/duo/taskcore/d$b;)Z

    move-result p1

    return p1
.end method
