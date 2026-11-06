package dev.duo.workspaceprobe;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;

/* renamed from: dev.duo.workspaceprobe.m */
/* loaded from: classes.dex */
final class C0154m extends View {

    /* renamed from: a */
    private final Paint f2866a;

    /* renamed from: b */
    private final RectF f2867b;

    /* renamed from: c */
    private int f2868c;

    /* renamed from: d */
    private final Drawable[] f2869d;

    /* renamed from: e */
    private Rect f2870e;

    /* renamed from: f */
    private final RectF f2871f;

    /* renamed from: g */
    private Rect[] f2872g;

    /* renamed from: h */
    private Rect f2873h;

    /* renamed from: i */
    float f2874i;

    /* renamed from: j */
    private float f2875j;

    /* renamed from: k */
    private boolean f2876k;

    C0154m(Context context, int i, Drawable[] drawableArr) {
        super(context);
        this.f2866a = new Paint(1);
        this.f2867b = new RectF();
        this.f2870e = new Rect();
        this.f2871f = new RectF(0.0f, 0.0f, 2364.0f, 1672.0f);
        this.f2872g = new Rect[0];
        this.f2868c = i;
        this.f2869d = drawableArr;
        for (Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.mutate();
            }
        }
    }

    /* renamed from: a */
    void m2988a(int i) {
        this.f2868c = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2 = 0;
        canvas.drawColor(this.f2876k ? 0 : -16777216, PorterDuff.Mode.SRC);
        float width = getWidth();
        RectF rectF = this.f2867b;
        RectF rectF2 = this.f2871f;
        float f = rectF2.left;
        Rect rect = this.f2870e;
        float f2 = this.f2874i;
        float f3 = f + ((rect.left - f) * f2);
        float f4 = rectF2.top;
        float f5 = rectF2.right;
        float f6 = rectF2.bottom;
        rectF.set(f3, f4 + ((rect.top - f4) * f2), f5 + ((rect.right - f5) * f2), f6 + ((rect.bottom - f6) * f2));
        m2985a(canvas, this.f2869d[0], 180, 255);
        if (this.f2875j <= 0.0f || this.f2873h == null) {
            return;
        }
        canvas.save();
        Rect rect2 = this.f2873h;
        canvas.clipRect(0.0f, rect2.top, width, rect2.bottom);
        while (true) {
            Rect[] rectArr = this.f2872g;
            if (i2 >= rectArr.length || (i = i2 + 1) >= this.f2869d.length) {
                break;
            }
            Rect rect3 = rectArr[i2];
            if (rect3 != null) {
                this.f2867b.set(rect3);
                this.f2867b.offset((-(1.0f - this.f2875j)) * rect3.right, 0.0f);
                m2985a(canvas, this.f2869d[i], 120, Math.round(this.f2875j * 255.0f));
            }
            i2 = i;
        }
        canvas.restore();
    }

    /* renamed from: a */
    void m2987a(float f, float f2) {
        this.f2874i = f;
        this.f2875j = f2;
        invalidate();
    }

    /* renamed from: a */
    void m2986a() {
        this.f2876k = true;
    }

    /* renamed from: a */
    void m2989a(Rect rect, Rect[] rectArr, Rect rect2) {
        RectF rectF = this.f2871f;
        float f = rectF.left;
        Rect rect3 = this.f2870e;
        float f2 = this.f2874i;
        float f3 = f + ((rect3.left - f) * f2);
        float f4 = rectF.top;
        float f5 = rectF.right;
        float f6 = rectF.bottom;
        rectF.set(f3, f4 + ((rect3.top - f4) * f2), f5 + ((rect3.right - f5) * f2), f6 + ((rect3.bottom - f6) * f2));
        this.f2870e = rect;
        this.f2872g = rectArr;
        this.f2873h = rect2;
        this.f2874i = 0.0f;
    }

    /* renamed from: a */
    private void m2985a(Canvas canvas, Drawable drawable, int i, int i2) {
        this.f2866a.setColor(this.f2868c);
        this.f2866a.setAlpha(i2);
        float m2990a = C0155n.m2990a(this.f2867b.width());
        canvas.drawRoundRect(this.f2867b, m2990a, m2990a, this.f2866a);
        if (drawable == null) {
            return;
        }
        int i3 = i / 2;
        int round = Math.round(this.f2867b.centerX()) - i3;
        int round2 = Math.round(this.f2867b.centerY()) - i3;
        drawable.setBounds(round, round2, round + i, i + round2);
        drawable.setAlpha(i2);
        drawable.draw(canvas);
    }
}
