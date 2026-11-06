package dev.duo.hookprobe;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public final class StandbyTrialActivity extends Activity {

    /* renamed from: b */
    private C0086c f1308b;

    /* renamed from: c */
    private boolean f1309c;

    /* renamed from: a */
    private final Handler f1307a = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    private final Runnable f1310d = new RunnableC0084a();

    /* renamed from: e */
    private final BroadcastReceiver f1311e = new C0085b();

    /* renamed from: dev.duo.hookprobe.StandbyTrialActivity$a */
    class RunnableC0084a implements Runnable {
        RunnableC0084a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (StandbyTrialActivity.this.f1309c && StandbyTrialActivity.this.hasWindowFocus() && ((PowerManager) StandbyTrialActivity.this.getSystemService(PowerManager.class)).isInteractive()) {
                StandbyTrialActivity.this.f1308b.invalidate();
                StandbyTrialActivity.this.f1307a.postDelayed(this, 1000 - (System.currentTimeMillis() % 1000));
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.StandbyTrialActivity$b */
    class C0085b extends BroadcastReceiver {
        C0085b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StandbyTrialActivity.this.m1393a();
        }
    }

    /* renamed from: dev.duo.hookprobe.StandbyTrialActivity$c */
    private static final class C0086c extends View {

        /* renamed from: a */
        private final Bitmap f1314a;

        /* renamed from: b */
        private final Paint f1315b;

        /* renamed from: c */
        private final RectF f1316c;

        /*
        */
        C0086c(Context context) {
            super(context);
        Bitmap bitmap = null;
        IOException failure = null;
        this.f1315b = new Paint(3);
        this.f1316c = new RectF(0.0f, 0.0f, 678.0f, 466.0f);
        try (InputStream in = context.getAssets().open("analog-cardinal-dark-dial.png")) {
            bitmap = BitmapFactory.decodeStream(in);
        } catch (IOException e) {
            failure = e;
        }
        if (bitmap == null) {
            Log.w("DuoStandby", "Trial clock dial unavailable, drawing without it", failure);
        }
        this.f1314a = bitmap;
        this.f1315b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
        }

        /* renamed from: a */
        private void m1398a(Canvas canvas, float f, float f2, float f3, float f4, int i) {
            canvas.save();
            canvas.rotate(f, 339.0f, 233.0f);
            this.f1315b.setColor(i);
            this.f1315b.setStrokeWidth(f4);
            this.f1315b.setStrokeCap(Paint.Cap.ROUND);
            canvas.drawLine(339.0f, f3 + 233.0f, 339.0f, 233.0f - f2, this.f1315b);
            canvas.restore();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawColor(-16250872);
            float min = Math.min(getWidth() / 678.0f, getHeight() / 466.0f);
            canvas.save();
            canvas.translate((getWidth() - (678.0f * min)) / 2.0f, (getHeight() - (466.0f * min)) / 2.0f);
            canvas.scale(min, min);
            Bitmap bitmap = this.f1314a;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, (Rect) null, this.f1316c, this.f1315b);
            }
            Calendar calendar = Calendar.getInstance();
            int i = calendar.get(11);
            int i2 = calendar.get(12);
            int i3 = calendar.get(13);
            this.f1315b.setColor(-790293);
            this.f1315b.setTextSize(22.0f);
            this.f1315b.setTextAlign(Paint.Align.CENTER);
            canvas.drawText(DateFormat.format(DateFormat.is24HourFormat(getContext()) ? "HH:mm:ss" : "h:mm:ss", calendar).toString(), 245.0f, 241.0f, this.f1315b);
            canvas.drawText(DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), "EEEd"), calendar).toString(), 437.0f, 241.0f, this.f1315b);
            float f = i2;
            float f2 = i3;
            m1398a(canvas, ((i % 12) + (f / 60.0f) + (f2 / 3600.0f)) * 30.0f, 110.0f, 13.0f, 11.0f, -1);
            m1398a(canvas, (f + (f2 / 60.0f)) * 6.0f, 187.0f, 14.0f, 9.0f, -1);
            m1398a(canvas, i3 * 6, 187.0f, 22.0f, 2.5f, -24822);
            this.f1315b.setColor(-24822);
            canvas.drawCircle(339.0f, 233.0f, 6.0f, this.f1315b);
            this.f1315b.setColor(-1);
            canvas.drawCircle(339.0f, 233.0f, 2.4f, this.f1315b);
            canvas.restore();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setDecorFitsSystemWindows(false);
        getWindow().getDecorView().setForceDarkAllowed(false);
        C0086c c0086c = new C0086c(this);
        this.f1308b = c0086c;
        setContentView(c0086c);
        WindowInsetsController insetsController = getWindow().getInsetsController();
        insetsController.setSystemBarsBehavior(2);
        insetsController.hide(WindowInsets.Type.systemBars());
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.f1309c = false;
        this.f1307a.removeCallbacks(this.f1310d);
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f1309c = true;
        m1393a();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.f1311e, intentFilter, 4);
    }

    @Override // android.app.Activity
    protected void onStop() {
        unregisterReceiver(this.f1311e);
        this.f1307a.removeCallbacks(this.f1310d);
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m1393a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1393a() {
        this.f1307a.removeCallbacks(this.f1310d);
        if (this.f1309c && hasWindowFocus() && ((PowerManager) getSystemService(PowerManager.class)).isInteractive()) {
            this.f1307a.post(this.f1310d);
        }
    }
}
