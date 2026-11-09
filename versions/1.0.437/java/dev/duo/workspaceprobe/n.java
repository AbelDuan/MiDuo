package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class n extends android.view.View {
    private final android.graphics.Paint a;
    private final android.graphics.RectF b;
    private int c;
    private int d;
    private final android.graphics.drawable.Drawable[] e;
    private android.graphics.Rect f;
    private final android.graphics.RectF g;
    private android.graphics.Rect[] h;
    private android.graphics.Rect i;
    private android.graphics.Bitmap j;
    private android.graphics.Rect k;
    private final android.graphics.Paint l;
    float m;
    private float n;

    n(android.content.Context context, int i, android.graphics.drawable.Drawable[] drawableArr, android.graphics.Rect rect) {
        super(context);
        this.a = new android.graphics.Paint(1);
        this.b = new android.graphics.RectF();
        this.f = new android.graphics.Rect();
        this.h = new android.graphics.Rect[0];
        this.l = new android.graphics.Paint(2);
        this.g = new android.graphics.RectF(rect);
        this.c = i;
        this.d = a(i);
        this.e = drawableArr;
        for (android.graphics.drawable.Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.mutate();
            }
        }
    }

    private static int a(int i) {
        return i == -14935010 ? -15724528 : -986894;
    }

    void b(int i) {
        this.c = i;
        this.d = a(i);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(android.graphics.Canvas canvas) {
        android.graphics.Rect rect;
        int i;
        float f;
        float f2;
        canvas.drawColor(this.d, android.graphics.PorterDuff.Mode.SRC);
        float width = getWidth();
        android.graphics.RectF rectF = this.b;
        android.graphics.RectF rectF2 = this.g;
        float f3 = rectF2.left;
        android.graphics.Rect rect2 = this.f;
        float f4 = this.m;
        float f5 = f3 + ((rect2.left - f3) * f4);
        float f6 = rectF2.top;
        float f7 = rectF2.right;
        float f8 = rectF2.bottom;
        rectF.set(f5, f6 + ((rect2.top - f6) * f4), f7 + ((rect2.right - f7) * f4), f8 + ((rect2.bottom - f8) * f4));
        int i2 = 0;
        a(canvas, this.e[0], 180, 255);
        if (this.n <= 0.0f || this.i == null) {
            return;
        }
        canvas.save();
        android.graphics.Rect rect3 = this.i;
        canvas.clipRect(0.0f, rect3.top, width, rect3.bottom);
        while (true) {
            android.graphics.Rect[] rectArr = this.h;
            if (i2 >= rectArr.length || (i = i2 + 1) >= this.e.length) {
                break;
            }
            android.graphics.Rect rect4 = rectArr[i2];
            if (rect4 != null) {
                this.b.set(rect4);
                android.graphics.RectF rectF3 = this.b;
                if (this.i.left > 0) {
                    f = 1.0f - this.n;
                    f2 = width - rect4.left;
                } else {
                    f = -(1.0f - this.n);
                    f2 = rect4.right;
                }
                rectF3.offset(f * f2, 0.0f);
                a(canvas, this.e[i], 120, java.lang.Math.round(this.n * 255.0f));
            }
            i2 = i;
        }
        if (this.j != null && (rect = this.k) != null) {
            float f9 = this.i.left > 0 ? (1.0f - this.n) * (width - rect.left) : (-(1.0f - this.n)) * rect.right;
            this.l.setAlpha(java.lang.Math.round(this.n * 255.0f));
            android.graphics.Bitmap bitmap = this.j;
            android.graphics.Rect rect5 = this.k;
            canvas.drawBitmap(bitmap, rect5.left + f9, rect5.top, this.l);
        }
        canvas.restore();
    }

    void a(float f, float f2) {
        this.m = f;
        this.n = f2;
        invalidate();
    }

    void a(android.graphics.Bitmap bitmap, android.graphics.Rect rect) {
        this.j = bitmap;
        this.k = rect == null ? null : new android.graphics.Rect(rect);
        invalidate();
    }

    void a(android.graphics.Rect rect, android.graphics.Rect[] rectArr, android.graphics.Rect rect2) {
        android.graphics.RectF rectF = this.g;
        float f = rectF.left;
        android.graphics.Rect rect3 = this.f;
        float f2 = this.m;
        float f3 = f + ((rect3.left - f) * f2);
        float f4 = rectF.top;
        float f5 = rectF.right;
        float f6 = rectF.bottom;
        rectF.set(f3, f4 + ((rect3.top - f4) * f2), f5 + ((rect3.right - f5) * f2), f6 + ((rect3.bottom - f6) * f2));
        this.f = rect;
        this.h = rectArr;
        this.i = rect2;
        this.m = 0.0f;
    }

    private void a(android.graphics.Canvas canvas, android.graphics.drawable.Drawable drawable, int i, int i2) {
        this.a.setColor(this.c);
        this.a.setAlpha(i2);
        float a = dev.duo.workspaceprobe.o.a(this.b.width(), getWidth());
        canvas.drawRoundRect(this.b, a, a, this.a);
        if (drawable == null) {
            return;
        }
        int i3 = i / 2;
        int round = java.lang.Math.round(this.b.centerX()) - i3;
        int round2 = java.lang.Math.round(this.b.centerY()) - i3;
        drawable.setBounds(round, round2, round + i, i + round2);
        drawable.setAlpha(i2);
        drawable.draw(canvas);
    }
}
