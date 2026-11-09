.class Ldev/duo/hookprobe/U$c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/U;->a(Landroid/content/Context;IIFZF)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:I


# direct methods
.method constructor <init>(IFZII)V
    .locals 0

    .line 1
    iput p1, p0, Ldev/duo/hookprobe/U$c;->b:I

    iput p2, p0, Ldev/duo/hookprobe/U$c;->c:F

    iput-boolean p3, p0, Ldev/duo/hookprobe/U$c;->d:Z

    iput p4, p0, Ldev/duo/hookprobe/U$c;->e:I

    iput p5, p0, Ldev/duo/hookprobe/U$c;->f:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    iget v2, p0, Ldev/duo/hookprobe/U$c;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    iget v2, p0, Ldev/duo/hookprobe/U$c;->c:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 7
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 8
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    iget-boolean v2, p0, Ldev/duo/hookprobe/U$c;->d:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 10
    iget v1, p0, Ldev/duo/hookprobe/U$c;->e:I

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x40d00000    # 6.5f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41980000    # 19.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v10, 0x41100000    # 9.0f

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v12, 0x41700000    # 15.0f

    const/high16 v13, 0x40a00000    # 5.0f

    packed-switch v1, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glyph "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldev/duo/hookprobe/U$c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    nop

    .line 91
    const/high16 v1, 0x41080000    # 8.5f

    invoke-virtual {v6, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x41780000    # 15.5f

    invoke-virtual {v6, v4, v13}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v4, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v13, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v13, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 130
    :pswitch_1
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v8, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v6, 0x43820000    # 260.0f

    const/4 v7, 0x0

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x430c0000    # 140.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 132
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x419c0000    # 19.5f

    const v3, 0x3fcccccd    # 1.6f

    invoke-virtual {p1, v11, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 134
    :pswitch_2
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x41000000    # 8.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 137
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    iget-boolean v2, p0, Ldev/duo/hookprobe/U$c;->d:Z

    if-eqz v2, :cond_1

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :cond_1
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const v2, 0x40266666    # 2.6f

    invoke-virtual {p1, v10, v9, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 139
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v7, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 140
    :pswitch_3
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x41a80000    # 21.0f

    const/high16 v1, 0x40e00000    # 7.0f

    const/high16 v2, 0x40400000    # 3.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 141
    :pswitch_4
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41980000    # 19.0f

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40a00000    # 5.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 143
    :pswitch_5
    iget-object v0, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v7, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const v5, 0x4019999a    # 2.4f

    const v6, 0x4019999a    # 2.4f

    const v1, 0x404ccccd    # 3.2f

    const v2, 0x4099999a    # 4.8f

    const v3, 0x412ccccd    # 10.8f

    const v4, 0x4199999a    # 19.2f

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 145
    iget-object v0, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    iget-object v7, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const v1, 0x41533333    # 13.2f

    const v3, 0x41a66666    # 20.8f

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 147
    :pswitch_6
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41980000    # 19.0f

    const/high16 v4, 0x41980000    # 19.0f

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v2, 0x41100000    # 9.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {v6, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v13, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 150
    :pswitch_7
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p1, v2, v2, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x41800000    # 16.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 152
    :pswitch_8
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40400000    # 3.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    iget-object v8, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const v6, 0x43868000    # 269.0f

    const/4 v7, 0x0

    const/high16 v1, 0x40800000    # 4.0f

    const v2, 0x40933333    # 4.6f

    const/high16 v3, 0x41a00000    # 20.0f

    const v4, 0x41a4cccd    # 20.6f

    const/high16 v5, -0x3dce0000    # -44.5f

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_9
    nop

    .line 154
    const/high16 v1, 0x41480000    # 12.5f

    invoke-virtual {v6, v13, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x41180000    # 9.5f

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-virtual {v6, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_a
    nop

    .line 156
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v6, v1, v10}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v6, v1, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_b
    nop

    .line 158
    invoke-virtual {v6, v10, v13}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v10, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 159
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_c
    nop

    .line 160
    invoke-virtual {v6, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 162
    :pswitch_d
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41980000    # 19.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v2, 0x41400000    # 12.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 165
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41940000    # 18.5f

    const/high16 v4, 0x41180000    # 9.5f

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    iget-object v5, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :pswitch_e
    nop

    .line 167
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    filled-new-array {v1, v2, v3, v0}, [[F

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    const/4 v0, 0x4

    if-ge v11, v0, :cond_2

    aget-object v0, v9, v11

    .line 168
    aget v1, v0, v10

    const/4 v2, 0x1

    aget v2, v0, v2

    add-float v3, v1, v8

    add-float v4, v2, v8

    iget-object v7, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :pswitch_f
    nop

    .line 169
    const v1, 0x404ccccd    # 3.2f

    invoke-virtual {v6, v11, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x41a40000    # 20.5f

    const/high16 v3, 0x41280000    # 10.5f

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v12, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    const/high16 v1, 0x41680000    # 14.5f

    invoke-virtual {v6, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v10, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x40600000    # 3.5f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    invoke-virtual {v6, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 172
    iget-object v1, p0, Ldev/duo/hookprobe/U$c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    :array_1
    .array-data 4
        0x41580000    # 13.5f
        0x40800000    # 4.0f
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0x41580000    # 13.5f
    .end array-data

    :array_3
    .array-data 4
        0x41580000    # 13.5f
        0x41580000    # 13.5f
    .end array-data
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/hookprobe/U$c;->f:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/hookprobe/U$c;->f:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
