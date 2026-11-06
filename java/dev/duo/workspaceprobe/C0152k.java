package dev.duo.workspaceprobe;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* renamed from: dev.duo.workspaceprobe.k */
/* loaded from: classes.dex */
final class C0152k extends View {

    /* renamed from: a */
    private final Paint f2853a;

    /* renamed from: b */
    private final RectF f2854b;

    /* renamed from: c */
    private boolean f2855c;

    C0152k(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.f2853a = paint;
        this.f2854b = new RectF();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    /* renamed from: a */
    void m2968a(boolean z) {
        this.f2855c = z;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float width = getWidth() - 40.0f;
        float f = width - 140.0f;
        this.f2854b.set(f, f, width, width);
        float f2 = this.f2855c ? 16.0f : 12.0f;
        this.f2853a.setStrokeWidth(6.0f + f2);
        this.f2853a.setColor(1426063360);
        canvas.drawArc(this.f2854b, 0.0f, 90.0f, false, this.f2853a);
        this.f2853a.setStrokeWidth(f2);
        this.f2853a.setColor(this.f2855c ? -1 : -570425345);
        canvas.drawArc(this.f2854b, 0.0f, 90.0f, false, this.f2853a);
    }
}
