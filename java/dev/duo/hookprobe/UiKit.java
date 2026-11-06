package dev.duo.hookprobe;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.telephony.CellSignalStrength;
import android.telephony.SignalStrength;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowMetrics;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import dev.duo.hookprobe.UiKit;
import dev.duo.workspaceprobe.ClockDigitsPath;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.IntConsumer;

/* renamed from: dev.duo.hookprobe.T */
/* loaded from: classes.dex */
final class UiKit {

    /* renamed from: A */
    private static int f1317A = 0;

    /* renamed from: B */
    private static int f1318B = 0;

    /* renamed from: C */
    static final int f1319C = -13326253;

    /* renamed from: D */
    static final int f1320D = -2543579;

    /* renamed from: E */
    static final int f1321E = -878336;

    /* renamed from: F */
    static final int f1322F = 0;

    /* renamed from: G */
    static final int f1323G = 1;

    /* renamed from: H */
    static final int f1324H = 2;

    /* renamed from: I */
    static final int f1325I = 3;

    /* renamed from: J */
    static final int f1326J = 4;

    /* renamed from: K */
    private static final int[] f1327K = {0, 1, 3, 4, 2};

    /* renamed from: L */
    static final String f1328L = "tab";

    /* renamed from: M */
    static final int f1329M = 0;

    /* renamed from: N */
    static final int f1330N = 1;

    /* renamed from: O */
    static final int f1331O = 2;

    /* renamed from: P */
    static final int f1332P = 3;

    /* renamed from: Q */
    static final int f1333Q = 4;

    /* renamed from: R */
    static final int f1334R = 5;

    /* renamed from: S */
    static final int f1335S = 6;

    /* renamed from: T */
    static final int f1336T = 7;

    /* renamed from: U */
    static final int f1337U = 8;

    /* renamed from: V */
    static final int f1338V = 9;

    /* renamed from: W */
    static final int f1339W = 10;

    /* renamed from: X */
    static final int f1340X = 11;

    /* renamed from: Y */
    static final int f1341Y = 12;

    /* renamed from: Z */
    static final int f1342Z = 13;

    /* renamed from: a */
    static boolean f1343a = false;

    /* renamed from: a0 */
    static final int f1344a0 = 14;

    /* renamed from: b */
    static int f1345b = 0;

    /* renamed from: b0 */
    static final int f1346b0 = 15;

    /* renamed from: c */
    static int f1347c = 0;

    /* renamed from: c0 */
    static final int f1348c0 = 600;

    /* renamed from: d */
    static int f1349d = 0;

    /* renamed from: d0 */
    static final int f1350d0 = 840;

    /* renamed from: e */
    static int f1351e = 0;

    /* renamed from: e0 */
    static final int f1352e0 = 640;

    /* renamed from: f */
    static int f1353f = 0;

    /* renamed from: f0 */
    static final int f1354f0 = 172;

    /* renamed from: g */
    static int f1355g = 0;

    /* renamed from: g0 */
    static final int f1356g0 = 20;

    /* renamed from: h */
    static int f1357h = 0;

    /* renamed from: h0 */
    static final int f1358h0 = 40;

    /* renamed from: i */
    static int f1359i = 0;

    /* renamed from: i0 */
    static final float f1360i0 = 205.0f;

    /* renamed from: j */
    static int f1361j = 0;

    /* renamed from: j0 */
    static final float f1362j0 = 220.0f;

    /* renamed from: k */
    static int f1363k = 0;

    /* renamed from: k0 */
    static final float f1364k0 = 204.5f;

    /* renamed from: l */
    static int f1365l = 0;

    /* renamed from: l0 */
    static final float f1366l0 = 114.0f;

    /* renamed from: m */
    static int f1367m = 0;

    /* renamed from: m0 */
    static final float f1368m0 = 234.0f;

    /* renamed from: n */
    static int f1369n = 0;

    /* renamed from: n0 */
    static final float f1370n0 = 78.0f;

    /* renamed from: o */
    static int f1371o;

    /* renamed from: p */
    static int f1372p;

    /* renamed from: q */
    static int f1373q;

    /* renamed from: r */
    static int f1374r;

    /* renamed from: s */
    static int f1375s;

    /* renamed from: t */
    static int f1376t;

    /* renamed from: u */
    static int f1377u;

    /* renamed from: v */
    static int f1378v;

    /* renamed from: w */
    static int f1379w;

    /* renamed from: x */
    static int f1380x;

    /* renamed from: y */
    private static int f1381y;

    /* renamed from: z */
    private static int f1382z;

    /* renamed from: dev.duo.hookprobe.T$a */
    class a extends ArrayAdapter<String> {

        /* renamed from: a */
        final /* synthetic */ Activity f1383a;

        a(Context context, int i, String[] strArr, Activity activity) {
            super(context, i, strArr);
            this.f1383a = activity;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView m1413a = UiKit.m1413a(this.f1383a, 14.0f, UiKit.f1345b, 500);
            m1413a.setText((CharSequence) getItem(i));
            m1413a.setMinHeight(UiKit.m1399a((Context) this.f1383a, 56.0f));
            m1413a.setGravity(16);
            m1413a.setPadding(UiKit.m1399a((Context) this.f1383a, 22.0f), UiKit.m1399a((Context) this.f1383a, 12.0f), UiKit.m1399a((Context) this.f1383a, 22.0f), UiKit.m1399a((Context) this.f1383a, 12.0f));
            return m1413a;
        }
    }

    /* renamed from: dev.duo.hookprobe.T$b */
    class b extends Drawable {

        /* renamed from: a */
        final Paint f1384a = new Paint(1);

        /* renamed from: b */
        final /* synthetic */ int f1385b;

        /* renamed from: c */
        final /* synthetic */ Context f1386c;

        /* renamed from: d */
        final /* synthetic */ int f1387d;

        b(int i, Context context, int i2) {
            this.f1385b = i;
            this.f1386c = context;
            this.f1387d = i2;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            RectF rectF = new RectF(getBounds());
            this.f1384a.setStyle(Paint.Style.FILL);
            int i = this.f1385b;
            if (i == 0) {
                this.f1384a.setColor(-1);
                canvas.drawArc(rectF, 90.0f, 180.0f, true, this.f1384a);
                this.f1384a.setColor(-14869217);
                canvas.drawArc(rectF, 270.0f, 180.0f, true, this.f1384a);
                canvas = canvas;
            } else {
                this.f1384a.setColor(i);
                canvas.drawOval(rectF, this.f1384a);
            }
            this.f1384a.setStyle(Paint.Style.STROKE);
            this.f1384a.setStrokeWidth(UiKit.m1399a(this.f1386c, 1.0f));
            this.f1384a.setColor(UiKit.f1343a ? 1090519039 : 603979776);
            rectF.inset(UiKit.m1399a(this.f1386c, 0.5f), UiKit.m1399a(this.f1386c, 0.5f));
            canvas.drawOval(rectF, this.f1384a);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.f1387d;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.f1387d;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    /* renamed from: dev.duo.hookprobe.T$c */
    class c extends Drawable {

        /* renamed from: a */
        final Paint f1388a = new Paint(1);

        /* renamed from: b */
        final /* synthetic */ int f1389b;

        /* renamed from: c */
        final /* synthetic */ float f1390c;

        /* renamed from: d */
        final /* synthetic */ boolean f1391d;

        /* renamed from: e */
        final /* synthetic */ int f1392e;

        /* renamed from: f */
        final /* synthetic */ int f1393f;

        c(int i, float f, boolean z, int i2, int i3) {
            this.f1389b = i;
            this.f1390c = f;
            this.f1391d = z;
            this.f1392e = i2;
            this.f1393f = i3;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().left, getBounds().top);
            canvas.scale(getBounds().width() / 24.0f, getBounds().height() / 24.0f);
            this.f1388a.setColor(this.f1389b);
            this.f1388a.setStrokeWidth(this.f1390c);
            this.f1388a.setStrokeCap(Paint.Cap.ROUND);
            this.f1388a.setStrokeJoin(Paint.Join.ROUND);
            this.f1388a.setStyle(this.f1391d ? Paint.Style.FILL_AND_STROKE : Paint.Style.STROKE);
            Path path = new Path();
            switch (this.f1392e) {
                case 0:
                    path.moveTo(12.0f, 3.2f);
                    path.lineTo(20.5f, 10.5f);
                    path.lineTo(20.5f, 20.0f);
                    path.lineTo(15.0f, 20.0f);
                    path.lineTo(15.0f, 14.5f);
                    path.lineTo(9.0f, 14.5f);
                    path.lineTo(9.0f, 20.0f);
                    path.lineTo(3.5f, 20.0f);
                    path.lineTo(3.5f, 10.5f);
                    path.close();
                    canvas.drawPath(path, this.f1388a);
                    break;
                case 1:
                    float[][] fArr = {new float[]{4.0f, 4.0f}, new float[]{13.5f, 4.0f}, new float[]{4.0f, 13.5f}, new float[]{13.5f, 13.5f}};
                    for (int i = 0; i < 4; i++) {
                        float[] fArr2 = fArr[i];
                        float f = fArr2[0];
                        float f2 = fArr2[1];
                        canvas.drawRoundRect(f, f2, f + 6.5f, f2 + 6.5f, 2.0f, 2.0f, this.f1388a);
                    }
                    break;
                case 2:
                    this.f1388a.setStyle(Paint.Style.STROKE);
                    canvas.drawCircle(8.0f, 15.0f, 4.0f, this.f1388a);
                    canvas.drawLine(11.0f, 12.0f, 19.0f, 4.0f, this.f1388a);
                    canvas.drawLine(16.0f, 7.0f, 18.5f, 9.5f, this.f1388a);
                    canvas.drawLine(14.0f, 9.0f, 16.0f, 11.0f, this.f1388a);
                    break;
                case 3:
                    path.moveTo(15.0f, 5.0f);
                    path.lineTo(8.0f, 12.0f);
                    path.lineTo(15.0f, 19.0f);
                    canvas.drawPath(path, this.f1388a);
                    break;
                case 4:
                    path.moveTo(9.0f, 5.0f);
                    path.lineTo(16.0f, 12.0f);
                    path.lineTo(9.0f, 19.0f);
                    canvas.drawPath(path, this.f1388a);
                    break;
                case 5:
                    path.moveTo(6.0f, 9.0f);
                    path.lineTo(12.0f, 15.0f);
                    path.lineTo(18.0f, 9.0f);
                    canvas.drawPath(path, this.f1388a);
                    break;
                case 6:
                    path.moveTo(5.0f, 12.5f);
                    path.lineTo(9.5f, 17.0f);
                    path.lineTo(19.0f, 7.5f);
                    canvas.drawPath(path, this.f1388a);
                    break;
                case 7:
                    canvas.drawLine(12.0f, 3.0f, 12.0f, 11.0f, this.f1388a);
                    canvas.drawArc(4.0f, 4.6f, 20.0f, 20.6f, -44.5f, 269.0f, false, this.f1388a);
                    break;
                case 8:
                    canvas.drawCircle(11.0f, 11.0f, 6.5f, this.f1388a);
                    canvas.drawLine(16.0f, 16.0f, 20.0f, 20.0f, this.f1388a);
                    break;
                case 9:
                    canvas.drawRect(9.0f, 9.0f, 19.0f, 19.0f, this.f1388a);
                    path.moveTo(5.0f, 15.0f);
                    path.lineTo(5.0f, 5.0f);
                    path.lineTo(15.0f, 5.0f);
                    canvas.drawPath(path, this.f1388a);
                    break;
                case 10:
                    this.f1388a.setStyle(Paint.Style.FILL);
                    canvas.drawRoundRect(3.2f, 4.8f, 10.8f, 19.2f, 2.4f, 2.4f, this.f1388a);
                    this.f1388a.setAlpha(90);
                    canvas.drawRoundRect(13.2f, 4.8f, 20.8f, 19.2f, 2.4f, 2.4f, this.f1388a);
                    break;
                case 11:
                    canvas.drawRect(4.0f, 5.0f, 20.0f, 19.0f, this.f1388a);
                    canvas.drawLine(12.0f, 5.0f, 12.0f, 19.0f, this.f1388a);
                    break;
                case 12:
                    canvas.drawRect(7.0f, 3.0f, 17.0f, 21.0f, this.f1388a);
                    break;
                case UiKit.f1342Z /* 13 */:
                    Paint paint = this.f1388a;
                    Paint.Style style = Paint.Style.STROKE;
                    paint.setStyle(style);
                    canvas.drawLine(4.0f, 8.0f, 20.0f, 8.0f, this.f1388a);
                    canvas.drawLine(4.0f, 16.0f, 20.0f, 16.0f, this.f1388a);
                    Paint paint2 = this.f1388a;
                    if (this.f1391d) {
                        style = Paint.Style.FILL_AND_STROKE;
                    }
                    paint2.setStyle(style);
                    canvas.drawCircle(9.0f, 8.0f, 2.6f, this.f1388a);
                    canvas.drawCircle(15.0f, 16.0f, 2.6f, this.f1388a);
                    break;
                case UiKit.f1344a0 /* 14 */:
                    this.f1388a.setStyle(Paint.Style.STROKE);
                    canvas.drawArc(4.0f, 4.0f, 20.0f, 20.0f, 140.0f, 260.0f, false, this.f1388a);
                    this.f1388a.setStyle(Paint.Style.FILL);
                    canvas.drawCircle(12.0f, 19.5f, 1.6f, this.f1388a);
                    break;
                case UiKit.f1346b0 /* 15 */:
                    path.moveTo(4.0f, 8.5f);
                    path.lineTo(19.0f, 8.5f);
                    path.moveTo(15.5f, 5.0f);
                    path.lineTo(19.0f, 8.5f);
                    path.lineTo(15.5f, 12.0f);
                    path.moveTo(20.0f, 15.5f);
                    path.lineTo(5.0f, 15.5f);
                    path.moveTo(8.5f, 12.0f);
                    path.lineTo(5.0f, 15.5f);
                    path.lineTo(8.5f, 19.0f);
                    canvas.drawPath(path, this.f1388a);
                    break;
                default:
                    throw new IllegalArgumentException("glyph " + this.f1392e);
            }
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.f1393f;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.f1393f;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    /* renamed from: dev.duo.hookprobe.T$e */
    static final class e {

        /* renamed from: a */
        final LinearLayout f1407a;

        /* renamed from: b */
        final LinearLayout[] f1408b;

        /* renamed from: c */
        final TextView[] f1409c;

        e(Context context, String[] strArr, int[] iArr, final IntConsumer intConsumer) {
            LinearLayout m1430c = UiKit.m1430c(context);
            this.f1407a = m1430c;
            int m1399a = UiKit.m1399a(context, 3.0f);
            m1430c.setPadding(m1399a, m1399a, m1399a, m1399a);
            m1430c.setBackground(UiKit.m1404a(UiKit.f1353f, UiKit.m1399a(context, 20.0f)));
            this.f1408b = new LinearLayout[strArr.length];
            this.f1409c = new TextView[strArr.length];
            for (final int i = 0; i < strArr.length; i++) {
                LinearLayout m1430c2 = UiKit.m1430c(context);
                m1430c2.setGravity(17);
                if (iArr != null) {
                    LinearLayout.LayoutParams m1409a = UiKit.m1409a(context, 13.0f, 13.0f);
                    m1409a.rightMargin = UiKit.m1399a(context, 6.0f);
                    m1430c2.addView(UiKit.m1407a(context, UiKit.m1426b(context, iArr[i])), m1409a);
                }
                TextView m1413a = UiKit.m1413a(context, 14.0f, UiKit.f1345b, UiKit.f1348c0);
                m1413a.setText(strArr[i]);
                m1413a.setSingleLine(true);
                m1430c2.addView(m1413a);
                m1430c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.T$e$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        intConsumer.accept(i);
                    }
                });
                m1430c2.setContentDescription(strArr[i]);
                this.f1407a.addView(m1430c2, new LinearLayout.LayoutParams(0, UiKit.m1399a(context, 36.0f), 1.0f));
                this.f1408b[i] = m1430c2;
                this.f1409c[i] = m1413a;
            }
        }

        /* renamed from: a */
        void m1441a(int i) {
            Context context = this.f1407a.getContext();
            int i2 = 0;
            while (true) {
                LinearLayout[] linearLayoutArr = this.f1408b;
                if (i2 >= linearLayoutArr.length) {
                    return;
                }
                boolean z = i2 == i;
                linearLayoutArr[i2].setBackground(z ? UiKit.m1404a(UiKit.f1372p, UiKit.m1399a(context, 17.0f)) : null);
                this.f1408b[i2].setElevation((!z || UiKit.f1343a) ? 0.0f : UiKit.m1399a(context, 1.5f));
                this.f1408b[i2].setSelected(z);
                i2++;
            }
        }

        /* renamed from: a */
        void m1442a(boolean z) {
            for (LinearLayout linearLayout : this.f1408b) {
                linearLayout.setEnabled(z);
            }
            this.f1407a.setAlpha(z ? 1.0f : 0.5f);
        }
    }

    /* renamed from: dev.duo.hookprobe.T$f */
    static final class f extends View {

        /* renamed from: n */
        static final float f1410n = 48.6f;

        /* renamed from: o */
        static final float f1411o = 98.0f;

        /* renamed from: p */
        static final float f1412p = 146.0f;

        /* renamed from: q */
        private static final float f1413q = 29.986198f;

        /* renamed from: r */
        private static final float f1414r = 64.400604f;

        /* renamed from: s */
        private static final float f1415s = 8.067599f;

        /* renamed from: t */
        private static final float f1416t = 6.804f;

        /* renamed from: u */
        private static final float f1417u = 6.804f;

        /* renamed from: v */
        private static final float f1418v = 31.0f;

        /* renamed from: w */
        private static final float f1419w = 149.0f;

        /* renamed from: x */
        private static final float[] f1420x = {121.0f, 101.5f, 80.0f, 59.0f};

        /* renamed from: y */
        private static final Map<Class<?>, Object> f1421y = new ConcurrentHashMap();

        /* renamed from: a */
        private float f1422a;

        /* renamed from: b */
        private int f1423b;

        /* renamed from: c */
        private boolean f1424c;

        /* renamed from: d */
        private final Paint f1425d;

        /* renamed from: e */
        private final Path f1426e;

        /* renamed from: f */
        private final Matrix f1427f;

        /* renamed from: g */
        private final Paint f1428g;

        /* renamed from: h */
        private final Paint f1429h;

        /* renamed from: i */
        private final RectF f1430i;

        /* renamed from: j */
        private final Path f1431j;

        /* renamed from: k */
        private final BroadcastReceiver f1432k;

        /* renamed from: l */
        private b f1433l;

        /* renamed from: m */
        private boolean f1434m;

        /* renamed from: dev.duo.hookprobe.T$f$a */
        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    int intExtra = intent.getIntExtra("level", -1);
                    int intExtra2 = intent.getIntExtra("scale", 100);
                    if (intExtra >= 0 && intExtra2 > 0) {
                        f.this.f1422a = intExtra / intExtra2;
                    }
                }
                f.this.invalidate();
            }
        }

        /* renamed from: dev.duo.hookprobe.T$f$b */
        private final class b extends TelephonyCallback implements TelephonyCallback.SignalStrengthsListener {
            private b() {
            }

            @Override // android.telephony.TelephonyCallback.SignalStrengthsListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                f.this.f1423b = signalStrength == null ? -1 : f.m1449b(signalStrength);
                f.this.invalidate();
            }

            /* synthetic */ b(f fVar, a aVar) {
                this();
            }
        }

        f(Context context) {
            super(context);
            this.f1422a = 1.0f;
            this.f1423b = -1;
            this.f1425d = new Paint(1);
            this.f1426e = new Path();
            this.f1427f = new Matrix();
            Paint paint = new Paint(1);
            this.f1428g = paint;
            Paint paint2 = new Paint(1);
            this.f1429h = paint2;
            this.f1430i = new RectF();
            this.f1431j = new Path();
            this.f1432k = new a();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint2.setStyle(Paint.Style.FILL_AND_STROKE);
            paint2.setStrokeJoin(Paint.Join.ROUND);
            setContentDescription("时间、电量与网络");
        }

        /* renamed from: b */
        void m1451b(boolean z) {
            if (this.f1424c == z) {
                return;
            }
            this.f1424c = z;
            invalidate();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            m1448a(false);
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i = UiKit.f1345b;
            int i2 = (16777215 & i) | 1291845632;
            this.f1425d.setColor(i);
            Calendar calendar = Calendar.getInstance();
            int i3 = calendar.get(12);
            String str = calendar.get(11) + (i3 < 10 ? ":0" : ":") + i3;
            boolean z = this.f1424c;
            float f = z ? 6.804f : f1415s;
            ClockDigitsPath.m2959a(str, f1413q, z, f1411o, f1414r, this.f1426e, this.f1427f);
            this.f1428g.setStrokeWidth(f);
            canvas.drawPath(this.f1426e, this.f1425d);
            this.f1430i.set(49.4f, 97.4f, 146.6f, 194.6f);
            this.f1428g.setColor(i2);
            float f2 = f;
            canvas.drawArc(this.f1430i, f1419w, 242.0f, false, this.f1428g);
            this.f1428g.setColor(i);
            canvas.drawArc(this.f1430i, f1419w, Math.max(0.03f, Math.min(1.0f, this.f1422a)) * 242.0f, false, this.f1428g);
            this.f1428g.setStrokeWidth(6.804f);
            float[] fArr = {28.673998f, 18.467999f};
            int i4 = 0;
            for (int i5 = 0; i5 < 2; i5++) {
                float f3 = fArr[i5];
                this.f1430i.set(f1411o - f3, 164.468f - f3, f1411o + f3, 164.468f + f3);
                canvas.drawArc(this.f1430i, 228.0f, 84.0f, false, this.f1428g);
            }
            this.f1428g.setStrokeWidth(f2);
            this.f1431j.reset();
            this.f1431j.moveTo(f1411o, 164.468f);
            this.f1430i.set(89.738f, 156.20601f, 106.262f, 172.73f);
            this.f1431j.arcTo(this.f1430i, 228.0f, 84.0f);
            this.f1431j.close();
            this.f1429h.setColor(i);
            this.f1429h.setStrokeWidth(2.43f);
            canvas.drawPath(this.f1431j, this.f1429h);
            this.f1429h.setStrokeWidth(0.0f);
            while (true) {
                if (i4 >= f1420x.length) {
                    return;
                }
                double radians = Math.toRadians(r1[i4]);
                this.f1429h.setColor(i4 < this.f1423b ? i : i2);
                canvas.drawCircle((((float) Math.cos(radians)) * f1410n) + f1411o, f1412p + (f1410n * ((float) Math.sin(radians))), 5.1029997f, this.f1429h);
                i4++;
            }
        }

        @Override // android.view.View
        public void onVisibilityAggregated(boolean z) {
            super.onVisibilityAggregated(z);
            m1448a(z && isAttachedToWindow());
        }

        /* renamed from: a */
        private void m1448a(boolean z) {
            if (z == this.f1434m) {
                return;
            }
            this.f1434m = z;
            if (z) {
                m1447a();
            } else {
                m1450b();
            }
        }

        /* renamed from: b */
        private void m1450b() {
            try {
                getContext().unregisterReceiver(this.f1432k);
            } catch (IllegalArgumentException e) {
                Log.w("MiDuoUi", "status receiver was not registered");
            }
            if (this.f1433l != null) {
                ((TelephonyManager) getContext().getSystemService(TelephonyManager.class)).unregisterTelephonyCallback(this.f1433l);
                this.f1433l = null;
            }
        }

        /* renamed from: a */
        private void m1447a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            getContext().registerReceiver(this.f1432k, intentFilter);
            try {
                TelephonyManager telephonyManager = (TelephonyManager) getContext().getSystemService(TelephonyManager.class);
                SignalStrength signalStrength = telephonyManager.getSignalStrength();
                if (signalStrength != null) {
                    this.f1423b = m1449b(signalStrength);
                }
                this.f1433l = new b(this, null);
                telephonyManager.registerTelephonyCallback(getContext().getMainExecutor(), this.f1433l);
            } catch (Throwable th) {
                Log.w("MiDuoUi", "signal level unavailable", th);
            }
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public static int m1449b(SignalStrength signalStrength) {
            int i;
            int i2 = -1;
            for (CellSignalStrength cellSignalStrength : signalStrength.getCellSignalStrengths()) {
                Object computeIfAbsent = f1421y.computeIfAbsent(cellSignalStrength.getClass(), new Function() { // from class: dev.duo.hookprobe.T$f$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Object m1446a;
                        m1446a = UiKit.f.m1446a((Class<?>) obj);
                        return m1446a;
                    }
                });
                try {
                } catch (ReflectiveOperationException e) {
                    f1421y.put(cellSignalStrength.getClass(), cellSignalStrength.getClass());
                    Log.w("MiDuoUi", "MIUI signal level read failed for " + cellSignalStrength.getClass().getName(), e);
                }
                if (computeIfAbsent instanceof Method) {
                    i = ((Integer) ((Method) computeIfAbsent).invoke(cellSignalStrength, null)).intValue();
                } else {
                    if (computeIfAbsent instanceof Field) {
                        i = ((Field) computeIfAbsent).getInt(cellSignalStrength);
                    }
                    i = -1;
                }
                if (i < 0) {
                    i = cellSignalStrength.getLevel();
                }
                i2 = Math.max(i2, i);
            }
            return i2 < 0 ? signalStrength.getLevel() : Math.min(4, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public static Object m1446a(Class<?> cls) {
            String[] strArr = {"getMiuiLevel", "getMiuiSignalLevel"};
            for (int i = 0; i < 2; i++) {
                try {
                    return cls.getMethod(strArr[i], null);
                } catch (NoSuchMethodException e) {
                }
            }
            for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                String[] strArr2 = {"mMiuiLevel", "miuiLevel"};
                for (int i2 = 0; i2 < 2; i2++) {
                    try {
                        Field declaredField = cls2.getDeclaredField(strArr2[i2]);
                        declaredField.setAccessible(true);
                        return declaredField;
                    } catch (NoSuchFieldException e2) {
                    }
                }
            }
            return cls;
        }
    }

    private UiKit() {
    }

    /* renamed from: b */
    static Drawable m1425b(Context context) {
        float f2 = context.getResources().getDisplayMetrics().widthPixels;
        float f3 = 0.9f * f2;
        return new LayerDrawable(new Drawable[]{new ColorDrawable(f1381y), m1405a(f1382z, 0.0f, 0.0f, f3), m1405a(f1317A, 1.0f, 0.3f, f2 * 0.8f), m1405a(f1318B, 0.4f, 1.0f, f3)});
    }

    /* renamed from: c */
    static LinearLayout m1430c(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(16);
        return linearLayout;
    }

    /* renamed from: a */
    static void m1416a(Activity activity) {
        boolean z = (activity.getResources().getConfiguration().uiMode & 48) == 32;
        f1343a = z;
        if (z) {
            f1345b = -657929;
            f1347c = -6776675;
            f1349d = -7434605;
            f1351e = -10263706;
            f1353f = 1031173760;
            f1355g = 779515520;
            f1357h = 352321535;
            f1359i = -14013906;
            f1361j = 352321535;
            f1363k = -5329230;
            f1365l = -13882322;
            f1367m = 1551399040;
            f1369n = -2139720064;
            f1371o = -657929;
            f1372p = -1939643546;
            f1373q = -1939643546;
            f1374r = -11908529;
            f1375s = -13882320;
            f1376t = -12961220;
            f1377u = -13882322;
            f1378v = -1710614;
            f1379w = -12961218;
            f1380x = -12040118;
            f1381y = -15658733;
            f1382z = -14013648;
            f1317A = -14539993;
            f1318B = -14474198;
        } else {
            f1345b = -14869217;
            f1347c = -9539981;
            f1349d = -7434605;
            f1351e = -5329230;
            f1353f = 527857280;
            f1355g = 343307904;
            f1357h = 389823555;
            f1359i = -197379;
            f1361j = -1;
            f1363k = -14869217;
            f1365l = -1;
            f1367m = 1031305344;
            f1369n = -14869217;
            f1371o = -1;
            f1372p = -1;
            f1373q = -1;
            f1374r = -12040118;
            f1375s = -14869217;
            f1376t = -3026474;
            f1377u = -5329230;
            f1378v = -1;
            f1379w = -1315857;
            f1380x = -3684404;
            f1381y = -855307;
            f1382z = -1;
            f1317A = -1644565;
            f1318B = -1841944;
        }
        activity.requestWindowFeature(1);
        activity.getWindow().getDecorView().setForceDarkAllowed(false);
        activity.getWindow().getInsetsController().setSystemBarsAppearance(f1343a ? 0 : 24, 24);
    }

    /* renamed from: c */
    static LinearLayout.LayoutParams m1429c() {
        return new LinearLayout.LayoutParams(-2, -2);
    }

    /* renamed from: dev.duo.hookprobe.T$d */
    static final class d {

        /* renamed from: a */
        final FrameLayout f1394a;

        /* renamed from: b */
        final FrameLayout f1395b;

        /* renamed from: c */
        final int f1396c;

        /* renamed from: d */
        final boolean f1397d;

        /* renamed from: e */
        final boolean f1398e;

        /* renamed from: f */
        final boolean f1399f;

        /* renamed from: g */
        final int f1400g;

        /* renamed from: h */
        private final int f1401h;

        /* renamed from: i */
        private final int f1402i;

        /* renamed from: j */
        private final Activity f1403j;

        /* renamed from: k */
        private FrameLayout f1404k;

        /* renamed from: l */
        private f f1405l;

        /* renamed from: m */
        private View f1406m;

        d(Activity activity) {
            this.f1403j = activity;
            UiKit.m1416a(activity);
            WindowMetrics currentWindowMetrics = activity.getWindowManager().getCurrentWindowMetrics();
            Rect bounds = currentWindowMetrics.getBounds();
            float f = activity.getResources().getDisplayMetrics().density;
            this.f1402i = bounds.width();
            int round = Math.round(bounds.width() / f);
            this.f1396c = round;
            boolean z = bounds.width() > bounds.height();
            boolean z2 = round >= UiKit.f1348c0 && z;
            this.f1397d = z2;
            boolean z3 = z2 && round >= UiKit.f1350d0;
            this.f1398e = z3;
            boolean z4 = round >= UiKit.f1348c0 && !z;
            this.f1399f = z4;
            Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars() | (z2 ? 0 : WindowInsets.Type.displayCutout()));
            this.f1400g = insets.top;
            this.f1401h = insets.bottom;
            FrameLayout frameLayout = new FrameLayout(activity);
            this.f1394a = frameLayout;
            frameLayout.setBackground(UiKit.m1425b(activity));
            FrameLayout frameLayout2 = new FrameLayout(activity);
            this.f1395b = frameLayout2;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (z2) {
                layoutParams.leftMargin = UiKit.f1356g0;
                layoutParams.rightMargin = 212;
            }
            frameLayout.addView(frameLayout2, layoutParams);
            frameLayout.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: dev.duo.hookprobe.T$d$$ExternalSyntheticLambda0
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    WindowInsets m1431a;
                    m1431a = UiKit.d.this.m1431a(view, windowInsets);
                    return m1431a;
                }
            });
            if (bounds.equals(activity.getWindowManager().getMaximumWindowMetrics().getBounds())) {
                if (z3 || z4) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(Math.round(UiKit.f1360i0), Math.round(UiKit.f1362j0));
                    layoutParams2.leftMargin = Math.round(bounds.width() - (z3 ? UiKit.f1364k0 : UiKit.f1368m0));
                    layoutParams2.topMargin = Math.round(z3 ? UiKit.f1366l0 : UiKit.f1370n0);
                    this.f1404k = new FrameLayout(activity);
                    f fVar = new f(activity);
                    this.f1405l = fVar;
                    this.f1404k.addView(fVar, layoutParams2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ WindowInsets m1431a(View view, WindowInsets windowInsets) {
            Insets insets = windowInsets.getInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.ime() | (this.f1397d ? 0 : WindowInsets.Type.displayCutout()));
            view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
            return WindowInsets.CONSUMED;
        }

        /* renamed from: b */
        int m1436b() {
            return this.f1397d ? UiKit.f1356g0 : UiKit.m1399a((Context) this.f1403j, 120.0f);
        }

        /* renamed from: c */
        int m1437c() {
            if (!this.f1399f || this.f1404k == null) {
                return 0;
            }
            return Math.round(UiKit.f1368m0) - 20;
        }

        /* renamed from: d */
        int m1438d() {
            if (this.f1398e) {
                return Math.max(0, Math.round(UiKit.f1366l0) - this.f1400g);
            }
            return UiKit.m1399a(this.f1403j, this.f1399f ? 8.0f : 18.0f);
        }

        /* renamed from: e */
        int m1439e() {
            return this.f1397d ? Math.round(this.f1396c - (232.0f / this.f1403j.getResources().getDisplayMetrics().density)) : this.f1396c;
        }

        /* renamed from: a */
        void m1435a(boolean z) {
            f fVar = this.f1405l;
            if (fVar != null) {
                fVar.m1451b(z);
            }
        }

        /* renamed from: a */
        void m1433a() {
            if (this.f1404k == null) {
                return;
            }
            ((FrameLayout) this.f1394a.getParent()).addView(this.f1404k, new FrameLayout.LayoutParams(-1, -1));
        }

        /* renamed from: a */
        void m1434a(int i, IntConsumer intConsumer) {
            FrameLayout.LayoutParams layoutParams;
            View view = this.f1406m;
            if (view != null) {
                this.f1394a.removeView(view);
            }
            this.f1406m = UiKit.m1412a(this.f1403j, i, this.f1397d ? UiKit.f1354f0 : 0, intConsumer);
            if (this.f1397d) {
                layoutParams = new FrameLayout.LayoutParams(UiKit.f1354f0, -2, 8388629);
                layoutParams.rightMargin = UiKit.f1356g0;
            } else {
                layoutParams = new FrameLayout.LayoutParams(-2, -2, 81);
                layoutParams.bottomMargin = this.f1399f ? Math.max(0, 40 - this.f1401h) : UiKit.m1399a((Context) this.f1403j, 16.0f);
            }
            this.f1394a.addView(this.f1406m, layoutParams);
        }

        /* renamed from: a */
        int m1432a(int i) {
            if (this.f1397d) {
                return 0;
            }
            return this.f1399f ? UiKit.f1356g0 : UiKit.m1399a(this.f1403j, Math.max(16.0f, (i - 640) / 2.0f));
        }
    }

    /* renamed from: b */
    static LinearLayout.LayoutParams m1428b() {
        return new LinearLayout.LayoutParams(0, -2, 1.0f);
    }

    /* renamed from: b */
    static View m1427b(EditText editText) {
        Context context = editText.getContext();
        LinearLayout m1411a = m1411a(context);
        m1411a.setPadding(m1399a(context, 22.0f), 0, m1399a(context, 22.0f), m1399a(context, 4.0f));
        m1411a.addView(editText, m1408a());
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Drawable m1426b(Context context, int i) {
        return new b(i, context, m1399a(context, 13.0f));
    }

    /* renamed from: a */
    static int m1399a(Context context, float f2) {
        return Math.round(f2 * context.getResources().getDisplayMetrics().density);
    }

    /* renamed from: a */
    private static GradientDrawable m1405a(int i, float f2, float f3, float f4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setGradientType(1);
        gradientDrawable.setColors(new int[]{i, 16777215 & i});
        gradientDrawable.setGradientCenter(f2, f3);
        gradientDrawable.setGradientRadius(f4);
        return gradientDrawable;
    }

    /* renamed from: a */
    static GradientDrawable m1404a(int i, float f2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(f2);
        return gradientDrawable;
    }

    /* renamed from: a */
    static GradientDrawable m1406a(int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{i, i2});
        gradientDrawable.setShape(1);
        return gradientDrawable;
    }

    /* renamed from: a */
    static void m1418a(View view, float f2) {
        Context context = view.getContext();
        GradientDrawable m1404a = m1404a(f1359i, m1399a(context, f2));
        m1404a.setStroke(Math.max(1, m1399a(context, 1.0f)), f1361j);
        view.setBackground(m1404a);
        view.setElevation(m1399a(context, 3.0f));
        view.setOutlineAmbientShadowColor(f1343a ? 1711276032 : 570425344);
        view.setOutlineSpotShadowColor(f1343a ? 1426063360 : 335544320);
    }

    /* renamed from: a */
    static TextView m1413a(Context context, float f2, int i, int i2) {
        TextView textView = new TextView(context);
        textView.setTextSize(f2);
        textView.setTextColor(i);
        textView.setTypeface(Typeface.create(Typeface.DEFAULT, i2, false));
        textView.setIncludeFontPadding(false);
        return textView;
    }

    /* renamed from: a */
    static LinearLayout m1411a(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    /* renamed from: a */
    static LinearLayout.LayoutParams m1408a() {
        return new LinearLayout.LayoutParams(-1, -2);
    }

    /* renamed from: a */
    static LinearLayout.LayoutParams m1409a(Context context, float f2, float f3) {
        return new LinearLayout.LayoutParams(m1399a(context, f2), m1399a(context, f3));
    }

    /* renamed from: a */
    static LinearLayout.LayoutParams m1410a(LinearLayout.LayoutParams layoutParams, Context context, float f2) {
        layoutParams.topMargin = m1399a(context, f2);
        return layoutParams;
    }

    /* renamed from: a */
    static TextView m1414a(Context context, String str) {
        TextView m1413a = m1413a(context, 13.0f, f1347c, f1348c0);
        m1413a.setText(str);
        m1413a.setPadding(m1399a(context, 10.0f), m1399a(context, 18.0f), 0, m1399a(context, 8.0f));
        return m1413a;
    }

    /* renamed from: a */
    static TextView m1415a(Context context, String str, boolean z, float f2) {
        TextView m1413a = m1413a(context, 14.0f, z ? f1371o : f1345b, f1348c0);
        m1413a.setText(str);
        m1413a.setGravity(17);
        m1413a.setSingleLine(true);
        m1413a.setMinHeight(m1399a(context, f2));
        m1413a.setPadding(m1399a(context, 14.0f), 0, m1399a(context, 14.0f), 0);
        m1413a.setBackground(m1404a(z ? f1369n : f1353f, m1399a(context, f2 / 2.0f)));
        m1413a.setClickable(true);
        m1413a.setFocusable(true);
        return m1413a;
    }

    /* renamed from: a */
    static void m1423a(TextView textView, boolean z) {
        textView.setTextColor(z ? f1371o : f1345b);
        textView.setBackground(m1404a(z ? f1369n : f1353f, textView.getMinHeight() / 2.0f));
    }

    /* renamed from: a */
    static AlertDialog.Builder m1400a(Activity activity, String str) {
        TextView m1413a = m1413a(activity, 20.0f, f1345b, 700);
        m1413a.setText(str);
        m1413a.setPadding(m1399a((Context) activity, 22.0f), m1399a((Context) activity, 22.0f), m1399a((Context) activity, 22.0f), m1399a((Context) activity, 12.0f));
        return new AlertDialog.Builder(activity).setCustomTitle(m1413a);
    }

    /* renamed from: a */
    static AlertDialog.Builder m1401a(Activity activity, String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
        return m1400a(activity, str).setAdapter(new a(activity, R.layout.simple_list_item_1, strArr, activity), onClickListener);
    }

    /* renamed from: a */
    static void m1417a(AlertDialog alertDialog) {
        alertDialog.show();
        Context context = alertDialog.getContext();
        alertDialog.getWindow().setBackgroundDrawable(m1404a(f1359i, m1399a(context, 24.0f)));
        alertDialog.getWindow().setLayout(Math.min(context.getResources().getDisplayMetrics().widthPixels - m1399a(context, 32.0f), m1399a(context, 560.0f)), -2);
        int[] iArr = {-1, -2, -3};
        for (int i = 0; i < 3; i++) {
            int i2 = iArr[i];
            Button button = alertDialog.getButton(i2);
            if (button != null && button.getVisibility() == 0) {
                boolean z = i2 == -1;
                button.setAllCaps(false);
                button.setTextSize(14.0f);
                button.setTypeface(Typeface.create(Typeface.DEFAULT, f1348c0, false));
                button.setTextColor(z ? f1371o : f1345b);
                button.setBackground(m1404a(z ? f1369n : f1353f, m1399a(context, 18.0f)));
                button.setMinHeight(m1399a(context, 38.0f));
                button.setPadding(m1399a(context, 14.0f), 0, m1399a(context, 14.0f), 0);
            }
        }
        TextView textView = (TextView) alertDialog.findViewById(R.id.message);
        if (textView != null) {
            textView.setTextColor(f1347c);
            textView.setTextSize(14.0f);
        }
    }

    /* renamed from: a */
    static void m1419a(EditText editText) {
        Context context = editText.getContext();
        editText.setTextColor(f1345b);
        editText.setHintTextColor(f1349d);
        editText.setTextSize(16.0f);
        editText.setSingleLine(true);
        editText.setBackground(m1404a(f1353f, m1399a(context, 14.0f)));
        editText.setPadding(m1399a(context, 14.0f), m1399a(context, 12.0f), m1399a(context, 14.0f), m1399a(context, 12.0f));
    }

    /* renamed from: a */
    static void m1422a(Switch r7) {
        Context context = r7.getContext();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(f1365l);
        gradientDrawable.setStroke(Math.max(1, m1399a(context, 0.5f)), f1343a ? 855638016 : 520093696);
        gradientDrawable.setSize(m1399a(context, 26.0f), m1399a(context, 26.0f));
        r7.setThumbDrawable(new InsetDrawable((Drawable) gradientDrawable, m1399a(context, 3.0f)));
        GradientDrawable m1404a = m1404a(0, m1399a(context, 16.0f));
        m1404a.setColor(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{f1363k, f1367m}));
        m1404a.setSize(m1399a(context, 52.0f), m1399a(context, 32.0f));
        r7.setTrackDrawable(m1404a);
        r7.setShowText(false);
        r7.setBackground(null);
        r7.setSwitchMinWidth(m1399a(context, 52.0f));
    }

    /* renamed from: a */
    static void m1420a(SeekBar seekBar) {
        Context context = seekBar.getContext();
        float m1399a = m1399a(context, 3.0f);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{m1404a(f1343a ? 1383495296 : 779515520, m1399a), new ClipDrawable(m1404a(f1363k, m1399a), 8388611, 1)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.progress);
        seekBar.setProgressDrawable(layerDrawable);
        seekBar.setMinHeight(m1399a(context, 6.0f));
        seekBar.setMaxHeight(m1399a(context, 6.0f));
        GradientDrawable m1404a = m1404a(f1343a ? -3026474 : -1, m1399a(context, 12.0f));
        m1404a.setStroke(Math.max(1, m1399a(context, 0.5f)), 637534208);
        m1404a.setSize(m1399a(context, 34.0f), m1399a(context, 24.0f));
        seekBar.setThumb(m1404a);
        seekBar.setSplitTrack(false);
        seekBar.setBackground(null);
        seekBar.setPadding(m1399a(context, 17.0f), 0, m1399a(context, 17.0f), 0);
    }

    /* renamed from: a */
    static void m1421a(SeekBar seekBar, int i) {
        seekBar.setProgressTintList(ColorStateList.valueOf(i));
    }

    /* renamed from: a */
    static Drawable m1403a(Context context, int i, int i2, float f2, boolean z, float f3) {
        return new c(i2, f2, z, i, m1399a(context, f3));
    }

    /* renamed from: a */
    static ImageView m1407a(Context context, Drawable drawable) {
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable);
        return imageView;
    }

    /* renamed from: a */
    static LinearLayout m1412a(Context context, int i, int i2, final IntConsumer intConsumer) {
        LinearLayout linearLayout;
        boolean z;
        boolean z2 = false;
        boolean z3 = i2 > 0;
        LinearLayout m1411a = z3 ? m1411a(context) : m1430c(context);
        int m1399a = m1399a(context, z3 ? 4.0f : 5.0f);
        m1411a.setPadding(m1399a, m1399a, m1399a, m1399a);
        float f2 = 2.0f;
        m1418a(m1411a, z3 ? (i2 / 2.0f) / context.getResources().getDisplayMetrics().density : 31.0f);
        m1411a.setElevation(m1399a(context, 8.0f));
        String[] strArr = {"首页", "App", "授权", "小功能", "UI"};
        int i3 = 2;
        int[] iArr = {0, 1, 2, f1342Z, f1344a0};
        int i4 = 0;
        while (true) {
            int[] iArr2 = f1327K;
            if (i4 >= iArr2.length) {
                return m1411a;
            }
            final int i5 = iArr2[i4];
            boolean z4 = i5 == i ? true : z2;
            LinearLayout m1411a2 = m1411a(context);
            m1411a2.setGravity(17);
            LinearLayout.LayoutParams m1409a = m1409a(context, 22.0f, 22.0f);
            m1409a.gravity = 1;
            int i6 = i4;
            int i7 = iArr[i5];
            int i8 = z4 ? f1345b : f1347c;
            float f3 = z4 ? 2.2f : f2;
            if (!z4 || i7 == i3) {
                linearLayout = m1411a2;
                z = z2;
            } else {
                linearLayout = m1411a2;
                z = true;
            }
            float f4 = f3;
            LinearLayout linearLayout2 = linearLayout;
            int i9 = i3;
            linearLayout2.addView(m1407a(context, m1403a(context, i7, i8, f4, z, 22.0f)), m1409a);
            TextView m1413a = m1413a(context, 11.0f, z4 ? f1345b : f1347c, z4 ? 700 : f1348c0);
            m1413a.setText(strArr[i5]);
            m1413a.setGravity(17);
            LinearLayout.LayoutParams m1429c = m1429c();
            m1429c.gravity = 1;
            m1429c.topMargin = m1399a(context, 4.0f);
            linearLayout2.addView(m1413a, m1429c);
            if (z4) {
                linearLayout2.setBackground(m1404a(f1373q, m1399a(context, 26.0f)));
                linearLayout2.setElevation(f1343a ? 0.0f : m1399a(context, 1.5f));
            }
            linearLayout2.setContentDescription(strArr[i5]);
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.T$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    intConsumer.accept(i5);
                }
            });
            LinearLayout.LayoutParams layoutParams = z3 ? new LinearLayout.LayoutParams(i2 - (m1399a * 2), m1399a(context, 60.0f)) : m1409a(context, 72.0f, 52.0f);
            if (z3 && i6 > 0) {
                layoutParams.topMargin = m1399a(context, 4.0f);
            }
            m1411a.addView(linearLayout2, layoutParams);
            i4 = i6 + 1;
            i3 = i9;
            z2 = false;
            f2 = 2.0f;
        }
    }
}
