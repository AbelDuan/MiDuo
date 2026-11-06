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
import dev.duo.hookprobe.T;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.IntConsumer;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class T {
    private static int A = 0;
    private static int B = 0;
    static final int C = -13326253;
    static final int D = -2543579;
    static final int E = -878336;
    static final int F = 0;
    static final int G = 1;
    static final int H = 2;
    static final int I = 3;
    static final int J = 4;
    private static final int[] K = {0, 1, 3, 4};
    static final String L = "tab";
    static final int M = 0;
    static final int N = 1;
    static final int O = 2;
    static final int P = 3;
    static final int Q = 4;
    static final int R = 5;
    static final int S = 6;
    static final int T = 7;
    static final int U = 8;
    static final int V = 9;
    static final int W = 10;
    static final int X = 11;
    static final int Y = 12;
    static final int Z = 13;
    static boolean a_v = false;
    static final int a0 = 14;
    static int b_v = 0;
    static final int b0 = 15;
    static int c = 0;
    static final int c0 = 600;
    static int d = 0;
    static final int d0 = 840;
    static int e = 0;
    static final int e0 = 640;
    static int f_v = 0;
    static final int f0 = 172;
    static int g = 0;
    static final int g0 = 20;
    static int h = 0;
    static final int h0 = 40;
    static int i = 0;
    static final float i0 = 205.0f;
    static int j = 0;
    static final float j0 = 220.0f;
    static int k = 0;
    static final float k0 = 204.5f;
    static int l = 0;
    static final float l0 = 114.0f;
    static int m = 0;
    static final float m0 = 234.0f;
    static int n = 0;
    static final float n0 = 78.0f;
    static int o;
    static int p;
    static int q;
    static int r;
    static int s;
    static int t;
    static int u;
    static int v;
    static int w;
    static int x;
    private static int y;
    private static int z;

    static class RowAdapter extends ArrayAdapter<String> {
        final /* synthetic */ Activity a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        RowAdapter(Context context, int i, String[] strArr, Activity activity) {
            super(context, i, strArr);
            this.a = activity;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView a = dev.duo.hookprobe.T.a(this.a, 14.0f, dev.duo.hookprobe.T.b_v, 500);
            a.setText((CharSequence) getItem(i));
            a.setMinHeight(dev.duo.hookprobe.T.a((Context) this.a, 56.0f));
            a.setGravity(16);
            a.setPadding(dev.duo.hookprobe.T.a((Context) this.a, 22.0f), dev.duo.hookprobe.T.a((Context) this.a, 12.0f), dev.duo.hookprobe.T.a((Context) this.a, 22.0f), dev.duo.hookprobe.T.a((Context) this.a, 12.0f));
            return a;
        }
    }

    static class b extends Drawable {
        final Paint a = new Paint(1);
        final /* synthetic */ int b;
        final /* synthetic */ Context c;
        final /* synthetic */ int d;

        b(int i, Context context, int i2) {
            this.b = i;
            this.c = context;
            this.d = i2;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            RectF rectF = new RectF(getBounds());
            this.a.setStyle(Paint.Style.FILL);
            int i = this.b;
            if (i == 0) {
                this.a.setColor(-1);
                canvas.drawArc(rectF, 90.0f, 180.0f, true, this.a);
                this.a.setColor(-14869217);
                canvas.drawArc(rectF, 270.0f, 180.0f, true, this.a);
                canvas = canvas;
            } else {
                this.a.setColor(i);
                canvas.drawOval(rectF, this.a);
            }
            this.a.setStyle(Paint.Style.STROKE);
            this.a.setStrokeWidth(dev.duo.hookprobe.T.a(this.c, 1.0f));
            this.a.setColor(dev.duo.hookprobe.T.a_v ? 1090519039 : 603979776);
            rectF.inset(dev.duo.hookprobe.T.a(this.c, 0.5f), dev.duo.hookprobe.T.a(this.c, 0.5f));
            canvas.drawOval(rectF, this.a);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.d;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.d;
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

    static class c extends Drawable {
        final Paint a = new Paint(1);
        final /* synthetic */ int b;
        final /* synthetic */ float c;
        final /* synthetic */ boolean d;
        final /* synthetic */ int e;
        final /* synthetic */ int f;

        c(int i, float f, boolean z, int i2, int i3) {
            this.b = i;
            this.c = f;
            this.d = z;
            this.e = i2;
            this.f = i3;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().left, getBounds().top);
            canvas.scale(getBounds().width() / 24.0f, getBounds().height() / 24.0f);
            this.a.setColor(this.b);
            this.a.setStrokeWidth(this.c);
            this.a.setStrokeCap(Paint.Cap.ROUND);
            this.a.setStrokeJoin(Paint.Join.ROUND);
            this.a.setStyle(this.d ? Paint.Style.FILL_AND_STROKE : Paint.Style.STROKE);
            Path path = new Path();
            switch (this.e) {
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
                    canvas.drawPath(path, this.a);
                    break;
                case 1:
                    float[][] fArr = {new float[]{4.0f, 4.0f}, new float[]{13.5f, 4.0f}, new float[]{4.0f, 13.5f}, new float[]{13.5f, 13.5f}};
                    for (int i = 0; i < 4; i++) {
                        float[] fArr2 = fArr[i];
                        float f = fArr2[0];
                        float f2 = fArr2[1];
                        canvas.drawRoundRect(f, f2, f + 6.5f, f2 + 6.5f, 2.0f, 2.0f, this.a);
                    }
                    break;
                case 2:
                    this.a.setStyle(Paint.Style.STROKE);
                    canvas.drawCircle(8.0f, 15.0f, 4.0f, this.a);
                    canvas.drawLine(11.0f, 12.0f, 19.0f, 4.0f, this.a);
                    canvas.drawLine(16.0f, 7.0f, 18.5f, 9.5f, this.a);
                    canvas.drawLine(14.0f, 9.0f, 16.0f, 11.0f, this.a);
                    break;
                case 3:
                    path.moveTo(15.0f, 5.0f);
                    path.lineTo(8.0f, 12.0f);
                    path.lineTo(15.0f, 19.0f);
                    canvas.drawPath(path, this.a);
                    break;
                case 4:
                    path.moveTo(9.0f, 5.0f);
                    path.lineTo(16.0f, 12.0f);
                    path.lineTo(9.0f, 19.0f);
                    canvas.drawPath(path, this.a);
                    break;
                case 5:
                    path.moveTo(6.0f, 9.0f);
                    path.lineTo(12.0f, 15.0f);
                    path.lineTo(18.0f, 9.0f);
                    canvas.drawPath(path, this.a);
                    break;
                case 6:
                    path.moveTo(5.0f, 12.5f);
                    path.lineTo(9.5f, 17.0f);
                    path.lineTo(19.0f, 7.5f);
                    canvas.drawPath(path, this.a);
                    break;
                case 7:
                    canvas.drawLine(12.0f, 3.0f, 12.0f, 11.0f, this.a);
                    canvas.drawArc(4.0f, 4.6f, 20.0f, 20.6f, -44.5f, 269.0f, false, this.a);
                    break;
                case 8:
                    canvas.drawCircle(11.0f, 11.0f, 6.5f, this.a);
                    canvas.drawLine(16.0f, 16.0f, 20.0f, 20.0f, this.a);
                    break;
                case 9:
                    canvas.drawRect(9.0f, 9.0f, 19.0f, 19.0f, this.a);
                    path.moveTo(5.0f, 15.0f);
                    path.lineTo(5.0f, 5.0f);
                    path.lineTo(15.0f, 5.0f);
                    canvas.drawPath(path, this.a);
                    break;
                case 10:
                    this.a.setStyle(Paint.Style.FILL);
                    canvas.drawRoundRect(3.2f, 4.8f, 10.8f, 19.2f, 2.4f, 2.4f, this.a);
                    this.a.setAlpha(90);
                    canvas.drawRoundRect(13.2f, 4.8f, 20.8f, 19.2f, 2.4f, 2.4f, this.a);
                    break;
                case 11:
                    canvas.drawRect(4.0f, 5.0f, 20.0f, 19.0f, this.a);
                    canvas.drawLine(12.0f, 5.0f, 12.0f, 19.0f, this.a);
                    break;
                case 12:
                    canvas.drawRect(7.0f, 3.0f, 17.0f, 21.0f, this.a);
                    break;
                case dev.duo.hookprobe.T.Z /* 13 */:
                    Paint paint = this.a;
                    Paint.Style style = Paint.Style.STROKE;
                    paint.setStyle(style);
                    canvas.drawLine(4.0f, 8.0f, 20.0f, 8.0f, this.a);
                    canvas.drawLine(4.0f, 16.0f, 20.0f, 16.0f, this.a);
                    Paint paint2 = this.a;
                    if (this.d) {
                        style = Paint.Style.FILL_AND_STROKE;
                    }
                    paint2.setStyle(style);
                    canvas.drawCircle(9.0f, 8.0f, 2.6f, this.a);
                    canvas.drawCircle(15.0f, 16.0f, 2.6f, this.a);
                    break;
                case dev.duo.hookprobe.T.a0 /* 14 */:
                    this.a.setStyle(Paint.Style.STROKE);
                    canvas.drawArc(4.0f, 4.0f, 20.0f, 20.0f, 140.0f, 260.0f, false, this.a);
                    this.a.setStyle(Paint.Style.FILL);
                    canvas.drawCircle(12.0f, 19.5f, 1.6f, this.a);
                    break;
                case dev.duo.hookprobe.T.b0 /* 15 */:
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
                    canvas.drawPath(path, this.a);
                    break;
                default:
                    throw new IllegalArgumentException("glyph " + this.e);
            }
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.f;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.f;
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

    static final class e {
        final LinearLayout a;
        final LinearLayout[] b;
        final TextView[] c;

        e(Context context, String[] strArr, int[] iArr, final IntConsumer intConsumer) {
            LinearLayout c = dev.duo.hookprobe.T.c(context);
            this.a = c;
            int a = dev.duo.hookprobe.T.a(context, 3.0f);
            c.setPadding(a, a, a, a);
            c.setBackground(dev.duo.hookprobe.T.a(dev.duo.hookprobe.T.f_v, dev.duo.hookprobe.T.a(context, 20.0f)));
            this.b = new LinearLayout[strArr.length];
            this.c = new TextView[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                LinearLayout c2 = dev.duo.hookprobe.T.c(context);
                c2.setGravity(17);
                if (iArr != null) {
                    LinearLayout.LayoutParams a2 = dev.duo.hookprobe.T.a(context, 13.0f, 13.0f);
                    a2.rightMargin = dev.duo.hookprobe.T.a(context, 6.0f);
                    c2.addView(dev.duo.hookprobe.T.a(context, dev.duo.hookprobe.T.b(context, iArr[i])), a2);
                }
                TextView a3 = dev.duo.hookprobe.T.a(context, 14.0f, dev.duo.hookprobe.T.b_v, dev.duo.hookprobe.T.c0);
                a3.setText(strArr[i]);
                a3.setSingleLine(true);
                c2.addView(a3);
                c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.T$e$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        intConsumer.accept(i);
                    }
                });
                c2.setContentDescription(strArr[i]);
                this.a.addView(c2, new LinearLayout.LayoutParams(0, dev.duo.hookprobe.T.a(context, 36.0f), 1.0f));
                this.b[i] = c2;
                this.c[i] = a3;
            }
        }

        void a(int i) {
            Context context = this.a.getContext();
            int i2 = 0;
            while (true) {
                LinearLayout[] linearLayoutArr = this.b;
                if (i2 >= linearLayoutArr.length) {
                    return;
                }
                boolean z = i2 == i;
                linearLayoutArr[i2].setBackground(z ? dev.duo.hookprobe.T.a(dev.duo.hookprobe.T.p, dev.duo.hookprobe.T.a(context, 17.0f)) : null);
                this.b[i2].setElevation((!z || dev.duo.hookprobe.T.a_v) ? 0.0f : dev.duo.hookprobe.T.a(context, 1.5f));
                this.b[i2].setSelected(z);
                i2++;
            }
        }

        void a(boolean z) {
            for (LinearLayout linearLayout : this.b) {
                linearLayout.setEnabled(z);
            }
            this.a.setAlpha(z ? 1.0f : 0.5f);
        }
    }

    static final class f extends View {
        static final float n = 48.6f;
        static final float o = 98.0f;
        static final float p = 146.0f;
        private static final float q = 29.986198f;
        private static final float r = 64.400604f;
        private static final float s = 8.067599f;
        private static final float t = 6.804f;
        private static final float u = 6.804f;
        private static final float v = 31.0f;
        private static final float w = 149.0f;
        private static final float[] x = {121.0f, 101.5f, 80.0f, 59.0f};
        private static final Map<Class<?>, Object> y = new ConcurrentHashMap();
        private float a;
        private int b;
        private boolean c;
        private final Paint d;
        private final Path e;
        private final Matrix f;
        private final Paint g;
        private final Paint h;
        private final RectF i;
        private final Path j;
        private final BroadcastReceiver k;
        private b l;
        private boolean m;

        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    int intExtra = intent.getIntExtra("level", -1);
                    int intExtra2 = intent.getIntExtra("scale", 100);
                    if (intExtra >= 0 && intExtra2 > 0) {
                        f.this.a = intExtra / intExtra2;
                    }
                }
                f.this.invalidate();
            }
        }

        private final class b extends TelephonyCallback implements TelephonyCallback.SignalStrengthsListener {
            private b() {
            }

            @Override // android.telephony.TelephonyCallback.SignalStrengthsListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                f.this.b = signalStrength == null ? -1 : dev.duo.hookprobe.T.f.b(signalStrength);
                f.this.invalidate();
            }

            /* synthetic */ b(f fVar, a aVar) {
                this();
            }
        }

        f(Context context) {
            super(context);
            this.a = 1.0f;
            this.b = -1;
            this.d = new Paint(1);
            this.e = new Path();
            this.f = new Matrix();
            Paint paint = new Paint(1);
            this.g = paint;
            Paint paint2 = new Paint(1);
            this.h = paint2;
            this.i = new RectF();
            this.j = new Path();
            this.k = new a();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint2.setStyle(Paint.Style.FILL_AND_STROKE);
            paint2.setStrokeJoin(Paint.Join.ROUND);
            setContentDescription("时间、电量与网络");
        }

        void b(boolean z) {
            if (this.c == z) {
                return;
            }
            this.c = z;
            invalidate();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            a(false);
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i = dev.duo.hookprobe.T.b_v;
            int i2 = (16777215 & i) | 1291845632;
            this.d.setColor(i);
            Calendar calendar = Calendar.getInstance();
            int i3 = calendar.get(12);
            String str = calendar.get(11) + (i3 < 10 ? ":0" : ":") + i3;
            boolean z = this.c;
            float f = z ? 6.804f : s;
            dev.duo.workspaceprobe.h.a(str, q, z, o, r, this.e, this.f);
            this.g.setStrokeWidth(f);
            canvas.drawPath(this.e, this.d);
            this.i.set(49.4f, 97.4f, 146.6f, 194.6f);
            this.g.setColor(i2);
            float f2 = f;
            canvas.drawArc(this.i, w, 242.0f, false, this.g);
            this.g.setColor(i);
            canvas.drawArc(this.i, w, Math.max(0.03f, Math.min(1.0f, this.a)) * 242.0f, false, this.g);
            this.g.setStrokeWidth(6.804f);
            float[] fArr = {28.673998f, 18.467999f};
            int i4 = 0;
            for (int i5 = 0; i5 < 2; i5++) {
                float f3 = fArr[i5];
                this.i.set(o - f3, 164.468f - f3, o + f3, 164.468f + f3);
                canvas.drawArc(this.i, 228.0f, 84.0f, false, this.g);
            }
            this.g.setStrokeWidth(f2);
            this.j.reset();
            this.j.moveTo(o, 164.468f);
            this.i.set(89.738f, 156.20601f, 106.262f, 172.73f);
            this.j.arcTo(this.i, 228.0f, 84.0f);
            this.j.close();
            this.h.setColor(i);
            this.h.setStrokeWidth(2.43f);
            canvas.drawPath(this.j, this.h);
            this.h.setStrokeWidth(0.0f);
            while (true) {
                if (i4 >= x.length) {
                    return;
                }
                double radians = Math.toRadians(x[i4]);
                this.h.setColor(i4 < this.b ? i : i2);
                canvas.drawCircle((((float) Math.cos(radians)) * n) + o, p + (n * ((float) Math.sin(radians))), 5.1029997f, this.h);
                i4++;
            }
        }

        @Override // android.view.View
        public void onVisibilityAggregated(boolean z) {
            super.onVisibilityAggregated(z);
            a(z && isAttachedToWindow());
        }

        private void a(boolean z) {
            if (z == this.m) {
                return;
            }
            this.m = z;
            if (z) {
                a();
            } else {
                b();
            }
        }

        private void b() {
            try {
                getContext().unregisterReceiver(this.k);
            } catch (IllegalArgumentException e) {
                Log.w("MiDuoUi", "status receiver was not registered");
            }
            if (this.l != null) {
                ((TelephonyManager) getContext().getSystemService(TelephonyManager.class)).unregisterTelephonyCallback(this.l);
                this.l = null;
            }
        }

        private void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            getContext().registerReceiver(this.k, intentFilter);
            try {
                TelephonyManager telephonyManager = (TelephonyManager) getContext().getSystemService(TelephonyManager.class);
                SignalStrength signalStrength = telephonyManager.getSignalStrength();
                if (signalStrength != null) {
                    this.b = b(signalStrength);
                }
                this.l = new b(this, null);
                telephonyManager.registerTelephonyCallback(getContext().getMainExecutor(), this.l);
            } catch (Throwable th) {
                Log.w("MiDuoUi", "signal level unavailable", th);
            }
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int b(SignalStrength signalStrength) {
            int i;
            int i2 = -1;
            for (CellSignalStrength cellSignalStrength : signalStrength.getCellSignalStrengths()) {
                Object computeIfAbsent = y.computeIfAbsent(cellSignalStrength.getClass(), new Function() { // from class: dev.duo.hookprobe.T$f$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Object a2;
                        Class<?> cls2 = obj.getClass();
                        a2 = dev.duo.hookprobe.T.a((Class) cls2);
                        return a2;
                    }
                });
                try {
                } catch (ReflectiveOperationException e) {
                    y.put(cellSignalStrength.getClass(), cellSignalStrength.getClass());
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
        public static Object a(Class<?> cls) {
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

    private T() {
    }

    static Drawable b(Context context) {
        float f2 = context.getResources().getDisplayMetrics().widthPixels;
        float f3 = 0.9f * f2;
        return new LayerDrawable(new Drawable[]{new ColorDrawable(y), a(z, 0.0f, 0.0f, f3), a(A, 1.0f, 0.3f, f2 * 0.8f), a(B, 0.4f, 1.0f, f3)});
    }

    static LinearLayout c(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(16);
        return linearLayout;
    }

    static void a(Activity activity) {
        boolean z2 = (activity.getResources().getConfiguration().uiMode & 48) == 32;
        a_v = z2;
        if (z2) {
            b_v = -657929;
            c = -6776675;
            d = -7434605;
            e = -10263706;
            f_v = 1031173760;
            g = 779515520;
            h = 352321535;
            i = -14013906;
            j = 352321535;
            k = -5329230;
            l = -13882322;
            m = 1551399040;
            n = -2139720064;
            o = -657929;
            p = -1939643546;
            q = -1939643546;
            r = -11908529;
            s = -13882320;
            t = -12961220;
            u = -13882322;
            v = -1710614;
            w = -12961218;
            x = -12040118;
            y = -15658733;
            z = -14013648;
            A = -14539993;
            B = -14474198;
        } else {
            b_v = -14869217;
            c = -9539981;
            d = -7434605;
            e = -5329230;
            f_v = 527857280;
            g = 343307904;
            h = 389823555;
            i = -197379;
            j = -1;
            k = -14869217;
            l = -1;
            m = 1031305344;
            n = -14869217;
            o = -1;
            p = -1;
            q = -1;
            r = -12040118;
            s = -14869217;
            t = -3026474;
            u = -5329230;
            v = -1;
            w = -1315857;
            x = -3684404;
            y = -855307;
            z = -1;
            A = -1644565;
            B = -1841944;
        }
        activity.requestWindowFeature(1);
        activity.getWindow().getDecorView().setForceDarkAllowed(false);
        activity.getWindow().getInsetsController().setSystemBarsAppearance(a_v ? 0 : 24, 24);
    }

    static LinearLayout.LayoutParams c() {
        return new LinearLayout.LayoutParams(-2, -2);
    }

    static final class d {
        final FrameLayout a;
        final FrameLayout b;
        final int c;
        final boolean d;
        final boolean e;
        final boolean f;
        final int g;
        private final int h;
        private final int i;
        private final Activity j;
        private FrameLayout k;
        private f l;
        private View m;

        d(Activity activity) {
            this.j = activity;
            dev.duo.hookprobe.T.a(activity);
            WindowMetrics currentWindowMetrics = activity.getWindowManager().getCurrentWindowMetrics();
            Rect bounds = currentWindowMetrics.getBounds();
            float f = activity.getResources().getDisplayMetrics().density;
            this.i = bounds.width();
            int round = Math.round(bounds.width() / f);
            this.c = round;
            boolean z = bounds.width() > bounds.height();
            boolean z2 = round >= dev.duo.hookprobe.T.c0 && z;
            this.d = z2;
            boolean z3 = z2 && round >= dev.duo.hookprobe.T.d0;
            this.e = z3;
            boolean z4 = round >= dev.duo.hookprobe.T.c0 && !z;
            this.f = z4;
            Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars() | (z2 ? 0 : WindowInsets.Type.displayCutout()));
            this.g = insets.top;
            this.h = insets.bottom;
            FrameLayout frameLayout = new FrameLayout(activity);
            this.a = frameLayout;
            frameLayout.setBackground(dev.duo.hookprobe.T.b(activity));
            FrameLayout frameLayout2 = new FrameLayout(activity);
            this.b = frameLayout2;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (z2) {
                layoutParams.leftMargin = dev.duo.hookprobe.T.g0;
                layoutParams.rightMargin = 212;
            }
            frameLayout.addView(frameLayout2, layoutParams);
            frameLayout.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: dev.duo.hookprobe.T$d$$ExternalSyntheticLambda0
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    WindowInsets a;
                    a = T.d.this.a(view, windowInsets);
                    return a;
                }
            });
            if (bounds.equals(activity.getWindowManager().getMaximumWindowMetrics().getBounds())) {
                if (z3 || z4) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(Math.round(dev.duo.hookprobe.T.i0), Math.round(dev.duo.hookprobe.T.j0));
                    layoutParams2.leftMargin = Math.round(bounds.width() - (z3 ? dev.duo.hookprobe.T.k0 : dev.duo.hookprobe.T.m0));
                    layoutParams2.topMargin = Math.round(z3 ? dev.duo.hookprobe.T.l0 : dev.duo.hookprobe.T.n0);
                    this.k = new FrameLayout(activity);
                    f fVar = new f(activity);
                    this.l = fVar;
                    this.k.addView(fVar, layoutParams2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ WindowInsets a(View view, WindowInsets windowInsets) {
            Insets insets = windowInsets.getInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.ime() | (this.d ? 0 : WindowInsets.Type.displayCutout()));
            view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
            return WindowInsets.CONSUMED;
        }

        int b() {
            return this.d ? dev.duo.hookprobe.T.g0 : dev.duo.hookprobe.T.a((Context) this.j, 120.0f);
        }

        int c() {
            if (!this.f || this.k == null) {
                return 0;
            }
            return Math.round(dev.duo.hookprobe.T.m0) - 20;
        }

        int d() {
            if (this.e) {
                return Math.max(0, Math.round(dev.duo.hookprobe.T.l0) - this.g);
            }
            return dev.duo.hookprobe.T.a(this.j, this.f ? 8.0f : 18.0f);
        }

        int e() {
            return this.d ? Math.round(this.c - (232.0f / this.j.getResources().getDisplayMetrics().density)) : this.c;
        }

        void a(boolean z) {
            f fVar = this.l;
            if (fVar != null) {
                fVar.b(z);
            }
        }

        void a() {
            if (this.k == null) {
                return;
            }
            ((FrameLayout) this.a.getParent()).addView(this.k, new FrameLayout.LayoutParams(-1, -1));
        }

        void a(int i, IntConsumer intConsumer) {
            FrameLayout.LayoutParams layoutParams;
            View view = this.m;
            if (view != null) {
                this.a.removeView(view);
            }
            this.m = dev.duo.hookprobe.T.a(this.j, i, this.d ? dev.duo.hookprobe.T.f0 : 0, intConsumer);
            if (this.d) {
                layoutParams = new FrameLayout.LayoutParams(dev.duo.hookprobe.T.f0, -2, 8388629);
                layoutParams.rightMargin = dev.duo.hookprobe.T.g0;
            } else {
                layoutParams = new FrameLayout.LayoutParams(-2, -2, 81);
                layoutParams.bottomMargin = this.f ? Math.max(0, 40 - this.h) : dev.duo.hookprobe.T.a((Context) this.j, 16.0f);
            }
            this.a.addView(this.m, layoutParams);
        }

        int a(int i) {
            if (this.d) {
                return 0;
            }
            return this.f ? dev.duo.hookprobe.T.g0 : dev.duo.hookprobe.T.a(this.j, Math.max(16.0f, (i - 640) / 2.0f));
        }
    }

    static LinearLayout.LayoutParams b() {
        return new LinearLayout.LayoutParams(0, -2, 1.0f);
    }

    static View b(EditText editText) {
        Context context = editText.getContext();
        LinearLayout a2 = a(context);
        a2.setPadding(a(context, 22.0f), 0, a(context, 22.0f), a(context, 4.0f));
        a2.addView(editText, a());
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Drawable b(Context context, int i2) {
        return new b(i2, context, a(context, 13.0f));
    }

    static int a(Context context, float f2) {
        return Math.round(f2 * context.getResources().getDisplayMetrics().density);
    }

    private static GradientDrawable a(int i2, float f2, float f3, float f4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setGradientType(1);
        gradientDrawable.setColors(new int[]{i2, 16777215 & i2});
        gradientDrawable.setGradientCenter(f2, f3);
        gradientDrawable.setGradientRadius(f4);
        return gradientDrawable;
    }

    static GradientDrawable a(int i2, float f2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(f2);
        return gradientDrawable;
    }

    static GradientDrawable a(int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{i2, i3});
        gradientDrawable.setShape(1);
        return gradientDrawable;
    }

    static void a(View view, float f2) {
        Context context = view.getContext();
        GradientDrawable a2 = a(i, a(context, f2));
        a2.setStroke(Math.max(1, a(context, 1.0f)), j);
        view.setBackground(a2);
        view.setElevation(a(context, 3.0f));
        view.setOutlineAmbientShadowColor(a_v ? 1711276032 : 570425344);
        view.setOutlineSpotShadowColor(a_v ? 1426063360 : 335544320);
    }

    static TextView a(Context context, float f2, int i2, int i3) {
        TextView textView = new TextView(context);
        textView.setTextSize(f2);
        textView.setTextColor(i2);
        textView.setTypeface(Typeface.create(Typeface.DEFAULT, i3, false));
        textView.setIncludeFontPadding(false);
        return textView;
    }

    static LinearLayout a(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    static LinearLayout.LayoutParams a() {
        return new LinearLayout.LayoutParams(-1, -2);
    }

    static LinearLayout.LayoutParams a(Context context, float f2, float f3) {
        return new LinearLayout.LayoutParams(a(context, f2), a(context, f3));
    }

    static LinearLayout.LayoutParams a(LinearLayout.LayoutParams layoutParams, Context context, float f2) {
        layoutParams.topMargin = a(context, f2);
        return layoutParams;
    }

    static TextView a(Context context, String str) {
        TextView a2 = a(context, 13.0f, c, c0);
        a2.setText(str);
        a2.setPadding(a(context, 10.0f), a(context, 18.0f), 0, a(context, 8.0f));
        return a2;
    }

    static TextView a(Context context, String str, boolean z2, float f2) {
        TextView a2 = a(context, 14.0f, z2 ? o : b_v, c0);
        a2.setText(str);
        a2.setGravity(17);
        a2.setSingleLine(true);
        a2.setMinHeight(a(context, f2));
        a2.setPadding(a(context, 14.0f), 0, a(context, 14.0f), 0);
        a2.setBackground(a(z2 ? n : f_v, a(context, f2 / 2.0f)));
        a2.setClickable(true);
        a2.setFocusable(true);
        return a2;
    }

    static void a(TextView textView, boolean z2) {
        textView.setTextColor(z2 ? o : b_v);
        textView.setBackground(a(z2 ? n : f_v, textView.getMinHeight() / 2.0f));
    }

    static AlertDialog.Builder a(Activity activity, String str) {
        TextView a2 = a(activity, 20.0f, b_v, 700);
        a2.setText(str);
        a2.setPadding(a((Context) activity, 22.0f), a((Context) activity, 22.0f), a((Context) activity, 22.0f), a((Context) activity, 12.0f));
        return new AlertDialog.Builder(activity).setCustomTitle(a2);
    }

    static AlertDialog.Builder a(Activity activity, String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
        return a(activity, str).setAdapter(new RowAdapter(activity, ResIds.layout.simple_list_item_1, strArr, activity), onClickListener);
    }

    static void a(AlertDialog alertDialog) {
        alertDialog.show();
        Context context = alertDialog.getContext();
        alertDialog.getWindow().setBackgroundDrawable(a(i, a(context, 24.0f)));
        alertDialog.getWindow().setLayout(Math.min(context.getResources().getDisplayMetrics().widthPixels - a(context, 32.0f), a(context, 560.0f)), -2);
        int[] iArr = {-1, -2, -3};
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = iArr[i2];
            Button button = alertDialog.getButton(i3);
            if (button != null && button.getVisibility() == 0) {
                boolean z2 = i3 == -1;
                button.setAllCaps(false);
                button.setTextSize(14.0f);
                button.setTypeface(Typeface.create(Typeface.DEFAULT, c0, false));
                button.setTextColor(z2 ? o : b_v);
                button.setBackground(a(z2 ? n : f_v, a(context, 18.0f)));
                button.setMinHeight(a(context, 38.0f));
                button.setPadding(a(context, 14.0f), 0, a(context, 14.0f), 0);
            }
        }
        TextView textView = (TextView) alertDialog.findViewById(ResIds.id.message);
        if (textView != null) {
            textView.setTextColor(c);
            textView.setTextSize(14.0f);
        }
    }

    static void a(EditText editText) {
        Context context = editText.getContext();
        editText.setTextColor(b_v);
        editText.setHintTextColor(d);
        editText.setTextSize(16.0f);
        editText.setSingleLine(true);
        editText.setBackground(a(f_v, a(context, 14.0f)));
        editText.setPadding(a(context, 14.0f), a(context, 12.0f), a(context, 14.0f), a(context, 12.0f));
    }

    static void a(Switch r7) {
        Context context = r7.getContext();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(l);
        gradientDrawable.setStroke(Math.max(1, a(context, 0.5f)), a_v ? 855638016 : 520093696);
        gradientDrawable.setSize(a(context, 26.0f), a(context, 26.0f));
        r7.setThumbDrawable(new InsetDrawable((Drawable) gradientDrawable, a(context, 3.0f)));
        GradientDrawable a2 = a(0, a(context, 16.0f));
        a2.setColor(new ColorStateList(new int[][]{new int[]{ResIds.attr.state_checked}, new int[0]}, new int[]{k, m}));
        a2.setSize(a(context, 52.0f), a(context, 32.0f));
        r7.setTrackDrawable(a2);
        r7.setShowText(false);
        r7.setBackground(null);
        r7.setSwitchMinWidth(a(context, 52.0f));
    }

    static void a(SeekBar seekBar) {
        Context context = seekBar.getContext();
        float a2 = a(context, 3.0f);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{a(a_v ? 1383495296 : 779515520, a2), new ClipDrawable(a(k, a2), 8388611, 1)});
        layerDrawable.setId(0, ResIds.id.background);
        layerDrawable.setId(1, ResIds.id.progress);
        seekBar.setProgressDrawable(layerDrawable);
        seekBar.setMinHeight(a(context, 6.0f));
        seekBar.setMaxHeight(a(context, 6.0f));
        GradientDrawable a3 = a(a_v ? -3026474 : -1, a(context, 12.0f));
        a3.setStroke(Math.max(1, a(context, 0.5f)), 637534208);
        a3.setSize(a(context, 34.0f), a(context, 24.0f));
        seekBar.setThumb(a3);
        seekBar.setSplitTrack(false);
        seekBar.setBackground(null);
        seekBar.setPadding(a(context, 17.0f), 0, a(context, 17.0f), 0);
    }

    static void a(SeekBar seekBar, int i2) {
        seekBar.setProgressTintList(ColorStateList.valueOf(i2));
    }

    static Drawable a(Context context, int i2, int i3, float f2, boolean z2, float f3) {
        return new c(i3, f2, z2, i2, a(context, f3));
    }

    static ImageView a(Context context, Drawable drawable) {
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable);
        return imageView;
    }

    static LinearLayout a(Context context, int i2, int i3, final IntConsumer intConsumer) {
        LinearLayout linearLayout;
        boolean z2;
        boolean z3 = false;
        boolean z4 = i3 > 0;
        LinearLayout a2 = z4 ? a(context) : c(context);
        int a3 = a(context, z4 ? 4.0f : 5.0f);
        a2.setPadding(a3, a3, a3, a3);
        float f2 = 2.0f;
        a(a2, z4 ? (i3 / 2.0f) / context.getResources().getDisplayMetrics().density : 31.0f);
        a2.setElevation(a(context, 8.0f));
        String[] strArr = {"首页", "App", "", "小功能", "UI"};
        int i4 = 2;
        int[] iArr = {0, 1, 2, Z, a0};
        int i5 = 0;
        while (true) {
            int[] iArr2 = K;
            if (i5 >= iArr2.length) {
                return a2;
            }
            final int i6 = iArr2[i5];
            boolean z5 = i6 == i2 ? true : z3;
            LinearLayout a4 = a(context);
            a4.setGravity(17);
            LinearLayout.LayoutParams a5 = a(context, 22.0f, 22.0f);
            a5.gravity = 1;
            int i7 = i5;
            int i8 = iArr[i6];
            int i9 = z5 ? b_v : c;
            float f3 = z5 ? 2.2f : f2;
            if (!z5 || i8 == i4) {
                linearLayout = a4;
                z2 = z3;
            } else {
                linearLayout = a4;
                z2 = true;
            }
            float f4 = f3;
            LinearLayout linearLayout2 = linearLayout;
            int i10 = i4;
            linearLayout2.addView(a(context, a(context, i8, i9, f4, z2, 22.0f)), a5);
            TextView a6 = a(context, 11.0f, z5 ? b_v : c, z5 ? 700 : c0);
            a6.setText(strArr[i6]);
            a6.setGravity(17);
            LinearLayout.LayoutParams c2 = c();
            c2.gravity = 1;
            c2.topMargin = a(context, 4.0f);
            linearLayout2.addView(a6, c2);
            if (z5) {
                linearLayout2.setBackground(a(q, a(context, 26.0f)));
                linearLayout2.setElevation(a_v ? 0.0f : a(context, 1.5f));
            }
            linearLayout2.setContentDescription(strArr[i6]);
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.T$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    intConsumer.accept(i6);
                }
            });
            LinearLayout.LayoutParams layoutParams = z4 ? new LinearLayout.LayoutParams(i3 - (a3 * 2), a(context, 60.0f)) : a(context, 72.0f, 52.0f);
            if (z4 && i7 > 0) {
                layoutParams.topMargin = a(context, 4.0f);
            }
            a2.addView(linearLayout2, layoutParams);
            i5 = i7 + 1;
            i4 = i10;
            z3 = false;
            f2 = 2.0f;
        }
    }
}
