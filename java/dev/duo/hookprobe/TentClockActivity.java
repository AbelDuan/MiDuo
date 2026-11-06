package dev.duo.hookprobe;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.display.DisplayManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.window.OnBackInvokedCallback;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public final class TentClockActivity extends Activity {

    /* renamed from: a */
    public static final String f1437a = "dev.duo.hookprobe.awake.HOST";

    /* renamed from: b */
    public static final String f1438b = "dev.duo.hookprobe.awake.STOP";

    /* renamed from: c */
    public static final String f1439c = "dev.duo.hookprobe.awake.LIFE";

    /* renamed from: d */
    public static final int f1440d = 1;

    /* renamed from: e */
    public static final int f1441e = 2;

    /* renamed from: f */
    public static final int f1442f = 3;

    /* renamed from: g */
    public static final int f1443g = 4;

    /* renamed from: h */
    public static final int f1444h = 5;

    /* renamed from: i */
    private static final float f1445i = 3.0f;

    /* renamed from: A */
    private long f1446A;

    /* renamed from: B */
    private SensorManager f1447B;

    /* renamed from: C */
    private boolean f1448C;

    /* renamed from: D */
    private boolean f1449D;

    /* renamed from: E */
    private boolean f1450E;

    /* renamed from: G */
    private boolean f1452G;

    /* renamed from: J */
    private float f1455J;

    /* renamed from: K */
    private float f1456K;

    /* renamed from: L */
    private float f1457L;

    /* renamed from: M */
    private boolean f1458M;

    /* renamed from: l */
    private IBinder f1466l;

    /* renamed from: m */
    private ResultReceiver f1467m;

    /* renamed from: n */
    private C0093f f1468n;

    /* renamed from: o */
    private boolean f1469o;

    /* renamed from: p */
    private boolean f1470p;

    /* renamed from: q */
    private boolean f1471q;

    /* renamed from: r */
    private boolean f1472r;

    /* renamed from: s */
    private boolean f1473s;

    /* renamed from: t */
    private boolean f1474t;

    /* renamed from: u */
    private boolean f1475u;

    /* renamed from: v */
    private boolean f1476v;

    /* renamed from: w */
    private float f1477w;

    /* renamed from: x */
    private float f1478x;

    /* renamed from: y */
    private int f1479y;

    /* renamed from: j */
    private final Handler f1464j = new Handler(Looper.getMainLooper());

    /* renamed from: k */
    private final IBinder f1465k = new Binder();

    /* renamed from: z */
    private long f1480z = -1;

    /* renamed from: F */
    private long f1451F = Long.MIN_VALUE;

    /* renamed from: H */
    private int f1453H = -1;

    /* renamed from: I */
    private final Runnable f1454I = new Runnable() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            TentClockActivity.this.m1461b();
        }
    };

    /* renamed from: N */
    private final SensorEventListener f1459N = new C0088a();

    /* renamed from: O */
    private final IBinder.DeathRecipient f1460O = new IBinder.DeathRecipient() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda2
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            TentClockActivity.this.m1467d();
        }
    };

    /* renamed from: P */
    private final Runnable f1461P = new RunnableC0089b();

    /* renamed from: Q */
    private final BroadcastReceiver f1462Q = new C0090c();

    /* renamed from: R */
    private final DisplayManager.DisplayListener f1463R = new C0091d();

    /* renamed from: dev.duo.hookprobe.TentClockActivity$a */
    class C0088a implements SensorEventListener {
        C0088a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (TentClockActivity.this.f1448C) {
                float f = TentClockActivity.this.f1458M ? 0.3f : 1.0f;
                TentClockActivity tentClockActivity = TentClockActivity.this;
                TentClockActivity.m1452a(tentClockActivity, (sensorEvent.values[0] - tentClockActivity.f1455J) * f);
                TentClockActivity tentClockActivity2 = TentClockActivity.this;
                TentClockActivity.m1460b(tentClockActivity2, (sensorEvent.values[1] - tentClockActivity2.f1456K) * f);
                TentClockActivity tentClockActivity3 = TentClockActivity.this;
                TentClockActivity.m1464c(tentClockActivity3, f * (sensorEvent.values[2] - tentClockActivity3.f1457L));
                if (!TentClockActivity.this.f1458M) {
                    Log.i("DuoStandby", String.format(Locale.ROOT, "Awake clock gravity first x=%.1f y=%.1f z=%.1f requested=%d", Float.valueOf(TentClockActivity.this.f1455J), Float.valueOf(TentClockActivity.this.f1456K), Float.valueOf(TentClockActivity.this.f1457L), Integer.valueOf(TentClockActivity.this.getRequestedOrientation())));
                }
                TentClockActivity.this.f1458M = true;
                if (Math.abs(TentClockActivity.this.f1455J) < TentClockActivity.f1445i) {
                    return;
                }
                int i = TentClockActivity.this.f1455J > 0.0f ? 8 : 0;
                if (i == TentClockActivity.this.f1453H) {
                    return;
                }
                TentClockActivity.this.f1464j.removeCallbacks(TentClockActivity.this.f1454I);
                TentClockActivity.this.f1453H = i;
                Log.i("DuoStandby", String.format(Locale.ROOT, "Awake clock gravity x=%.1f y=%.1f z=%.1f -> %s (requested %d)", Float.valueOf(TentClockActivity.this.f1455J), Float.valueOf(TentClockActivity.this.f1456K), Float.valueOf(TentClockActivity.this.f1457L), i == 0 ? "LANDSCAPE" : "REVERSE_LANDSCAPE", Integer.valueOf(TentClockActivity.this.getRequestedOrientation())));
                if (i != TentClockActivity.this.getRequestedOrientation()) {
                    TentClockActivity.this.f1464j.postDelayed(TentClockActivity.this.f1454I, 400L);
                }
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.TentClockActivity$b */
    class RunnableC0089b implements Runnable {
        RunnableC0089b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TentClockActivity.this.m1476h();
        }
    }

    /* renamed from: dev.duo.hookprobe.TentClockActivity$c */
    class C0090c extends BroadcastReceiver {
        C0090c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                TentClockActivity.this.m1456a(intent.getAction());
                return;
            }
            if (TentClockActivity.this.f1468n != null) {
                TentClockActivity.this.f1468n.f1492g = Long.MIN_VALUE;
            }
            TentClockActivity.this.m1476h();
        }
    }

    /* renamed from: dev.duo.hookprobe.TentClockActivity$d */
    class C0091d implements DisplayManager.DisplayListener {
        C0091d() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
            TentClockActivity.this.m1454a();
            TentClockActivity.this.m1476h();
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            TentClockActivity.this.m1454a();
            TentClockActivity.this.m1476h();
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            TentClockActivity.this.m1454a();
            TentClockActivity.this.m1476h();
        }
    }

    /* renamed from: dev.duo.hookprobe.TentClockActivity$e */
    class ResultReceiverC0092e extends ResultReceiver {
        ResultReceiverC0092e(Handler handler) {
            super(handler);
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            if (i == 3) {
                TentClockActivity.this.m1456a("host_stop");
                return;
            }
            if (i != 4 || TentClockActivity.this.f1472r || TentClockActivity.this.f1470p) {
                return;
            }
            if (!TentClockActivity.this.m1471f()) {
                TentClockActivity.this.m1456a("invalid_show");
                return;
            }
            TentClockActivity.this.f1470p = true;
            TentClockActivity.this.f1468n.setVisibility(0);
            TentClockActivity.this.m1476h();
        }
    }

    /* renamed from: dev.duo.hookprobe.TentClockActivity$f */
    private static final class C0093f extends View {

        /* renamed from: a */
        private final Bitmap f1486a;

        /* renamed from: b */
        private final Paint f1487b;

        /* renamed from: c */
        private final RectF f1488c;

        /* renamed from: d */
        private final ColorMatrixColorFilter f1489d;

        /* renamed from: e */
        private final long f1490e;

        /* renamed from: f */
        private int f1491f;

        /* renamed from: g */
        private long f1492g;

        /* renamed from: h */
        private String f1493h;

        /* renamed from: i */
        private String f1494i;

        /* renamed from: j */
        private String f1495j;

        /* renamed from: k */
        private int f1496k;

        /*
        */
        C0093f(Context context) {
            super(context);
            Bitmap bitmap;
            this.f1487b = new Paint(3);
            this.f1488c = new RectF(0.0f, 0.0f, 678.0f, 466.0f);
            this.f1489d = new ColorMatrixColorFilter(new float[]{0.65f, 0.0f, 0.0f, 0.0f, -5.2f, 0.0f, 0.65f, 0.0f, 0.0f, -5.2f, 0.0f, 0.0f, 0.65f, 0.0f, -5.2f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
            this.f1490e = SystemClock.uptimeMillis();
            this.f1492g = Long.MIN_VALUE;
            this.f1496k = context.getSharedPreferences("tent_clock", 0).getInt("face", 0);
            IOException iOException = null;
            try {
                InputStream open = context.getAssets().open("analog-cardinal-dark-dial.png");
                try {
                    bitmap = BitmapFactory.decodeStream(open);
                    if (open != null) {
                        try {
                            open.close();
                        } catch (IOException e) {
                            e = e;
                            iOException = e;
                            if (bitmap == null) {
                            }
                            this.f1486a = bitmap;
                            this.f1487b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
                        }
                    }
                } finally {
                }
            } catch (IOException e2) {
                e = e2;
                bitmap = null;
            }
            if (bitmap == null) {
                Log.w("DuoStandby", "Awake clock dial unavailable, drawing without it", iOException);
            }
            this.f1486a = bitmap;
            this.f1487b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawColor(this.f1496k == 2 ? -16377293 : -16777216);
            canvas.save();
            long uptimeMillis = (((SystemClock.uptimeMillis() - this.f1490e) / 180000) + 4) % 9;
            canvas.translate(((uptimeMillis % 3) - 1) * 2, ((uptimeMillis / 3) - 1) * 2);
            canvas.scale(getWidth() / 678.0f, getHeight() / 466.0f);
            this.f1487b.setColor(-1);
            Calendar calendar = Calendar.getInstance();
            long timeInMillis = calendar.getTimeInMillis() / 60000;
            if (this.f1492g != timeInMillis) {
                this.f1492g = timeInMillis;
                this.f1493h = DateFormat.format(DateFormat.is24HourFormat(getContext()) ? "HH:mm" : "h:mm", calendar).toString();
                int i = this.f1496k;
                if (i == 2 || i == 3) {
                    this.f1495j = DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), "yMMMM"), calendar).toString();
                }
                this.f1494i = DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), "EEEd"), calendar).toString();
            }
            int i2 = this.f1496k;
            if (i2 == 2) {
                m1490a(canvas, calendar, false);
            } else if (i2 == 3) {
                m1488a(canvas, calendar);
            } else {
                if (i2 != 0) {
                    m1486a(canvas, 339.0f, 233.0f, 307.0f, 201.0f, false, false);
                } else if (this.f1486a != null) {
                    this.f1487b.setColorFilter(this.f1489d);
                    canvas.drawBitmap(this.f1486a, (Rect) null, this.f1488c, this.f1487b);
                    this.f1487b.setColorFilter(null);
                }
                this.f1487b.setColor(-4671822);
                this.f1487b.setTextSize(22.0f);
                this.f1487b.setTextAlign(Paint.Align.CENTER);
                canvas.drawText(this.f1493h, 245.0f, 241.0f, this.f1487b);
                canvas.drawText(this.f1494i, 437.0f, 241.0f, this.f1487b);
                m1489a(canvas, calendar, 339, 233, 110.0f, 187.0f, 195.0f, 11.0f, 9.0f, 2.5f, -24822);
            }
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m1485a(int i) {
            this.f1496k = Math.floorMod(this.f1496k + i, 4);
            this.f1492g = Long.MIN_VALUE;
            getContext().getSharedPreferences("tent_clock", 0).edit().putInt("face", this.f1496k).apply();
        }

        /* renamed from: a */
        private void m1486a(Canvas canvas, float f, float f2, float f3, float f4, boolean z, boolean z2) {
            float min;
            float f5;
            this.f1487b.setStrokeCap(Paint.Cap.ROUND);
            int i = 0;
            while (true) {
                if (i >= (z ? 12 : 60)) {
                    return;
                }
                double d = (i * 3.141592653589793d) / (z ? 6 : 30);
                float sin = (float) Math.sin(d);
                float cos = (float) Math.cos(d);
                if (z) {
                    min = f3;
                } else {
                    min = Math.min(Math.abs(sin) < 1.0E-4f ? 10000.0f : f3 / Math.abs(sin), Math.abs(cos) >= 1.0E-4f ? f4 / Math.abs(cos) : 10000.0f);
                }
                boolean z3 = z || i % 5 == 0;
                if (z) {
                    f5 = 15.0f;
                } else if (z2) {
                    f5 = z3 ? 34 : 18;
                } else {
                    f5 = z3 ? 37.0f : 20.0f;
                }
                this.f1487b.setColor(z3 ? -5856097 : z2 ? -11697995 : -12040120);
                this.f1487b.setStrokeWidth(z ? 5.0f : z3 ? z2 ? 4.0f : 3.7f : z2 ? 2.5f : 2.0f);
                float f6 = min - f5;
                canvas.drawLine(f + (f6 * sin), f2 - (f6 * cos), f + (sin * min), f2 - (min * cos), this.f1487b);
                i++;
            }
        }

        /* renamed from: a */
        private void m1489a(Canvas canvas, Calendar calendar, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, int i3) {
            int i4 = i;
            int i5 = calendar.get(11);
            m1487a(canvas, ((i5 % 12) + (calendar.get(12) / 60.0f)) * 30.0f, i4, i2, f, i4 == 339 ? 13.0f : 0.0f, f4, -2236963);
            m1487a(canvas, r10 * 6, i4, i2, f2, i4 == 339 ? 14.0f : 0.0f, f5, -2236963);
            float f7 = 6.0f;
            if (this.f1491f != 0) {
                float f8 = calendar.get(13);
                if (this.f1491f == 2) {
                    f8 += calendar.get(14) / 1000.0f;
                }
                m1487a(canvas, f8 * 6.0f, i4, i2, f3, i4 != 339 ? 10.0f : 30.0f, f6, i3);
                i4 = i4;
            }
            this.f1487b.setColor(i3);
            float f9 = i4;
            float f10 = i2;
            if (i4 == 129) {
                f7 = 5.0f;
            } else if (i4 == 445) {
                f7 = 9.0f;
            }
            canvas.drawCircle(f9, f10, f7, this.f1487b);
            this.f1487b.setColor(i4 == 339 ? -1 : -16777216);
            canvas.drawCircle(f9, f10, i4 == 129 ? 2.0f : i4 == 445 ? 3.5f : 2.4f, this.f1487b);
        }

        /* renamed from: a */
        private void m1490a(Canvas canvas, Calendar calendar, boolean z) {
            String[] strArr;
            boolean equals = Locale.getDefault().getLanguage().equals("zh");
            int i = z ? -4730911 : -16745729;
            int i2 = 2;
            if (!z) {
                this.f1487b.setTypeface(Typeface.create("serif", 2));
                this.f1487b.setTextSize(300.0f);
                this.f1487b.setTextAlign(Paint.Align.CENTER);
                this.f1487b.setColor(1895777594);
                canvas.drawText(Integer.toString(calendar.get(5)), 349.0f, 405.0f, this.f1487b);
            }
            this.f1487b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            this.f1487b.setTextAlign(Paint.Align.LEFT);
            this.f1487b.setTextSize(z ? 15.0f : 25.0f);
            this.f1487b.setColor(z ? -2697546 : -3195853);
            canvas.drawText(this.f1495j, z ? 47.0f : 43.0f, z ? 268.0f : 60.0f, this.f1487b);
            if (!z) {
                this.f1487b.setTextAlign(Paint.Align.RIGHT);
                canvas.drawText(this.f1493h, 635.0f, 60.0f, this.f1487b);
            }
            this.f1487b.setTextAlign(Paint.Align.CENTER);
            this.f1487b.setTextSize(z ? 13.0f : 25.0f);
            this.f1487b.setColor(i);
            if (z) {
                if (equals) {
                    strArr = new String[]{"日", "一", "二", "三", "四", "五", "六"};
                } else {
                    strArr = new String[]{"S", "M", "T", "W", "T", "F", "S"};
                }
            } else if (equals) {
                strArr = new String[]{"一", "二", "三", "四", "五", "六", "日"};
            } else {
                strArr = new String[]{"M", "T", "W", "T", "F", "S", "S"};
            }
            for (int i3 = 0; i3 < 7; i3++) {
                canvas.drawText(strArr[i3], (z ? 51 : 66) + (i3 * (z ? 25.5f : 88.0f)), z ? 292.0f : 106.0f, this.f1487b);
            }
            Calendar calendar2 = (Calendar) calendar.clone();
            calendar2.set(5, 1);
            calendar2.add(5, -(z ? calendar2.get(7) - 1 : (calendar2.get(7) + 5) % 7));
            int i4 = 0;
            while (i4 < 42) {
                boolean z2 = calendar2.get(i2) == calendar.get(i2) && calendar2.get(1) == calendar.get(1);
                if (!z || z2) {
                    float f = (z ? 51 : 66) + ((i4 % 7) * (z ? 25.5f : 88.0f));
                    float f2 = (z ? 318 : 162) + ((i4 / 7) * (z ? 27 : 52));
                    boolean z3 = z2 && calendar2.get(5) == calendar.get(5);
                    if (z3) {
                        this.f1487b.setColor(z ? -2697546 : i);
                        canvas.drawCircle(f, f2 - (z ? 4 : 9), z ? 12.0f : 25.0f, this.f1487b);
                    }
                    this.f1487b.setColor(z3 ? z ? -16250872 : -16377293 : z2 ? i : 1291877119);
                    canvas.drawText(Integer.toString(calendar2.get(5)), f, f2, this.f1487b);
                }
                i4++;
                calendar2.add(5, 1);
                i2 = 2;
            }
        }

        /* renamed from: a */
        private void m1488a(Canvas canvas, Calendar calendar) {
            m1486a(canvas, 129.0f, 126.0f, 76.0f, 76.0f, true, true);
            m1486a(canvas, 445.0f, 226.0f, 181.0f, 175.0f, false, true);
            this.f1487b.setTypeface(Typeface.create("sans-serif-rounded", 1));
            this.f1487b.setTextSize(48.0f);
            this.f1487b.setTextAlign(Paint.Align.CENTER);
            this.f1487b.setColor(-4671304);
            int[] iArr = {12, 3, 6, 9};
            for (int i = 0; i < 4; i++) {
                int i2 = iArr[i];
                double d = (i2 * 3.141592653589793d) / 6.0d;
                canvas.drawText(Integer.toString(i2), (((float) Math.sin(d)) * 116.0f) + 445.0f, (226.0f - (((float) Math.cos(d)) * 116.0f)) + 17.0f, this.f1487b);
            }
            this.f1487b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            m1489a(canvas, calendar, 129, 126, 43.0f, 77.0f, 78.0f, 6.0f, 5.0f, 1.6f, -2697546);
            m1489a(canvas, calendar, 445, 226, 107.0f, 178.0f, 178.0f, 12.0f, 10.0f, 2.2f, -2697546);
            m1490a(canvas, calendar, true);
        }

        /* renamed from: a */
        private void m1487a(Canvas canvas, float f, int i, int i2, float f2, float f3, float f4, int i3) {
            canvas.save();
            float f5 = i;
            float f6 = i2;
            canvas.rotate(f, f5, f6);
            this.f1487b.setColor(i3);
            this.f1487b.setStrokeWidth(f4);
            this.f1487b.setStrokeCap(Paint.Cap.ROUND);
            canvas.drawLine(f5, f6 + f3, f5, f6 - f2, this.f1487b);
            canvas.restore();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = this.f1471q && this.f1469o && this.f1470p && !this.f1472r && hasWindowFocus() && ((PowerManager) getSystemService(PowerManager.class)).isInteractive();
        if (z) {
            boolean z2 = this.f1475u;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f1476v = true;
                this.f1477w = motionEvent.getX();
                this.f1478x = motionEvent.getY();
                this.f1479y = getDisplay().getRotation();
            } else if (actionMasked == 5 || actionMasked == 3) {
                this.f1476v = false;
            } else if (actionMasked == 1) {
                float x = motionEvent.getX() - this.f1477w;
                float y = motionEvent.getY() - this.f1478x;
                if (this.f1476v && this.f1479y == getDisplay().getRotation() && Math.abs(x) >= getResources().getDisplayMetrics().density * 64.0f && Math.abs(x) > Math.abs(y) * 1.5f) {
                    this.f1468n.m1485a(x < 0.0f ? 1 : -1);
                }
                this.f1476v = false;
            }
            if (actionMasked == 0 || actionMasked == 5 || actionMasked == 2) {
                this.f1475u = true;
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.f1475u = false;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            this.f1446A = uptimeMillis;
            this.f1480z = uptimeMillis;
            if (actionMasked != 2 || !z2) {
                m1476h();
            }
        }
        return z || super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1467m = (ResultReceiver) getIntent().getParcelableExtra(f1437a, ResultReceiver.class);
        IBinder binder = getIntent().getExtras() == null ? null : getIntent().getExtras().getBinder(f1439c);
        this.f1466l = binder;
        if (bundle != null || this.f1467m == null || binder == null || !m1471f()) {
            m1456a("invalid_start");
            return;
        }
        try {
            this.f1466l.linkToDeath(this.f1460O, 0);
            this.f1474t = true;
            requestWindowFeature(1);
            getWindow().setDecorFitsSystemWindows(false);
            getWindow().getDecorView().setForceDarkAllowed(false);
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.screenBrightness = 0.08f;
            attributes.layoutInDisplayCutoutMode = 3;
            getWindow().setAttributes(attributes);
            this.f1446A = SystemClock.uptimeMillis();
            if (Build.VERSION.SDK_INT >= 36) {
                getWindow().setFrameRateBoostOnTouchEnabled(false);
            }
            C0093f c0093f = new C0093f(this);
            this.f1468n = c0093f;
            c0093f.setVisibility(4);
            setContentView(this.f1468n);
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda0
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() {
                    TentClockActivity.this.m1469e();
                }
            });
            WindowInsetsController insetsController = getWindow().getInsetsController();
            insetsController.setSystemBarsBehavior(2);
            insetsController.hide(WindowInsets.Type.systemBars());
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            registerReceiver(this.f1462Q, intentFilter, 4);
            ((DisplayManager) getSystemService(DisplayManager.class)).registerDisplayListener(this.f1463R, this.f1464j);
            this.f1473s = true;
            ResultReceiverC0092e resultReceiverC0092e = new ResultReceiverC0092e(this.f1464j);
            Bundle bundle2 = new Bundle();
            bundle2.putBinder(f1439c, this.f1465k);
            Parcel obtain = Parcel.obtain();
            try {
                resultReceiverC0092e.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                bundle2.putParcelable(f1438b, (Parcelable) ResultReceiver.CREATOR.createFromParcel(obtain));
                obtain.recycle();
                this.f1467m.send(1, bundle2);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        } catch (RemoteException e) {
            this.f1466l = null;
            m1456a("host_already_dead");
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.f1473s) {
            unregisterReceiver(this.f1462Q);
            ((DisplayManager) getSystemService(DisplayManager.class)).unregisterDisplayListener(this.f1463R);
        }
        if (this.f1474t) {
            this.f1466l.unlinkToDeath(this.f1460O, 0);
        }
        m1456a("destroy");
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.f1469o = false;
        m1476h();
        if (this.f1471q) {
            m1456a("pause");
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f1469o = true;
        m1454a();
        m1476h();
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.f1469o = false;
        m1476h();
        if (this.f1471q) {
            m1456a("stop");
        }
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.f1471q && !z) {
            m1456a("focus_lost");
        }
        m1476h();
    }

    /* renamed from: c */
    static /* synthetic */ float m1464c(TentClockActivity tentClockActivity, float f) {
        float f2 = tentClockActivity.f1457L + f;
        tentClockActivity.f1457L = f2;
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1467d() {
        this.f1464j.post(new Runnable() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                TentClockActivity.this.m1466c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1469e() {
        m1456a("back");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public boolean m1471f() {
        Display display = getDisplay();
        Display.Mode mode = display == null ? null : display.getMode();
        if (mode != null && display.getDisplayId() == 0 && DimensionConst.m850a(mode.getPhysicalWidth(), mode.getPhysicalHeight())) {
            return ((KeyguardManager) getSystemService(KeyguardManager.class)).isKeyguardLocked();
        }
        if (this.f1450E) {
            return false;
        }
        this.f1450E = true;
        Log.w("DuoStandby", "Awake clock panel mismatch display=" + (display == null ? "null" : Integer.valueOf(display.getDisplayId())) + " size=" + (mode != null ? mode.getPhysicalWidth() + "x" + mode.getPhysicalHeight() : "null"));
        return false;
    }

    /* renamed from: g */
    private boolean m1473g() {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = this.f1451F;
        if (j == Long.MIN_VALUE || uptimeMillis - j >= 1000) {
            this.f1452G = m1471f();
            this.f1451F = uptimeMillis;
        }
        return this.f1452G;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m1476h() {
        long floorMod;
        this.f1464j.removeCallbacks(this.f1461P);
        if (this.f1468n == null) {
            return;
        }
        if (!this.f1472r && !m1473g()) {
            m1456a("screen_or_unlock");
            return;
        }
        boolean z = this.f1469o && this.f1470p && !this.f1472r && hasWindowFocus() && ((PowerManager) getSystemService(PowerManager.class)).isInteractive();
        this.f1468n.setKeepScreenOn(z);
        m1457a(z);
        if (this.f1472r) {
            z = false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        boolean z2 = this.f1475u;
        long j = z2 ? 0L : uptimeMillis - this.f1446A;
        long j2 = this.f1480z;
        long j3 = j2 < 0 ? Long.MAX_VALUE : uptimeMillis - j2;
        int i = this.f1468n.f1496k != 2 ? (!z || (!z2 && j3 >= 3000)) ? (!z || j3 >= 25000) ? 0 : 1 : 2 : 0;
        this.f1468n.f1491f = i;
        if (Build.VERSION.SDK_INT >= 36) {
            float f = !z ? Float.NaN : i == 2 ? 60.0f : i == 1 ? 1.0f : 0.016666668f;
            if (this.f1468n.getRequestedFrameRate() != f) {
                this.f1468n.setRequestedFrameRate(f);
            }
        }
        if (z) {
            float f2 = j > 300000 ? j >= 900000 ? 0.03f : 0.08f - (((j - 300000) * 0.05f) / 600000.0f) : 0.08f;
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            if (attributes.screenBrightness != f2) {
                attributes.screenBrightness = f2;
                getWindow().setAttributes(attributes);
            }
            if (!this.f1471q) {
                this.f1471q = true;
                this.f1467m.send(5, null);
            }
            this.f1468n.invalidate();
            long currentTimeMillis = System.currentTimeMillis();
            if (i == 2) {
                floorMod = ((((((uptimeMillis * 60) / 1000) + 1) * 1000) + 59) / 60) - uptimeMillis;
            } else {
                floorMod = i == 1 ? 1000 - Math.floorMod(currentTimeMillis, 1000) : 60000 - Math.floorMod(currentTimeMillis, 60000);
            }
            if (!this.f1475u && i != 0) {
                floorMod = Math.min(floorMod, (i == 2 ? 3000 : 25000) - j3);
            }
            this.f1464j.postDelayed(this.f1461P, floorMod);
        }
    }

    /* renamed from: a */
    static /* synthetic */ float m1452a(TentClockActivity tentClockActivity, float f) {
        float f2 = tentClockActivity.f1455J + f;
        tentClockActivity.f1455J = f2;
        return f2;
    }

    /* renamed from: b */
    static /* synthetic */ float m1460b(TentClockActivity tentClockActivity, float f) {
        float f2 = tentClockActivity.f1456K + f;
        tentClockActivity.f1456K = f2;
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1466c() {
        m1456a("host_died");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1461b() {
        int i;
        if (this.f1448C && this.f1469o && this.f1470p && !this.f1472r && hasWindowFocus() && ((PowerManager) getSystemService(PowerManager.class)).isInteractive() && m1471f() && (i = this.f1453H) != -1) {
            setRequestedOrientation(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1454a() {
        this.f1451F = Long.MIN_VALUE;
    }

    /* renamed from: a */
    private void m1457a(boolean z) {
        if (!z || this.f1448C) {
            if (z) {
                return;
            }
            if (this.f1448C) {
                this.f1448C = false;
                this.f1447B.unregisterListener(this.f1459N);
            }
            this.f1464j.removeCallbacks(this.f1454I);
            this.f1453H = -1;
            this.f1458M = false;
            return;
        }
        if (this.f1449D) {
            return;
        }
        SensorManager sensorManager = (SensorManager) getSystemService(SensorManager.class);
        this.f1447B = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(1, false);
        if (defaultSensor != null && this.f1447B.registerListener(this.f1459N, defaultSensor, 3, this.f1464j)) {
            this.f1448C = true;
        } else {
            this.f1449D = true;
            Log.w("DuoStandby", "Awake clock rotation sensor unavailable, fixed orientation kept");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1456a(String str) {
        if (this.f1472r) {
            return;
        }
        this.f1472r = true;
        this.f1469o = false;
        this.f1476v = false;
        this.f1475u = false;
        m1476h();
        C0093f c0093f = this.f1468n;
        if (c0093f != null) {
            c0093f.setKeepScreenOn(false);
            this.f1468n.setVisibility(4);
        }
        Log.i("DuoStandby", "Awake clock exit=" + str + " displayed=" + this.f1471q);
        ResultReceiver resultReceiver = this.f1467m;
        if (resultReceiver != null) {
            resultReceiver.send(2, null);
        }
        finishAndRemoveTask();
    }
}
