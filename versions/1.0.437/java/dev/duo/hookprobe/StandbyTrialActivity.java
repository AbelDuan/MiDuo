package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class StandbyTrialActivity extends android.app.Activity {
    private dev.duo.hookprobe.StandbyTrialActivity.c b;
    private boolean c;
    private final android.os.Handler a = new android.os.Handler(android.os.Looper.getMainLooper());
    private final java.lang.Runnable d = new dev.duo.hookprobe.StandbyTrialActivity.a();
    private final android.content.BroadcastReceiver e = new dev.duo.hookprobe.StandbyTrialActivity.b();

    class a implements java.lang.Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (dev.duo.hookprobe.StandbyTrialActivity.this.c && dev.duo.hookprobe.StandbyTrialActivity.this.hasWindowFocus() && ((android.os.PowerManager) dev.duo.hookprobe.StandbyTrialActivity.this.getSystemService(android.os.PowerManager.class)).isInteractive()) {
                dev.duo.hookprobe.StandbyTrialActivity.this.b.invalidate();
                dev.duo.hookprobe.StandbyTrialActivity.this.a.postDelayed(this, 1000 - (java.lang.System.currentTimeMillis() % 1000));
            }
        }
    }

    class b extends android.content.BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            dev.duo.hookprobe.StandbyTrialActivity.this.a();
        }
    }

    private static final class c extends android.view.View {
        private final android.graphics.Bitmap a;
        private final android.graphics.Paint b;
        private final android.graphics.RectF c;

        /* JADX WARN: Removed duplicated region for block: B:8:0x0040  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        c(android.content.Context r5) {
            /*
                r4 = this;
                r4.<init>(r5)
                android.graphics.Paint r0 = new android.graphics.Paint
                r1 = 3
                r0.<init>(r1)
                r4.b = r0
                android.graphics.RectF r0 = new android.graphics.RectF
                r1 = 1143570432(0x44298000, float:678.0)
                r2 = 1139343360(0x43e90000, float:466.0)
                r3 = 0
                r0.<init>(r3, r3, r1, r2)
                r4.c = r0
                r0 = 0
                android.content.res.AssetManager r5 = r5.getAssets()     // Catch: java.io.IOException -> L3b
                java.lang.String r1 = "analog-cardinal-dark-dial.png"
                java.io.InputStream r5 = r5.open(r1)     // Catch: java.io.IOException -> L3b
                android.graphics.Bitmap r1 = android.graphics.BitmapFactory.decodeStream(r5)     // Catch: java.lang.Throwable -> L2f
                if (r5 == 0) goto L3e
                r5.close()     // Catch: java.io.IOException -> L2d
                goto L3e
            L2d:
                r5 = move-exception
                goto L3d
            L2f:
                r1 = move-exception
                if (r5 == 0) goto L3a
                r5.close()     // Catch: java.lang.Throwable -> L36
                goto L3a
            L36:
                r5 = move-exception
                r1.addSuppressed(r5)     // Catch: java.io.IOException -> L3b
            L3a:
                throw r1     // Catch: java.io.IOException -> L3b
            L3b:
                r5 = move-exception
                r1 = r0
            L3d:
                r0 = r5
            L3e:
                if (r1 != 0) goto L47
                java.lang.String r5 = "DuoStandby"
                java.lang.String r2 = "Trial clock dial unavailable, drawing without it"
                android.util.Log.w(r5, r2, r0)
            L47:
                r4.a = r1
                android.graphics.Paint r5 = r4.b
                android.graphics.Typeface r0 = android.graphics.Typeface.DEFAULT
                r1 = 500(0x1f4, float:7.0E-43)
                r2 = 0
                android.graphics.Typeface r0 = android.graphics.Typeface.create(r0, r1, r2)
                r5.setTypeface(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.StandbyTrialActivity.c.<init>(android.content.Context):void");
        }

        private void a(android.graphics.Canvas canvas, float f, float f2, float f3, float f4, int i) {
            canvas.save();
            canvas.rotate(f, 339.0f, 233.0f);
            this.b.setColor(i);
            this.b.setStrokeWidth(f4);
            this.b.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            canvas.drawLine(339.0f, f3 + 233.0f, 339.0f, 233.0f - f2, this.b);
            canvas.restore();
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            canvas.drawColor(-16250872);
            float min = java.lang.Math.min(getWidth() / 678.0f, getHeight() / 466.0f);
            canvas.save();
            canvas.translate((getWidth() - (678.0f * min)) / 2.0f, (getHeight() - (466.0f * min)) / 2.0f);
            canvas.scale(min, min);
            android.graphics.Bitmap bitmap = this.a;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, (android.graphics.Rect) null, this.c, this.b);
            }
            java.util.Calendar calendar = java.util.Calendar.getInstance();
            int i = calendar.get(11);
            int i2 = calendar.get(12);
            int i3 = calendar.get(13);
            this.b.setColor(-790293);
            this.b.setTextSize(22.0f);
            this.b.setTextAlign(android.graphics.Paint.Align.CENTER);
            canvas.drawText(android.text.format.DateFormat.format(android.text.format.DateFormat.is24HourFormat(getContext()) ? "HH:mm:ss" : "h:mm:ss", calendar).toString(), 245.0f, 241.0f, this.b);
            canvas.drawText(android.text.format.DateFormat.format(android.text.format.DateFormat.getBestDateTimePattern(java.util.Locale.getDefault(), "EEEd"), calendar).toString(), 437.0f, 241.0f, this.b);
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
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setDecorFitsSystemWindows(false);
        getWindow().getDecorView().setForceDarkAllowed(false);
        dev.duo.hookprobe.StandbyTrialActivity.c cVar = new dev.duo.hookprobe.StandbyTrialActivity.c(this);
        this.b = cVar;
        setContentView(cVar);
        android.view.WindowInsetsController insetsController = getWindow().getInsetsController();
        insetsController.setSystemBarsBehavior(2);
        insetsController.hide(android.view.WindowInsets.Type.systemBars());
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
        android.content.IntentFilter intentFilter = new android.content.IntentFilter("android.intent.action.SCREEN_OFF");
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
        if (this.c && hasWindowFocus() && ((android.os.PowerManager) getSystemService(android.os.PowerManager.class)).isInteractive()) {
            this.a.post(this.d);
        }
    }
}
