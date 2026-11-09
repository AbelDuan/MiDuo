package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class j extends android.view.View {
    private final android.graphics.Paint a;
    private final int b;
    private final android.graphics.drawable.Drawable[] c;
    private final android.graphics.RectF d;
    private final android.graphics.RectF[] e;

    j(android.content.Context context, int i, android.graphics.drawable.Drawable[] drawableArr) {
        super(context);
        this.a = new android.graphics.Paint(1);
        this.d = new android.graphics.RectF();
        this.b = i;
        this.c = drawableArr;
        int i2 = 0;
        for (android.graphics.drawable.Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.mutate();
            }
        }
        this.e = new android.graphics.RectF[drawableArr.length - 1];
        while (true) {
            android.graphics.RectF[] rectFArr = this.e;
            if (i2 >= rectFArr.length) {
                return;
            }
            rectFArr[i2] = new android.graphics.RectF();
            i2++;
        }
    }

    void a(android.graphics.Rect rect, android.graphics.Rect[] rectArr) {
        this.d.set(rect);
        int i = 0;
        while (true) {
            android.graphics.RectF[] rectFArr = this.e;
            if (i >= rectFArr.length) {
                invalidate();
                return;
            } else {
                rectFArr[i].set(rectArr[i]);
                i++;
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(android.graphics.Canvas canvas) {
        canvas.drawColor(0, android.graphics.PorterDuff.Mode.SRC);
        int i = 0;
        while (true) {
            android.graphics.RectF[] rectFArr = this.e;
            if (i >= rectFArr.length) {
                a(canvas, this.d, this.c[0], 180);
                return;
            } else {
                android.graphics.RectF rectF = rectFArr[i];
                i++;
                a(canvas, rectF, this.c[i], 120);
            }
        }
    }

    private void a(android.graphics.Canvas canvas, android.graphics.RectF rectF, android.graphics.drawable.Drawable drawable, int i) {
        if (rectF.isEmpty()) {
            return;
        }
        this.a.setColor(this.b);
        float a = dev.duo.workspaceprobe.o.a(rectF.width(), getWidth());
        canvas.drawRoundRect(rectF, a, a, this.a);
        if (drawable == null) {
            return;
        }
        int i2 = i / 2;
        int round = java.lang.Math.round(rectF.centerX()) - i2;
        int round2 = java.lang.Math.round(rectF.centerY()) - i2;
        drawable.setBounds(round, round2, round + i, i + round2);
        drawable.setAlpha(255);
        drawable.draw(canvas);
    }
}
