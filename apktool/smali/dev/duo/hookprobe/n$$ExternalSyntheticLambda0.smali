.class public final synthetic Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Field;

.field public final synthetic f$1:Ljava/lang/reflect/Field;

.field public final synthetic f$10:Ljava/lang/reflect/Method;

.field public final synthetic f$11:Ljava/lang/reflect/Field;

.field public final synthetic f$2:Ljava/lang/reflect/Field;

.field public final synthetic f$3:Ljava/lang/reflect/Field;

.field public final synthetic f$4:Ljava/lang/reflect/Method;

.field public final synthetic f$5:Ljava/lang/reflect/Method;

.field public final synthetic f$6:Ljava/lang/reflect/Method;

.field public final synthetic f$7:Ljava/lang/reflect/Method;

.field public final synthetic f$8:Ljava/lang/reflect/Method;

.field public final synthetic f$9:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Field;

    iput-object p2, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Field;

    iput-object p3, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$2:Ljava/lang/reflect/Field;

    iput-object p4, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$3:Ljava/lang/reflect/Field;

    iput-object p5, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$4:Ljava/lang/reflect/Method;

    iput-object p6, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$5:Ljava/lang/reflect/Method;

    iput-object p7, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$6:Ljava/lang/reflect/Method;

    iput-object p8, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$7:Ljava/lang/reflect/Method;

    iput-object p9, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$8:Ljava/lang/reflect/Method;

    iput-object p10, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$9:Ljava/lang/reflect/Method;

    iput-object p11, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$10:Ljava/lang/reflect/Method;

    iput-object p12, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$11:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 13

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Field;

    iget-object v1, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Field;

    iget-object v2, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$2:Ljava/lang/reflect/Field;

    iget-object v3, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$3:Ljava/lang/reflect/Field;

    iget-object v4, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$4:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$5:Ljava/lang/reflect/Method;

    iget-object v6, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$6:Ljava/lang/reflect/Method;

    iget-object v7, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$7:Ljava/lang/reflect/Method;

    iget-object v8, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$8:Ljava/lang/reflect/Method;

    iget-object v9, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$9:Ljava/lang/reflect/Method;

    iget-object v10, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$10:Ljava/lang/reflect/Method;

    iget-object v11, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$11:Ljava/lang/reflect/Field;

    move-object v12, p1

    invoke-static/range {v0 .. v12}, Ldev/duo/hookprobe/n;->$r8$lambda$Nhszzr2YOhVxnBQvC2BTyLZD2iU(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
