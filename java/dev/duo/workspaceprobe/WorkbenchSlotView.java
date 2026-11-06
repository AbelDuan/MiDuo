package dev.duo.workspaceprobe;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;

/* renamed from: dev.duo.workspaceprobe.j */
/* loaded from: classes.dex */
final class WorkbenchSlotView extends View {

    /* renamed from: a */
    private final Paint f2848a;

    /* renamed from: b */
    private final int f2849b;

    /* renamed from: c */
    private final Drawable[] f2850c;

    /* renamed from: d */
    private final RectF f2851d;

    /* renamed from: e */
    private final RectF[] f2852e;

    WorkbenchSlotView(Context context, int i, Drawable[] drawableArr) {
        super(context);
        this.f2848a = new Paint(1);
        this.f2851d = new RectF();
        this.f2849b = i;
        this.f2850c = drawableArr;
        int i2 = 0;
        for (Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.mutate();
            }
        }
        this.f2852e = new RectF[drawableArr.length - 1];
        while (true) {
            RectF[] rectFArr = this.f2852e;
            if (i2 >= rectFArr.length) {
                return;
            }
            rectFArr[i2] = new RectF();
            i2++;
        }
    }

    /* renamed from: a */
    void m2967a(Rect rect, Rect[] rectArr) {
        this.f2851d.set(rect);
        int i = 0;
        while (true) {
            RectF[] rectFArr = this.f2852e;
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
            RectF[] rectFArr = this.f2852e;
            if (i >= rectFArr.length) {
                m2966a(canvas, this.f2851d, this.f2850c[0], 180);
                return;
            } else {
                RectF rectF = rectFArr[i];
                i++;
                m2966a(canvas, rectF, this.f2850c[i], 120);
            }
        }
    }

    /* renamed from: a */
    private void m2966a(Canvas canvas, RectF rectF, Drawable drawable, int i) {
        if (rectF.isEmpty()) {
            return;
        }
        this.f2848a.setColor(this.f2849b);
        float m2990a = WorkbenchController.m2990a(rectF.width());
        canvas.drawRoundRect(rectF, m2990a, m2990a, this.f2848a);
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
