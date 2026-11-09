.class public final synthetic Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ljava/util/function/IntSupplier;

.field public final synthetic f$1:Ljava/util/function/BooleanSupplier;

.field public final synthetic f$10:Z

.field public final synthetic f$11:Ljava/lang/reflect/Method;

.field public final synthetic f$12:Ljava/lang/reflect/Method;

.field public final synthetic f$13:Ljava/lang/reflect/Field;

.field public final synthetic f$14:Ljava/lang/reflect/Field;

.field public final synthetic f$15:Ljava/lang/reflect/Field;

.field public final synthetic f$16:Ljava/lang/reflect/Field;

.field public final synthetic f$17:Ljava/lang/reflect/Constructor;

.field public final synthetic f$18:Ljava/lang/reflect/Field;

.field public final synthetic f$19:Ljava/lang/reflect/Field;

.field public final synthetic f$2:Ljava/lang/reflect/Field;

.field public final synthetic f$20:Ljava/lang/reflect/Field;

.field public final synthetic f$3:Ljava/lang/reflect/Method;

.field public final synthetic f$4:Ljava/lang/reflect/Method;

.field public final synthetic f$5:Ljava/lang/reflect/Method;

.field public final synthetic f$6:Ljava/lang/reflect/Field;

.field public final synthetic f$7:Ljava/lang/reflect/Method;

.field public final synthetic f$8:Ljava/lang/reflect/Method;

.field public final synthetic f$9:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntSupplier;

    iput-object p2, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BooleanSupplier;

    iput-object p3, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$2:Ljava/lang/reflect/Field;

    iput-object p4, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$3:Ljava/lang/reflect/Method;

    iput-object p5, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$4:Ljava/lang/reflect/Method;

    iput-object p6, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$5:Ljava/lang/reflect/Method;

    iput-object p7, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$6:Ljava/lang/reflect/Field;

    iput-object p8, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$7:Ljava/lang/reflect/Method;

    iput-object p9, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$8:Ljava/lang/reflect/Method;

    iput-object p10, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$9:Ljava/lang/reflect/Method;

    iput-boolean p11, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$10:Z

    iput-object p12, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$11:Ljava/lang/reflect/Method;

    iput-object p13, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$12:Ljava/lang/reflect/Method;

    iput-object p14, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$13:Ljava/lang/reflect/Field;

    iput-object p15, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$14:Ljava/lang/reflect/Field;

    move-object/from16 p1, p16

    iput-object p1, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$15:Ljava/lang/reflect/Field;

    move-object/from16 p1, p17

    iput-object p1, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$16:Ljava/lang/reflect/Field;

    move-object/from16 p1, p18

    iput-object p1, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$17:Ljava/lang/reflect/Constructor;

    move-object/from16 p1, p19

    iput-object p1, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$18:Ljava/lang/reflect/Field;

    move-object/from16 p1, p20

    iput-object p1, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$19:Ljava/lang/reflect/Field;

    move-object/from16 p1, p21

    iput-object p1, p0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$20:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 23

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntSupplier;

    iget-object v2, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BooleanSupplier;

    iget-object v3, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$2:Ljava/lang/reflect/Field;

    iget-object v4, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$3:Ljava/lang/reflect/Method;

    iget-object v5, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$4:Ljava/lang/reflect/Method;

    iget-object v6, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$5:Ljava/lang/reflect/Method;

    iget-object v7, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$6:Ljava/lang/reflect/Field;

    iget-object v8, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$7:Ljava/lang/reflect/Method;

    iget-object v9, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$8:Ljava/lang/reflect/Method;

    iget-object v10, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$9:Ljava/lang/reflect/Method;

    iget-boolean v11, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$10:Z

    iget-object v12, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$11:Ljava/lang/reflect/Method;

    iget-object v13, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$12:Ljava/lang/reflect/Method;

    iget-object v14, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$13:Ljava/lang/reflect/Field;

    iget-object v15, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$14:Ljava/lang/reflect/Field;

    move-object/from16 v16, v1

    iget-object v1, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$15:Ljava/lang/reflect/Field;

    move-object/from16 v17, v1

    iget-object v1, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$16:Ljava/lang/reflect/Field;

    move-object/from16 v18, v1

    iget-object v1, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$17:Ljava/lang/reflect/Constructor;

    move-object/from16 v19, v1

    iget-object v1, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$18:Ljava/lang/reflect/Field;

    move-object/from16 v20, v1

    iget-object v1, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$19:Ljava/lang/reflect/Field;

    iget-object v0, v0, Ldev/duo/hookprobe/D$$ExternalSyntheticLambda0;->f$20:Ljava/lang/reflect/Field;

    move-object/from16 v21, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    move-object/from16 v22, p1

    move-object/from16 v21, v0

    invoke-static/range {v1 .. v22}, Ldev/duo/hookprobe/D;->$r8$lambda$YRhf4to1-vuWrP6vdXLWcjqPyYk(Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
