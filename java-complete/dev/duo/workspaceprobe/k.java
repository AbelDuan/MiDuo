package dev.duo.workspaceprobe;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class k extends View {
    private final Paint a;
    private final RectF b;
    private boolean c;

    k(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.a = paint;
        this.b = new RectF();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    void a(boolean z) {
        this.c = z;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float width = getWidth() - 40.0f;
        float f = width - 140.0f;
        this.b.set(f, f, width, width);
        float f2 = this.c ? 16.0f : 12.0f;
        this.a.setStrokeWidth(6.0f + f2);
        this.a.setColor(1426063360);
        canvas.drawArc(this.b, 0.0f, 90.0f, false, this.a);
        this.a.setStrokeWidth(f2);
        this.a.setColor(this.c ? -1 : -570425345);
        canvas.drawArc(this.b, 0.0f, 90.0f, false, this.a);
    }
}
