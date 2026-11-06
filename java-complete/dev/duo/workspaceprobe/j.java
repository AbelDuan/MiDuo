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
final class j extends View {
    private final Paint a;
    private final int b;
    private final Drawable[] c;
    private final RectF d;
    private final RectF[] e;

    j(Context context, int i, Drawable[] drawableArr) {
        super(context);
        this.a = new Paint(1);
        this.d = new RectF();
        this.b = i;
        this.c = drawableArr;
        int i2 = 0;
        for (Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.mutate();
            }
        }
        this.e = new RectF[drawableArr.length - 1];
        while (true) {
            RectF[] rectFArr = this.e;
            if (i2 >= rectFArr.length) {
                return;
            }
            rectFArr[i2] = new RectF();
            i2++;
        }
    }

    void a(Rect rect, Rect[] rectArr) {
        this.d.set(rect);
        int i = 0;
        while (true) {
            RectF[] rectFArr = this.e;
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
    protected void onDraw(Canvas canvas) {
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        int i = 0;
        while (true) {
            RectF[] rectFArr = this.e;
            if (i >= rectFArr.length) {
                a(canvas, this.d, this.c[0], 180);
                return;
            } else {
                RectF rectF = rectFArr[i];
                i++;
                a(canvas, rectF, this.c[i], 120);
            }
        }
    }

    private void a(Canvas canvas, RectF rectF, Drawable drawable, int i) {
        if (rectF.isEmpty()) {
            return;
        }
        this.a.setColor(this.b);
        float a = n.a(rectF.width());
        canvas.drawRoundRect(rectF, a, a, this.a);
        if (drawable == null) {
            return;
        }
        int i2 = i / 2;
        int round = Math.round(rectF.centerX()) - i2;
        int round2 = Math.round(rectF.centerY()) - i2;
        drawable.setBounds(round, round2, round + i, i + round2);
        drawable.setAlpha(255);
        drawable.draw(canvas);
    }
}
