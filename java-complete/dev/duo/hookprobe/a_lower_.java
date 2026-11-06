package dev.duo.hookprobe;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;

/* renamed from: dev.duo.hookprobe.a, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class a extends View {
    private final Bitmap a;
    private final Matrix b;
    private final RectF c;
    private final Path d;
    private final Paint e;
    private final Paint f;
    private final Paint g;
    private final ScaleGestureDetector h;
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float p;
    private float q;

    /* renamed from: dev.duo.hookprobe.a$a, reason: collision with other inner class name */
    class C0000a extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        C0000a() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float max = Math.max(a.this.j, Math.min(a.this.j * 6.0f, a.this.i * scaleGestureDetector.getScaleFactor()));
            float f = max / a.this.i;
            a.this.k = scaleGestureDetector.getFocusX() - ((scaleGestureDetector.getFocusX() - a.this.k) * f);
            a.this.l = scaleGestureDetector.getFocusY() - ((scaleGestureDetector.getFocusY() - a.this.l) * f);
            a.this.i = max;
            a.this.a();
            return true;
        }
    }

    a(Context context, Bitmap bitmap) {
        super(context);
        this.b = new Matrix();
        this.c = new RectF();
        this.d = new Path();
        this.e = new Paint(3);
        Paint paint = new Paint(1);
        this.f = paint;
        Paint paint2 = new Paint(1);
        this.g = paint2;
        this.o = 1.0f;
        this.p = 0.5f;
        this.q = 0.5f;
        this.a = bitmap;
        paint.setColor((T.a ? 1118483 : 15921909) | (-654311424));
        paint2.setColor(T.b_v);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(T.a(context, 1.0f));
        this.h = new ScaleGestureDetector(context, new C0000a());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawBitmap(this.a, this.b, this.e);
        canvas.drawPath(this.d, this.f);
        float width = (this.c.width() * 56.0f) / 854.0f;
        canvas.drawRoundRect(this.c, width, width, this.g);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        float[] a = d.a(i, i2, T.a(getContext(), 8.0f), T.a(getContext(), 8.0f), T.a(getContext(), 8.0f));
        this.c.set(a[0], a[1], a[2], a[3]);
        float a2 = d.a(this.c.width(), this.c.height(), this.a.getWidth(), this.a.getHeight());
        this.j = a2;
        this.i = a2 * this.o;
        this.k = this.c.centerX() - ((this.a.getWidth() * this.i) * this.p);
        this.l = this.c.centerY() - ((this.a.getHeight() * this.i) * this.q);
        float width = (this.c.width() * 56.0f) / 854.0f;
        this.d.reset();
        this.d.setFillType(Path.FillType.EVEN_ODD);
        Path.Direction direction = Path.Direction.CW;
        this.d.addRect(0.0f, 0.0f, i, i2, direction);
        this.d.addRoundRect(this.c, width, width, direction);
        a();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.h.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 || actionMasked == 6) {
            int i = (actionMasked == 6 && motionEvent.getActionIndex() == 0) ? 1 : 0;
            this.m = motionEvent.getX(i);
            this.n = motionEvent.getY(i);
        } else if (actionMasked == 2 && !this.h.isInProgress() && motionEvent.getPointerCount() == 1) {
            this.k += motionEvent.getX() - this.m;
            this.l += motionEvent.getY() - this.n;
            this.m = motionEvent.getX();
            this.n = motionEvent.getY();
            a();
        }
        return true;
    }

    Bitmap d() {
        Bitmap createBitmap = Bitmap.createBitmap(854, 1328, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-16777216);
        float width = 854.0f / this.c.width();
        canvas.scale(width, width);
        RectF rectF = this.c;
        canvas.translate(-rectF.left, -rectF.top);
        canvas.drawBitmap(this.a, this.b, this.e);
        return createBitmap;
    }

    float e() {
        return this.o;
    }

    void a(float f, float f2, float f3) {
        this.o = f;
        this.p = f2;
        this.q = f3;
    }

    float b() {
        return this.p;
    }

    float c() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        float f = this.k;
        float width = this.a.getWidth() * this.i;
        RectF rectF = this.c;
        this.k = d.a(f, width, rectF.left, rectF.right);
        float f2 = this.l;
        float height = this.a.getHeight() * this.i;
        RectF rectF2 = this.c;
        this.l = d.a(f2, height, rectF2.top, rectF2.bottom);
        Matrix matrix = this.b;
        float f3 = this.i;
        matrix.setScale(f3, f3);
        this.b.postTranslate(this.k, this.l);
        this.o = this.i / this.j;
        this.p = (this.c.centerX() - this.k) / (this.a.getWidth() * this.i);
        this.q = (this.c.centerY() - this.l) / (this.a.getHeight() * this.i);
        invalidate();
    }
}
