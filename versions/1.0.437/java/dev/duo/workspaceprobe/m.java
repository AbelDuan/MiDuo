package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class m extends android.graphics.drawable.Drawable {
    private final android.graphics.Paint a;
    private final int b;

    m(int i, int i2) {
        android.graphics.Paint paint = new android.graphics.Paint(1);
        this.a = paint;
        this.b = i;
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        paint.setStrokeWidth(i * 0.09f);
        paint.setColor(i2);
        setBounds(0, 0, i, i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        android.graphics.Rect bounds = getBounds();
        float f = this.b;
        canvas.save();
        canvas.translate(bounds.left, bounds.top);
        float f2 = 0.42f * f;
        canvas.drawCircle(f2, f2, 0.28f * f, this.a);
        float f3 = f * 0.63f;
        float f4 = f * 0.86f;
        canvas.drawLine(f3, f3, f4, f4, this.a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
    }
}
