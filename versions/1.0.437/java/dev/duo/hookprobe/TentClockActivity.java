package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class TentClockActivity extends android.app.Activity {
    public static final java.lang.String a = "dev.duo.hookprobe.awake.HOST";
    public static final java.lang.String b = "dev.duo.hookprobe.awake.STOP";
    public static final java.lang.String c = "dev.duo.hookprobe.awake.LIFE";
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 4;
    public static final int h = 5;
    private static final float i = 3.0f;
    private long A;
    private android.hardware.SensorManager B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean G;
    private float J;
    private float K;
    private float L;
    private boolean M;
    private android.os.IBinder l;
    private android.os.ResultReceiver m;
    private dev.duo.hookprobe.TentClockActivity.f n;
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
    private final android.os.Handler j = new android.os.Handler(android.os.Looper.getMainLooper());
    private final android.os.IBinder k = new android.os.Binder();
    private long z = -1;
    private long F = Long.MIN_VALUE;
    private int H = -1;
    private final java.lang.Runnable I = new java.lang.Runnable() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            dev.duo.hookprobe.TentClockActivity.this.b();
        }
    };
    private final android.hardware.SensorEventListener N = new dev.duo.hookprobe.TentClockActivity.a();
    private final android.os.IBinder.DeathRecipient O = new android.os.IBinder.DeathRecipient() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda2
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            dev.duo.hookprobe.TentClockActivity.this.d();
        }
    };
    private final java.lang.Runnable P = new dev.duo.hookprobe.TentClockActivity.b();
    private final android.content.BroadcastReceiver Q = new dev.duo.hookprobe.TentClockActivity.c();
    private final android.hardware.display.DisplayManager.DisplayListener R = new dev.duo.hookprobe.TentClockActivity.d();

    class a implements android.hardware.SensorEventListener {
        a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(android.hardware.SensorEvent sensorEvent) {
            if (dev.duo.hookprobe.TentClockActivity.this.C) {
                float f = dev.duo.hookprobe.TentClockActivity.this.M ? 0.3f : 1.0f;
                dev.duo.hookprobe.TentClockActivity tentClockActivity = dev.duo.hookprobe.TentClockActivity.this;
                dev.duo.hookprobe.TentClockActivity.a(tentClockActivity, (sensorEvent.values[0] - tentClockActivity.J) * f);
                dev.duo.hookprobe.TentClockActivity tentClockActivity2 = dev.duo.hookprobe.TentClockActivity.this;
                dev.duo.hookprobe.TentClockActivity.b(tentClockActivity2, (sensorEvent.values[1] - tentClockActivity2.K) * f);
                dev.duo.hookprobe.TentClockActivity tentClockActivity3 = dev.duo.hookprobe.TentClockActivity.this;
                dev.duo.hookprobe.TentClockActivity.c(tentClockActivity3, f * (sensorEvent.values[2] - tentClockActivity3.L));
                if (!dev.duo.hookprobe.TentClockActivity.this.M) {
                    android.util.Log.i("DuoStandby", java.lang.String.format(java.util.Locale.ROOT, "Awake clock gravity first x=%.1f y=%.1f z=%.1f requested=%d", java.lang.Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.J), java.lang.Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.K), java.lang.Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.L), java.lang.Integer.valueOf(dev.duo.hookprobe.TentClockActivity.this.getRequestedOrientation())));
                }
                dev.duo.hookprobe.TentClockActivity.this.M = true;
                if (java.lang.Math.abs(dev.duo.hookprobe.TentClockActivity.this.J) < dev.duo.hookprobe.TentClockActivity.i) {
                    return;
                }
                int i = dev.duo.hookprobe.TentClockActivity.this.J > 0.0f ? 8 : 0;
                if (i == dev.duo.hookprobe.TentClockActivity.this.H) {
                    return;
                }
                dev.duo.hookprobe.TentClockActivity.this.j.removeCallbacks(dev.duo.hookprobe.TentClockActivity.this.I);
                dev.duo.hookprobe.TentClockActivity.this.H = i;
                android.util.Log.i("DuoStandby", java.lang.String.format(java.util.Locale.ROOT, "Awake clock gravity x=%.1f y=%.1f z=%.1f -> %s (requested %d)", java.lang.Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.J), java.lang.Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.K), java.lang.Float.valueOf(dev.duo.hookprobe.TentClockActivity.this.L), i == 0 ? "LANDSCAPE" : "REVERSE_LANDSCAPE", java.lang.Integer.valueOf(dev.duo.hookprobe.TentClockActivity.this.getRequestedOrientation())));
                if (i != dev.duo.hookprobe.TentClockActivity.this.getRequestedOrientation()) {
                    dev.duo.hookprobe.TentClockActivity.this.j.postDelayed(dev.duo.hookprobe.TentClockActivity.this.I, 400L);
                }
            }
        }
    }

    class b implements java.lang.Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dev.duo.hookprobe.TentClockActivity.this.h();
        }
    }

    class c extends android.content.BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
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

    class d implements android.hardware.display.DisplayManager.DisplayListener {
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

    class e extends android.os.ResultReceiver {
        e(android.os.Handler handler) {
            super(handler);
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, android.os.Bundle bundle) {
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

    private static final class f extends android.view.View {
        private final android.graphics.Bitmap a;
        private final android.graphics.Paint b;
        private final android.graphics.RectF c;
        private final android.graphics.ColorMatrixColorFilter d;
        private final long e;
        private int f;
        private long g;
        private java.lang.String h;
        private java.lang.String i;
        private java.lang.String j;
        private int k;

        /* JADX WARN: Removed duplicated region for block: B:8:0x0067  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        f(android.content.Context r5) {
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
                android.graphics.ColorMatrixColorFilter r0 = new android.graphics.ColorMatrixColorFilter
                r1 = 20
                float[] r1 = new float[r1]
                r1 = {x007e: FILL_ARRAY_DATA , data: [1059481190, 0, 0, 0, -1062836634, 0, 1059481190, 0, 0, -1062836634, 0, 0, 1059481190, 0, -1062836634, 0, 0, 0, 1065353216, 0} // fill-array
                r0.<init>(r1)
                r4.d = r0
                long r0 = android.os.SystemClock.uptimeMillis()
                r4.e = r0
                r0 = -9223372036854775808
                r4.g = r0
                java.lang.String r0 = "tent_clock"
                r1 = 0
                android.content.SharedPreferences r0 = r5.getSharedPreferences(r0, r1)
                java.lang.String r2 = "face"
                int r0 = r0.getInt(r2, r1)
                r4.k = r0
                r0 = 0
                android.content.res.AssetManager r5 = r5.getAssets()     // Catch: java.io.IOException -> L62
                java.lang.String r2 = "analog-cardinal-dark-dial.png"
                java.io.InputStream r5 = r5.open(r2)     // Catch: java.io.IOException -> L62
                android.graphics.Bitmap r2 = android.graphics.BitmapFactory.decodeStream(r5)     // Catch: java.lang.Throwable -> L56
                if (r5 == 0) goto L65
                r5.close()     // Catch: java.io.IOException -> L54
                goto L65
            L54:
                r5 = move-exception
                goto L64
            L56:
                r2 = move-exception
                if (r5 == 0) goto L61
                r5.close()     // Catch: java.lang.Throwable -> L5d
                goto L61
            L5d:
                r5 = move-exception
                r2.addSuppressed(r5)     // Catch: java.io.IOException -> L62
            L61:
                throw r2     // Catch: java.io.IOException -> L62
            L62:
                r5 = move-exception
                r2 = r0
            L64:
                r0 = r5
            L65:
                if (r2 != 0) goto L6e
                java.lang.String r5 = "DuoStandby"
                java.lang.String r3 = "Awake clock dial unavailable, drawing without it"
                android.util.Log.w(r5, r3, r0)
            L6e:
                r4.a = r2
                android.graphics.Paint r5 = r4.b
                android.graphics.Typeface r0 = android.graphics.Typeface.DEFAULT
                r2 = 500(0x1f4, float:7.0E-43)
                android.graphics.Typeface r0 = android.graphics.Typeface.create(r0, r2, r1)
                r5.setTypeface(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.TentClockActivity.f.<init>(android.content.Context):void");
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            canvas.drawColor(this.k == 2 ? -16377293 : -16777216);
            canvas.save();
            long uptimeMillis = (((android.os.SystemClock.uptimeMillis() - this.e) / 180000) + 4) % 9;
            canvas.translate(((uptimeMillis % 3) - 1) * 2, ((uptimeMillis / 3) - 1) * 2);
            canvas.scale(getWidth() / 678.0f, getHeight() / 466.0f);
            this.b.setColor(-1);
            java.util.Calendar calendar = java.util.Calendar.getInstance();
            long timeInMillis = calendar.getTimeInMillis() / 60000;
            if (this.g != timeInMillis) {
                this.g = timeInMillis;
                this.h = android.text.format.DateFormat.format(android.text.format.DateFormat.is24HourFormat(getContext()) ? "HH:mm" : "h:mm", calendar).toString();
                int i = this.k;
                if (i == 2 || i == 3) {
                    this.j = android.text.format.DateFormat.format(android.text.format.DateFormat.getBestDateTimePattern(java.util.Locale.getDefault(), "yMMMM"), calendar).toString();
                }
                this.i = android.text.format.DateFormat.format(android.text.format.DateFormat.getBestDateTimePattern(java.util.Locale.getDefault(), "EEEd"), calendar).toString();
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
                    canvas.drawBitmap(this.a, (android.graphics.Rect) null, this.c, this.b);
                    this.b.setColorFilter(null);
                }
                this.b.setColor(-4671822);
                this.b.setTextSize(22.0f);
                this.b.setTextAlign(android.graphics.Paint.Align.CENTER);
                canvas.drawText(this.h, 245.0f, 241.0f, this.b);
                canvas.drawText(this.i, 437.0f, 241.0f, this.b);
                a(canvas, calendar, 339, 233, 110.0f, 187.0f, 195.0f, 11.0f, 9.0f, 2.5f, -24822);
            }
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i) {
            this.k = java.lang.Math.floorMod(this.k + i, 4);
            this.g = Long.MIN_VALUE;
            getContext().getSharedPreferences("tent_clock", 0).edit().putInt("face", this.k).apply();
        }

        private void a(android.graphics.Canvas canvas, float f, float f2, float f3, float f4, boolean z, boolean z2) {
            float min;
            float f5;
            this.b.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            int i = 0;
            while (true) {
                if (i >= (z ? 12 : 60)) {
                    return;
                }
                double d = (i * 3.141592653589793d) / (z ? 6 : 30);
                float sin = (float) java.lang.Math.sin(d);
                float cos = (float) java.lang.Math.cos(d);
                if (z) {
                    min = f3;
                } else {
                    min = java.lang.Math.min(java.lang.Math.abs(sin) < 1.0E-4f ? 10000.0f : f3 / java.lang.Math.abs(sin), java.lang.Math.abs(cos) >= 1.0E-4f ? f4 / java.lang.Math.abs(cos) : 10000.0f);
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

        private void a(android.graphics.Canvas canvas, java.util.Calendar calendar, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, int i3) {
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

        private void a(android.graphics.Canvas canvas, java.util.Calendar calendar, boolean z) {
            java.lang.String[] strArr;
            boolean equals = java.util.Locale.getDefault().getLanguage().equals("zh");
            int i = z ? -4730911 : -16745729;
            int i2 = 2;
            if (!z) {
                this.b.setTypeface(android.graphics.Typeface.create("serif", 2));
                this.b.setTextSize(300.0f);
                this.b.setTextAlign(android.graphics.Paint.Align.CENTER);
                this.b.setColor(1895777594);
                canvas.drawText(java.lang.Integer.toString(calendar.get(5)), 349.0f, 405.0f, this.b);
            }
            this.b.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 500, false));
            this.b.setTextAlign(android.graphics.Paint.Align.LEFT);
            this.b.setTextSize(z ? 15.0f : 25.0f);
            this.b.setColor(z ? -2697546 : -3195853);
            canvas.drawText(this.j, z ? 47.0f : 43.0f, z ? 268.0f : 60.0f, this.b);
            if (!z) {
                this.b.setTextAlign(android.graphics.Paint.Align.RIGHT);
                canvas.drawText(this.h, 635.0f, 60.0f, this.b);
            }
            this.b.setTextAlign(android.graphics.Paint.Align.CENTER);
            this.b.setTextSize(z ? 13.0f : 25.0f);
            this.b.setColor(i);
            if (z) {
                if (equals) {
                    strArr = new java.lang.String[]{"日", "一", "二", "三", "四", "五", "六"};
                } else {
                    strArr = new java.lang.String[]{"S", "M", "T", "W", "T", "F", "S"};
                }
            } else if (equals) {
                strArr = new java.lang.String[]{"一", "二", "三", "四", "五", "六", "日"};
            } else {
                strArr = new java.lang.String[]{"M", "T", "W", "T", "F", "S", "S"};
            }
            for (int i3 = 0; i3 < 7; i3++) {
                canvas.drawText(strArr[i3], (z ? 51 : 66) + (i3 * (z ? 25.5f : 88.0f)), z ? 292.0f : 106.0f, this.b);
            }
            java.util.Calendar calendar2 = (java.util.Calendar) calendar.clone();
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
                    canvas.drawText(java.lang.Integer.toString(calendar2.get(5)), f, f2, this.b);
                }
                i4++;
                calendar2.add(5, 1);
                i2 = 2;
            }
        }

        private void a(android.graphics.Canvas canvas, java.util.Calendar calendar) {
            a(canvas, 129.0f, 126.0f, 76.0f, 76.0f, true, true);
            a(canvas, 445.0f, 226.0f, 181.0f, 175.0f, false, true);
            this.b.setTypeface(android.graphics.Typeface.create("sans-serif-rounded", 1));
            this.b.setTextSize(48.0f);
            this.b.setTextAlign(android.graphics.Paint.Align.CENTER);
            this.b.setColor(-4671304);
            int[] iArr = {12, 3, 6, 9};
            for (int i = 0; i < 4; i++) {
                int i2 = iArr[i];
                double d = (i2 * 3.141592653589793d) / 6.0d;
                canvas.drawText(java.lang.Integer.toString(i2), (((float) java.lang.Math.sin(d)) * 116.0f) + 445.0f, (226.0f - (((float) java.lang.Math.cos(d)) * 116.0f)) + 17.0f, this.b);
            }
            this.b.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 500, false));
            a(canvas, calendar, 129, 126, 43.0f, 77.0f, 78.0f, 6.0f, 5.0f, 1.6f, -2697546);
            a(canvas, calendar, 445, 226, 107.0f, 178.0f, 178.0f, 12.0f, 10.0f, 2.2f, -2697546);
            a(canvas, calendar, true);
        }

        private void a(android.graphics.Canvas canvas, float f, int i, int i2, float f2, float f3, float f4, int i3) {
            canvas.save();
            float f5 = i;
            float f6 = i2;
            canvas.rotate(f, f5, f6);
            this.b.setColor(i3);
            this.b.setStrokeWidth(f4);
            this.b.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            canvas.drawLine(f5, f6 + f3, f5, f6 - f2, this.b);
            canvas.restore();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(android.view.MotionEvent motionEvent) {
        boolean z = this.q && this.o && this.p && !this.r && hasWindowFocus() && ((android.os.PowerManager) getSystemService(android.os.PowerManager.class)).isInteractive();
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
                if (this.v && this.y == getDisplay().getRotation() && java.lang.Math.abs(x) >= getResources().getDisplayMetrics().density * 64.0f && java.lang.Math.abs(x) > java.lang.Math.abs(y) * 1.5f) {
                    this.n.a(x < 0.0f ? 1 : -1);
                }
                this.v = false;
            }
            if (actionMasked == 0 || actionMasked == 5 || actionMasked == 2) {
                this.u = true;
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.u = false;
            }
            long uptimeMillis = android.os.SystemClock.uptimeMillis();
            this.A = uptimeMillis;
            this.z = uptimeMillis;
            if (actionMasked != 2 || !z2) {
                h();
            }
        }
        return z || super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        this.m = (android.os.ResultReceiver) getIntent().getParcelableExtra(a, android.os.ResultReceiver.class);
        android.os.IBinder binder = getIntent().getExtras() == null ? null : getIntent().getExtras().getBinder(c);
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
            android.view.WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.screenBrightness = 0.08f;
            attributes.layoutInDisplayCutoutMode = 3;
            getWindow().setAttributes(attributes);
            this.A = android.os.SystemClock.uptimeMillis();
            if (android.os.Build.VERSION.SDK_INT >= 36) {
                getWindow().setFrameRateBoostOnTouchEnabled(false);
            }
            dev.duo.hookprobe.TentClockActivity.f fVar = new dev.duo.hookprobe.TentClockActivity.f(this);
            this.n = fVar;
            fVar.setVisibility(4);
            setContentView(this.n);
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new android.window.OnBackInvokedCallback() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda0
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() {
                    dev.duo.hookprobe.TentClockActivity.this.e();
                }
            });
            android.view.WindowInsetsController insetsController = getWindow().getInsetsController();
            insetsController.setSystemBarsBehavior(2);
            insetsController.hide(android.view.WindowInsets.Type.systemBars());
            android.content.IntentFilter intentFilter = new android.content.IntentFilter("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            registerReceiver(this.Q, intentFilter, 4);
            ((android.hardware.display.DisplayManager) getSystemService(android.hardware.display.DisplayManager.class)).registerDisplayListener(this.R, this.j);
            this.s = true;
            dev.duo.hookprobe.TentClockActivity.e eVar = new dev.duo.hookprobe.TentClockActivity.e(this.j);
            android.os.Bundle bundle2 = new android.os.Bundle();
            bundle2.putBinder(c, this.k);
            android.os.Parcel obtain = android.os.Parcel.obtain();
            try {
                eVar.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                bundle2.putParcelable(b, (android.os.Parcelable) android.os.ResultReceiver.CREATOR.createFromParcel(obtain));
                obtain.recycle();
                this.m.send(1, bundle2);
            } catch (java.lang.Throwable th) {
                obtain.recycle();
                throw th;
            }
        } catch (android.os.RemoteException e2) {
            this.l = null;
            a("host_already_dead");
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.s) {
            unregisterReceiver(this.Q);
            ((android.hardware.display.DisplayManager) getSystemService(android.hardware.display.DisplayManager.class)).unregisterDisplayListener(this.R);
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

    static /* synthetic */ float c(dev.duo.hookprobe.TentClockActivity tentClockActivity, float f2) {
        float f3 = tentClockActivity.L + f2;
        tentClockActivity.L = f3;
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.j.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.TentClockActivity$$ExternalSyntheticLambda3
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
        android.view.Display display = getDisplay();
        android.view.Display.Mode mode = display == null ? null : display.getMode();
        if (mode != null && display.getDisplayId() == 0 && dev.duo.hookprobe.E.a(mode.getPhysicalWidth(), mode.getPhysicalHeight())) {
            return ((android.app.KeyguardManager) getSystemService(android.app.KeyguardManager.class)).isKeyguardLocked();
        }
        if (this.E) {
            return false;
        }
        this.E = true;
        android.util.Log.w("DuoStandby", "Awake clock panel mismatch display=" + (display == null ? "null" : java.lang.Integer.valueOf(display.getDisplayId())) + " size=" + (mode != null ? mode.getPhysicalWidth() + "x" + mode.getPhysicalHeight() : "null"));
        return false;
    }

    private boolean g() {
        long uptimeMillis = android.os.SystemClock.uptimeMillis();
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
        boolean z = this.o && this.p && !this.r && hasWindowFocus() && ((android.os.PowerManager) getSystemService(android.os.PowerManager.class)).isInteractive();
        this.n.setKeepScreenOn(z);
        a(z);
        if (this.r) {
            z = false;
        }
        long uptimeMillis = android.os.SystemClock.uptimeMillis();
        boolean z2 = this.u;
        long j = z2 ? 0L : uptimeMillis - this.A;
        long j2 = this.z;
        long j3 = j2 < 0 ? Long.MAX_VALUE : uptimeMillis - j2;
        int i2 = this.n.k != 2 ? (!z || (!z2 && j3 >= 3000)) ? (!z || j3 >= 25000) ? 0 : 1 : 2 : 0;
        this.n.f = i2;
        if (android.os.Build.VERSION.SDK_INT >= 36) {
            float f2 = !z ? Float.NaN : i2 == 2 ? 60.0f : i2 == 1 ? 1.0f : 0.016666668f;
            if (this.n.getRequestedFrameRate() != f2) {
                this.n.setRequestedFrameRate(f2);
            }
        }
        if (z) {
            float f3 = j > 300000 ? j >= 900000 ? 0.03f : 0.08f - (((j - 300000) * 0.05f) / 600000.0f) : 0.08f;
            android.view.WindowManager.LayoutParams attributes = getWindow().getAttributes();
            if (attributes.screenBrightness != f3) {
                attributes.screenBrightness = f3;
                getWindow().setAttributes(attributes);
            }
            if (!this.q) {
                this.q = true;
                this.m.send(5, null);
            }
            this.n.invalidate();
            long currentTimeMillis = java.lang.System.currentTimeMillis();
            if (i2 == 2) {
                floorMod = ((((((uptimeMillis * 60) / 1000) + 1) * 1000) + 59) / 60) - uptimeMillis;
            } else {
                floorMod = i2 == 1 ? 1000 - java.lang.Math.floorMod(currentTimeMillis, 1000) : 60000 - java.lang.Math.floorMod(currentTimeMillis, 60000);
            }
            if (!this.u && i2 != 0) {
                floorMod = java.lang.Math.min(floorMod, (i2 == 2 ? 3000 : 25000) - j3);
            }
            this.j.postDelayed(this.P, floorMod);
        }
    }

    static /* synthetic */ float a(dev.duo.hookprobe.TentClockActivity tentClockActivity, float f2) {
        float f3 = tentClockActivity.J + f2;
        tentClockActivity.J = f3;
        return f3;
    }

    static /* synthetic */ float b(dev.duo.hookprobe.TentClockActivity tentClockActivity, float f2) {
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
        if (this.C && this.o && this.p && !this.r && hasWindowFocus() && ((android.os.PowerManager) getSystemService(android.os.PowerManager.class)).isInteractive() && f() && (i2 = this.H) != -1) {
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
        android.hardware.SensorManager sensorManager = (android.hardware.SensorManager) getSystemService(android.hardware.SensorManager.class);
        this.B = sensorManager;
        android.hardware.Sensor defaultSensor = sensorManager.getDefaultSensor(1, false);
        if (defaultSensor != null && this.B.registerListener(this.N, defaultSensor, 3, this.j)) {
            this.C = true;
        } else {
            this.D = true;
            android.util.Log.w("DuoStandby", "Awake clock rotation sensor unavailable, fixed orientation kept");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.lang.String str) {
        if (this.r) {
            return;
        }
        this.r = true;
        this.o = false;
        this.v = false;
        this.u = false;
        h();
        dev.duo.hookprobe.TentClockActivity.f fVar = this.n;
        if (fVar != null) {
            fVar.setKeepScreenOn(false);
            this.n.setVisibility(4);
        }
        android.util.Log.i("DuoStandby", "Awake clock exit=" + str + " displayed=" + this.q);
        android.os.ResultReceiver resultReceiver = this.m;
        if (resultReceiver != null) {
            resultReceiver.send(2, null);
        }
        finishAndRemoveTask();
    }
}
