.class final Ldev/duo/fold/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ldev/duo/fold/e;

.field final c:[Landroid/view/SurfaceControl;

.field final d:[Landroid/view/SurfaceControl;

.field final e:[[Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ldev/duo/fold/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/SurfaceControl;

    iput-object v1, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    new-array v1, v0, [Landroid/view/SurfaceControl;

    iput-object v1, p0, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    .line 3
    new-array v0, v0, [[Landroid/view/SurfaceControl;

    iput-object v0, p0, Ldev/duo/fold/h;->e:[[Landroid/view/SurfaceControl;

    .line 5
    iput-object p1, p0, Ldev/duo/fold/h;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldev/duo/fold/h;->b:Ldev/duo/fold/e;

    return-void
.end method


# virtual methods
.method a(III)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldev/duo/fold/h;->b:Ldev/duo/fold/e;

    invoke-virtual {v0, p1, p2, p3}, Ldev/duo/fold/e;->a(III)Landroid/os/Bundle;

    move-result-object p2

    .line 2
    const-string p3, "unavailable"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p2

    .line 3
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const-string v0, "home"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mirror"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    const-string v0, "sidebar"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "layers"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ldev/duo/fold/h;->e:[[Landroid/view/SurfaceControl;

    new-array v1, v3, [Landroid/view/SurfaceControl;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/view/SurfaceControl;

    aput-object p3, v0, p1

    return-object p2
.end method

.method a(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/duo/fold/h;->b:Ldev/duo/fold/e;

    invoke-virtual {v1, p1}, Ldev/duo/fold/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 111
    :goto_1
    iget-object v4, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    goto/16 :goto_6

    .line 113
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v5, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v5, p0, Ldev/duo/fold/h;->e:[[Landroid/view/SurfaceControl;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 116
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/view/SurfaceControl;

    if-nez v7, :cond_2

    goto :goto_2

    .line 119
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 120
    :try_start_2
    invoke-static {v8, v7}, Ldev/duo/fold/Surfaces;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 121
    invoke-virtual {v8, v7, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v9

    .line 123
    :try_start_4
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v8

    :try_start_5
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 122
    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v8

    .line 128
    if-nez v1, :cond_3

    move-object v1, v8

    goto :goto_4

    .line 129
    :cond_3
    :try_start_6
    invoke-virtual {v1, v8}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    :cond_4
    :goto_4
    invoke-virtual {v7}, Landroid/view/SurfaceControl;->release()V

    goto :goto_2

    .line 130
    :goto_5
    invoke-virtual {v7}, Landroid/view/SurfaceControl;->release()V

    throw p1

    .line 132
    :cond_5
    iget-object v4, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    iget-object v5, p0, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aput-object v0, v5, v3

    aput-object v0, v4, v3

    .line 133
    iget-object v4, p0, Ldev/duo/fold/h;->e:[[Landroid/view/SurfaceControl;

    aput-object v0, v4, v3

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    return-void

    .line 135
    :cond_7
    throw v1
.end method

.method a(ILdev/duo/fold/g$a;Landroid/os/Bundle;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    const-string v4, "sidebar"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 9
    const-string v5, "width"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget v7, v0, Ldev/duo/fold/g$a;->a:I

    if-ne v6, v7, :cond_7

    const-string v6, "height"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget v8, v0, Ldev/duo/fold/g$a;->b:I

    if-ne v7, v8, :cond_7

    .line 10
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget v7, v0, Ldev/duo/fold/g$a;->a:I

    if-ne v5, v7, :cond_7

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget v6, v0, Ldev/duo/fold/g$a;->b:I

    if-ne v5, v6, :cond_7

    if-nez v2, :cond_0

    const v5, 0xd02474

    goto :goto_0

    :cond_0
    const v5, 0xd02475

    .line 13
    :goto_0
    iget-object v6, v1, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MiDuoFold-source-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldev/duo/fold/Surfaces;->a(Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v7

    aput-object v7, v6, v2

    .line 14
    const-string v6, "home"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v7, "layers"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v1, Ldev/duo/fold/h;->e:[[Landroid/view/SurfaceControl;

    aget-object v7, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    :try_start_1
    iget-object v9, v1, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aget-object v9, v9, v2

    invoke-static {v8, v9, v5}, Ldev/duo/fold/Surfaces;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 20
    iget-object v9, v1, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aget-object v9, v9, v2

    invoke-static {v8, v9}, Ldev/duo/fold/Surfaces;->b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MiDuoFold-glass-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ldev/duo/fold/Surfaces;->a(Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v9, v1, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aget-object v9, v9, v2

    invoke-virtual {v8, v14, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    iget v10, v0, Ldev/duo/fold/g$a;->b:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v9, v14, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    iget v11, v0, Ldev/duo/fold/g$a;->a:I

    iget v12, v0, Ldev/duo/fold/g$a;->b:I

    invoke-direct {v10, v7, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v14, v10}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    invoke-static {v8, v14}, Ldev/duo/fold/Surfaces;->b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 24
    const-string v9, "android.view.IWindowManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "mirrorWallpaperSurface"

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    .line 25
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget-object v10, v1, Ldev/duo/fold/h;->a:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceControl;

    if-eqz v9, :cond_6

    .line 27
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v9, v14}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v9, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 28
    invoke-static {v8, v9}, Ldev/duo/fold/Surfaces;->b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v15, v7

    :goto_1
    const/4 v9, 0x2

    if-ge v15, v9, :cond_5

    move v10, v7

    .line 29
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 30
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    const-string v12, "mirror"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/view/SurfaceControl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v13, 0x1

    if-ne v15, v13, :cond_1

    .line 33
    :try_start_3
    invoke-static {v12}, Ldev/duo/fold/Surfaces;->a(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v12

    .line 34
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v15, :cond_2

    .line 36
    iget-object v9, v1, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aget-object v9, v9, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_2
    move-object v9, v14

    .line 37
    :goto_3
    :try_start_4
    invoke-virtual {v8, v12, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v12, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v10, :cond_3

    .line 39
    const-string v11, "matrix"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v16

    .line 40
    move v11, v10

    aget v10, v16, v7

    const/16 v17, 0x3

    aget v17, v16, v17

    move/from16 v18, v9

    move-object v9, v12

    aget v12, v16, v13

    const/4 v13, 0x4

    aget v13, v16, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 p3, v17

    move/from16 v17, v11

    move/from16 v11, p3

    move/from16 p3, v7

    move/from16 v7, v18

    const/16 v18, 0x2

    :try_start_5
    invoke-static/range {v8 .. v13}, Ldev/duo/fold/Surfaces;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFF)V

    .line 41
    aget v10, v16, v18

    const/4 v11, 0x5

    aget v11, v16, v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    .line 43
    :cond_3
    move/from16 p3, v7

    move v7, v9

    move/from16 v17, v10

    move-object v9, v12

    const/16 v18, 0x2

    const-string v10, "frame"

    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Landroid/graphics/Rect;

    const-string v10, "scale"

    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 44
    const-string v12, "position"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v19

    .line 45
    move-object v12, v11

    const/4 v11, 0x0

    move-object/from16 v20, v12

    const/4 v12, 0x0

    move/from16 v21, v13

    move v13, v10

    move/from16 v22, v7

    move-object/from16 v7, v20

    invoke-static/range {v8 .. v13}, Ldev/duo/fold/Surfaces;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFF)V

    .line 46
    aget v11, v19, p3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    sub-float v10, v22, v10

    mul-float/2addr v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    aget v12, v19, v21

    move/from16 v19, v13

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    div-float v13, v13, v19

    add-float/2addr v12, v13

    invoke-virtual {v8, v9, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 47
    const-string v10, "alpha"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v8, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 41
    :goto_4
    nop

    .line 49
    invoke-static {v8, v9}, Ldev/duo/fold/Surfaces;->b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    add-int/lit8 v10, v17, 0x1

    move/from16 v7, p3

    move/from16 v9, v18

    goto/16 :goto_2

    :cond_4
    move/from16 p3, v7

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 34
    :catchall_0
    move-exception v0

    move/from16 p3, v7

    goto :goto_5

    .line 51
    :cond_5
    move/from16 p3, v7

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 52
    :try_start_6
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v3, v1, Ldev/duo/fold/h;->e:[[Landroid/view/SurfaceControl;

    move/from16 v6, p3

    new-array v6, v6, [Landroid/view/SurfaceControl;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/SurfaceControl;

    aput-object v4, v3, v2

    .line 53
    iget-object v1, v1, Ldev/duo/fold/h;->b:Ldev/duo/fold/e;

    iget v2, v0, Ldev/duo/fold/g$a;->a:I

    iget v3, v0, Ldev/duo/fold/g$a;->c:I

    iget-object v0, v0, Ldev/duo/fold/g$a;->i:Landroid/view/Surface;

    const/4 v6, 0x0

    move v4, v5

    move-object v5, v0

    move-object v0, v1

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Ldev/duo/fold/e;->a(IIIILandroid/view/Surface;Z)V

    return-void

    .line 54
    :cond_6
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "\u5206\u5c42\u73bb\u7483\u58c1\u7eb8\u955c\u50cf\u4e0d\u53ef\u7528"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 34
    :catchall_1
    move-exception v0

    :goto_5
    move-object v2, v0

    .line 55
    :try_start_8
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 53
    :catchall_3
    move-exception v0

    .line 88
    iget-object v1, v1, Ldev/duo/fold/h;->e:[[Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    new-array v2, v6, [Landroid/view/SurfaceControl;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/SurfaceControl;

    aput-object v2, v1, p1

    throw v0

    .line 89
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5206\u5c42\u5750\u6807\u4e0e\u8f93\u5165\u5c3a\u5bf8\u4e0d\u7b26"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(ILdev/duo/fold/g$a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const v1, 0xd02474

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    const v1, 0xd02473

    goto :goto_0

    :cond_1
    const v1, 0xd02475

    goto :goto_0

    .line 90
    :goto_1
    const-string v1, "android.view.IWindowManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 91
    iget-object v0, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mirrorWallpaperSurface"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Ldev/duo/fold/h;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    aput-object v1, v0, p1

    goto :goto_2

    .line 93
    :cond_2
    const-class v3, Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    iget-object v0, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    aput-object v3, v0, p1

    .line 95
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/view/SurfaceControl;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mirrorDisplay"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/fold/h;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    aget-object v3, v3, p1

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    :goto_2
    iget-object v0, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiDuoFold-source-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/fold/Surfaces;->a(Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    aput-object v1, v0, p1

    .line 100
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 101
    :try_start_0
    iget-object v0, p0, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aget-object v0, v0, p1

    invoke-static {v1, v0, v6}, Ldev/duo/fold/Surfaces;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 102
    iget-object v0, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    aget-object v0, v0, p1

    iget-object v2, p0, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aget-object v2, v2, p1

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 103
    iget-object v0, p0, Ldev/duo/fold/h;->d:[Landroid/view/SurfaceControl;

    aget-object v0, v0, p1

    invoke-static {v1, v0}, Ldev/duo/fold/Surfaces;->b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 104
    iget-object v0, p0, Ldev/duo/fold/h;->c:[Landroid/view/SurfaceControl;

    aget-object v0, v0, p1

    invoke-static {v1, v0}, Ldev/duo/fold/Surfaces;->b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 106
    iget-object v2, p0, Ldev/duo/fold/h;->b:Ldev/duo/fold/e;

    iget v4, p2, Ldev/duo/fold/g$a;->a:I

    iget v5, p2, Ldev/duo/fold/g$a;->b:I

    iget-object v7, p2, Ldev/duo/fold/g$a;->i:Landroid/view/Surface;

    move v3, p1

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Ldev/duo/fold/e;->a(IIIILandroid/view/Surface;Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 107
    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    .line 98
    :cond_3
    move v3, p1

    .line 108
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u955c\u50cf\u56fe\u5c42\u65e0\u6548 slot="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_4
    move v3, p1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u6574\u5c4f\u955c\u50cf\u521b\u5efa\u5931\u8d25 slot="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
