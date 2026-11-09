package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class k extends android.view.View {
    private final android.graphics.Paint a;
    private final android.graphics.RectF b;
    private boolean c;
    private final boolean d;

    k(android.content.Context context, boolean z) {
        super(context);
        android.graphics.Paint paint = new android.graphics.Paint(1);
        this.a = paint;
        this.b = new android.graphics.RectF();
        this.d = z;
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
    }

    void a(boolean z) {
        this.c = z;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(android.graphics.Canvas canvas) {
        float width = getWidth();
        boolean z = this.d;
        float f = z ? 40.0f : (width - 40.0f) - 140.0f;
        float f2 = z ? 90.0f : 0.0f;
        float f3 = width - 40.0f;
        this.b.set(f, f3 - 140.0f, 140.0f + f, f3);
        float f4 = this.c ? 16.0f : 12.0f;
        this.a.setStrokeWidth(6.0f + f4);
        this.a.setColor(1426063360);
        canvas.drawArc(this.b, f2, 90.0f, false, this.a);
        this.a.setStrokeWidth(f4);
        this.a.setColor(this.c ? -1 : -570425345);
        canvas.drawArc(this.b, f2, 90.0f, false, this.a);
    }
}
