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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class StandbyTrialActivity extends Activity {
    private c b;
    private boolean c;
    private final Handler a = new Handler(Looper.getMainLooper());
    private final Runnable d = new a();
    private final BroadcastReceiver e = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (dev.duo.hookprobe.StandbyTrialActivity.this.c && dev.duo.hookprobe.StandbyTrialActivity.this.hasWindowFocus() && ((PowerManager) dev.duo.hookprobe.StandbyTrialActivity.this.getSystemService(PowerManager.class)).isInteractive()) {
                dev.duo.hookprobe.StandbyTrialActivity.this.b.invalidate();
                dev.duo.hookprobe.StandbyTrialActivity.this.a.postDelayed(this, 1000 - (System.currentTimeMillis() % 1000));
            }
        }
    }

    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            dev.duo.hookprobe.StandbyTrialActivity.this.a();
        }
    }

    private static final class c extends View {
        private final Bitmap a;
        private final Paint b;
        private final RectF c;

        /* JADX WARN: Removed duplicated region for block: B:8:0x0040  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        c(Context context) {
            super(context);
            Bitmap bitmap;
            this.b = new Paint(3);
            this.c = new RectF(0.0f, 0.0f, 678.0f, 466.0f);
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
                iOException = e;
                if (bitmap == null) {
                }
                this.a = bitmap;
                this.b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
            }
            if (bitmap == null) {
                Log.w("DuoStandby", "Trial clock dial unavailable, drawing without it", iOException);
            }
            this.a = bitmap;
            this.b.setTypeface(Typeface.create(Typeface.DEFAULT, 500, false));
        }

        private void a(Canvas canvas, float f, float f2, float f3, float f4, int i) {
            canvas.save();
            canvas.rotate(f, 339.0f, 233.0f);
            this.b.setColor(i);
            this.b.setStrokeWidth(f4);
            this.b.setStrokeCap(Paint.Cap.ROUND);
            canvas.drawLine(339.0f, f3 + 233.0f, 339.0f, 233.0f - f2, this.b);
            canvas.restore();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawColor(-16250872);
            float min = Math.min(getWidth() / 678.0f, getHeight() / 466.0f);
            canvas.save();
            canvas.translate((getWidth() - (678.0f * min)) / 2.0f, (getHeight() - (466.0f * min)) / 2.0f);
            canvas.scale(min, min);
            Bitmap bitmap = this.a;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, (Rect) null, this.c, this.b);
            }
            Calendar calendar = Calendar.getInstance();
            int i = calendar.get(11);
            int i2 = calendar.get(12);
            int i3 = calendar.get(13);
            this.b.setColor(-790293);
            this.b.setTextSize(22.0f);
            this.b.setTextAlign(Paint.Align.CENTER);
            canvas.drawText(DateFormat.format(DateFormat.is24HourFormat(getContext()) ? "HH:mm:ss" : "h:mm:ss", calendar).toString(), 245.0f, 241.0f, this.b);
            canvas.drawText(DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), "EEEd"), calendar).toString(), 437.0f, 241.0f, this.b);
            float f = i2;
            float f2 = i3;
            a(canvas, ((i % 12) + (f / 60.0f) + (f2 / 3600.0f)) * 30.0f, 110.0f, 13.0f, 11.0f, -1);
            a(canvas, (f + (f2 / 60.0f)) * 6.0f, 187.0f, 14.0f, 9.0f, -1);
            a(canvas, i3 * 6, 187.0f, 22.0f, 2.5f, -24822);
            this.b.setColor(-24822);
            canvas.drawCircle(339.0f, 233.0f, 6.0f, this.b);
            this.b.setColor(-1);
            canvas.drawCircle(339.0f, 233.0f, 2.4f, this.b);
            canvas.restore();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setDecorFitsSystemWindows(false);
        getWindow().getDecorView().setForceDarkAllowed(false);
        c cVar = new c(this);
        this.b = cVar;
        setContentView(cVar);
        WindowInsetsController insetsController = getWindow().getInsetsController();
        insetsController.setSystemBarsBehavior(2);
        insetsController.hide(WindowInsets.Type.systemBars());
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.c = false;
        this.a.removeCallbacks(this.d);
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.c = true;
        a();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.e, intentFilter, 4);
    }

    @Override // android.app.Activity
    protected void onStop() {
        unregisterReceiver(this.e);
        this.a.removeCallbacks(this.d);
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.a.removeCallbacks(this.d);
        if (this.c && hasWindowFocus() && ((PowerManager) getSystemService(PowerManager.class)).isInteractive()) {
            this.a.post(this.d);
        }
    }
}
