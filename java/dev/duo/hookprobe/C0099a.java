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

/* renamed from: dev.duo.hookprobe.a */
/* loaded from: classes.dex */
final class C0099a extends View {

    /* renamed from: a */
    private final Bitmap f1515a;

    /* renamed from: b */
    private final Matrix f1516b;

    /* renamed from: c */
    private final RectF f1517c;

    /* renamed from: d */
    private final Path f1518d;

    /* renamed from: e */
    private final Paint f1519e;

    /* renamed from: f */
    private final Paint f1520f;

    /* renamed from: g */
    private final Paint f1521g;

    /* renamed from: h */
    private final ScaleGestureDetector f1522h;

    /* renamed from: i */
    private float f1523i;

    /* renamed from: j */
    private float f1524j;

    /* renamed from: k */
    private float f1525k;

    /* renamed from: l */
    private float f1526l;

    /* renamed from: m */
    private float f1527m;

    /* renamed from: n */
    private float f1528n;

    /* renamed from: o */
    private float f1529o;

    /* renamed from: p */
    private float f1530p;

    /* renamed from: q */
    private float f1531q;

    /* renamed from: dev.duo.hookprobe.a$a */
    class a extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        a() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float max = Math.max(C0099a.this.f1524j, Math.min(C0099a.this.f1524j * 6.0f, C0099a.this.f1523i * scaleGestureDetector.getScaleFactor()));
            float f = max / C0099a.this.f1523i;
            C0099a.this.f1525k = scaleGestureDetector.getFocusX() - ((scaleGestureDetector.getFocusX() - C0099a.this.f1525k) * f);
            C0099a.this.f1526l = scaleGestureDetector.getFocusY() - ((scaleGestureDetector.getFocusY() - C0099a.this.f1526l) * f);
            C0099a.this.f1523i = max;
            C0099a.this.m1548a();
            return true;
        }
    }

    C0099a(Context context, Bitmap bitmap) {
        super(context);
        this.f1516b = new Matrix();
        this.f1517c = new RectF();
        this.f1518d = new Path();
        this.f1519e = new Paint(3);
        Paint paint = new Paint(1);
        this.f1520f = paint;
        Paint paint2 = new Paint(1);
        this.f1521g = paint2;
        this.f1529o = 1.0f;
        this.f1530p = 0.5f;
        this.f1531q = 0.5f;
        this.f1515a = bitmap;
        paint.setColor((C0087T.f1343a ? 1118483 : 15921909) | (-654311424));
        paint2.setColor(C0087T.f1345b);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(C0087T.m1399a(context, 1.0f));
        this.f1522h = new ScaleGestureDetector(context, new a());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawBitmap(this.f1515a, this.f1516b, this.f1519e);
        canvas.drawPath(this.f1518d, this.f1520f);
        float width = (this.f1517c.width() * 56.0f) / 854.0f;
        canvas.drawRoundRect(this.f1517c, width, width, this.f1521g);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        float[] m1592a = C0102d.m1592a(i, i2, C0087T.m1399a(getContext(), 8.0f), C0087T.m1399a(getContext(), 8.0f), C0087T.m1399a(getContext(), 8.0f));
        this.f1517c.set(m1592a[0], m1592a[1], m1592a[2], m1592a[3]);
        float m1589a = C0102d.m1589a(this.f1517c.width(), this.f1517c.height(), this.f1515a.getWidth(), this.f1515a.getHeight());
        this.f1524j = m1589a;
        this.f1523i = m1589a * this.f1529o;
        this.f1525k = this.f1517c.centerX() - ((this.f1515a.getWidth() * this.f1523i) * this.f1530p);
        this.f1526l = this.f1517c.centerY() - ((this.f1515a.getHeight() * this.f1523i) * this.f1531q);
        float width = (this.f1517c.width() * 56.0f) / 854.0f;
        this.f1518d.reset();
        this.f1518d.setFillType(Path.FillType.EVEN_ODD);
        Path.Direction direction = Path.Direction.CW;
        this.f1518d.addRect(0.0f, 0.0f, i, i2, direction);
        this.f1518d.addRoundRect(this.f1517c, width, width, direction);
        m1548a();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f1522h.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 || actionMasked == 6) {
            int i = (actionMasked == 6 && motionEvent.getActionIndex() == 0) ? 1 : 0;
            this.f1527m = motionEvent.getX(i);
            this.f1528n = motionEvent.getY(i);
        } else if (actionMasked == 2 && !this.f1522h.isInProgress() && motionEvent.getPointerCount() == 1) {
            this.f1525k += motionEvent.getX() - this.f1527m;
            this.f1526l += motionEvent.getY() - this.f1528n;
            this.f1527m = motionEvent.getX();
            this.f1528n = motionEvent.getY();
            m1548a();
        }
        return true;
    }

    /* renamed from: d */
    Bitmap m1558d() {
        Bitmap createBitmap = Bitmap.createBitmap(854, 1328, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-16777216);
        float width = 854.0f / this.f1517c.width();
        canvas.scale(width, width);
        RectF rectF = this.f1517c;
        canvas.translate(-rectF.left, -rectF.top);
        canvas.drawBitmap(this.f1515a, this.f1516b, this.f1519e);
        return createBitmap;
    }

    /* renamed from: e */
    float m1559e() {
        return this.f1529o;
    }

    /* renamed from: a */
    void m1555a(float f, float f2, float f3) {
        this.f1529o = f;
        this.f1530p = f2;
        this.f1531q = f3;
    }

    /* renamed from: b */
    float m1556b() {
        return this.f1530p;
    }

    /* renamed from: c */
    float m1557c() {
        return this.f1531q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1548a() {
        float f = this.f1525k;
        float width = this.f1515a.getWidth() * this.f1523i;
        RectF rectF = this.f1517c;
        this.f1525k = C0102d.m1588a(f, width, rectF.left, rectF.right);
        float f2 = this.f1526l;
        float height = this.f1515a.getHeight() * this.f1523i;
        RectF rectF2 = this.f1517c;
        this.f1526l = C0102d.m1588a(f2, height, rectF2.top, rectF2.bottom);
        Matrix matrix = this.f1516b;
        float f3 = this.f1523i;
        matrix.setScale(f3, f3);
        this.f1516b.postTranslate(this.f1525k, this.f1526l);
        this.f1529o = this.f1523i / this.f1524j;
        this.f1530p = (this.f1517c.centerX() - this.f1525k) / (this.f1515a.getWidth() * this.f1523i);
        this.f1531q = (this.f1517c.centerY() - this.f1526l) / (this.f1515a.getHeight() * this.f1523i);
        invalidate();
    }
}
