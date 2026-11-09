package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0011a extends android.view.View {
    private final android.graphics.Bitmap a;
    private final android.graphics.Matrix b;
    private final android.graphics.RectF c;
    private final android.graphics.Path d;
    private final android.graphics.Paint e;
    private final android.graphics.Paint f;
    private final android.graphics.Paint g;
    private final android.view.ScaleGestureDetector h;
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
    class C0000a extends android.view.ScaleGestureDetector.SimpleOnScaleGestureListener {
        C0000a() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(android.view.ScaleGestureDetector scaleGestureDetector) {
            float max = java.lang.Math.max(dev.duo.hookprobe.C0011a.this.j, java.lang.Math.min(dev.duo.hookprobe.C0011a.this.j * 6.0f, dev.duo.hookprobe.C0011a.this.i * scaleGestureDetector.getScaleFactor()));
            float f = max / dev.duo.hookprobe.C0011a.this.i;
            dev.duo.hookprobe.C0011a.this.k = scaleGestureDetector.getFocusX() - ((scaleGestureDetector.getFocusX() - dev.duo.hookprobe.C0011a.this.k) * f);
            dev.duo.hookprobe.C0011a.this.l = scaleGestureDetector.getFocusY() - ((scaleGestureDetector.getFocusY() - dev.duo.hookprobe.C0011a.this.l) * f);
            dev.duo.hookprobe.C0011a.this.i = max;
            dev.duo.hookprobe.C0011a.this.a();
            return true;
        }
    }

    C0011a(android.content.Context context, android.graphics.Bitmap bitmap) {
        super(context);
        this.b = new android.graphics.Matrix();
        this.c = new android.graphics.RectF();
        this.d = new android.graphics.Path();
        this.e = new android.graphics.Paint(3);
        android.graphics.Paint paint = new android.graphics.Paint(1);
        this.f = paint;
        android.graphics.Paint paint2 = new android.graphics.Paint(1);
        this.g = paint2;
        this.o = 1.0f;
        this.p = 0.5f;
        this.q = 0.5f;
        this.a = bitmap;
        paint.setColor((dev.duo.hookprobe.U.a ? 1118483 : 15921909) | (-654311424));
        paint2.setColor(dev.duo.hookprobe.U.b);
        paint2.setStyle(android.graphics.Paint.Style.STROKE);
        paint2.setStrokeWidth(dev.duo.hookprobe.U.a(context, 1.0f));
        this.h = new android.view.ScaleGestureDetector(context, new dev.duo.hookprobe.C0011a.C0000a());
    }

    @Override // android.view.View
    protected void onDraw(android.graphics.Canvas canvas) {
        canvas.drawBitmap(this.a, this.b, this.e);
        canvas.drawPath(this.d, this.f);
        float width = (this.c.width() * 56.0f) / 854.0f;
        canvas.drawRoundRect(this.c, width, width, this.g);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        float[] a = dev.duo.hookprobe.C0014d.a(i, i2, dev.duo.hookprobe.U.a(getContext(), 8.0f), dev.duo.hookprobe.U.a(getContext(), 8.0f), dev.duo.hookprobe.U.a(getContext(), 8.0f));
        this.c.set(a[0], a[1], a[2], a[3]);
        float a2 = dev.duo.hookprobe.C0014d.a(this.c.width(), this.c.height(), this.a.getWidth(), this.a.getHeight());
        this.j = a2;
        this.i = a2 * this.o;
        this.k = this.c.centerX() - ((this.a.getWidth() * this.i) * this.p);
        this.l = this.c.centerY() - ((this.a.getHeight() * this.i) * this.q);
        float width = (this.c.width() * 56.0f) / 854.0f;
        this.d.reset();
        this.d.setFillType(android.graphics.Path.FillType.EVEN_ODD);
        android.graphics.Path.Direction direction = android.graphics.Path.Direction.CW;
        this.d.addRect(0.0f, 0.0f, i, i2, direction);
        this.d.addRoundRect(this.c, width, width, direction);
        a();
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
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

    android.graphics.Bitmap d() {
        android.graphics.Bitmap createBitmap = android.graphics.Bitmap.createBitmap(854, 1328, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(createBitmap);
        canvas.drawColor(-16777216);
        float width = 854.0f / this.c.width();
        canvas.scale(width, width);
        android.graphics.RectF rectF = this.c;
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
        android.graphics.RectF rectF = this.c;
        this.k = dev.duo.hookprobe.C0014d.a(f, width, rectF.left, rectF.right);
        float f2 = this.l;
        float height = this.a.getHeight() * this.i;
        android.graphics.RectF rectF2 = this.c;
        this.l = dev.duo.hookprobe.C0014d.a(f2, height, rectF2.top, rectF2.bottom);
        android.graphics.Matrix matrix = this.b;
        float f3 = this.i;
        matrix.setScale(f3, f3);
        this.b.postTranslate(this.k, this.l);
        this.o = this.i / this.j;
        this.p = (this.c.centerX() - this.k) / (this.a.getWidth() * this.i);
        this.q = (this.c.centerY() - this.l) / (this.a.getHeight() * this.i);
        invalidate();
    }
}
