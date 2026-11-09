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

.field public final synthetic f$12:Ljava/lang/reflect/Method;

.field public final synthetic f$13:Ljava/lang/reflect/Method;

.field public final synthetic f$14:Ljava/lang/reflect/Method;

.field public final synthetic f$15:Ljava/lang/reflect/Method;

.field public final synthetic f$16:Ljava/lang/reflect/Method;

.field public final synthetic f$2:Ljava/lang/reflect/Field;

.field public final synthetic f$3:Ljava/lang/reflect/Field;

.field public final synthetic f$4:Ljava/lang/reflect/Method;

.field public final synthetic f$5:Ljava/lang/reflect/Method;

.field public final synthetic f$6:Ljava/lang/reflect/Method;

.field public final synthetic f$7:Ljava/lang/reflect/Method;

.field public final synthetic f$8:Ljava/lang/reflect/Method;

.field public final synthetic f$9:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
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

    iput-object p13, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$12:Ljava/lang/reflect/Method;

    iput-object p14, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$13:Ljava/lang/reflect/Method;

    iput-object p15, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$14:Ljava/lang/reflect/Method;

    move-object/from16 p1, p16

    iput-object p1, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$15:Ljava/lang/reflect/Method;

    move-object/from16 p1, p17

    iput-object p1, p0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$16:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 19

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Field;

    iget-object v2, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Field;

    iget-object v3, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$2:Ljava/lang/reflect/Field;

    iget-object v4, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$3:Ljava/lang/reflect/Field;

    iget-object v5, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$4:Ljava/lang/reflect/Method;

    iget-object v6, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$5:Ljava/lang/reflect/Method;

    iget-object v7, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$6:Ljava/lang/reflect/Method;

    iget-object v8, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$7:Ljava/lang/reflect/Method;

    iget-object v9, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$8:Ljava/lang/reflect/Method;

    iget-object v10, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$9:Ljava/lang/reflect/Method;

    iget-object v11, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$10:Ljava/lang/reflect/Method;

    iget-object v12, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$11:Ljava/lang/reflect/Field;

    iget-object v13, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$12:Ljava/lang/reflect/Method;

    iget-object v14, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$13:Ljava/lang/reflect/Method;

    iget-object v15, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$14:Ljava/lang/reflect/Method;

    move-object/from16 v16, v1

    iget-object v1, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$15:Ljava/lang/reflect/Method;

    iget-object v0, v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;->f$16:Ljava/lang/reflect/Method;

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v18, p1

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v18}, Ldev/duo/hookprobe/n;->$r8$lambda$KUlXIjdBydj59gD7-W3xqvskLg0(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
