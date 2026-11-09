.class public interface abstract Ldev/duo/taskcore/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()Ldev/duo/taskcore/b;
.end method

.method public abstract a(J)Ljava/lang/String;
.end method

.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract a(JILdev/duo/taskcore/d;[Ldev/duo/taskcore/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/i$c;
        }
    .end annotation
.end method

.method public abstract a(JLdev/duo/taskcore/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/i$c;
        }
    .end annotation
.end method

.method public abstract a(JLjava/lang/String;)V
.end method

.method public abstract a(Ldev/duo/taskcore/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/i$c;
        }
    .end annotation
.end method

.method public abstract a(Ldev/duo/taskcore/d;Ldev/duo/taskcore/i$a;)V
.end method

.method public abstract a(Ldev/duo/taskcore/d;[Ldev/duo/taskcore/d;Ldev/duo/taskcore/i$a;)V
.end method

.method public a(Ldev/duo/taskcore/d;[Ldev/duo/taskcore/d;Ljava/lang/Object;Ldev/duo/taskcore/i$a;)V
    .locals 0

    .line 3
    const-string p1, "nothing to bring"

    const/4 p2, 0x1

    invoke-interface {p4, p2, p1}, Ldev/duo/taskcore/i$a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public abstract a(Ldev/duo/taskcore/d;[Ldev/duo/taskcore/d;ZLdev/duo/taskcore/i$a;)V
.end method

.method public abstract a(Ldev/duo/taskcore/i;)V
.end method

.method public a(Ljava/util/List;Ldev/duo/taskcore/b;Ldev/duo/taskcore/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/d;",
            ">;",
            "Ldev/duo/taskcore/b;",
            "Ldev/duo/taskcore/i$a;",
            ")V"
        }
    .end annotation

    .line 2
    const-string p1, "relayout unsupported"

    const/4 p2, 0x0

    invoke-interface {p3, p2, p1}, Ldev/duo/taskcore/i$a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Ldev/duo/taskcore/d;Ldev/duo/taskcore/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/d;",
            ">;",
            "Ldev/duo/taskcore/d;",
            "Ldev/duo/taskcore/i$a;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-interface {p0, p1, p2, p3}, Ldev/duo/taskcore/i$b;->b(Ljava/util/List;Ldev/duo/taskcore/d;Ldev/duo/taskcore/i$a;)V

    return-void
.end method

.method public b(I)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract b(JLdev/duo/taskcore/d;)Ldev/duo/taskcore/d$c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/i$c;
        }
    .end annotation
.end method

.method public abstract b(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/i$c;
        }
    .end annotation
.end method

.method public abstract b(Ldev/duo/taskcore/d;Ldev/duo/taskcore/i$a;)V
.end method

.method public abstract b(Ljava/util/List;Ldev/duo/taskcore/d;Ldev/duo/taskcore/i$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/d;",
            ">;",
            "Ldev/duo/taskcore/d;",
            "Ldev/duo/taskcore/i$a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Ldev/duo/taskcore/d;)Z
.end method

.method public abstract c(I)Ldev/duo/taskcore/d$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/i$c;
        }
    .end annotation
.end method

.method public abstract c(Ldev/duo/taskcore/d;)V
.end method

.method public abstract d(Ldev/duo/taskcore/d;)Ljava/lang/String;
.end method

.method public e(Ldev/duo/taskcore/d;)V
    .locals 0

    return-void
.end method

.method public f(Ldev/duo/taskcore/d;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
