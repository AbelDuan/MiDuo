package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class RailCustomActivity extends android.app.Activity {
    static final java.lang.String a = "workbench";
    private static final int b = 7;
    private static final java.lang.String c = "-";
    private static final float d = 84.0f;
    private static final float e = 40.0f;
    private static final int f = 4;
    private static final java.lang.String[] g = dev.duo.hookprobe.J.h;
    private static final java.lang.String[] h = {"返回", "主页", "最近任务", "截屏", "手电筒", "息屏", "静音", "旋转锁定", "录屏", "热点", "深色模式", "自动亮度", "定位", "护眼模式", "微信", "支付宝", "蓝牙", "飞行模式", "省电模式", "投屏", "互传", "常亮", "计算器", "翻译", "上个应用"};
    private static final java.lang.String[] i = {"返", "主", "近", "截", "手", "息", "静", "转", "录", "热", "深", "亮", "定", "护", "微", "支", "蓝", "飞", "省", "投", "互", "常", "算", "译", "切"};
    private static final java.lang.String[] j = {"", "", "", "ic_qs_screenshot", "ic_qs_flashlight_disabled", "ic_qs_screenlock", "ic_qs_mute_off", "ic_qs_auto_rotate_disabled", "qs_screen_record_icon_off", "ic_qs_hotspot_disabled", "ic_qs_night_mode_off", "ic_qs_brightness_auto", "qs_location_icon_off", "ic_qs_paper_mode_off", "", "", "ic_qs_bluetooth_off", "ic_qs_lite_airplane", "ic_qs_battery_saver_off", "ic_cast", "", "ic_keep_off", "", "", ""};
    private static final int[] k = {3, 0, 1, -1, -1, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 15};
    private android.widget.LinearLayout B;
    private dev.duo.hookprobe.U.d C;
    private dev.duo.hookprobe.C0026o D;
    private android.widget.LinearLayout E;
    private dev.duo.hookprobe.RailCustomActivity.j F;
    private android.view.View G;
    private android.view.View H;
    private android.widget.ScrollView I;
    private android.widget.TextView J;
    private boolean L;
    private int M;
    private int N;
    private android.content.res.Resources O;
    private boolean P;
    private boolean l;
    private android.widget.LinearLayout n;
    private boolean w;
    private android.widget.Switch x;
    private android.widget.Switch y;
    private final java.lang.String[] m = new java.lang.String[6];
    private final android.os.Handler o = new android.os.Handler(android.os.Looper.getMainLooper());
    private final java.lang.String[] p = new java.lang.String[7];
    private final java.util.List<java.lang.String> q = new java.util.ArrayList();
    private final java.util.List<dev.duo.hookprobe.RailCustomActivity.f> r = new java.util.ArrayList();
    private final java.util.Map<java.lang.String, dev.duo.hookprobe.RailCustomActivity.f> s = new java.util.HashMap();
    private final java.util.Map<java.lang.String, android.graphics.drawable.Drawable> t = new java.util.HashMap();
    private final java.util.List<java.lang.String> u = new java.util.ArrayList();
    private boolean v = true;
    private final java.util.List<dev.duo.hookprobe.RailCustomActivity.f> z = new java.util.ArrayList();
    private final java.util.Map<java.lang.String, dev.duo.hookprobe.RailCustomActivity.f> A = new java.util.HashMap();
    private boolean K = true;

    class a extends android.widget.BaseAdapter {
        final /* synthetic */ java.util.List a;
        final /* synthetic */ java.util.function.Predicate b;

        a(java.util.List list, java.util.function.Predicate predicate) {
            this.a = list;
            this.b = predicate;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.a.size();
        }

        @Override // android.widget.Adapter
        public java.lang.Object getItem(int i) {
            return this.a.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public android.view.View getView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
            dev.duo.hookprobe.RailCustomActivity.f fVar = (dev.duo.hookprobe.RailCustomActivity.f) this.a.get(i);
            android.widget.LinearLayout c = dev.duo.hookprobe.U.c(dev.duo.hookprobe.RailCustomActivity.this);
            c.setMinimumHeight(dev.duo.hookprobe.RailCustomActivity.this.a(56.0f));
            c.setPadding(dev.duo.hookprobe.RailCustomActivity.this.a(8.0f), dev.duo.hookprobe.RailCustomActivity.this.a(8.0f), dev.duo.hookprobe.RailCustomActivity.this.a(8.0f), dev.duo.hookprobe.RailCustomActivity.this.a(8.0f));
            c.addView(dev.duo.hookprobe.U.a(dev.duo.hookprobe.RailCustomActivity.this, fVar.c), dev.duo.hookprobe.U.a(dev.duo.hookprobe.RailCustomActivity.this, 30.0f, 30.0f));
            android.widget.TextView a = dev.duo.hookprobe.U.a(dev.duo.hookprobe.RailCustomActivity.this, 15.0f, dev.duo.hookprobe.U.b, 500);
            a.setText(fVar.b);
            a.setSingleLine(true);
            a.setEllipsize(android.text.TextUtils.TruncateAt.END);
            android.widget.LinearLayout.LayoutParams b = dev.duo.hookprobe.U.b();
            b.leftMargin = dev.duo.hookprobe.RailCustomActivity.this.a(12.0f);
            c.addView(a, b);
            if (this.b.test(fVar.a)) {
                android.widget.TextView a2 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.RailCustomActivity.this, 12.0f, -13326253, 600);
                a2.setText("已添加");
                c.addView(a2);
            }
            return c;
        }
    }

    class b implements android.text.TextWatcher {
        final /* synthetic */ java.util.List a;
        final /* synthetic */ java.util.List b;
        final /* synthetic */ android.widget.BaseAdapter c;

        b(java.util.List list, java.util.List list2, android.widget.BaseAdapter baseAdapter) {
            this.a = list;
            this.b = list2;
            this.c = baseAdapter;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(android.text.Editable editable) {
            java.lang.String lowerCase = editable.toString().trim().toLowerCase(java.util.Locale.ROOT);
            this.a.clear();
            for (dev.duo.hookprobe.RailCustomActivity.f fVar : this.b) {
                if (!lowerCase.isEmpty()) {
                    java.lang.String str = fVar.b;
                    java.util.Locale locale = java.util.Locale.ROOT;
                    if (!str.toLowerCase(locale).contains(lowerCase) && !fVar.a.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                this.a.add(fVar);
            }
            this.c.notifyDataSetChanged();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class c extends android.graphics.drawable.Drawable {
        private final android.graphics.Paint a = new android.graphics.Paint(1);
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        c(int i, int i2) {
            this.b = i;
            this.c = i2;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(android.graphics.Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().left, getBounds().top);
            canvas.scale(getBounds().width() / 24.0f, getBounds().height() / 24.0f);
            this.a.setColor(this.b);
            this.a.setStyle(android.graphics.Paint.Style.STROKE);
            this.a.setStrokeWidth(1.8f);
            canvas.drawRoundRect(2.5f, 8.0f, 21.5f, 18.0f, 3.5f, 3.5f, this.a);
            this.a.setStyle(android.graphics.Paint.Style.FILL);
            float[] fArr = {7.0f, 12.0f, 17.0f};
            for (int i = 0; i < 3; i++) {
                canvas.drawCircle(fArr[i], 13.0f, 1.9f, this.a);
            }
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.c;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.c;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class d {
        final java.lang.String a;
        final java.lang.String b;
        final java.lang.String c;
        final android.graphics.drawable.Drawable d;
        final int e;
        final boolean f;

        d(java.lang.String str, java.lang.String str2, java.lang.String str3, android.graphics.drawable.Drawable drawable, int i, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = drawable;
            this.e = i;
            this.f = z;
        }
    }

    private final class e extends android.view.View {
        private final int a;
        private final int b;
        private final int c;
        private final android.graphics.Paint d;

        e(int i, int i2, int i3) {
            super(dev.duo.hookprobe.RailCustomActivity.this);
            this.d = new android.graphics.Paint(1);
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            int width = getWidth();
            int height = getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            float f = height * this.b;
            float max = java.lang.Math.max(1, dev.duo.hookprobe.RailCustomActivity.this.a(0.9f));
            canvas.save();
            canvas.clipRect(0, 0, width, height);
            canvas.translate(0.0f, (-this.a) * height);
            float f2 = max / 2.0f;
            android.graphics.RectF rectF = new android.graphics.RectF(f2, f2, width - f2, f - f2);
            this.d.setShader(null);
            this.d.setStyle(android.graphics.Paint.Style.FILL);
            this.d.setColor(dev.duo.hookprobe.U.a ? 855638016 : 335544320);
            android.graphics.RectF rectF2 = new android.graphics.RectF(rectF.left, rectF.top + dev.duo.hookprobe.RailCustomActivity.this.a(1.6f), rectF.right, rectF.bottom + dev.duo.hookprobe.RailCustomActivity.this.a(1.6f));
            float f3 = this.c;
            canvas.drawRoundRect(rectF2, f3, f3, this.d);
            android.graphics.Paint paint = this.d;
            boolean z = dev.duo.hookprobe.U.a;
            paint.setShader(new android.graphics.LinearGradient(0.0f, 0.0f, 0.0f, f, z ? -11908528 : -1, z ? -14474454 : -1578513, android.graphics.Shader.TileMode.CLAMP));
            float f4 = this.c;
            canvas.drawRoundRect(rectF, f4, f4, this.d);
            this.d.setShader(null);
            this.d.setStyle(android.graphics.Paint.Style.STROKE);
            this.d.setStrokeWidth(max);
            this.d.setColor(dev.duo.hookprobe.U.a ? 1090519039 : 520093696);
            float f5 = this.c;
            canvas.drawRoundRect(rectF, f5, f5, this.d);
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class f {
        java.lang.String a;
        java.lang.String b;
        android.graphics.drawable.Drawable c;

        private f() {
        }

        /* synthetic */ f(dev.duo.hookprobe.RailCustomActivity.a aVar) {
            this();
        }
    }

    private static final class h extends android.view.View {
        private final android.graphics.Paint a;
        private final boolean b;

        h(android.content.Context context, boolean z) {
            super(context);
            this.a = new android.graphics.Paint(1);
            this.b = z;
        }

        @Override // android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            float width = getWidth();
            float height = getHeight();
            this.a.setStyle(android.graphics.Paint.Style.FILL);
            this.a.setColor(dev.duo.hookprobe.U.a ? isPressed() ? -10855838 : -231065024 : isPressed() ? -1710614 : -218103809);
            float f = width * 0.3f;
            canvas.drawRoundRect(0.0f, 0.0f, width, height, f, f, this.a);
            this.a.setStyle(android.graphics.Paint.Style.STROKE);
            this.a.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            this.a.setStrokeWidth(0.08f * width);
            this.a.setColor(dev.duo.hookprobe.U.b);
            if (this.b) {
                float f2 = width * 0.25f;
                float f3 = height * 0.25f;
                canvas.drawLine(f2, height * 0.65f, width * 0.65f, f3, this.a);
                canvas.drawLine(f2, height * 0.42f, width * 0.42f, f3, this.a);
                return;
            }
            float f4 = height * 0.75f;
            float f5 = width * 0.75f;
            canvas.drawLine(width * 0.35f, f4, f5, height * 0.35f, this.a);
            canvas.drawLine(width * 0.58f, f4, f5, height * 0.58f, this.a);
        }
    }

    private final class i implements dev.duo.hookprobe.RailCustomActivity.j.a {
        private int a;
        private int b;
        private boolean c;

        private i() {
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.j.a
        public boolean a(float f, float f2) {
            if (!dev.duo.hookprobe.RailCustomActivity.this.K && !dev.duo.hookprobe.RailCustomActivity.this.L && dev.duo.hookprobe.RailCustomActivity.this.D != null) {
                if (a(dev.duo.hookprobe.RailCustomActivity.this.G, f, f2)) {
                    this.c = true;
                } else if (a(dev.duo.hookprobe.RailCustomActivity.this.H, f, f2)) {
                    this.c = false;
                }
                this.a = dev.duo.hookprobe.J.e(dev.duo.hookprobe.RailCustomActivity.this.p);
                this.b = dev.duo.hookprobe.J.f(dev.duo.hookprobe.RailCustomActivity.this.p);
                return true;
            }
            return false;
        }

        /* synthetic */ i(dev.duo.hookprobe.RailCustomActivity railCustomActivity, dev.duo.hookprobe.RailCustomActivity.a aVar) {
            this();
        }

        private boolean a(android.view.View view, float f, float f2) {
            if (view == null) {
                return false;
            }
            android.graphics.Rect rect = new android.graphics.Rect();
            view.getDrawingRect(rect);
            dev.duo.hookprobe.RailCustomActivity.this.F.offsetDescendantRectToMyCoords(view, rect);
            rect.inset(-dev.duo.hookprobe.RailCustomActivity.this.a(12.0f), -dev.duo.hookprobe.RailCustomActivity.this.a(12.0f));
            if (!rect.contains((int) f, (int) f2)) {
                return false;
            }
            view.setPressed(true);
            return true;
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.j.a
        public void a(float f) {
            if (dev.duo.hookprobe.RailCustomActivity.this.F.getChildCount() == 0) {
                return;
            }
            float childCount = dev.duo.hookprobe.RailCustomActivity.this.F.getChildCount();
            int i = 0;
            while (true) {
                if (i >= dev.duo.hookprobe.RailCustomActivity.this.F.getChildCount()) {
                    break;
                }
                android.view.View childAt = dev.duo.hookprobe.RailCustomActivity.this.F.getChildAt(i);
                if (f < childAt.getBottom()) {
                    childCount = i + java.lang.Math.max(0.0f, (f - childAt.getTop()) / java.lang.Math.max(1, childAt.getHeight()));
                    break;
                }
                i++;
            }
            java.lang.String[] b = this.c ? dev.duo.hookprobe.J.b(dev.duo.hookprobe.RailCustomActivity.this.p, (int) java.lang.Math.floor(childCount)) : dev.duo.hookprobe.J.a(dev.duo.hookprobe.RailCustomActivity.this.p, java.lang.Math.round(childCount));
            if (b == null || java.util.Arrays.equals(b, dev.duo.hookprobe.RailCustomActivity.this.p)) {
                return;
            }
            java.lang.System.arraycopy(b, 0, dev.duo.hookprobe.RailCustomActivity.this.p, 0, 7);
            dev.duo.hookprobe.RailCustomActivity.this.u();
            dev.duo.hookprobe.RailCustomActivity.this.F.performHapticFeedback(4);
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.j.a
        public void a() {
            if (dev.duo.hookprobe.J.e(dev.duo.hookprobe.RailCustomActivity.this.p) != this.a || dev.duo.hookprobe.J.f(dev.duo.hookprobe.RailCustomActivity.this.p) != this.b) {
                dev.duo.hookprobe.RailCustomActivity.this.b();
                dev.duo.hookprobe.RailCustomActivity.this.w();
            }
            dev.duo.hookprobe.RailCustomActivity.this.r();
        }
    }

    private static final class j extends android.widget.LinearLayout {
        private final int a;
        dev.duo.hookprobe.RailCustomActivity.j.a b;
        private boolean c;

        interface a {
            void a();

            void a(float f);

            boolean a(float f, float f2);
        }

        j(android.content.Context context) {
            super(context);
            setOrientation(1);
            this.a = dev.duo.hookprobe.U.a(context, dev.duo.hookprobe.RailCustomActivity.e);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
            dev.duo.hookprobe.RailCustomActivity.j.a aVar;
            if (motionEvent.getActionMasked() != 0 || (aVar = this.b) == null || !aVar.a(motionEvent.getX(), motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            this.c = true;
            getParent().requestDisallowInterceptTouchEvent(true);
            return true;
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int childCount = getChildCount();
            if (childCount == 0 || android.view.View.MeasureSpec.getMode(i2) != 1073741824) {
                super.onMeasure(i, i2);
                return;
            }
            int size = (android.view.View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
            int i3 = 0;
            for (int i4 = 0; i4 < childCount; i4++) {
                android.widget.LinearLayout.LayoutParams layoutParams = (android.widget.LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                i3 += layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int max = java.lang.Math.max(this.a, (size - i3) / childCount);
            int max2 = java.lang.Math.max(0, (android.view.View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight());
            for (int i5 = 0; i5 < childCount; i5++) {
                android.view.View childAt = getChildAt(i5);
                android.widget.LinearLayout.LayoutParams layoutParams2 = (android.widget.LinearLayout.LayoutParams) childAt.getLayoutParams();
                childAt.measure(android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.max(0, (max2 - layoutParams2.leftMargin) - layoutParams2.rightMargin), 1073741824), android.view.View.MeasureSpec.makeMeasureSpec(max, 1073741824));
            }
            setMeasuredDimension(android.view.View.MeasureSpec.getSize(i), android.view.View.MeasureSpec.getSize(i2));
        }

        @Override // android.view.View
        public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
            if (!this.c) {
                return super.onTouchEvent(motionEvent);
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                this.b.a(motionEvent.getY());
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.c = false;
                this.b.a();
            }
            return true;
        }
    }

    private java.util.List<dev.duo.hookprobe.RailCustomActivity.f> A() {
        android.content.pm.PackageManager packageManager = getPackageManager();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (android.content.pm.PackageInfo packageInfo : packageManager.getInstalledPackages(1)) {
            java.lang.String str = packageInfo.packageName;
            android.content.pm.ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null && (applicationInfo.flags & 1) == 0 && !dev.duo.hookprobe.MainActivity.d.contains(str) && !str.equals(getPackageName()) && packageManager.getLaunchIntentForPackage(str) != null) {
                dev.duo.hookprobe.RailCustomActivity.f fVar = new dev.duo.hookprobe.RailCustomActivity.f(null);
                fVar.a = str;
                fVar.b = java.lang.String.valueOf(applicationInfo.loadLabel(packageManager));
                fVar.c = applicationInfo.loadIcon(packageManager);
                arrayList.add(fVar);
            }
        }
        final java.text.Collator collator = java.text.Collator.getInstance(java.util.Locale.CHINA);
        java.util.Collections.sort(arrayList, new java.util.Comparator() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda7
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                int b2;
                b2 = dev.duo.hookprobe.RailCustomActivity.b(collator, (dev.duo.hookprobe.RailCustomActivity.f) obj, (dev.duo.hookprobe.RailCustomActivity.f) obj2);
                return b2;
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(android.view.View view) {
        if (this.L) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean m(android.view.View view) {
        c();
        return true;
    }

    private java.util.List<dev.duo.hookprobe.RailCustomActivity.f> n() {
        android.content.pm.PackageManager packageManager = getPackageManager();
        android.content.Intent addCategory = new android.content.Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
        java.util.HashMap hashMap = new java.util.HashMap();
        java.util.Iterator<android.content.pm.ResolveInfo> it = packageManager.queryIntentActivities(addCategory, 0).iterator();
        while (it.hasNext()) {
            android.content.pm.ActivityInfo activityInfo = it.next().activityInfo;
            dev.duo.hookprobe.RailCustomActivity.a aVar = null;
            android.content.pm.ApplicationInfo applicationInfo = activityInfo == null ? null : activityInfo.applicationInfo;
            if (applicationInfo != null && !hashMap.containsKey(applicationInfo.packageName) && !applicationInfo.packageName.equals(getPackageName())) {
                dev.duo.hookprobe.RailCustomActivity.f fVar = new dev.duo.hookprobe.RailCustomActivity.f(aVar);
                fVar.a = applicationInfo.packageName;
                fVar.b = java.lang.String.valueOf(applicationInfo.loadLabel(packageManager));
                fVar.c = applicationInfo.loadIcon(packageManager);
                hashMap.put(fVar.a, fVar);
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(hashMap.values());
        final java.text.Collator collator = java.text.Collator.getInstance(java.util.Locale.CHINA);
        java.util.Collections.sort(arrayList, new java.util.Comparator() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                int a2;
                a2 = dev.duo.hookprobe.RailCustomActivity.a(collator, (dev.duo.hookprobe.RailCustomActivity.f) obj, (dev.duo.hookprobe.RailCustomActivity.f) obj2);
                return a2;
            }
        });
        return arrayList;
    }

    private void o() {
        this.K = true;
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.g();
            }
        });
    }

    private int p() {
        return java.lang.Math.round(getResources().getDisplayMetrics().density * 42.18182f);
    }

    private void q() {
        if (this.r.isEmpty()) {
            g("没有可添加的 App（只列用户自己安装的 App）");
        } else {
            a("选择 App", this.r, new java.util.function.Predicate() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda26
                @Override // java.util.function.Predicate
                public final boolean test(java.lang.Object obj) {
                    boolean c2;
                    c2 = dev.duo.hookprobe.RailCustomActivity.this.c((java.lang.String) obj);
                    return c2;
                }
            }, new java.util.function.Consumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda27
                @Override // java.util.function.Consumer
                public final void accept(java.lang.Object obj) {
                    dev.duo.hookprobe.RailCustomActivity.this.a((dev.duo.hookprobe.RailCustomActivity.f) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        z();
        if (!this.l) {
            t();
            s();
            u();
        } else {
            android.widget.LinearLayout linearLayout = this.B;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            s();
            v();
        }
    }

    private void s() {
        android.widget.LinearLayout linearLayout = this.E;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        java.util.List<dev.duo.hookprobe.RailCustomActivity.d> a2 = a();
        android.widget.LinearLayout linearLayout2 = null;
        for (int i2 = 0; i2 < a2.size(); i2++) {
            if (i2 % 4 == 0) {
                linearLayout2 = dev.duo.hookprobe.U.c(this);
                linearLayout2.setGravity(48);
                this.E.addView(linearLayout2, dev.duo.hookprobe.U.a());
            }
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, this.N, 1.0f);
            layoutParams.setMargins(a(3.0f), a(3.0f), a(3.0f), a(3.0f));
            linearLayout2.addView(a(a2.get(i2)), layoutParams);
        }
        int size = a2.size() % 4;
        if (linearLayout2 == null || size == 0) {
            return;
        }
        while (size < 4) {
            android.view.View view = new android.view.View(this);
            android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(0, this.N, 1.0f);
            layoutParams2.setMargins(a(3.0f), a(3.0f), a(3.0f), a(3.0f));
            linearLayout2.addView(view, layoutParams2);
            size++;
        }
    }

    private void t() {
        android.widget.LinearLayout linearLayout;
        android.widget.LinearLayout linearLayout2 = this.B;
        if (linearLayout2 == null) {
            return;
        }
        linearLayout2.removeAllViews();
        if (dev.duo.hookprobe.J.d(this.p)) {
            this.B.addView(x(), dev.duo.hookprobe.U.a());
            this.B.addView(y(), dev.duo.hookprobe.U.a());
            android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 11.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
            a2.setText("固定在侧边栏上面，点应用移除；下面会接着显示最近用小窗打开过的应用。双开分身应用在侧栏面板里添加。四方块放到列表最后时，侧边栏占几格就显示几个应用，滑到底点四方块打开面板。");
            a2.setLineSpacing(0.0f, 1.2f);
            this.B.addView(a2, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 2.0f));
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.Iterator<java.lang.String> it = this.u.iterator();
            while (true) {
                linearLayout = null;
                if (!it.hasNext()) {
                    break;
                }
                final java.lang.String next = it.next();
                dev.duo.hookprobe.RailCustomActivity.f fVar = this.A.get(dev.duo.hookprobe.J.h(next));
                int i2 = dev.duo.hookprobe.J.i(next);
                java.lang.String str = fVar == null ? dev.duo.hookprobe.J.h(next) + "（暂不可用）" : fVar.b;
                if (i2 != 0) {
                    str = str + "（分身）";
                }
                android.graphics.drawable.Drawable drawable = fVar == null ? null : fVar.c;
                if (i2 != 0) {
                    drawable = a(drawable, i2);
                }
                android.view.View a3 = a(drawable, (java.lang.String) null, str);
                a3.setContentDescription(str + "，点一下移除");
                a3.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(android.view.View view) {
                        dev.duo.hookprobe.RailCustomActivity.this.a(next, view);
                    }
                });
                arrayList.add(a3);
            }
            if (this.u.size() < 12) {
                android.view.View a4 = a((android.graphics.drawable.Drawable) null, "+", "添加");
                a4.setContentDescription("添加小窗侧边栏应用");
                a4.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(android.view.View view) {
                        dev.duo.hookprobe.RailCustomActivity.this.j(view);
                    }
                });
                arrayList.add(a4);
            }
            int i3 = 0;
            while (i3 < arrayList.size()) {
                if (i3 % 4 == 0) {
                    linearLayout = dev.duo.hookprobe.U.c(this);
                    linearLayout.setGravity(48);
                    this.B.addView(linearLayout, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, i3 == 0 ? 6.0f : 0.0f));
                }
                android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, this.M + a(22.0f), 1.0f);
                layoutParams.setMargins(a(3.0f), a(3.0f), a(3.0f), a(3.0f));
                linearLayout.addView((android.view.View) arrayList.get(i3), layoutParams);
                i3++;
            }
            for (int size = arrayList.size() % 4; linearLayout != null && size != 0 && size < 4; size++) {
                android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(0, this.M + a(22.0f), 1.0f);
                layoutParams2.setMargins(a(3.0f), a(3.0f), a(3.0f), a(3.0f));
                linearLayout.addView(new android.view.View(this), layoutParams2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        dev.duo.hookprobe.RailCustomActivity.j jVar = this.F;
        if (jVar == null) {
            return;
        }
        jVar.removeAllViews();
        this.G = null;
        this.H = null;
        for (int i2 = 0; i2 < 7; i2++) {
            d(i2);
        }
        this.F.requestLayout();
    }

    private void v() {
        android.widget.LinearLayout linearLayout = this.n;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        for (int i2 = 0; i2 < 2; i2++) {
            android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
            for (int i3 = 0; i3 < 3; i3++) {
                a(a2, i2, i3);
            }
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0f);
            if (i2 > 0) {
                layoutParams.leftMargin = a(8.0f);
            }
            this.n.addView(a2, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.D == null) {
            g("未连接 LSPosed，改动无法保存");
        } else {
            final java.lang.String c2 = this.l ? dev.duo.hookprobe.J.c(this.m) : dev.duo.hookprobe.J.b(this.p);
            dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.d(c2);
                }
            });
        }
    }

    private android.view.View x() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setPadding(a(10.0f), a(18.0f), a(8.0f), a(8.0f));
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, 600);
        a2.setText("小窗侧边栏应用（" + this.u.size() + " / 12）");
        c2.addView(a2, dev.duo.hookprobe.U.b());
        final android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.b, 600);
        a3.setText(this.v ? "小窗" : "全屏");
        c2.addView(a3);
        android.widget.Switch r2 = new android.widget.Switch(this);
        dev.duo.hookprobe.U.a(r2);
        this.x = r2;
        r2.setEnabled(!this.K);
        r2.setChecked(this.v);
        r2.setContentDescription(this.v ? "小窗打开" : "全屏打开");
        r2.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda14
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.RailCustomActivity.this.a(a3, compoundButton, z);
            }
        });
        c2.addView(r2);
        return c2;
    }

    private android.view.View y() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setPadding(a(10.0f), a(4.0f), a(8.0f), a(4.0f));
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.b, 500);
        a2.setText("四方块放到列表最后");
        c2.addView(a2, dev.duo.hookprobe.U.b());
        android.widget.Switch r1 = new android.widget.Switch(this);
        dev.duo.hookprobe.U.a(r1);
        this.y = r1;
        r1.setEnabled(!this.K);
        r1.setChecked(this.w);
        r1.setContentDescription("四方块放到列表最后");
        r1.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda46
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.RailCustomActivity.this.a(compoundButton, z);
            }
        });
        c2.addView(r1);
        return c2;
    }

    private void z() {
        android.widget.TextView textView = this.J;
        if (textView == null) {
            return;
        }
        if (this.l) {
            textView.setText(this.L ? "删除模式：点已放置项右上角的红色减号移除；点空白处退出删除模式。" : "长按候选拖到右侧格子里放下：左列是侧栏列，右列是按钮列（横屏格子在右时，工作台里左右对调）。小窗侧边栏 / Dock 只能占满一整列，先只显示占位；长按已放置项出现红色减号；改动立即保存。");
        } else if (this.L) {
            textView.setText("删除模式：点已放置项右上角的红色减号移除；点空白处退出删除模式。");
        } else {
            textView.setText("长按候选拖到右侧空格放下（空位会自动向前压缩，侧栏从下往上连续排）；长按已放置项出现红色减号，点减号删除、点空白退出；改动立即保存。");
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.L) {
            d();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        this.C = new dev.duo.hookprobe.U.d(this);
        this.l = getIntent() != null && getIntent().getBooleanExtra(a, false);
        java.util.Arrays.fill(this.p, "-");
        java.util.Arrays.fill(this.m, "-");
        int p = p();
        this.M = p;
        this.N = p + a(36.0f);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.d dVar = this.C;
        int a3 = dVar.a(dVar.e());
        dev.duo.hookprobe.U.d dVar2 = this.C;
        a2.setPadding(a3, this.C.d(), a3, dVar2.c < 600 ? a(92.0f) : dVar2.b());
        a2.addView(e(), dev.duo.hookprobe.U.a());
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        this.J = a4;
        a4.setLineSpacing(0.0f, 1.25f);
        this.J.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.RailCustomActivity.this.d(view);
            }
        });
        a2.addView(this.J, dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 8.0f));
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setGravity(48);
        c2.setPadding(0, a(10.0f), 0, 0);
        a2.addView(c2, new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f));
        android.widget.LinearLayout a5 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a5.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.RailCustomActivity.this.e(view);
            }
        });
        android.widget.LinearLayout a6 = dev.duo.hookprobe.U.a((android.content.Context) this);
        this.B = a6;
        a5.addView(a6, dev.duo.hookprobe.U.a());
        a5.addView(dev.duo.hookprobe.U.a((android.content.Context) this, "候选"), dev.duo.hookprobe.U.a());
        android.widget.LinearLayout a7 = dev.duo.hookprobe.U.a((android.content.Context) this);
        this.E = a7;
        a7.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.RailCustomActivity.this.f(view);
            }
        });
        a5.addView(this.E, dev.duo.hookprobe.U.a());
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        this.I = scrollView;
        scrollView.setClipToPadding(false);
        this.I.setVerticalScrollBarEnabled(false);
        this.I.addView(a5);
        c2.addView(this.I, new android.widget.LinearLayout.LayoutParams(0, -1, 1.0f));
        android.widget.LinearLayout a8 = dev.duo.hookprobe.U.a((android.content.Context) this);
        if (this.l) {
            a8.addView(dev.duo.hookprobe.U.a((android.content.Context) this, "信息格按钮"), dev.duo.hookprobe.U.a());
            android.widget.LinearLayout c3 = dev.duo.hookprobe.U.c(this);
            this.n = c3;
            c3.setGravity(48);
            this.n.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda31
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.RailCustomActivity.this.g(view);
                }
            });
            a8.addView(this.n, new android.widget.LinearLayout.LayoutParams(-1, a(276.0f)));
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(a(180.0f), -1);
            layoutParams.leftMargin = a(8.0f);
            c2.addView(a8, layoutParams);
        } else {
            a8.addView(dev.duo.hookprobe.U.a((android.content.Context) this, "侧栏预览"), dev.duo.hookprobe.U.a());
            dev.duo.hookprobe.RailCustomActivity.j jVar = new dev.duo.hookprobe.RailCustomActivity.j(this);
            this.F = jVar;
            jVar.setGravity(1);
            this.F.b = new dev.duo.hookprobe.RailCustomActivity.i(this, null);
            this.F.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.RailCustomActivity.this.h(view);
                }
            });
            a8.addView(this.F, new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f));
            android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(a(88.0f), -1);
            layoutParams2.leftMargin = a(8.0f);
            c2.addView(a8, layoutParams2);
        }
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this);
        frameLayout.addView(a2, new android.widget.FrameLayout.LayoutParams(-1, -1));
        frameLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.RailCustomActivity.this.i(view);
            }
        });
        this.C.b.addView(frameLayout, new android.widget.FrameLayout.LayoutParams(-1, -1));
        this.C.a(3, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda34
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.RailCustomActivity.this.c(i2);
            }
        });
        setContentView(this.C.a);
        z();
        r();
        o();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.D == null || this.K || this.l) {
            return;
        }
        this.K = true;
        e(false);
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.i();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.hookprobe.C0026o c0026o, java.lang.String str, java.util.List list, java.util.List list2, java.util.List list3) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        a(c0026o, str, list, list2, list3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(android.view.View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(android.view.View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(android.view.View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(android.view.View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(android.view.View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(android.view.View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(android.view.View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        g("侧栏配置保存失败，请检查 LSPosed");
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean k(android.view.View view) {
        c();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        g("打开方式保存失败，请检查 LSPosed");
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        g("四方块位置保存失败，请检查 LSPosed");
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(dev.duo.hookprobe.RailCustomActivity.d dVar, android.view.View view) {
        if (this.L) {
            d();
        } else {
            g("长按「" + dVar.b + "」拖到右侧空格");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0340, code lost:
    
        if (r25.equals(r29.p[r30 - 1]) != false) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0347  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(final int r30) {
        /*
            Method dump skipped, instructions count: 857
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.RailCustomActivity.d(int):void");
    }

    private void e(boolean z) {
        android.widget.Switch[] switchArr = {this.x, this.y};
        for (int i2 = 0; i2 < 2; i2++) {
            android.widget.Switch r2 = switchArr[i2];
            if (r2 != null) {
                r2.setEnabled(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        this.I.fullScroll(130);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        io.github.libxposed.service.XposedService xposedService;
        final dev.duo.hookprobe.C0026o c0026o;
        final java.lang.String str;
        java.lang.String g2;
        dev.duo.hookprobe.C0026o c0026o2 = null;
        try {
            xposedService = dev.duo.hookprobe.L.a(1500L);
        } catch (java.lang.Throwable th) {
            xposedService = null;
        }
        final java.util.ArrayList arrayList = new java.util.ArrayList();
        if (xposedService == null) {
            g2 = null;
        } else {
            try {
                dev.duo.hookprobe.C0026o c0026o3 = new dev.duo.hookprobe.C0026o(xposedService);
                if (this.l) {
                    g2 = java.lang.String.join(",", dev.duo.hookprobe.J.a(c0026o3.i(), dev.duo.hookprobe.J.d(c0026o3.g())));
                } else {
                    g2 = c0026o3.g();
                }
                arrayList.addAll(c0026o3.h());
                c0026o2 = c0026o3;
            } catch (java.lang.Throwable th2) {
                android.util.Log.w("MiDuoRail", "读取侧栏配置失败", th2);
                arrayList.clear();
                c0026o = null;
                str = null;
            }
        }
        str = g2;
        c0026o = c0026o2;
        final java.util.List<dev.duo.hookprobe.RailCustomActivity.f> A = A();
        final java.util.List<dev.duo.hookprobe.RailCustomActivity.f> n = n();
        this.o.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.b(c0026o, str, A, arrayList, n);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.K = false;
        e(true);
        g("固定应用刷新失败，请检查 LSPosed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        try {
            final java.util.List<java.lang.String> h2 = this.D.h();
            final boolean v = this.D.v();
            final boolean w = this.D.w();
            this.o.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.a(h2, v, w);
                }
            });
        } catch (java.lang.Throwable th) {
            android.util.Log.w("MiDuoRail", "刷新侧栏固定应用失败", th);
            this.o.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.h();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        g("小窗侧边栏应用保存失败，请检查 LSPosed");
        o();
    }

    private static final class g extends android.view.View {
        static final int o = 0;
        static final int p = 1;
        static final int q = 2;
        static final int r = 3;
        private final int a;
        private final int b;
        private final android.graphics.drawable.Drawable c;
        private final java.lang.String d;
        private final int e;
        private final java.lang.String f;
        private final java.lang.String g;
        private final int h;
        private final android.graphics.Paint i;
        private final android.graphics.Paint j;
        private final android.graphics.PathEffect k;
        private android.graphics.drawable.Drawable l;
        private int m;
        private android.graphics.drawable.Drawable n;

        g(android.content.Context context, int i, int i2, android.graphics.drawable.Drawable drawable, java.lang.String str, int i3, java.lang.String str2, int i4, java.lang.String str3) {
            super(context);
            android.graphics.Paint paint = new android.graphics.Paint(1);
            this.i = paint;
            this.j = new android.graphics.Paint(1);
            this.a = i;
            this.f = str3;
            this.b = i2;
            this.c = drawable;
            this.d = str;
            this.e = i3;
            this.g = str2;
            this.h = i4;
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
            this.k = new android.graphics.DashPathEffect(new float[]{dev.duo.hookprobe.U.a(context, 3.4f), dev.duo.hookprobe.U.a(context, 2.6f)}, 0.0f);
            setWillNotDraw(false);
        }

        private float a(int i) {
            if (this.g == null) {
                return 0.0f;
            }
            return java.lang.Math.max(dev.duo.hookprobe.U.a(getContext(), 7.5f), java.lang.Math.min(dev.duo.hookprobe.U.a(getContext(), 10.5f), i * 0.2f));
        }

        private void b(android.graphics.Canvas canvas, float f, float f2, float f3) {
            this.j.setStyle(android.graphics.Paint.Style.FILL);
            this.j.setPathEffect(null);
            float a = dev.duo.hookprobe.U.a(getContext(), 1.6f);
            this.j.setColor(dev.duo.hookprobe.U.a ? 855638016 : 268435456);
            float f4 = f2 + a;
            float f5 = f3 / 2.0f;
            canvas.drawCircle(f, f4, dev.duo.hookprobe.U.a(getContext(), 1.2f) + f5, this.j);
            this.j.setColor(dev.duo.hookprobe.U.a ? 1207959552 : 469762048);
            canvas.drawCircle(f, f4, f5, this.j);
        }

        @Override // android.view.View
        protected void onDraw(android.graphics.Canvas canvas) {
            float f;
            float f2;
            float a;
            int width = getWidth();
            int height = getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            float a2 = a(height);
            float a3 = a(a2);
            float f3 = height;
            float a4 = (f3 - a3) - (a3 <= 0.0f ? 0.0f : dev.duo.hookprobe.U.a(getContext(), 1.5f));
            int a5 = a(width, a4);
            float f4 = width;
            float f5 = f4 / 2.0f;
            float f6 = a5;
            float f7 = f6 / 2.0f;
            float max = java.lang.Math.max(0.0f, (a4 - f6) / 2.0f) + f7;
            int i = this.a;
            if (i == 2) {
                this.j.setStyle(android.graphics.Paint.Style.STROKE);
                this.j.setStrokeWidth(java.lang.Math.max(1, dev.duo.hookprobe.U.a(getContext(), 1.3f)));
                this.j.setColor(dev.duo.hookprobe.U.a ? 1308622847 : 805306368);
                this.j.setPathEffect(this.k);
                canvas.drawCircle(f5, max, java.lang.Math.max(1.0f, f7), this.j);
                this.j.setPathEffect(null);
                this.i.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 0));
                this.i.setColor(dev.duo.hookprobe.U.d);
                this.i.setTextSize(java.lang.Math.max(dev.duo.hookprobe.U.a(getContext(), 9.0f), f6 * 0.45f));
                android.graphics.Paint.FontMetrics fontMetrics = this.i.getFontMetrics();
                canvas.drawText("+", f5, max - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.i);
                f = f5;
            } else if (i == 3) {
                int max2 = java.lang.Math.max(1, a(width, height - dev.duo.hookprobe.U.a(getContext(), 2.0f)));
                if (this.g == null) {
                    a = f5;
                    f2 = 2.0f;
                } else {
                    f2 = 2.0f;
                    a = (max2 / 2.0f) + dev.duo.hookprobe.U.a(getContext(), 1.0f);
                }
                float f8 = f3 / f2;
                float f9 = max2;
                b(canvas, a, f8, f9);
                if (this.l == null || this.m != max2) {
                    android.graphics.drawable.Drawable b = dev.duo.hookprobe.RailCustomActivity.b(getContext(), max2);
                    this.l = b;
                    this.m = max2;
                    b.setBounds(0, 0, max2, max2);
                }
                canvas.save();
                float f10 = f9 / 2.0f;
                canvas.translate(a - f10, f8 - f10);
                this.l.draw(canvas);
                canvas.restore();
                if (a(this.f)) {
                    this.j.setColor(this.h);
                    dev.duo.hookprobe.RailCustomActivity.b(canvas, this.f, a, f8, f9, this.j);
                } else {
                    a(canvas, a, f8, f9 * b(this.f));
                }
                if (this.g != null) {
                    this.i.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 1));
                    this.i.setColor(dev.duo.hookprobe.U.c);
                    this.i.setTextSize(dev.duo.hookprobe.U.a(getContext(), 8.0f));
                    float a6 = a + f10 + dev.duo.hookprobe.U.a(getContext(), 4.0f);
                    java.lang.String a7 = a(this.g, this.i, java.lang.Math.max(dev.duo.hookprobe.U.a(getContext(), 8.0f), (f4 - a6) - dev.duo.hookprobe.U.a(getContext(), 2.0f)));
                    android.graphics.Paint.FontMetrics fontMetrics2 = this.i.getFontMetrics();
                    canvas.drawText(a7, a6, f8 - ((fontMetrics2.ascent + fontMetrics2.descent) / 2.0f), this.i);
                    f = f5;
                } else {
                    f = f5;
                }
            } else if (i == 0) {
                b(canvas, f5, max, f6);
                if (this.l == null || this.m != a5) {
                    android.graphics.drawable.Drawable b2 = dev.duo.hookprobe.RailCustomActivity.b(getContext(), a5);
                    this.l = b2;
                    this.m = a5;
                    b2.setBounds(0, 0, a5, a5);
                }
                canvas.save();
                canvas.translate(f5 - f7, max - f7);
                this.l.draw(canvas);
                canvas.restore();
                if (a(this.f)) {
                    this.j.setColor(this.h);
                    f = f5;
                    dev.duo.hookprobe.RailCustomActivity.b(canvas, this.f, f, max, f6, this.j);
                } else {
                    f = f5;
                    a(canvas, f, max, f6 * b(this.f));
                }
            } else {
                f = f5;
                a(canvas, f, a4 / 2.0f, java.lang.Math.min(f4 * 0.62f, a4 * 0.62f));
            }
            if (a3 <= 0.0f || this.a == 3) {
                return;
            }
            this.i.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 1));
            this.i.setTextSize(a2);
            this.i.setColor(dev.duo.hookprobe.U.c);
            canvas.drawText(a(this.g, this.i, width - dev.duo.hookprobe.U.a(getContext(), 4.0f)), f, f3 - this.i.getFontMetrics().descent, this.i);
        }

        private float a(float f) {
            if (this.g == null || f <= 0.0f) {
                return 0.0f;
            }
            this.i.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 1));
            this.i.setTextSize(f);
            android.graphics.Paint.FontMetrics fontMetrics = this.i.getFontMetrics();
            return fontMetrics.descent - fontMetrics.ascent;
        }

        private static float b(java.lang.String str) {
            if (str == null) {
                return 0.56f;
            }
            if (dev.duo.hookprobe.I.a(str)) {
                return 0.5f;
            }
            if ("screenrecord".equals(str) || "eyecare".equals(str)) {
                return 0.62068963f;
            }
            return str.startsWith("app:") ? 0.5689655f : 0.5862069f;
        }

        private int a(int i, float f) {
            return java.lang.Math.max(dev.duo.hookprobe.U.a(getContext(), 10.0f), java.lang.Math.round(java.lang.Math.min(this.b, java.lang.Math.min(i - dev.duo.hookprobe.U.a(getContext(), 2.0f), f))));
        }

        private static boolean a(java.lang.String str) {
            return "back".equals(str) || "home".equals(str) || "recents".equals(str);
        }

        private void a(android.graphics.Canvas canvas, float f, float f2, float f3) {
            int max = java.lang.Math.max(dev.duo.hookprobe.U.a(getContext(), 8.0f), java.lang.Math.round(f3));
            float f4 = max;
            float f5 = f4 / 2.0f;
            int round = java.lang.Math.round(f - f5);
            int round2 = java.lang.Math.round(f2 - f5);
            android.graphics.drawable.Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setBounds(round, round2, round + max, max + round2);
                this.c.draw(canvas);
                return;
            }
            if (this.e >= 0) {
                if (this.n == null) {
                    this.n = dev.duo.hookprobe.U.a(getContext(), this.e, this.h, 2.1f, false, 24.0f);
                }
                this.n.setBounds(round, round2, round + max, max + round2);
                this.n.draw(canvas);
                return;
            }
            if (this.d != null) {
                this.i.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 1));
                this.i.setColor(this.h);
                this.i.setTextSize(java.lang.Math.max(dev.duo.hookprobe.U.a(getContext(), 9.0f), f4 * 0.72f));
                android.graphics.Paint.FontMetrics fontMetrics = this.i.getFontMetrics();
                canvas.drawText(this.d, f, f2 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.i);
            }
        }

        private static java.lang.String a(java.lang.String str, android.graphics.Paint paint, float f) {
            java.lang.String str2;
            if (paint.measureText(str) <= f) {
                return str;
            }
            int length = str.length();
            do {
                length--;
                if (length <= 0) {
                    return "…";
                }
                str2 = str.substring(0, length) + "…";
            } while (paint.measureText(str2) > f);
            return str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(java.text.Collator collator, dev.duo.hookprobe.RailCustomActivity.f fVar, dev.duo.hookprobe.RailCustomActivity.f fVar2) {
        return collator.compare(fVar.b, fVar2.b);
    }

    private java.lang.String f(java.lang.String str) {
        if (str.startsWith("app:")) {
            dev.duo.hookprobe.RailCustomActivity.f fVar = this.s.get(str.substring(4));
            return fVar == null ? str.substring(4) : fVar.b;
        }
        if (dev.duo.hookprobe.J.f.equals(str)) {
            return "Dock";
        }
        int a2 = a(str);
        return a2 < 0 ? str : h[a2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.List list, boolean z, boolean z2) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.u.clear();
        this.u.addAll(list);
        this.v = z;
        this.w = z2;
        this.K = false;
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        java.lang.System.arraycopy(dev.duo.hookprobe.J.a(this.p), 0, this.p, 0, 7);
    }

    private void c() {
        if (this.L) {
            return;
        }
        boolean z = false;
        for (java.lang.String str : this.l ? this.m : this.p) {
            if (!"-".equals(str)) {
                z = true;
            }
        }
        if (!z) {
            g("侧栏还是空的");
        } else {
            this.L = true;
            r();
        }
    }

    private android.view.View e() {
        android.widget.LinearLayout c2 = dev.duo.hookprobe.U.c(this);
        c2.setPadding(a(4.0f), 0, a(4.0f), 0);
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this);
        frameLayout.setBackground(dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.f, a(20.0f)));
        frameLayout.addView(dev.duo.hookprobe.U.a(this, dev.duo.hookprobe.U.a(this, 3, dev.duo.hookprobe.U.b, 2.4f, false, 18.0f)), new android.widget.FrameLayout.LayoutParams(a(18.0f), a(18.0f), 17));
        frameLayout.setContentDescription("返回");
        frameLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.RailCustomActivity.this.c(view);
            }
        });
        c2.addView(frameLayout, dev.duo.hookprobe.U.a(this, e, e));
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.setPadding(a(12.0f), 0, 0, 0);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 22.0f, dev.duo.hookprobe.U.b, 800);
        a3.setText(this.l ? "工作台" : "外屏 App 内侧栏自定义");
        a3.setLetterSpacing(-0.01f);
        a2.addView(a3);
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a4.setText(this.l ? "工作台第一格（信息格）的按钮；和外屏侧栏分开，各改各的" : "只改外屏 App 模式的右侧栏，全局共用");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, dev.duo.hookprobe.U.b());
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(android.view.View view) {
        if (this.K) {
            g("正在加载配置，请稍候");
            return;
        }
        if (this.D == null) {
            g("未连接 LSPosed，改动无法保存");
            return;
        }
        java.util.List<dev.duo.hookprobe.RailCustomActivity.f> list = this.z;
        final java.util.List<java.lang.String> list2 = this.u;
        java.util.Objects.requireNonNull(list2);
        a("添加到小窗侧边栏", list, new java.util.function.Predicate() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda39
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                return list2.contains((java.lang.String) obj);
            }
        }, new java.util.function.Consumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda40
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                dev.duo.hookprobe.RailCustomActivity.this.b((dev.duo.hookprobe.RailCustomActivity.f) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i2, android.view.View view) {
        a(i2);
    }

    private boolean b(int i2, java.lang.String str) {
        int i3 = i2 / 3;
        if (dev.duo.hookprobe.J.c.equals(str) || dev.duo.hookprobe.J.f.equals(str)) {
            for (int i4 = 0; i4 < 3; i4++) {
                if (!"-".equals(this.m[dev.duo.hookprobe.J.a(i3, i4)])) {
                    g("这一列要先空出来：小窗侧边栏 / Dock 占满一整列");
                    return false;
                }
            }
            for (int i5 = 0; i5 < 3; i5++) {
                this.m[dev.duo.hookprobe.J.a(i3, i5)] = str;
            }
        } else {
            if (dev.duo.hookprobe.J.c(this.m, i3) != null) {
                g("这一列被占位长条占着，先删掉它再放按钮");
                return false;
            }
            if (!"-".equals(this.m[i2])) {
                g("这格已经有按钮了");
                return false;
            }
            if (!dev.duo.hookprobe.J.a(str) && !dev.duo.hookprobe.J.b(str)) {
                return false;
            }
            this.m[i2] = str;
        }
        w();
        this.o.post(new dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda4(this));
        return true;
    }

    private android.graphics.drawable.Drawable h(java.lang.String str) {
        int a2;
        android.graphics.drawable.Drawable a3;
        if (this.t.containsKey(str)) {
            return this.t.get(str);
        }
        if (str.startsWith("app:")) {
            dev.duo.hookprobe.RailCustomActivity.f fVar = this.s.get(str.substring(4));
            if (fVar != null) {
                a3 = fVar.c;
            }
            a3 = null;
        } else {
            if (!dev.duo.hookprobe.J.f.equals(str) && (a2 = a(str)) >= 0) {
                if (!"wechat".equals(str) && !"alipay".equals(str)) {
                    android.graphics.drawable.Drawable a4 = dev.duo.hookprobe.I.a(this, str);
                    if (a4 != null) {
                        a4.setTint(dev.duo.hookprobe.U.b);
                        a3 = a4;
                    } else if ("huanji".equals(str)) {
                        a3 = a(this, "com.miui.huanji");
                    } else if ("calculator".equals(str)) {
                        a3 = a(this, "com.miui.calculator");
                    } else {
                        a3 = "translate".equals(str) ? a(this, "com.xiaomi.aiasst.vision") : a(j[a2], dev.duo.hookprobe.U.b);
                    }
                } else {
                    a3 = dev.duo.hookprobe.N.a(str);
                }
            }
            a3 = null;
        }
        this.t.put(str, a3);
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(java.text.Collator collator, dev.duo.hookprobe.RailCustomActivity.f fVar, dev.duo.hookprobe.RailCustomActivity.f fVar2) {
        return collator.compare(fVar.b, fVar2.b);
    }

    private void a(dev.duo.hookprobe.C0026o c0026o, java.lang.String str, java.util.List<dev.duo.hookprobe.RailCustomActivity.f> list, java.util.List<java.lang.String> list2, java.util.List<dev.duo.hookprobe.RailCustomActivity.f> list3) {
        this.D = c0026o;
        this.v = c0026o == null || c0026o.v();
        this.w = c0026o != null && c0026o.w();
        this.z.clear();
        this.z.addAll(list3);
        this.A.clear();
        for (dev.duo.hookprobe.RailCustomActivity.f fVar : this.z) {
            this.A.put(fVar.a, fVar);
        }
        this.u.clear();
        this.u.addAll(list2);
        this.r.clear();
        this.r.addAll(list);
        this.s.clear();
        for (dev.duo.hookprobe.RailCustomActivity.f fVar2 : this.r) {
            this.s.put(fVar2.a, fVar2);
        }
        if (this.l) {
            java.lang.String[] g2 = dev.duo.hookprobe.J.g(str);
            if (g2 == null) {
                g2 = dev.duo.hookprobe.J.h(dev.duo.hookprobe.J.a());
            }
            for (int i2 = 0; i2 < g2.length; i2++) {
                if (g2[i2].startsWith("app:") && !this.s.containsKey(g2[i2].substring(4))) {
                    g2[i2] = "-";
                }
            }
            java.lang.String[] strArr = this.m;
            java.lang.System.arraycopy(g2, 0, strArr, 0, strArr.length);
        } else {
            java.lang.System.arraycopy(e(str), 0, this.p, 0, 7);
            b();
        }
        this.q.clear();
        for (java.lang.String str2 : this.l ? this.m : this.p) {
            if (str2.startsWith("app:") && !this.q.contains(str2)) {
                this.q.add(str2);
            }
        }
        this.K = false;
        r();
        if (this.D == null) {
            g("未连接 LSPosed，改动本次无法保存");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean c(java.lang.String str) {
        return b(new java.lang.StringBuilder().append("app:").append(str).toString()) || this.q.contains(new java.lang.StringBuilder().append("app:").append(str).toString());
    }

    private void c(final boolean z) {
        if (this.D == null) {
            g("未连接 LSPosed，改动无法保存");
        } else {
            dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.a(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(android.view.View view) {
        if (this.L) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i2) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.MainActivity.class).putExtra("tab", i2).addFlags(603979776));
        finish();
    }

    private java.lang.String[] e(java.lang.String str) {
        java.lang.String[] c2 = dev.duo.hookprobe.J.c(str);
        if (c2 == null) {
            return dev.duo.hookprobe.J.a();
        }
        for (int i2 = 0; i2 < c2.length; i2++) {
            if (c2[i2].startsWith("app:") && !this.s.containsKey(c2[i2].substring(4))) {
                c2[i2] = "-";
            }
        }
        return dev.duo.hookprobe.J.a(c2);
    }

    private void g(java.lang.String str) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        android.widget.Toast.makeText(this, str, 0).show();
    }

    private void a(android.widget.LinearLayout linearLayout, int i2, int i3) {
        int i4;
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3;
        java.lang.String str4;
        final int a2 = dev.duo.hookprobe.J.a(i2, i3);
        java.lang.String[] strArr = this.m;
        java.lang.String str5 = strArr[a2];
        java.lang.String c2 = dev.duo.hookprobe.J.c(strArr, i2);
        android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this);
        if (c2 != null) {
            frameLayout.addView(new dev.duo.hookprobe.RailCustomActivity.e(i3, 3, a(26.0f)), new android.widget.FrameLayout.LayoutParams(-1, -1));
            if (i3 != 1) {
                str3 = "-";
                i4 = -1;
                str4 = dev.duo.hookprobe.J.c;
            } else {
                boolean equals = dev.duo.hookprobe.J.c.equals(c2);
                int a3 = a(999.0f);
                android.graphics.drawable.Drawable a4 = equals ? null : a(this, dev.duo.hookprobe.U.b, 16.0f);
                java.lang.String str6 = equals ? "窗" : null;
                java.lang.String str7 = equals ? "小窗侧边栏" : null;
                android.graphics.drawable.Drawable drawable = a4;
                int i5 = dev.duo.hookprobe.U.b;
                str4 = dev.duo.hookprobe.J.c;
                i4 = -1;
                str3 = "-";
                frameLayout.addView(new dev.duo.hookprobe.RailCustomActivity.g(this, 1, a3, drawable, str6, -1, str7, i5, null), new android.widget.FrameLayout.LayoutParams(-1, -1));
            }
            frameLayout.setContentDescription((i2 == 0 ? "侧栏列" : "按钮列") + "：" + (str4.equals(c2) ? "小窗侧边栏" : "Dock"));
            str2 = str5;
            str = str3;
        } else {
            i4 = -1;
            if ("-".equals(str5)) {
                str = "-";
                frameLayout.addView(new dev.duo.hookprobe.RailCustomActivity.g(this, 2, this.M, null, null, -1, null, dev.duo.hookprobe.U.b, null), new android.widget.FrameLayout.LayoutParams(-1, -1));
                frameLayout.setContentDescription((i2 == 0 ? "侧栏列" : "按钮列") + "第 " + (i3 + 1) + " 格：空");
                str2 = str5;
            } else {
                str = "-";
                int a5 = a(str5);
                str2 = str5;
                frameLayout.addView(new dev.duo.hookprobe.RailCustomActivity.g(this, 3, this.M, h(str5), a5 >= 0 ? i[a5] : null, a5 >= 0 ? k[a5] : -1, null, dev.duo.hookprobe.U.b, str2), new android.widget.FrameLayout.LayoutParams(-1, -1));
                frameLayout.setContentDescription((i2 == 0 ? "侧栏列" : "按钮列") + "第 " + (i3 + 1) + " 格：" + f(str2));
            }
        }
        android.view.View view = new android.view.View(this);
        android.graphics.drawable.GradientDrawable a6 = dev.duo.hookprobe.U.a(0, a(10.0f));
        a6.setStroke(a(2.0f), dev.duo.hookprobe.U.b);
        view.setBackground(a6);
        view.setVisibility(8);
        frameLayout.addView(view, new android.widget.FrameLayout.LayoutParams(i4, i4));
        frameLayout.setTag(view);
        java.lang.String str8 = str;
        if (!str8.equals(str2) && (c2 == null || i3 == 0)) {
            android.widget.TextView a7 = dev.duo.hookprobe.U.a(this, 14.0f, i4, 700);
            a7.setText("−");
            a7.setGravity(17);
            a7.setBackground(dev.duo.hookprobe.U.a(-2543579, a(10.0f)));
            a7.setContentDescription("删除");
            a7.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda20
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view2) {
                    dev.duo.hookprobe.RailCustomActivity.this.b(a2, view2);
                }
            });
            a7.setVisibility(this.L ? 0 : 8);
            android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(a(20.0f), a(20.0f), 8388661);
            layoutParams.topMargin = a(2.0f);
            layoutParams.rightMargin = a(2.0f);
            frameLayout.addView(a7, layoutParams);
        }
        if (!str8.equals(str2)) {
            frameLayout.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda21
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(android.view.View view2) {
                    boolean m;
                    m = dev.duo.hookprobe.RailCustomActivity.this.m(view2);
                    return m;
                }
            });
        }
        frameLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view2) {
                dev.duo.hookprobe.RailCustomActivity.this.n(view2);
            }
        });
        frameLayout.setOnDragListener(b(a2));
        android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(i4, 0, 1.0f);
        if (i3 > 0) {
            layoutParams2.topMargin = c2 == null ? a(6.0f) : 0;
        }
        linearLayout.addView(frameLayout, layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(android.view.View view) {
        d();
        if (this.K) {
            g("正在加载配置，请稍候");
            return true;
        }
        q();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(dev.duo.hookprobe.RailCustomActivity.d dVar, android.view.View view) {
        if (this.L) {
            d();
            g("已退出删除模式，请再长按拖动");
            return true;
        }
        return a(view, dVar.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void b(android.graphics.Canvas canvas, java.lang.String str, float f2, float f3, float f4, android.graphics.Paint paint) {
        char c2;
        float f5 = f4 / 116.0f;
        float f6 = f5 * 4.5f;
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeWidth(f6);
        paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        paint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        android.graphics.Path path = new android.graphics.Path();
        str.getClass();
        switch (str.hashCode()) {
            case 3015911:
                if (str.equals("back")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 3208415:
                if (str.equals("home")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1082295672:
                if (str.equals("recents")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                float f7 = (7.0f * f5) + f2;
                float f8 = 18.0f * f5;
                path.moveTo(f7, f3 - f8);
                path.lineTo(f2 - (f5 * 10.0f), f3);
                path.lineTo(f7, f3 + f8);
                canvas.drawPath(path, paint);
                break;
            case 1:
                paint.setStyle(android.graphics.Paint.Style.FILL);
                path.setFillType(android.graphics.Path.FillType.EVEN_ODD);
                float f9 = 21.0f * f5;
                float f10 = f2 - f9;
                float f11 = f3 - f9;
                float f12 = 3.0f * f5;
                float f13 = f2 - f12;
                float f14 = f3 - f12;
                float f15 = 6.5f * f5;
                a(path, f10, f11, f13, f14, f15, f6);
                float f16 = f2 + f12;
                float f17 = f2 + f9;
                a(path, f16, f11, f17, f14, f15, f6);
                float f18 = f3 + f12;
                float f19 = f3 + f9;
                a(path, f10, f18, f13, f19, f15, f6);
                a(path, f16, f18, f17, f19, f15, f6);
                canvas.drawPath(path, paint);
                break;
            case 2:
                paint.setStyle(android.graphics.Paint.Style.FILL);
                path.setFillType(android.graphics.Path.FillType.EVEN_ODD);
                canvas.save();
                float f20 = 15.0f * f5;
                canvas.clipOutRect(f2 - (23.0f * f5), f3 - f20, f20 + f2, (25.0f * f5) + f3);
                float f21 = 10.0f * f5;
                float f22 = f5 * 20.0f;
                float f23 = 18.0f * f5;
                float f24 = 8.5f * f5;
                a(path, f2 - f21, f3 - f22, f2 + f23, f3 + f21, f24, f6);
                canvas.drawPath(path, paint);
                canvas.restore();
                path.reset();
                a(path, f2 - f23, f3 - f21, f2 + f21, f3 + f22, f24, f6);
                canvas.drawPath(path, paint);
                break;
            default:
                canvas.drawCircle(f2, f3, f5 * 4.0f, paint);
                break;
        }
    }

    private java.util.List<dev.duo.hookprobe.RailCustomActivity.d> a() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i2 = 0;
        while (true) {
            java.lang.String[] strArr = g;
            if (i2 >= strArr.length) {
                break;
            }
            java.lang.String str = strArr[i2];
            arrayList.add(new dev.duo.hookprobe.RailCustomActivity.d(str, h[i2], i[i2], h(str), k[i2], false));
            i2++;
        }
        arrayList.add(new dev.duo.hookprobe.RailCustomActivity.d(null, "选择 App", "+", null, -1, true));
        arrayList.add(new dev.duo.hookprobe.RailCustomActivity.d(dev.duo.hookprobe.J.f, "Dock", null, a(this, dev.duo.hookprobe.U.b, 26.0f), -1, false));
        arrayList.add(new dev.duo.hookprobe.RailCustomActivity.d(dev.duo.hookprobe.J.c, "小窗侧边栏", "窗", null, -1, false));
        for (java.lang.String str2 : this.q) {
            dev.duo.hookprobe.RailCustomActivity.f fVar = this.s.get(str2.substring(4));
            if (fVar != null) {
                arrayList.add(new dev.duo.hookprobe.RailCustomActivity.d(str2, fVar.b, null, fVar.c, -1, false));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static android.graphics.drawable.Drawable b(android.content.Context context, int i2) {
        android.graphics.drawable.GradientDrawable.Orientation orientation = android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM;
        boolean z = dev.duo.hookprobe.U.a;
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable(orientation, new int[]{z ? -11908528 : -1, z ? -14474454 : -1578513});
        gradientDrawable.setShape(1);
        int max = java.lang.Math.max(1, java.lang.Math.round(i2 * 0.018f));
        android.graphics.drawable.InsetDrawable insetDrawable = new android.graphics.drawable.InsetDrawable((android.graphics.drawable.Drawable) gradientDrawable, max, max, max, max);
        android.graphics.drawable.GradientDrawable gradientDrawable2 = new android.graphics.drawable.GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(0);
        gradientDrawable2.setStroke(max, dev.duo.hookprobe.U.a ? 1090519039 : 520093696);
        return new android.graphics.drawable.LayerDrawable(new android.graphics.drawable.Drawable[]{insetDrawable, gradientDrawable2});
    }

    private void d() {
        if (this.L) {
            this.L = false;
            r();
        }
    }

    private android.view.View a(final dev.duo.hookprobe.RailCustomActivity.d dVar) {
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.setGravity(1);
        java.lang.String str = dVar.a;
        boolean z = str != null && b(str);
        dev.duo.hookprobe.RailCustomActivity.g gVar = new dev.duo.hookprobe.RailCustomActivity.g(this, 0, this.M, dVar.d, dVar.c, dVar.e, dVar.b, dev.duo.hookprobe.U.b, dVar.a);
        if (z) {
            gVar.setAlpha(0.45f);
        }
        a2.addView(gVar, new android.widget.LinearLayout.LayoutParams(-1, this.M + a(18.0f)));
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 9.0f, -13326253, 600);
        a3.setText(z ? "已添加" : "");
        a3.setGravity(17);
        a2.addView(a3, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(14.0f)), this, 2.0f));
        if (dVar.f) {
            a2.setContentDescription("选择 App");
            a2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda41
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.RailCustomActivity.this.a(view);
                }
            });
            a2.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda42
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(android.view.View view) {
                    boolean b2;
                    b2 = dev.duo.hookprobe.RailCustomActivity.this.b(view);
                    return b2;
                }
            });
            return a2;
        }
        if (z) {
            a2.setContentDescription(dVar.b + "，已添加");
            a2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda43
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    dev.duo.hookprobe.RailCustomActivity.this.a(dVar, view);
                }
            });
            return a2;
        }
        a2.setContentDescription(dVar.b + "，长按拖到右侧空格");
        a2.setOnLongClickListener(new android.view.View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda44
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(android.view.View view) {
                boolean b2;
                b2 = dev.duo.hookprobe.RailCustomActivity.this.b(dVar, view);
                return b2;
            }
        });
        a2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.RailCustomActivity.this.c(dVar, view);
            }
        });
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.lang.String str) {
        boolean z;
        try {
            z = this.l ? this.D.t(str) : this.D.s(str);
        } catch (java.lang.Throwable th) {
            android.util.Log.w("MiDuoRail", "保存侧栏配置失败", th);
            z = false;
        }
        if (z) {
            return;
        }
        this.o.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.j();
            }
        });
    }

    private android.view.View.OnDragListener b(final int i2) {
        return new android.view.View.OnDragListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnDragListener
            public final boolean onDrag(android.view.View view, android.view.DragEvent dragEvent) {
                boolean a2;
                a2 = dev.duo.hookprobe.RailCustomActivity.this.a(i2, view, dragEvent);
                return a2;
            }
        };
    }

    private void d(final boolean z) {
        if (this.D == null) {
            g("未连接 LSPosed，改动无法保存");
        } else {
            dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.b(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z) {
        boolean z2;
        try {
            z2 = this.D.o(z);
        } catch (java.lang.Throwable th) {
            android.util.Log.w("MiDuoRail", "保存四方块位置失败", th);
            z2 = false;
        }
        if (z2) {
            return;
        }
        this.o.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.m();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(dev.duo.hookprobe.RailCustomActivity.f fVar) {
        a(fVar.a, true);
    }

    private boolean b(java.lang.String str) {
        if (str == null) {
            return false;
        }
        for (java.lang.String str2 : this.l ? this.m : this.p) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        d();
        if (this.K) {
            g("正在加载配置，请稍候");
        } else {
            q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(dev.duo.hookprobe.RailCustomActivity.d dVar, android.view.View view) {
        d();
        g("「" + dVar.b + "」已添加到侧栏");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, android.view.View view) {
        a(i2);
    }

    private static android.graphics.drawable.Drawable a(android.content.Context context, java.lang.String str) {
        try {
            return context.getPackageManager().getApplicationIcon(str);
        } catch (java.lang.Throwable th) {
            return null;
        }
    }

    private android.graphics.drawable.Drawable a(java.lang.String str, int i2) {
        android.graphics.drawable.Drawable drawable;
        if (str != null && !str.isEmpty()) {
            if (!this.P) {
                this.P = true;
                try {
                    this.O = createPackageContext("com.android.systemui", 0).getResources();
                } catch (java.lang.Throwable th) {
                    android.util.Log.w("MiDuoRail", "读取 SystemUI 资源失败，用自绘图标", th);
                    this.O = null;
                }
            }
            if (this.O == null) {
                return null;
            }
            for (java.lang.String str2 : str.split(",")) {
                java.lang.String trim = str2.trim();
                if (!trim.isEmpty()) {
                    try {
                        int identifier = this.O.getIdentifier(trim, "drawable", "com.android.systemui");
                        if (identifier == 0) {
                            identifier = this.O.getIdentifier(trim, "mipmap", "com.android.systemui");
                        }
                        if (identifier != 0 && (drawable = this.O.getDrawable(identifier, null)) != null) {
                            android.graphics.drawable.Drawable mutate = drawable.mutate();
                            mutate.setTint(i2);
                            return mutate;
                        }
                    } catch (java.lang.Throwable th2) {
                    }
                }
            }
        }
        return null;
    }

    private static void a(android.graphics.Path path, float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 2.0f;
        float f9 = f6 + f8;
        android.graphics.Path.Direction direction = android.graphics.Path.Direction.CW;
        path.addRoundRect(f2 - f8, f3 - f8, f4 + f8, f5 + f8, f9, f9, direction);
        float f10 = f2 + f8;
        float f11 = f3 + f8;
        float f12 = f4 - f8;
        float f13 = f5 - f8;
        float f14 = f6 - f8;
        path.addRoundRect(f10, f11, f12, f13, java.lang.Math.max(0.0f, f14), java.lang.Math.max(0.0f, f14), direction);
    }

    private boolean a(android.view.View view, java.lang.String str) {
        if (this.K) {
            g("正在加载配置，请稍候");
            return true;
        }
        if (this.D == null) {
            g("未连接 LSPosed，改动无法保存");
            return true;
        }
        view.startDragAndDrop(android.content.ClipData.newPlainText("railCustom", str), new android.view.View.DragShadowBuilder(view), str, 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(int i2, android.view.View view, android.view.DragEvent dragEvent) {
        switch (dragEvent.getAction()) {
            case 1:
                return dragEvent.getLocalState() instanceof java.lang.String;
            case 2:
            default:
                return false;
            case 3:
                a(view, false);
                return (dragEvent.getLocalState() instanceof java.lang.String) && a(i2, (java.lang.String) dragEvent.getLocalState());
            case 4:
            case 6:
                a(view, false);
                return true;
            case 5:
                a(view, true);
                return true;
        }
    }

    private void a(android.view.View view, boolean z) {
        java.lang.Object tag = view.getTag();
        if (tag instanceof android.view.View) {
            ((android.view.View) tag).setVisibility(z ? 0 : 8);
        }
    }

    private boolean a(int i2, java.lang.String str) {
        int i3;
        if (this.K || this.L) {
            return false;
        }
        if (this.D == null) {
            g("未连接 LSPosed，改动无法保存");
            return false;
        }
        if (b(str)) {
            g("这个已经添加过了");
            return false;
        }
        if (this.l) {
            return b(i2, str);
        }
        if (dev.duo.hookprobe.J.c.equals(str)) {
            int i4 = 0;
            while (true) {
                i3 = i2 + i4;
                if (i3 >= 7 || !"-".equals(this.p[i3])) {
                    break;
                }
                i4++;
            }
            if (i4 < 3) {
                g("从这一格起要有连续 3 个空格，小窗侧边栏才放得下");
                return false;
            }
            while (i2 < i3) {
                this.p[i2] = dev.duo.hookprobe.J.c;
                i2++;
            }
        } else if (dev.duo.hookprobe.J.f.equals(str)) {
            if (i2 > 4) {
                g("Dock 只能从第 1~4 格开始放下（占连续 3 格）");
                return false;
            }
            int i5 = i2;
            while (true) {
                int i6 = i2 + 3;
                if (i5 >= i6) {
                    while (i2 < i6) {
                        this.p[i2] = dev.duo.hookprobe.J.f;
                        i2++;
                    }
                } else {
                    if (!"-".equals(this.p[i5])) {
                        g("Dock 需要连续 3 个空格");
                        return false;
                    }
                    i5++;
                }
            }
        } else {
            if (dev.duo.hookprobe.J.c.equals(this.p[i2])) {
                g("这格被小窗侧边栏占着，先拖它的把手缩小，再放按钮");
                return false;
            }
            if (!"-".equals(this.p[i2])) {
                g("这格已经有按钮了");
                return false;
            }
            if (!dev.duo.hookprobe.J.a(str) && !dev.duo.hookprobe.J.b(str)) {
                return false;
            }
            this.p[i2] = str;
        }
        b();
        w();
        this.o.post(new dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda4(this));
        return true;
    }

    private void a(int i2) {
        if (this.l) {
            int i3 = i2 / 3;
            if (dev.duo.hookprobe.J.c(this.m, i3) != null) {
                for (int i4 = 0; i4 < 3; i4++) {
                    this.m[dev.duo.hookprobe.J.a(i3, i4)] = "-";
                }
            } else {
                this.m[i2] = "-";
            }
            this.L = false;
            w();
            r();
            return;
        }
        if (dev.duo.hookprobe.J.c.equals(this.p[i2])) {
            for (int i5 = 0; i5 < 7; i5++) {
                if (dev.duo.hookprobe.J.c.equals(this.p[i5])) {
                    this.p[i5] = "-";
                }
            }
        } else if (dev.duo.hookprobe.J.f.equals(this.p[i2])) {
            for (int i6 = 0; i6 < 7; i6++) {
                if (dev.duo.hookprobe.J.f.equals(this.p[i6])) {
                    this.p[i6] = "-";
                }
            }
        } else {
            this.p[i2] = "-";
        }
        b();
        this.L = false;
        w();
        r();
    }

    private void a(java.lang.String str, java.util.List<dev.duo.hookprobe.RailCustomActivity.f> list, java.util.function.Predicate<java.lang.String> predicate, final java.util.function.Consumer<dev.duo.hookprobe.RailCustomActivity.f> consumer) {
        final java.util.ArrayList arrayList = new java.util.ArrayList(list);
        android.widget.LinearLayout a2 = dev.duo.hookprobe.U.a((android.content.Context) this);
        a2.setPadding(a(20.0f), a(4.0f), a(20.0f), a(4.0f));
        android.widget.EditText editText = new android.widget.EditText(this);
        dev.duo.hookprobe.U.a(editText);
        editText.setHint("搜索 App");
        a2.addView(editText, dev.duo.hookprobe.U.a());
        android.widget.ListView listView = new android.widget.ListView(this);
        listView.setDivider(null);
        listView.setVerticalScrollBarEnabled(false);
        listView.setBackgroundColor(0);
        dev.duo.hookprobe.RailCustomActivity.a aVar = new dev.duo.hookprobe.RailCustomActivity.a(arrayList, predicate);
        listView.setAdapter((android.widget.ListAdapter) aVar);
        a2.addView(listView, dev.duo.hookprobe.U.a(new android.widget.LinearLayout.LayoutParams(-1, a(320.0f)), this, 8.0f));
        final android.app.AlertDialog create = dev.duo.hookprobe.U.a((android.app.Activity) this, str).setView(a2).setNegativeButton("取消", (android.content.DialogInterface.OnClickListener) null).create();
        editText.addTextChangedListener(new dev.duo.hookprobe.RailCustomActivity.b(arrayList, list, aVar));
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda16
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(android.widget.AdapterView adapterView, android.view.View view, int i2, long j2) {
                dev.duo.hookprobe.RailCustomActivity.a(arrayList, create, consumer, adapterView, view, i2, j2);
            }
        });
        dev.duo.hookprobe.U.a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(java.util.List list, android.app.AlertDialog alertDialog, java.util.function.Consumer consumer, android.widget.AdapterView adapterView, android.view.View view, int i2, long j2) {
        dev.duo.hookprobe.RailCustomActivity.f fVar = (dev.duo.hookprobe.RailCustomActivity.f) list.get(i2);
        alertDialog.dismiss();
        consumer.accept(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.TextView textView, android.widget.CompoundButton compoundButton, boolean z) {
        this.v = z;
        textView.setText(z ? "小窗" : "全屏");
        compoundButton.setContentDescription(z ? "小窗打开" : "全屏打开");
        c(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z) {
        boolean z2;
        try {
            z2 = this.D.n(z);
        } catch (java.lang.Throwable th) {
            android.util.Log.w("MiDuoRail", "保存小窗侧边栏打开方式失败", th);
            z2 = false;
        }
        if (z2) {
            return;
        }
        this.o.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.widget.CompoundButton compoundButton, boolean z) {
        this.w = z;
        d(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, android.view.View view) {
        a(str, false);
    }

    private android.graphics.drawable.Drawable a(android.graphics.drawable.Drawable drawable, int i2) {
        if (drawable == null) {
            return null;
        }
        try {
            return getPackageManager().getUserBadgedIcon(drawable, android.os.UserHandle.getUserHandleForUid(i2 * 100000));
        } catch (java.lang.RuntimeException e2) {
            return drawable;
        }
    }

    private android.view.View a(android.graphics.drawable.Drawable drawable, java.lang.String str, java.lang.String str2) {
        return new dev.duo.hookprobe.RailCustomActivity.g(this, str != null ? 2 : 0, this.M, drawable, str, -1, str2, dev.duo.hookprobe.U.b, drawable == null ? null : "app:");
    }

    private void a(final java.lang.String str, final boolean z) {
        if (this.K) {
            g("正在读取或保存配置，请稍候");
        } else if (this.D == null) {
            g("未连接 LSPosed，改动无法保存");
        } else {
            this.K = true;
            dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.a(z, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, java.lang.String str) {
        boolean remove;
        final java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            arrayList.addAll(this.D.h());
            final java.lang.String str2 = null;
            if (z) {
                if (arrayList.contains(str)) {
                    str2 = "应用已经在小窗侧边栏里了";
                } else if (arrayList.size() >= 12) {
                    str2 = "最多固定 12 个应用";
                } else {
                    arrayList.add(str);
                    remove = true;
                }
                remove = false;
            } else {
                remove = arrayList.remove(str);
            }
            if (remove && !this.D.a(arrayList)) {
                throw new java.lang.IllegalStateException("LSPosed 未保存固定应用");
            }
            this.o.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.a(arrayList, str2);
                }
            });
        } catch (java.lang.Throwable th) {
            android.util.Log.w("MiDuoRail", "保存小窗侧边栏应用失败", th);
            this.o.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.k();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.List list, java.lang.String str) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.u.clear();
        this.u.addAll(list);
        this.K = false;
        t();
        if (str != null) {
            g(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(dev.duo.hookprobe.RailCustomActivity.f fVar) {
        java.lang.String str = "app:" + fVar.a;
        if (!b(str) && !this.q.contains(str)) {
            this.q.add(str);
            r();
            android.widget.ScrollView scrollView = this.I;
            if (scrollView != null) {
                scrollView.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        dev.duo.hookprobe.RailCustomActivity.this.f();
                    }
                });
            }
            g("已加入候选，长按拖到右侧空格");
            return;
        }
        g("「" + fVar.b + "」已经在侧栏或候选里了");
    }

    private static int a(java.lang.String str) {
        int i2 = 0;
        while (true) {
            java.lang.String[] strArr = g;
            if (i2 >= strArr.length) {
                return -1;
            }
            if (strArr[i2].equals(str)) {
                return i2;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(float f2) {
        return dev.duo.hookprobe.U.a(this, f2);
    }

    private static android.graphics.drawable.Drawable a(android.content.Context context, int i2, float f2) {
        return new dev.duo.hookprobe.RailCustomActivity.c(i2, dev.duo.hookprobe.U.a(context, f2));
    }
}
