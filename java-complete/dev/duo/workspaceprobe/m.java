package dev.duo.workspaceprobe;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class m extends View {
    private final Paint a;
    private final RectF b;
    private int c;
    private final Drawable[] d;
    private Rect e;
    private final RectF f;
    private Rect[] g;
    private Rect h;
    float i;
    private float j;
    private boolean k;

    m(Context context, int i, Drawable[] drawableArr) {
        super(context);
        this.a = new Paint(1);
        this.b = new RectF();
        this.e = new Rect();
        this.f = new RectF(0.0f, 0.0f, 2364.0f, 1672.0f);
        this.g = new Rect[0];
        this.c = i;
        this.d = drawableArr;
        for (Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.mutate();
            }
        }
    }

    void a(int i) {
        this.c = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2 = 0;
        canvas.drawColor(this.k ? 0 : -16777216, PorterDuff.Mode.SRC);
        float width = getWidth();
        RectF rectF = this.b;
        RectF rectF2 = this.f;
        float f = rectF2.left;
        Rect rect = this.e;
        float f2 = this.i;
        float f3 = f + ((rect.left - f) * f2);
        float f4 = rectF2.top;
        float f5 = rectF2.right;
        float f6 = rectF2.bottom;
        rectF.set(f3, f4 + ((rect.top - f4) * f2), f5 + ((rect.right - f5) * f2), f6 + ((rect.bottom - f6) * f2));
        a(canvas, this.d[0], 180, 255);
        if (this.j <= 0.0f || this.h == null) {
            return;
        }
        canvas.save();
        Rect rect2 = this.h;
        canvas.clipRect(0.0f, rect2.top, width, rect2.bottom);
        while (true) {
            Rect[] rectArr = this.g;
            if (i2 >= rectArr.length || (i = i2 + 1) >= this.d.length) {
                break;
            }
            Rect rect3 = rectArr[i2];
            if (rect3 != null) {
                this.b.set(rect3);
                this.b.offset((-(1.0f - this.j)) * rect3.right, 0.0f);
                a(canvas, this.d[i], 120, Math.round(this.j * 255.0f));
            }
            i2 = i;
        }
        canvas.restore();
    }

    void a(float f, float f2) {
        this.i = f;
        this.j = f2;
        invalidate();
    }

    void a() {
        this.k = true;
    }

    void a(Rect rect, Rect[] rectArr, Rect rect2) {
        RectF rectF = this.f;
        float f = rectF.left;
        Rect rect3 = this.e;
        float f2 = this.i;
        float f3 = f + ((rect3.left - f) * f2);
        float f4 = rectF.top;
        float f5 = rectF.right;
        float f6 = rectF.bottom;
        rectF.set(f3, f4 + ((rect3.top - f4) * f2), f5 + ((rect3.right - f5) * f2), f6 + ((rect3.bottom - f6) * f2));
        this.e = rect;
        this.g = rectArr;
        this.h = rect2;
        this.i = 0.0f;
    }

    private void a(Canvas canvas, Drawable drawable, int i, int i2) {
        this.a.setColor(this.c);
        this.a.setAlpha(i2);
        float a = n.a(this.b.width());
        canvas.drawRoundRect(this.b, a, a, this.a);
        if (drawable == null) {
            return;
        }
        int i3 = i / 2;
        int round = Math.round(this.b.centerX()) - i3;
        int round2 = Math.round(this.b.centerY()) - i3;
        drawable.setBounds(round, round2, round + i, i + round2);
        drawable.setAlpha(i2);
        drawable.draw(canvas);
    }
}
