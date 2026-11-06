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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class TentClockActivity extends Activity {
    public static final String a = "com.lsposed.miduo.awake.HOST";
    public static final String b = "com.lsposed.miduo.awake.STOP";
    public static final String c = "com.lsposed.miduo.awake.LIFE";
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 4;
    public static final int h = 5;
    private static final float i = 3.0f;
    private long A;
    private SensorManager B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean G;
    private float J;
    private float K;
    private float L;
    private boolean M;
    private IBinder l;
    private ResultReceiver m;
    private f n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private float w;
    private float x;
    private int y;
    private final Handler j = new Handler(Looper.getMainLooper());
    private final IBinder k = new Binder();
    private long z = -1;
    private long F = Long.MIN_VALUE;
    private int H = -1;
    private final Runnable I = new Runnable() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            dev.duo.hookprobe.TentClockActivity.this.b();
        }
    };
    private final SensorEventListener N = new a();
    private final IBinder.DeathRecipient O = new IBinder.DeathRecipient() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda2
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            dev.duo.hookprobe.TentClockActivity.this.d();
        }
    };
    private final Runnable P = new b();
    private final BroadcastReceiver Q = new c();
    private final DisplayManager.DisplayListener R = new d();

    class a implements SensorEventListener {
        a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (dev.duo.hookprobe.TentClockActivity.this.C) {
                float f = dev.duo.hookprobe.TentClockActivity.this.M ? 0.3f : 1.0f;
                TentClockActivity tentClockActivity = dev.duo.hookprobe.TentClockActivity.this;
                TentClockActivity.a(tentClockActivity, (sensorEvent.values[0] - tentClockActivity.J) * f);
                TentClockActivity tentClockActivity2 = dev.duo.hookprobe.TentClockActivity.this;
                TentClockActivity.b(tentClockActivity2, (sensorEvent.values[1] - tentClockActivity2.K) * f);
                TentClockActivity tentClockActivity3 = dev.duo.hookprobe.TentClockActivity.this;
                TentClockActivity.c(tentClockActivity3, f * (sensorEvent.values[2] - tentClockActivity3.L));
                if (!dev.duo.hookprobe.TentClockActivity.this.M) {
                    Log.i("DuoStandby", String.format(Locale.ROOT, "Awake clock gravity first x=%.1f y=%.1f z=%.1f requested=%d", Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.J), Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.K), Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.L), Integer.valueOf(dev.duo.hookprobe.TentClockActivity.this.getRequestedOrientation())));
                }
                dev.duo.hookprobe.TentClockActivity.this.M = true;
                if (Math.abs(dev.duo.hookprobe.TentClockActivity.this.J) < dev.duo.hookprobe.TentClockActivity.i) {
                    return;
                }
                int i = dev.duo.hookprobe.TentClockActivity.this.J > 0.0f ? 8 : 0;
                if (i == dev.duo.hookprobe.TentClockActivity.this.H) {
                    return;
                }
                dev.duo.hookprobe.TentClockActivity.this.j.removeCallbacks(dev.duo.hookprobe.TentClockActivity.this.I);
                dev.duo.hookprobe.TentClockActivity.this.H = i;
                Log.i("DuoStandby", String.format(Locale.ROOT, "Awake clock gravity x=%.1f y=%.1f z=%.1f -> %s (requested %d)", Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.J), Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.K), Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.L), i == 0 ? "LANDSCAPE" : "REVERSE_LANDSCAPE", Integer.valueOf(dev.duo.hookprobe.TentClockActivity.this.getRequestedOrientation())));
                if (i != dev.duo.hookprobe.TentClockActivity.this.getRequestedOrientation()) {
                    dev.duo.hookprobe.TentClockActivity.this.j.postDelayed(dev.duo.hookprobe.TentClockActivity.this.I, 400L);
                }
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dev.duo.hookprobe.TentClockActivity.this.h();
        }
    }

    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                dev.duo.hookprobe.TentClockActivity.this.a(intent.getAction());
                return;
            }
            if (dev.duo.hookprobe.TentClockActivity.this.n != null) {
                dev.duo.hookprobe.TentClockActivity.this.n.g = Long.MIN_VALUE;
            }
            dev.duo.hookprobe.TentClockActivity.this.h();
        }
    }

    class d implements DisplayManager.DisplayListener {
        d() {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
            dev.duo.hookprobe.TentClockActivity.this.a();
            dev.duo.hookprobe.TentClockActivity.this.h();
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            dev.duo.hookprobe.TentClockActivity.this.a();
            dev.duo.hookprobe.TentClockActivity.this.h();
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            dev.duo.hookprobe.TentClockActivity.this.a();
            dev.duo.hookprobe.TentClockActivity.this.h();
        }
    }

    class e extends ResultReceiver {
        e(Handler handler) {
            super(handler);
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            if (i == 3) {
                dev.duo.hookprobe.TentClockActivity.this.a("host_stop");
                return;
            }
            if (i != 4 || dev.duo.hookprobe.TentClockActivity.this.r || dev.duo.hookprobe.TentClockActivity.this.p) {
                return;
            }
            if (!dev.duo.hookprobe.TentClockActivity.this.f()) {
                dev.duo.hookprobe.TentClockActivity.this.a("invalid_show");
                return;
            }
            dev.duo.hookprobe.TentClockActivity.this.p = true;
            dev.duo.hookprobe.TentClockActivity.this.n.setVisibility(0);
            dev.duo.hookprobe.TentClockActivity.this.h();
        }
    }

    private static final class f extends View {
        private final Bitmap a;
        private final Paint b;
        private final RectF c;
        private final ColorMatrixColorFilter d;
        private final long e;
        private int f;
        private long g;
        private String h;
        private String i;
        private String j;
        private int k;

        /* JADX WARN: Removed duplicated region for block: B:8:0x0067  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        f(Context context) {
            super(context);
            Bitmap bitmap;
            this.b = new Paint(3);
            this.c = new RectF(0.0f, 0.0f, 678.0f, 466.0f);
            this.d = new ColorMatrixColorFilter(new float[]{0.65f, 0.0f, 0.0f, 0.0f, -5.2f, 0.0f, 0.65f, 0.0f, 0.0f, -5.2f, 0.0f, 0.0f, 0.65f, 0.0f, -5.2f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
            this.e = SystemClock.uptimeMillis();
            this.g = Long.MIN_VALUE;
            this.k = context.getSharedPreferences("tent_clock", 0).getInt("face", 0);
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
                            this.a = bitmap;
                            this.b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
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
            this.a = bitmap;
            this.b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawColor(this.k == 2 ? -16377293 : -16777216);
            canvas.save();
            long uptimeMillis = (((SystemClock.uptimeMillis() - this.e) / 180000) + 4) % 9;
            canvas.translate(((uptimeMillis % 3) - 1) * 2, ((uptimeMillis / 3) - 1) * 2);
            canvas.scale(getWidth() / 678.0f, getHeight() / 466.0f);
            this.b.setColor(-1);
            Calendar calendar = Calendar.getInstance();
            long timeInMillis = calendar.getTimeInMillis() / 60000;
            if (this.g != timeInMillis) {
                this.g = timeInMillis;
                this.h = DateFormat.format(DateFormat.is24HourFormat(getContext()) ? "HH:mm" : "h:mm", calendar).toString();
                int i = this.k;
                if (i == 2 || i == 3) {
                    this.j = DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), "yMMMM"), calendar).toString();
                }
                this.i = DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), "EEEd"), calendar).toString();
            }
            int i2 = this.k;
            if (i2 == 2) {
                a(canvas, calendar, false);
            } else if (i2 == 3) {
                a(canvas, calendar);
            } else {
                if (i2 != 0) {
                    a(canvas, 339.0f, 233.0f, 307.0f, 201.0f, false, false);
                } else if (this.a != null) {
                    this.b.setColorFilter(this.d);
                    canvas.drawBitmap(this.a, (Rect) null, this.c, this.b);
                    this.b.setColorFilter(null);
                }
                this.b.setColor(-4671822);
                this.b.setTextSize(22.0f);
                this.b.setTextAlign(Paint.Align.CENTER);
                canvas.drawText(this.h, 245.0f, 241.0f, this.b);
                canvas.drawText(this.i, 437.0f, 241.0f, this.b);
                a(canvas, calendar, 339, 233, 110.0f, 187.0f, 195.0f, 11.0f, 9.0f, 2.5f, -24822);
            }
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i) {
            this.k = Math.floorMod(this.k + i, 4);
            this.g = Long.MIN_VALUE;
            getContext().getSharedPreferences("tent_clock", 0).edit().putInt("face", this.k).apply();
        }

        private void a(Canvas canvas, float f, float f2, float f3, float f4, boolean z, boolean z2) {
            float min;
            float f5;
            this.b.setStrokeCap(Paint.Cap.ROUND);
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
                this.b.setColor(z3 ? -5856097 : z2 ? -11697995 : -12040120);
                this.b.setStrokeWidth(z ? 5.0f : z3 ? z2 ? 4.0f : 3.7f : z2 ? 2.5f : 2.0f);
                float f6 = min - f5;
                canvas.drawLine(f + (f6 * sin), f2 - (f6 * cos), f + (sin * min), f2 - (min * cos), this.b);
                i++;
            }
        }

        private void a(Canvas canvas, Calendar calendar, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, int i3) {
            int i4 = i;
            int i5 = calendar.get(11);
            a(canvas, ((i5 % 12) + (calendar.get(12) / 60.0f)) * 30.0f, i4, i2, f, i4 == 339 ? 13.0f : 0.0f, f4, -2236963);
            a(canvas, r10 * 6, i4, i2, f2, i4 == 339 ? 14.0f : 0.0f, f5, -2236963);
            float f7 = 6.0f;
            if (this.f != 0) {
                float f8 = calendar.get(13);
                if (this.f == 2) {
                    f8 += calendar.get(14) / 1000.0f;
                }
                a(canvas, f8 * 6.0f, i4, i2, f3, i4 != 339 ? 10.0f : 30.0f, f6, i3);
                i4 = i4;
            }
            this.b.setColor(i3);
            float f9 = i4;
            float f10 = i2;
            if (i4 == 129) {
                f7 = 5.0f;
            } else if (i4 == 445) {
                f7 = 9.0f;
            }
            canvas.drawCircle(f9, f10, f7, this.b);
            this.b.setColor(i4 == 339 ? -1 : -16777216);
            canvas.drawCircle(f9, f10, i4 == 129 ? 2.0f : i4 == 445 ? 3.5f : 2.4f, this.b);
        }

        private void a(Canvas canvas, Calendar calendar, boolean z) {
            String[] strArr;
            boolean equals = Locale.getDefault().getLanguage().equals("zh");
            int i = z ? -4730911 : -16745729;
            int i2 = 2;
            if (!z) {
                this.b.setTypeface(Typeface.create("serif", 2));
                this.b.setTextSize(300.0f);
                this.b.setTextAlign(Paint.Align.CENTER);
                this.b.setColor(1895777594);
                canvas.drawText(Integer.toString(calendar.get(5)), 349.0f, 405.0f, this.b);
            }
            this.b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            this.b.setTextAlign(Paint.Align.LEFT);
            this.b.setTextSize(z ? 15.0f : 25.0f);
            this.b.setColor(z ? -2697546 : -3195853);
            canvas.drawText(this.j, z ? 47.0f : 43.0f, z ? 268.0f : 60.0f, this.b);
            if (!z) {
                this.b.setTextAlign(Paint.Align.RIGHT);
                canvas.drawText(this.h, 635.0f, 60.0f, this.b);
            }
            this.b.setTextAlign(Paint.Align.CENTER);
            this.b.setTextSize(z ? 13.0f : 25.0f);
            this.b.setColor(i);
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
                canvas.drawText(strArr[i3], (z ? 51 : 66) + (i3 * (z ? 25.5f : 88.0f)), z ? 292.0f : 106.0f, this.b);
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
                        this.b.setColor(z ? -2697546 : i);
                        canvas.drawCircle(f, f2 - (z ? 4 : 9), z ? 12.0f : 25.0f, this.b);
                    }
                    this.b.setColor(z3 ? z ? -16250872 : -16377293 : z2 ? i : 1291877119);
                    canvas.drawText(Integer.toString(calendar2.get(5)), f, f2, this.b);
                }
                i4++;
                calendar2.add(5, 1);
                i2 = 2;
            }
        }

        private void a(Canvas canvas, Calendar calendar) {
            a(canvas, 129.0f, 126.0f, 76.0f, 76.0f, true, true);
            a(canvas, 445.0f, 226.0f, 181.0f, 175.0f, false, true);
            this.b.setTypeface(Typeface.create("sans-serif-rounded", 1));
            this.b.setTextSize(48.0f);
            this.b.setTextAlign(Paint.Align.CENTER);
            this.b.setColor(-4671304);
            int[] iArr = {12, 3, 6, 9};
            for (int i = 0; i < 4; i++) {
                int i2 = iArr[i];
                double d = (i2 * 3.141592653589793d) / 6.0d;
                canvas.drawText(Integer.toString(i2), (((float) Math.sin(d)) * 116.0f) + 445.0f, (226.0f - (((float) Math.cos(d)) * 116.0f)) + 17.0f, this.b);
            }
            this.b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            a(canvas, calendar, 129, 126, 43.0f, 77.0f, 78.0f, 6.0f, 5.0f, 1.6f, -2697546);
            a(canvas, calendar, 445, 226, 107.0f, 178.0f, 178.0f, 12.0f, 10.0f, 2.2f, -2697546);
            a(canvas, calendar, true);
        }

        private void a(Canvas canvas, float f, int i, int i2, float f2, float f3, float f4, int i3) {
            canvas.save();
            float f5 = i;
            float f6 = i2;
            canvas.rotate(f, f5, f6);
            this.b.setColor(i3);
            this.b.setStrokeWidth(f4);
            this.b.setStrokeCap(Paint.Cap.ROUND);
            canvas.drawLine(f5, f6 + f3, f5, f6 - f2, this.b);
            canvas.restore();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = this.q && this.o && this.p && !this.r && hasWindowFocus() && ((PowerManager) getSystemService(PowerManager.class)).isInteractive();
        if (z) {
            boolean z2 = this.u;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.v = true;
                this.w = motionEvent.getX();
                this.x = motionEvent.getY();
                this.y = getDisplay().getRotation();
            } else if (actionMasked == 5 || actionMasked == 3) {
                this.v = false;
            } else if (actionMasked == 1) {
                float x = motionEvent.getX() - this.w;
                float y = motionEvent.getY() - this.x;
                if (this.v && this.y == getDisplay().getRotation() && Math.abs(x) >= getResources().getDisplayMetrics().density * 64.0f && Math.abs(x) > Math.abs(y) * 1.5f) {
                    this.n.a(x < 0.0f ? 1 : -1);
                }
                this.v = false;
            }
            if (actionMasked == 0 || actionMasked == 5 || actionMasked == 2) {
                this.u = true;
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.u = false;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            this.A = uptimeMillis;
            this.z = uptimeMillis;
            if (actionMasked != 2 || !z2) {
                h();
            }
        }
        return z || super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.m = (ResultReceiver) getIntent().getParcelableExtra(a, ResultReceiver.class);
        IBinder binder = getIntent().getExtras() == null ? null : getIntent().getExtras().getBinder(c);
        this.l = binder;
        if (bundle != null || this.m == null || binder == null || !f()) {
            a("invalid_start");
            return;
        }
        try {
            this.l.linkToDeath(this.O, 0);
            this.t = true;
            requestWindowFeature(1);
            getWindow().setDecorFitsSystemWindows(false);
            getWindow().getDecorView().setForceDarkAllowed(false);
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.screenBrightness = 0.08f;
            attributes.layoutInDisplayCutoutMode = 3;
            getWindow().setAttributes(attributes);
            this.A = SystemClock.uptimeMillis();
            if (Build.VERSION.SDK_INT >= 36) {
                getWindow().setFrameRateBoostOnTouchEnabled(false);
            }
            f fVar = new f(this);
            this.n = fVar;
            fVar.setVisibility(4);
            setContentView(this.n);
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda0
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() {
                    dev.duo.hookprobe.TentClockActivity.this.e();
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
            registerReceiver(this.Q, intentFilter, 4);
            ((DisplayManager) getSystemService(DisplayManager.class)).registerDisplayListener(this.R, this.j);
            this.s = true;
            e eVar = new e(this.j);
            Bundle bundle2 = new Bundle();
            bundle2.putBinder(c, this.k);
            Parcel obtain = Parcel.obtain();
            try {
                eVar.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                bundle2.putParcelable(b, (Parcelable) ResultReceiver.CREATOR.createFromParcel(obtain));
                obtain.recycle();
                this.m.send(1, bundle2);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        } catch (RemoteException e2) {
            this.l = null;
            a("host_already_dead");
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.s) {
            unregisterReceiver(this.Q);
            ((DisplayManager) getSystemService(DisplayManager.class)).unregisterDisplayListener(this.R);
        }
        if (this.t) {
            this.l.unlinkToDeath(this.O, 0);
        }
        a("destroy");
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.o = false;
        h();
        if (this.q) {
            a("pause");
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.o = true;
        a();
        h();
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.o = false;
        h();
        if (this.q) {
            a("stop");
        }
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.q && !z) {
            a("focus_lost");
        }
        h();
    }

    static /* synthetic */ float c(TentClockActivity tentClockActivity, float f2) {
        float f3 = tentClockActivity.L + f2;
        tentClockActivity.L = f3;
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.j.post(new Runnable() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.TentClockActivity.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        a("back");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        Display display = getDisplay();
        Display.Mode mode = display == null ? null : display.getMode();
        if (mode != null && display.getDisplayId() == 0 && E.a(mode.getPhysicalWidth(), mode.getPhysicalHeight())) {
            return ((KeyguardManager) getSystemService(KeyguardManager.class)).isKeyguardLocked();
        }
        if (this.E) {
            return false;
        }
        this.E = true;
        Log.w("DuoStandby", "Awake clock panel mismatch display=" + (display == null ? "null" : Integer.valueOf(display.getDisplayId())) + " size=" + (mode != null ? mode.getPhysicalWidth() + "x" + mode.getPhysicalHeight() : "null"));
        return false;
    }

    private boolean g() {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = this.F;
        if (j == Long.MIN_VALUE || uptimeMillis - j >= 1000) {
            this.G = f();
            this.F = uptimeMillis;
        }
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        long floorMod;
        this.j.removeCallbacks(this.P);
        if (this.n == null) {
            return;
        }
        if (!this.r && !g()) {
            a("screen_or_unlock");
            return;
        }
        boolean z = this.o && this.p && !this.r && hasWindowFocus() && ((PowerManager) getSystemService(PowerManager.class)).isInteractive();
        this.n.setKeepScreenOn(z);
        a(z);
        if (this.r) {
            z = false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        boolean z2 = this.u;
        long j = z2 ? 0L : uptimeMillis - this.A;
        long j2 = this.z;
        long j3 = j2 < 0 ? Long.MAX_VALUE : uptimeMillis - j2;
        int i2 = this.n.k != 2 ? (!z || (!z2 && j3 >= 3000)) ? (!z || j3 >= 25000) ? 0 : 1 : 2 : 0;
        this.n.f = i2;
        if (Build.VERSION.SDK_INT >= 36) {
            float f2 = !z ? Float.NaN : i2 == 2 ? 60.0f : i2 == 1 ? 1.0f : 0.016666668f;
            if (this.n.getRequestedFrameRate() != f2) {
                this.n.setRequestedFrameRate(f2);
            }
        }
        if (z) {
            float f3 = j > 300000 ? j >= 900000 ? 0.03f : 0.08f - (((j - 300000) * 0.05f) / 600000.0f) : 0.08f;
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            if (attributes.screenBrightness != f3) {
                attributes.screenBrightness = f3;
                getWindow().setAttributes(attributes);
            }
            if (!this.q) {
                this.q = true;
                this.m.send(5, null);
            }
            this.n.invalidate();
            long currentTimeMillis = System.currentTimeMillis();
            if (i2 == 2) {
                floorMod = ((((((uptimeMillis * 60) / 1000) + 1) * 1000) + 59) / 60) - uptimeMillis;
            } else {
                floorMod = i2 == 1 ? 1000 - Math.floorMod(currentTimeMillis, 1000) : 60000 - Math.floorMod(currentTimeMillis, 60000);
            }
            if (!this.u && i2 != 0) {
                floorMod = Math.min(floorMod, (i2 == 2 ? 3000 : 25000) - j3);
            }
            this.j.postDelayed(this.P, floorMod);
        }
    }

    static /* synthetic */ float a(TentClockActivity tentClockActivity, float f2) {
        float f3 = tentClockActivity.J + f2;
        tentClockActivity.J = f3;
        return f3;
    }

    static /* synthetic */ float b(TentClockActivity tentClockActivity, float f2) {
        float f3 = tentClockActivity.K + f2;
        tentClockActivity.K = f3;
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        a("host_died");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        int i2;
        if (this.C && this.o && this.p && !this.r && hasWindowFocus() && ((PowerManager) getSystemService(PowerManager.class)).isInteractive() && f() && (i2 = this.H) != -1) {
            setRequestedOrientation(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.F = Long.MIN_VALUE;
    }

    private void a(boolean z) {
        if (!z || this.C) {
            if (z) {
                return;
            }
            if (this.C) {
                this.C = false;
                this.B.unregisterListener(this.N);
            }
            this.j.removeCallbacks(this.I);
            this.H = -1;
            this.M = false;
            return;
        }
        if (this.D) {
            return;
        }
        SensorManager sensorManager = (SensorManager) getSystemService(SensorManager.class);
        this.B = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(1, false);
        if (defaultSensor != null && this.B.registerListener(this.N, defaultSensor, 3, this.j)) {
            this.C = true;
        } else {
            this.D = true;
            Log.w("DuoStandby", "Awake clock rotation sensor unavailable, fixed orientation kept");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.r) {
            return;
        }
        this.r = true;
        this.o = false;
        this.v = false;
        this.u = false;
        h();
        f fVar = this.n;
        if (fVar != null) {
            fVar.setKeepScreenOn(false);
            this.n.setVisibility(4);
        }
        Log.i("DuoStandby", "Awake clock exit=" + str + " displayed=" + this.q);
        ResultReceiver resultReceiver = this.m;
        if (resultReceiver != null) {
            resultReceiver.send(2, null);
        }
        finishAndRemoveTask();
    }
}
