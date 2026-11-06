package dev.duo.hookprobe;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.DragEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.RailCustomActivity;
import dev.duo.hookprobe.T;
import dev.duo.taskcore.WorkspaceProtocol;
import io.github.libxposed.service.XposedService;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.Predicate;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class RailCustomActivity extends Activity {
    private static final int a = 7;
    private static final String b = "-";
    private static final float c = 84.0f;
    private static final float d = 40.0f;
    private static final int e = 4;
    private static final String[] f = J.h;
    private static final String[] g = {"返回", "主页", "最近任务", "截屏", "手电筒", "息屏", "静音", "旋转锁定", "录屏", "热点", "深色模式", "自动亮度", "定位", "护眼模式", "微信", "支付宝", "蓝牙", "飞行模式", "省电模式", "投屏", "互传", "常亮", "计算器", "翻译", "上个应用"};
    private static final String[] h = {"返", "主", "近", "截", "手", "息", "静", "转", "录", "热", "深", "亮", "定", "护", "微", "支", "蓝", "飞", "省", "投", "互", "常", "算", "译", "切"};
    private static final String[] i = {"", "", "", "ic_qs_screenshot", "ic_qs_flashlight_disabled", "ic_qs_screenlock", "ic_qs_mute_off", "ic_qs_auto_rotate_disabled", "qs_screen_record_icon_off", "ic_qs_hotspot_disabled", "ic_qs_night_mode_off", "ic_qs_brightness_auto", "qs_location_icon_off", "ic_qs_paper_mode_off", "", "", "ic_qs_bluetooth_off", "ic_qs_lite_airplane", "ic_qs_battery_saver_off", "ic_cast", "", "ic_keep_off", "", "", ""};
    private static final int[] j = {3, 0, 1, -1, -1, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 15};
    private LinearLayout A;
    private j B;
    private View C;
    private View D;
    private ScrollView E;
    private TextView F;
    private boolean H;
    private int I;
    private int J;
    private Resources K;
    private boolean L;
    private boolean s;
    private Switch t;
    private Switch u;
    private LinearLayout x;
    private T.d y;
    private o z;
    private final Handler k = new Handler(Looper.getMainLooper());
    private final String[] l = new String[7];
    private final List<String> m = new ArrayList();
    private final List<f> n = new ArrayList();
    private final Map<String, f> o = new HashMap();
    private final Map<String, Drawable> p = new HashMap();
    private final List<String> q = new ArrayList();
    private boolean r = true;
    private final List<f> v = new ArrayList();
    private final Map<String, f> w = new HashMap();
    private boolean G = true;

    class a extends BaseAdapter {
        final /* synthetic */ List a;
        final /* synthetic */ Predicate b;

        a(List list, Predicate predicate) {
            this.a = list;
            this.b = predicate;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.a.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            f fVar = (f) this.a.get(i);
            LinearLayout c = T.c(dev.duo.hookprobe.RailCustomActivity.this);
            dev.duo.hookprobe.c.setMinimumHeight(dev.duo.hookprobe.RailCustomActivity.this.a(56.0f));
            dev.duo.hookprobe.c.setPadding(dev.duo.hookprobe.RailCustomActivity.this.a(8.0f), dev.duo.hookprobe.RailCustomActivity.this.a(8.0f), dev.duo.hookprobe.RailCustomActivity.this.a(8.0f), dev.duo.hookprobe.RailCustomActivity.this.a(8.0f));
            dev.duo.hookprobe.c.addView(T.a(dev.duo.hookprobe.RailCustomActivity.this, fVar.c), T.a(dev.duo.hookprobe.RailCustomActivity.this, 30.0f, 30.0f));
            TextView a = T.a(dev.duo.hookprobe.RailCustomActivity.this, 15.0f, T.b, 500);
            dev.duo.hookprobe.a.setText(fVar.b);
            dev.duo.hookprobe.a.setSingleLine(true);
            dev.duo.hookprobe.a.setEllipsize(TextUtils.TruncateAt.END);
            LinearLayout.LayoutParams b = T.b();
            dev.duo.hookprobe.b.leftMargin = dev.duo.hookprobe.RailCustomActivity.this.a(12.0f);
            dev.duo.hookprobe.c.addView(a, b);
            if (this.b.test(fVar.a)) {
                TextView a2 = T.a(dev.duo.hookprobe.RailCustomActivity.this, 12.0f, -13326253, 600);
                a2.setText("已添加");
                dev.duo.hookprobe.c.addView(a2);
            }
            return c;
        }
    }

    class b implements TextWatcher {
        final /* synthetic */ List a;
        final /* synthetic */ List b;
        final /* synthetic */ BaseAdapter c;

        b(List list, List list2, BaseAdapter baseAdapter) {
            this.a = list;
            this.b = list2;
            this.c = baseAdapter;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String lowerCase = editable.toString().trim().toLowerCase(Locale.ROOT);
            this.a.clear();
            for (f fVar : this.b) {
                if (!lowerCase.isEmpty()) {
                    String str = fVar.b;
                    Locale locale = Locale.ROOT;
                    if (!str.toLowerCase(locale).contains(lowerCase) && !fVar.a.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                this.a.add(fVar);
            }
            this.c.notifyDataSetChanged();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class c extends Drawable {
        private final Paint a = new Paint(1);
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        c(int i, int i2) {
            this.b = i;
            this.c = i2;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().left, getBounds().top);
            canvas.scale(getBounds().width() / 24.0f, getBounds().height() / 24.0f);
            this.a.setColor(this.b);
            this.a.setStyle(Paint.Style.STROKE);
            this.a.setStrokeWidth(1.8f);
            canvas.drawRoundRect(2.5f, 8.0f, 21.5f, 18.0f, 3.5f, 3.5f, this.a);
            this.a.setStyle(Paint.Style.FILL);
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
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class d {
        final String a;
        final String b;
        final String c;
        final Drawable d;
        final int e;
        final boolean f;

        d(String str, String str2, String str3, Drawable drawable, int i, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = drawable;
            this.e = i;
            this.f = z;
        }
    }

    private final class e extends View {
        private final int a;
        private final int b;
        private final int c;
        private final Paint d;

        e(int i, int i2, int i3) {
            super(dev.duo.hookprobe.RailCustomActivity.this);
            this.d = new Paint(1);
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int width = getWidth();
            int height = getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            float f = height * this.b;
            float max = Math.max(1, dev.duo.hookprobe.RailCustomActivity.this.a(0.9f));
            canvas.save();
            canvas.clipRect(0, 0, width, height);
            canvas.translate(0.0f, (-this.a) * height);
            float f2 = max / 2.0f;
            RectF rectF = new RectF(f2, f2, width - f2, f - f2);
            this.d.setShader(null);
            this.d.setStyle(Paint.Style.FILL);
            this.d.setColor(T.a ? 855638016 : 335544320);
            RectF rectF2 = new RectF(rectF.left, rectF.top + dev.duo.hookprobe.RailCustomActivity.this.a(1.6f), rectF.right, rectF.bottom + dev.duo.hookprobe.RailCustomActivity.this.a(1.6f));
            float f3 = this.c;
            canvas.drawRoundRect(rectF2, f3, f3, this.d);
            Paint paint = this.d;
            boolean z = T.a;
            paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f, z ? -11908528 : -1, z ? -14474454 : -1578513, Shader.TileMode.CLAMP));
            float f4 = this.c;
            canvas.drawRoundRect(rectF, f4, f4, this.d);
            this.d.setShader(null);
            this.d.setStyle(Paint.Style.STROKE);
            this.d.setStrokeWidth(max);
            this.d.setColor(T.a ? 1090519039 : 520093696);
            float f5 = this.c;
            canvas.drawRoundRect(rectF, f5, f5, this.d);
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class f {
        String a;
        String b;
        Drawable c;

        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    private static final class h extends View {
        private final Paint a;
        private final boolean b;

        h(Context context, boolean z) {
            super(context);
            this.a = new Paint(1);
            this.b = z;
        }

        @Override // android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float width = getWidth();
            float height = getHeight();
            this.a.setStyle(Paint.Style.FILL);
            this.a.setColor(T.a ? isPressed() ? -10855838 : -231065024 : isPressed() ? -1710614 : -218103809);
            float f = width * 0.3f;
            canvas.drawRoundRect(0.0f, 0.0f, width, height, f, f, this.a);
            this.a.setStyle(Paint.Style.STROKE);
            this.a.setStrokeCap(Paint.Cap.ROUND);
            this.a.setStrokeWidth(0.08f * width);
            this.a.setColor(T.b);
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

    private final class i implements j.a {
        private int a;
        private int b;
        private boolean c;

        private i() {
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.j.a
        public boolean a(float f, float f2) {
            if (!dev.duo.hookprobe.RailCustomActivity.this.G && !dev.duo.hookprobe.RailCustomActivity.this.H && dev.duo.hookprobe.RailCustomActivity.this.z != null) {
                if (a(dev.duo.hookprobe.RailCustomActivity.this.C, f, f2)) {
                    this.c = true;
                } else if (a(dev.duo.hookprobe.RailCustomActivity.this.D, f, f2)) {
                    this.c = false;
                }
                this.a = J.d(dev.duo.hookprobe.RailCustomActivity.this.l);
                this.b = J.e(dev.duo.hookprobe.RailCustomActivity.this.l);
                return true;
            }
            return false;
        }

        /* synthetic */ i(RailCustomActivity railCustomActivity, a aVar) {
            this();
        }

        private boolean a(View view, float f, float f2) {
            if (view == null) {
                return false;
            }
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            dev.duo.hookprobe.RailCustomActivity.this.B.offsetDescendantRectToMyCoords(view, rect);
            rect.inset(-dev.duo.hookprobe.RailCustomActivity.this.a(12.0f), -dev.duo.hookprobe.RailCustomActivity.this.a(12.0f));
            if (!rect.contains((int) f, (int) f2)) {
                return false;
            }
            view.setPressed(true);
            return true;
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.j.a
        public void a(float f) {
            if (dev.duo.hookprobe.RailCustomActivity.this.B.getChildCount() == 0) {
                return;
            }
            float childCount = dev.duo.hookprobe.RailCustomActivity.this.B.getChildCount();
            int i = 0;
            while (true) {
                if (i >= dev.duo.hookprobe.RailCustomActivity.this.B.getChildCount()) {
                    break;
                }
                View childAt = dev.duo.hookprobe.RailCustomActivity.this.B.getChildAt(i);
                if (f < childAt.getBottom()) {
                    childCount = i + Math.max(0.0f, (f - childAt.getTop()) / Math.max(1, childAt.getHeight()));
                    break;
                }
                i++;
            }
            String[] b = this.c ? J.b(dev.duo.hookprobe.RailCustomActivity.this.l, (int) Math.floor(childCount)) : J.a(dev.duo.hookprobe.RailCustomActivity.this.l, Math.round(childCount));
            if (b == null || Arrays.equals(b, dev.duo.hookprobe.RailCustomActivity.this.l)) {
                return;
            }
            System.arraycopy(b, 0, dev.duo.hookprobe.RailCustomActivity.this.l, 0, 7);
            dev.duo.hookprobe.RailCustomActivity.this.u();
            dev.duo.hookprobe.RailCustomActivity.this.B.performHapticFeedback(4);
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.j.a
        public void a() {
            if (J.d(dev.duo.hookprobe.RailCustomActivity.this.l) != this.a || J.e(dev.duo.hookprobe.RailCustomActivity.this.l) != this.b) {
                dev.duo.hookprobe.RailCustomActivity.this.b();
                dev.duo.hookprobe.RailCustomActivity.this.v();
            }
            dev.duo.hookprobe.RailCustomActivity.this.r();
        }
    }

    private static final class j extends LinearLayout {
        private final int a;
        a b;
        private boolean c;

        interface a {
            void a();

            void a(float f);

            boolean a(float f, float f2);
        }

        j(Context context) {
            super(context);
            setOrientation(1);
            this.a = T.a(context, RailCustomActivity.d);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            a aVar;
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
            if (childCount == 0 || View.MeasureSpec.getMode(i2) != 1073741824) {
                super.onMeasure(i, i2);
                return;
            }
            int size = (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
            int i3 = 0;
            for (int i4 = 0; i4 < childCount; i4++) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                i3 += layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int max = Math.max(this.a, (size - i3) / childCount);
            int max2 = Math.max(0, (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight());
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (max2 - layoutParams2.leftMargin) - layoutParams2.rightMargin), 1073741824), View.MeasureSpec.makeMeasureSpec(max, 1073741824));
            }
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
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

    private List<f> n() {
        PackageManager packageManager = getPackageManager();
        Intent addCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
        HashMap hashMap = new HashMap();
        Iterator<ResolveInfo> it = packageManager.queryIntentActivities(addCategory, 0).iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            a aVar = null;
            ApplicationInfo applicationInfo = activityInfo == null ? null : activityInfo.applicationInfo;
            if (applicationInfo != null && !hashMap.containsKey(applicationInfo.packageName) && !applicationInfo.packageName.equals(getPackageName())) {
                f fVar = new f(aVar);
                fVar.a = applicationInfo.packageName;
                fVar.b = String.valueOf(applicationInfo.loadLabel(packageManager));
                fVar.c = applicationInfo.loadIcon(packageManager);
                hashMap.put(fVar.a, fVar);
            }
        }
        ArrayList arrayList = new ArrayList(hashMap.values());
        final Collator collator = Collator.getInstance(Locale.CHINA);
        Collections.sort(arrayList, new Comparator() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = RailCustomActivity.a(collator, (RailCustomActivity.f) obj, (RailCustomActivity.f) obj2);
                return a2;
            }
        });
        return arrayList;
    }

    private void o() {
        this.G = true;
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.g();
            }
        });
    }

    private int p() {
        return Math.round(getResources().getDisplayMetrics().density * 42.18182f);
    }

    private void q() {
        if (this.n.isEmpty()) {
            g("没有可添加的 App（只列用户自己安装的 App）");
        } else {
            a("选择 App", this.n, new Predicate() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda26
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean c2;
                    c2 = dev.duo.hookprobe.RailCustomActivity.this.c((String) obj);
                    return c2;
                }
            }, new Consumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda27
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    dev.duo.hookprobe.RailCustomActivity.this.a((RailCustomActivity.f) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        y();
        t();
        s();
        u();
    }

    private void s() {
        LinearLayout linearLayout = this.A;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        List<d> a2 = a();
        LinearLayout linearLayout2 = null;
        for (int i2 = 0; i2 < a2.size(); i2++) {
            if (i2 % 4 == 0) {
                linearLayout2 = T.c(this);
                linearLayout2.setGravity(48);
                this.A.addView(linearLayout2, T.a());
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, this.J, 1.0f);
            layoutParams.setMargins(a(3.0f), a(3.0f), a(3.0f), a(3.0f));
            linearLayout2.addView(a(a2.get(i2)), layoutParams);
        }
        int size = a2.size() % 4;
        if (linearLayout2 == null || size == 0) {
            return;
        }
        while (size < 4) {
            View view = new View(this);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, this.J, 1.0f);
            layoutParams2.setMargins(a(3.0f), a(3.0f), a(3.0f), a(3.0f));
            linearLayout2.addView(view, layoutParams2);
            size++;
        }
    }

    private void t() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2 = this.x;
        if (linearLayout2 == null) {
            return;
        }
        linearLayout2.removeAllViews();
        if (J.c(this.l)) {
            this.x.addView(w(), T.a());
            this.x.addView(x(), T.a());
            TextView a2 = T.a(this, 11.0f, T.d, J.m);
            a2.setText("固定在侧边栏上面，点应用移除；下面会接着显示最近用小窗打开过的应用。双开分身应用在侧栏面板里添加。四方块放到列表最后时，侧边栏占几格就显示几个应用，滑到底点四方块打开面板。");
            a2.setLineSpacing(0.0f, 1.2f);
            this.x.addView(a2, T.a(T.a(), this, 2.0f));
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = this.q.iterator();
            while (true) {
                linearLayout = null;
                if (!it.hasNext()) {
                    break;
                }
                final String next = it.next();
                f fVar = this.w.get(J.g(next));
                int h2 = J.h(next);
                String str = fVar == null ? J.g(next) + "（暂不可用）" : fVar.b;
                if (h2 != 0) {
                    str = str + "（分身）";
                }
                Drawable drawable = fVar == null ? null : fVar.c;
                if (h2 != 0) {
                    drawable = a(drawable, h2);
                }
                View a3 = a(drawable, (String) null, str);
                a3.setContentDescription(str + "，点一下移除");
                a3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dev.duo.hookprobe.RailCustomActivity.this.a(next, view);
                    }
                });
                arrayList.add(a3);
            }
            if (this.q.size() < 12) {
                View a4 = a((Drawable) null, "+", "添加");
                a4.setContentDescription("添加小窗侧边栏应用");
                a4.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dev.duo.hookprobe.RailCustomActivity.this.i(view);
                    }
                });
                arrayList.add(a4);
            }
            int i2 = 0;
            while (i2 < arrayList.size()) {
                if (i2 % 4 == 0) {
                    linearLayout = T.c(this);
                    linearLayout.setGravity(48);
                    this.x.addView(linearLayout, T.a(T.a(), this, i2 == 0 ? 6.0f : 0.0f));
                }
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, this.I + a(22.0f), 1.0f);
                layoutParams.setMargins(a(3.0f), a(3.0f), a(3.0f), a(3.0f));
                linearLayout.addView((View) arrayList.get(i2), layoutParams);
                i2++;
            }
            for (int size = arrayList.size() % 4; linearLayout != null && size != 0 && size < 4; size++) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, this.I + a(22.0f), 1.0f);
                layoutParams2.setMargins(a(3.0f), a(3.0f), a(3.0f), a(3.0f));
                linearLayout.addView(new View(this), layoutParams2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        j jVar = this.B;
        if (jVar == null) {
            return;
        }
        jVar.removeAllViews();
        this.C = null;
        this.D = null;
        for (int i2 = 0; i2 < 7; i2++) {
            d(i2);
        }
        this.B.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.z == null) {
            g("未连接 LSPosed，改动无法保存");
        } else {
            final String b2 = J.b(this.l);
            MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.d(b2);
                }
            });
        }
    }

    private View w() {
        LinearLayout c2 = T.c(this);
        c2.setPadding(a(10.0f), a(18.0f), a(8.0f), a(8.0f));
        TextView a2 = T.a(this, 13.0f, T.c, 600);
        a2.setText("小窗侧边栏应用（" + this.q.size() + " / 12）");
        c2.addView(a2, T.b());
        final TextView a3 = T.a(this, 13.0f, T.b, 600);
        a3.setText(this.r ? "小窗" : "全屏");
        c2.addView(a3);
        Switch r2 = new Switch(this);
        T.a(r2);
        this.t = r2;
        r2.setEnabled(!this.G);
        r2.setChecked(this.r);
        r2.setContentDescription(this.r ? "小窗打开" : "全屏打开");
        r2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.RailCustomActivity.this.a(a3, compoundButton, z);
            }
        });
        c2.addView(r2);
        return c2;
    }

    private View x() {
        LinearLayout c2 = T.c(this);
        c2.setPadding(a(10.0f), a(4.0f), a(8.0f), a(4.0f));
        TextView a2 = T.a(this, 13.0f, T.b, 500);
        a2.setText("四方块放到列表最后");
        c2.addView(a2, T.b());
        Switch r1 = new Switch(this);
        T.a(r1);
        this.u = r1;
        r1.setEnabled(!this.G);
        r1.setChecked(this.s);
        r1.setContentDescription("四方块放到列表最后");
        r1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda14
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                dev.duo.hookprobe.RailCustomActivity.this.a(compoundButton, z);
            }
        });
        c2.addView(r1);
        return c2;
    }

    private void y() {
        TextView textView = this.F;
        if (textView == null) {
            return;
        }
        if (this.H) {
            textView.setText("删除模式：点已放置项右上角的红色减号移除；点空白处退出删除模式。");
        } else {
            textView.setText("长按候选拖到右侧空格放下（空位会自动向前压缩，侧栏从下往上连续排）；长按已放置项出现红色减号，点减号删除、点空白退出；改动立即保存。");
        }
    }

    private List<f> z() {
        PackageManager packageManager = getPackageManager();
        ArrayList arrayList = new ArrayList();
        for (PackageInfo packageInfo : packageManager.getInstalledPackages(1)) {
            String str = packageInfo.packageName;
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null && (applicationInfo.flags & 1) == 0 && !MainActivity.d.contains(str) && !str.equals(getPackageName()) && packageManager.getLaunchIntentForPackage(str) != null) {
                f fVar = new f(null);
                fVar.a = str;
                fVar.b = String.valueOf(applicationInfo.loadLabel(packageManager));
                fVar.c = applicationInfo.loadIcon(packageManager);
                arrayList.add(fVar);
            }
        }
        final Collator collator = Collator.getInstance(Locale.CHINA);
        Collections.sort(arrayList, new Comparator() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda24
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b2;
                b2 = RailCustomActivity.b(collator, (RailCustomActivity.f) obj, (RailCustomActivity.f) obj2);
                return b2;
            }
        });
        return arrayList;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.H) {
            d();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.y = new T.d(this);
        Arrays.fill(this.l, "-");
        int p = p();
        this.I = p;
        this.J = p + a(36.0f);
        LinearLayout a2 = T.a((Context) this);
        T.d dVar = this.y;
        int a3 = dVar.a(dVar.e());
        T.d dVar2 = this.y;
        a2.setPadding(a3, this.y.d(), a3, dVar2.c < 600 ? a(92.0f) : dVar2.b());
        a2.addView(e(), T.a());
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        this.F = a4;
        a4.setLineSpacing(0.0f, 1.25f);
        this.F.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.RailCustomActivity.this.d(view);
            }
        });
        a2.addView(this.F, T.a(T.a(), this, 8.0f));
        LinearLayout c2 = T.c(this);
        c2.setGravity(48);
        c2.setPadding(0, a(10.0f), 0, 0);
        a2.addView(c2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayout a5 = T.a((Context) this);
        a5.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.RailCustomActivity.this.e(view);
            }
        });
        LinearLayout a6 = T.a((Context) this);
        this.x = a6;
        a5.addView(a6, T.a());
        a5.addView(T.a((Context) this, "候选"), T.a());
        LinearLayout a7 = T.a((Context) this);
        this.A = a7;
        a7.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.RailCustomActivity.this.f(view);
            }
        });
        a5.addView(this.A, T.a());
        ScrollView scrollView = new ScrollView(this);
        this.E = scrollView;
        scrollView.setClipToPadding(false);
        this.E.setVerticalScrollBarEnabled(false);
        this.E.addView(a5);
        c2.addView(this.E, new LinearLayout.LayoutParams(0, -1, 1.0f));
        LinearLayout a8 = T.a((Context) this);
        a8.addView(T.a((Context) this, "侧栏预览"), T.a());
        j jVar = new j(this);
        this.B = jVar;
        jVar.setGravity(1);
        this.B.b = new i(this, null);
        this.B.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.RailCustomActivity.this.g(view);
            }
        });
        a8.addView(this.B, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(a(88.0f), -1);
        layoutParams.leftMargin = a(8.0f);
        c2.addView(a8, layoutParams);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.addView(a2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.RailCustomActivity.this.h(view);
            }
        });
        this.y.b.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        this.y.a(3, new IntConsumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda33
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                dev.duo.hookprobe.RailCustomActivity.this.c(i2);
            }
        });
        setContentView(this.y.a);
        y();
        r();
        o();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.z == null || this.G) {
            return;
        }
        this.G = true;
        e(false);
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.i();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(o c0021o, String str, List list, List list2, List list3) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        a(c0021o, str, list, list2, list3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        try {
            final List<String> i2 = this.z.i();
            final boolean v = this.z.v();
            final boolean w = this.z.w();
            this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.a(i2, v, w);
                }
            });
        } catch (Throwable th) {
            Log.w("MiDuoRail", "刷新侧栏固定应用失败", th);
            this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.h();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean j(View view) {
        c();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View view) {
        if (this.H) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(d dVar, View view) {
        if (this.H) {
            d();
        } else {
            g("长按「" + dVar.b + "」拖到右侧空格");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0340, code lost:
    
        if (r25.equals(r29.l[r30 - 1]) != false) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0347  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void d(final int i2) {
        String str;
        FrameLayout frameLayout;
        int i3;
        boolean z;
        String str2;
        String str3;
        String str4;
        int i4;
        String str5;
        String str6;
        int i5;
        int i6;
        float f2;
        String str7 = this.l[i2];
        boolean equals = J.f.equals(str7);
        boolean z2 = equals && (i2 == 0 || !J.f.equals(this.l[i2 + (-1)]));
        boolean equals2 = J.c.equals(str7);
        FrameLayout frameLayout2 = new FrameLayout(this);
        if (!equals2) {
            str = J.c;
            frameLayout = frameLayout2;
            i3 = -1;
            if (equals) {
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    if (J.f.equals(this.l[i8])) {
                        i7++;
                    }
                }
                frameLayout.addView(new e(i7, 3, a(26.0f)), new FrameLayout.LayoutParams(-1, -1));
                if (i7 != 1) {
                    z = true;
                } else {
                    z = true;
                    frameLayout.addView(new g(this, 1, a(999.0f), a(this, T.b, 16.0f), null, -1, null, T.b, null), new FrameLayout.LayoutParams(-1, -1));
                }
                frameLayout.setContentDescription((i2 + 1) + " Dock");
                str5 = str7;
                str2 = "-";
            } else {
                z = true;
                if ("-".equals(str7)) {
                    str2 = "-";
                    frameLayout.addView(new g(this, 2, this.I, null, null, -1, null, T.b, null), new FrameLayout.LayoutParams(-1, -1));
                    frameLayout.setContentDescription((i2 + 1) + " 空格");
                    str5 = str7;
                } else {
                    str2 = "-";
                    String f3 = f(str7);
                    int a2 = a(str7);
                    int i9 = this.I;
                    Drawable h2 = h(str7);
                    String str8 = a2 >= 0 ? h[a2] : null;
                    if (a2 < 0) {
                        str3 = f3;
                        str4 = str8;
                        i4 = -1;
                    } else {
                        String str9 = str8;
                        i4 = j[a2];
                        str3 = f3;
                        str4 = str9;
                    }
                    str5 = str7;
                    frameLayout.addView(new g(this, 3, i9, h2, str4, i4, null, T.b, str5), new FrameLayout.LayoutParams(-1, -1));
                    frameLayout.setContentDescription((i2 + 1) + " " + str3);
                }
            }
        } else {
            int e2 = J.e(this.l);
            int d2 = J.d(this.l);
            frameLayout2.addView(new e(i2 - e2, d2, a(26.0f)), new FrameLayout.LayoutParams(-1, -1));
            if (i2 == (d2 / 2) + e2) {
                int a3 = a(999.0f);
                int i10 = T.b;
                i5 = e2;
                str = J.c;
                frameLayout = frameLayout2;
                str6 = "-";
                i6 = d2;
                i3 = -1;
                frameLayout.addView(new g(this, 1, a3, null, "窗", -1, "小窗侧边栏", i10, null), new FrameLayout.LayoutParams(-1, -1));
            } else {
                str = J.c;
                frameLayout = frameLayout2;
                str6 = "-";
                i3 = -1;
                i5 = e2;
                i6 = d2;
            }
            if (i2 != i5) {
                f2 = 26.0f;
            } else if (!this.H) {
                h hVar = new h(this, true);
                this.C = hVar;
                hVar.setContentDescription("拖动调节小窗侧边栏的上沿（3 到 7 格）");
                f2 = 26.0f;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a(26.0f), a(26.0f), 8388659);
                layoutParams.leftMargin = a(3.0f);
                layoutParams.topMargin = a(3.0f);
                frameLayout.addView(this.C, layoutParams);
            } else {
                f2 = 26.0f;
            }
            if (i2 == (r2 + i6) - 1 && !this.H) {
                h hVar2 = new h(this, false);
                this.D = hVar2;
                hVar2.setContentDescription("拖动调节小窗侧边栏的下沿（3 到 7 格）");
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(a(f2), a(f2), 8388693);
                layoutParams2.rightMargin = a(3.0f);
                layoutParams2.bottomMargin = a(3.0f);
                frameLayout.addView(this.D, layoutParams2);
            }
            frameLayout.setContentDescription((i2 + 1) + " 小窗侧边栏");
            str5 = str7;
            str2 = str6;
            z = true;
        }
        View view = new View(this);
        GradientDrawable a4 = T.a(0, a(10.0f));
        a4.setStroke(a(2.0f), T.b);
        view.setBackground(a4);
        view.setVisibility(8);
        frameLayout.addView(view, new FrameLayout.LayoutParams(i3, i3));
        frameLayout.setTag(view);
        int e3 = J.e(this.l);
        String str10 = str2;
        if (!str10.equals(str5) && ((!equals || z2) && (!equals2 || i2 == e3))) {
            TextView a5 = T.a(this, 14.0f, i3, 700);
            a5.setText("−");
            a5.setGravity(17);
            a5.setBackground(T.a(-2543579, a(10.0f)));
            a5.setContentDescription("删除第 " + (i2 + 1) + " 格");
            a5.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    dev.duo.hookprobe.RailCustomActivity.this.a(i2, view2);
                }
            });
            a5.setVisibility(this.H ? 0 : 8);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(a(20.0f), a(20.0f), 8388661);
            layoutParams3.topMargin = a(2.0f);
            layoutParams3.rightMargin = a(2.0f);
            frameLayout.addView(a5, layoutParams3);
        }
        if (!str10.equals(str5)) {
            frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    boolean j2;
                    j2 = dev.duo.hookprobe.RailCustomActivity.this.j(view2);
                    return j2;
                }
            });
        }
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                dev.duo.hookprobe.RailCustomActivity.this.k(view2);
            }
        });
        frameLayout.setOnDragListener(b(i2));
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i3, a(d));
        if (i2 > 0) {
            if (!equals || !J.f.equals(this.l[i2 - 1])) {
                if (equals2) {
                }
            }
            if (i2 > 0) {
                layoutParams4.topMargin = z ? 0 : a(6.0f);
            }
            this.B.addView(frameLayout, layoutParams4);
        }
        z = false;
        if (i2 > 0) {
        }
        this.B.addView(frameLayout, layoutParams4);
    }

    private void e(boolean z) {
        Switch[] switchArr = {this.t, this.u};
        for (int i2 = 0; i2 < 2; i2++) {
            Switch r2 = switchArr[i2];
            if (r2 != null) {
                r2.setEnabled(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        this.E.fullScroll(130);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        XposedService xposedService;
        final o c0021o;
        final String str;
        String h2;
        o c0021o2 = null;
        try {
            xposedService = L.a(1500L);
        } catch (Throwable th) {
            xposedService = null;
        }
        final ArrayList arrayList = new ArrayList();
        if (xposedService == null) {
            h2 = null;
        } else {
            try {
                o c0021o3 = new o(xposedService);
                h2 = c0021o3.h();
                arrayList.addAll(c0021o3.i());
                c0021o2 = c0021o3;
            } catch (Throwable th2) {
                Log.w("MiDuoRail", "读取侧栏配置失败", th2);
                arrayList.clear();
                c0021o = null;
                str = null;
            }
        }
        str = h2;
        c0021o = c0021o2;
        final List<f> z = z();
        final List<f> n = n();
        this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.b(c0021o, str, z, arrayList, n);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.G = false;
        e(true);
        g("固定应用刷新失败，请检查 LSPosed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        g("侧栏配置保存失败，请检查 LSPosed");
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        g("小窗侧边栏应用保存失败，请检查 LSPosed");
        o();
    }

    private static final class g extends View {
        static final int o = 0;
        static final int p = 1;
        static final int q = 2;
        static final int r = 3;
        private final int a;
        private final int b;
        private final Drawable c;
        private final String d;
        private final int e;
        private final String f;
        private final String g;
        private final int h;
        private final Paint i;
        private final Paint j;
        private final PathEffect k;
        private Drawable l;
        private int m;
        private Drawable n;

        g(Context context, int i, int i2, Drawable drawable, String str, int i3, String str2, int i4, String str3) {
            super(context);
            Paint paint = new Paint(1);
            this.i = paint;
            this.j = new Paint(1);
            this.a = i;
            this.f = str3;
            this.b = i2;
            this.c = drawable;
            this.d = str;
            this.e = i3;
            this.g = str2;
            this.h = i4;
            paint.setTextAlign(Paint.Align.CENTER);
            this.k = new DashPathEffect(new float[]{T.a(context, 3.4f), T.a(context, 2.6f)}, 0.0f);
            setWillNotDraw(false);
        }

        private float a(int i) {
            if (this.g == null) {
                return 0.0f;
            }
            return Math.max(T.a(getContext(), 7.5f), Math.min(T.a(getContext(), 10.5f), i * 0.2f));
        }

        private void b(Canvas canvas, float f, float f2, float f3) {
            this.j.setStyle(Paint.Style.FILL);
            this.j.setPathEffect(null);
            float a = T.a(getContext(), 1.6f);
            this.j.setColor(T.a ? 855638016 : 268435456);
            float f4 = f2 + a;
            float f5 = f3 / 2.0f;
            canvas.drawCircle(f, f4, T.a(getContext(), 1.2f) + f5, this.j);
            this.j.setColor(T.a ? 1207959552 : 469762048);
            canvas.drawCircle(f, f4, f5, this.j);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
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
            float a4 = (f3 - a3) - (a3 <= 0.0f ? 0.0f : T.a(getContext(), 1.5f));
            int a5 = a(width, a4);
            float f4 = width;
            float f5 = f4 / 2.0f;
            float f6 = a5;
            float f7 = f6 / 2.0f;
            float max = Math.max(0.0f, (a4 - f6) / 2.0f) + f7;
            int i = this.a;
            if (i == 2) {
                this.j.setStyle(Paint.Style.STROKE);
                this.j.setStrokeWidth(Math.max(1, T.a(getContext(), 1.3f)));
                this.j.setColor(T.a ? 1308622847 : 805306368);
                this.j.setPathEffect(this.k);
                canvas.drawCircle(f5, max, Math.max(1.0f, f7), this.j);
                this.j.setPathEffect(null);
                this.i.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
                this.i.setColor(T.d);
                this.i.setTextSize(Math.max(T.a(getContext(), 9.0f), f6 * 0.45f));
                Paint.FontMetrics fontMetrics = this.i.getFontMetrics();
                canvas.drawText("+", f5, max - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.i);
                f = f5;
            } else if (i == 3) {
                int max2 = Math.max(1, a(width, height - T.a(getContext(), 2.0f)));
                if (this.g == null) {
                    a = f5;
                    f2 = 2.0f;
                } else {
                    f2 = 2.0f;
                    a = (max2 / 2.0f) + T.a(getContext(), 1.0f);
                }
                float f8 = f3 / f2;
                float f9 = max2;
                b(canvas, a, f8, f9);
                if (this.l == null || this.m != max2) {
                    Drawable b = RailCustomActivity.b(getContext(), max2);
                    this.l = b;
                    this.m = max2;
                    dev.duo.hookprobe.b.setBounds(0, 0, max2, max2);
                }
                canvas.save();
                float f10 = f9 / 2.0f;
                canvas.translate(a - f10, f8 - f10);
                this.l.draw(canvas);
                canvas.restore();
                if (a(this.f)) {
                    this.j.setColor(this.h);
                    RailCustomActivity.b(canvas, this.f, a, f8, f9, this.j);
                } else {
                    a(canvas, a, f8, f9 * b(this.f));
                }
                if (this.g != null) {
                    this.i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                    this.i.setColor(T.c);
                    this.i.setTextSize(T.a(getContext(), 8.0f));
                    float a6 = a + f10 + T.a(getContext(), 4.0f);
                    String a7 = a(this.g, this.i, Math.max(T.a(getContext(), 8.0f), (f4 - a6) - T.a(getContext(), 2.0f)));
                    Paint.FontMetrics fontMetrics2 = this.i.getFontMetrics();
                    canvas.drawText(a7, a6, f8 - ((fontMetrics2.ascent + fontMetrics2.descent) / 2.0f), this.i);
                    f = f5;
                } else {
                    f = f5;
                }
            } else if (i == 0) {
                b(canvas, f5, max, f6);
                if (this.l == null || this.m != a5) {
                    Drawable b2 = RailCustomActivity.b(getContext(), a5);
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
                    RailCustomActivity.b(canvas, this.f, f, max, f6, this.j);
                } else {
                    f = f5;
                    a(canvas, f, max, f6 * b(this.f));
                }
            } else {
                f = f5;
                a(canvas, f, a4 / 2.0f, Math.min(f4 * 0.62f, a4 * 0.62f));
            }
            if (a3 <= 0.0f || this.a == 3) {
                return;
            }
            this.i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            this.i.setTextSize(a2);
            this.i.setColor(T.c);
            canvas.drawText(a(this.g, this.i, width - T.a(getContext(), 4.0f)), f, f3 - this.i.getFontMetrics().descent, this.i);
        }

        private float a(float f) {
            if (this.g == null || f <= 0.0f) {
                return 0.0f;
            }
            this.i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            this.i.setTextSize(f);
            Paint.FontMetrics fontMetrics = this.i.getFontMetrics();
            return fontMetrics.descent - fontMetrics.ascent;
        }

        private static float b(String str) {
            if (str == null) {
                return 0.56f;
            }
            if (I.a(str)) {
                return 0.5f;
            }
            if ("screenrecord".equals(str) || "eyecare".equals(str)) {
                return 0.62068963f;
            }
            return str.startsWith("app:") ? 0.5689655f : 0.5862069f;
        }

        private int a(int i, float f) {
            return Math.max(T.a(getContext(), 10.0f), Math.round(Math.min(this.b, Math.min(i - T.a(getContext(), 2.0f), f))));
        }

        private static boolean a(String str) {
            return "back".equals(str) || "home".equals(str) || "recents".equals(str);
        }

        private void a(Canvas canvas, float f, float f2, float f3) {
            int max = Math.max(T.a(getContext(), 8.0f), Math.round(f3));
            float f4 = max;
            float f5 = f4 / 2.0f;
            int round = Math.round(f - f5);
            int round2 = Math.round(f2 - f5);
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setBounds(round, round2, round + max, max + round2);
                this.c.draw(canvas);
                return;
            }
            if (this.e >= 0) {
                if (this.n == null) {
                    this.n = T.a(getContext(), this.e, this.h, 2.1f, false, 24.0f);
                }
                this.n.setBounds(round, round2, round + max, max + round2);
                this.n.draw(canvas);
                return;
            }
            if (this.d != null) {
                this.i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                this.i.setColor(this.h);
                this.i.setTextSize(Math.max(T.a(getContext(), 9.0f), f4 * 0.72f));
                Paint.FontMetrics fontMetrics = this.i.getFontMetrics();
                canvas.drawText(this.d, f, f2 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.i);
            }
        }

        private static String a(String str, Paint paint, float f) {
            String str2;
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
    public static /* synthetic */ int b(Collator collator, f fVar, f fVar2) {
        return collator.compare(fVar.b, fVar2.b);
    }

    private String f(String str) {
        if (str.startsWith("app:")) {
            f fVar = this.o.get(str.substring(4));
            return fVar == null ? str.substring(4) : fVar.b;
        }
        if (J.f.equals(str)) {
            return "Dock";
        }
        int a2 = a(str);
        return a2 < 0 ? str : g[a2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, boolean z, boolean z2) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.q.clear();
        this.q.addAll(list);
        this.r = z;
        this.s = z2;
        this.G = false;
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        System.arraycopy(J.a(this.l), 0, this.l, 0, 7);
    }

    private void c() {
        if (this.H) {
            return;
        }
        boolean z = false;
        for (String str : this.l) {
            if (!"-".equals(str)) {
                z = true;
            }
        }
        if (!z) {
            g("侧栏还是空的");
        } else {
            this.H = true;
            r();
        }
    }

    private View e() {
        LinearLayout c2 = T.c(this);
        c2.setPadding(a(4.0f), 0, a(4.0f), 0);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackground(T.a(T.f, a(20.0f)));
        frameLayout.addView(T.a(this, T.a(this, 3, T.b, 2.4f, false, 18.0f)), new FrameLayout.LayoutParams(a(18.0f), a(18.0f), 17));
        frameLayout.setContentDescription("返回");
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.RailCustomActivity.this.c(view);
            }
        });
        c2.addView(frameLayout, T.a(this, d, d));
        LinearLayout a2 = T.a((Context) this);
        a2.setPadding(a(12.0f), 0, 0, 0);
        TextView a3 = T.a(this, 22.0f, T.b, 800);
        a3.setText("外屏 App 内侧栏自定义");
        a3.setLetterSpacing(-0.01f);
        a2.addView(a3);
        TextView a4 = T.a(this, 12.0f, T.d, J.m);
        a4.setText("只改外屏 App 模式的右侧栏，全局共用");
        a4.setPadding(0, a(3.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(View view) {
        d();
        if (this.G) {
            g("正在加载配置，请稍候");
            return true;
        }
        q();
        return true;
    }

    private Drawable h(String str) {
        int a2;
        Drawable a3;
        if (this.p.containsKey(str)) {
            return this.p.get(str);
        }
        if (str.startsWith("app:")) {
            f fVar = this.o.get(str.substring(4));
            if (fVar != null) {
                a3 = fVar.c;
            }
            a3 = null;
        } else {
            if (!J.f.equals(str) && (a2 = a(str)) >= 0) {
                if (!"wechat".equals(str) && !"alipay".equals(str)) {
                    Drawable a4 = I.a(this, str);
                    if (a4 != null) {
                        a4.setTint(T.b);
                        a3 = a4;
                    } else if ("huanji".equals(str)) {
                        a3 = a(this, "com.miui.huanji");
                    } else if ("calculator".equals(str)) {
                        a3 = a(this, "com.miui.calculator");
                    } else {
                        a3 = "translate".equals(str) ? a(this, "com.xiaomi.aiasst.vision") : a(i[a2], T.b);
                    }
                } else {
                    a3 = N.a(str);
                }
            }
            a3 = null;
        }
        this.p.put(str, a3);
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(d dVar, View view) {
        if (this.H) {
            d();
            g("已退出删除模式，请再长按拖动");
            return true;
        }
        return a(view, dVar.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Collator collator, f fVar, f fVar2) {
        return collator.compare(fVar.b, fVar2.b);
    }

    private void a(o c0021o, String str, List<f> list, List<String> list2, List<f> list3) {
        this.z = c0021o;
        this.r = c0021o == null || c0021o.v();
        this.s = c0021o != null && c0021o.w();
        this.v.clear();
        this.v.addAll(list3);
        this.w.clear();
        for (f fVar : this.v) {
            this.w.put(fVar.a, fVar);
        }
        this.q.clear();
        this.q.addAll(list2);
        this.n.clear();
        this.n.addAll(list);
        this.o.clear();
        for (f fVar2 : this.n) {
            this.o.put(fVar2.a, fVar2);
        }
        System.arraycopy(e(str), 0, this.l, 0, 7);
        b();
        this.m.clear();
        for (String str2 : this.l) {
            if (str2.startsWith("app:") && !this.m.contains(str2)) {
                this.m.add(str2);
            }
        }
        this.G = false;
        r();
        if (this.z == null) {
            g("未连接 LSPosed，改动本次无法保存");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean c(String str) {
        return b(new StringBuilder().append("app:").append(str).toString()) || this.m.contains(new StringBuilder().append("app:").append(str).toString());
    }

    private void c(final boolean z) {
        if (this.z == null) {
            g("未连接 LSPosed，改动无法保存");
        } else {
            MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.a(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void b(Canvas canvas, String str, float f2, float f3, float f4, Paint paint) {
        char c2;
        float f5 = f4 / 116.0f;
        float f6 = f5 * 4.5f;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f6);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        Path path = new Path();
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
                paint.setStyle(Paint.Style.FILL);
                path.setFillType(Path.FillType.EVEN_ODD);
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
                paint.setStyle(Paint.Style.FILL);
                path.setFillType(Path.FillType.EVEN_ODD);
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        if (this.G) {
            g("正在加载配置，请稍候");
            return;
        }
        if (this.z == null) {
            g("未连接 LSPosed，改动无法保存");
            return;
        }
        List<f> list = this.v;
        final List<String> list2 = this.q;
        Objects.requireNonNull(list2);
        a("添加到小窗侧边栏", list, new Predicate() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda17
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return list2.contains((String) obj);
            }
        }, new Consumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda18
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                dev.duo.hookprobe.RailCustomActivity.this.b((RailCustomActivity.f) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i2) {
        startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.MainActivity.class).putExtra("tab", i2).addFlags(603979776));
        finish();
    }

    private String[] e(String str) {
        String[] c2 = J.c(str);
        if (c2 == null) {
            return J.a();
        }
        for (int i2 = 0; i2 < c2.length; i2++) {
            if (c2[i2].startsWith("app:") && !this.o.containsKey(c2[i2].substring(4))) {
                c2[i2] = "-";
            }
        }
        return J.a(c2);
    }

    private void g(String str) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Toast.makeText(this, str, 0).show();
    }

    private List<d> a() {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            String[] strArr = f;
            if (i2 >= strArr.length) {
                break;
            }
            String str = strArr[i2];
            arrayList.add(new d(str, g[i2], h[i2], h(str), j[i2], false));
            i2++;
        }
        arrayList.add(new d(null, "选择 App", "+", null, -1, true));
        arrayList.add(new d(J.f, "Dock", null, a(this, T.b, 26.0f), -1, false));
        arrayList.add(new d(J.c, "小窗侧边栏", "窗", null, -1, false));
        for (String str2 : this.m) {
            f fVar = this.o.get(str2.substring(4));
            if (fVar != null) {
                arrayList.add(new d(str2, fVar.b, null, fVar.c, -1, false));
            }
        }
        return arrayList;
    }

    private View a(final d dVar) {
        LinearLayout a2 = T.a((Context) this);
        a2.setGravity(1);
        String str = dVar.a;
        boolean z = str != null && b(str);
        g gVar = new g(this, 0, this.I, dVar.d, dVar.c, dVar.e, dVar.b, T.b, dVar.a);
        if (z) {
            gVar.setAlpha(0.45f);
        }
        a2.addView(gVar, new LinearLayout.LayoutParams(-1, this.I + a(18.0f)));
        TextView a3 = T.a(this, 9.0f, -13326253, 600);
        a3.setText(z ? "已添加" : "");
        a3.setGravity(17);
        a2.addView(a3, T.a(new LinearLayout.LayoutParams(-1, a(14.0f)), this, 2.0f));
        if (dVar.f) {
            a2.setContentDescription("选择 App");
            a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda38
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.hookprobe.RailCustomActivity.this.a(view);
                }
            });
            a2.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda39
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean b2;
                    b2 = dev.duo.hookprobe.RailCustomActivity.this.b(view);
                    return b2;
                }
            });
            return a2;
        }
        if (z) {
            a2.setContentDescription(dVar.b + "，已添加");
            a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda40
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dev.duo.hookprobe.RailCustomActivity.this.a(dVar, view);
                }
            });
            return a2;
        }
        a2.setContentDescription(dVar.b + "，长按拖到右侧空格");
        a2.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda41
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean b2;
                b2 = dev.duo.hookprobe.RailCustomActivity.this.b(dVar, view);
                return b2;
            }
        });
        a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dev.duo.hookprobe.RailCustomActivity.this.c(dVar, view);
            }
        });
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Drawable b(Context context, int i2) {
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        boolean z = T.a;
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{z ? -11908528 : -1, z ? -14474454 : -1578513});
        gradientDrawable.setShape(1);
        int max = Math.max(1, Math.round(i2 * 0.018f));
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) gradientDrawable, max, max, max, max);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(0);
        gradientDrawable2.setStroke(max, T.a ? 1090519039 : 520093696);
        return new LayerDrawable(new Drawable[]{insetDrawable, gradientDrawable2});
    }

    private View.OnDragListener b(final int i2) {
        return new View.OnDragListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnDragListener
            public final boolean onDrag(View view, DragEvent dragEvent) {
                boolean a2;
                a2 = dev.duo.hookprobe.RailCustomActivity.this.a(i2, view, dragEvent);
                return a2;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z) {
        boolean z2;
        try {
            z2 = this.z.o(z);
        } catch (Throwable th) {
            Log.w("MiDuoRail", "保存四方块位置失败", th);
            z2 = false;
        }
        if (z2) {
            return;
        }
        this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.m();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(f fVar) {
        a(fVar.a, true);
    }

    private boolean b(String str) {
        if (str == null) {
            return false;
        }
        for (String str2 : this.l) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        d();
        if (this.G) {
            g("正在加载配置，请稍候");
        } else {
            q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(d dVar, View view) {
        d();
        g("「" + dVar.b + "」已添加到侧栏");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, View view) {
        a(i2);
    }

    private static Drawable a(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationIcon(str);
        } catch (Throwable th) {
            return null;
        }
    }

    private Drawable a(String str, int i2) {
        Drawable drawable;
        if (str != null && !str.isEmpty()) {
            if (!this.L) {
                this.L = true;
                try {
                    this.K = createPackageContext("com.android.systemui", 0).getResources();
                } catch (Throwable th) {
                    Log.w("MiDuoRail", "读取 SystemUI 资源失败，用自绘图标", th);
                    this.K = null;
                }
            }
            if (this.K == null) {
                return null;
            }
            for (String str2 : str.split(",")) {
                String trim = str2.trim();
                if (!trim.isEmpty()) {
                    try {
                        int identifier = this.K.getIdentifier(trim, "drawable", "com.android.systemui");
                        if (identifier == 0) {
                            identifier = this.K.getIdentifier(trim, "mipmap", "com.android.systemui");
                        }
                        if (identifier != 0 && (drawable = this.K.getDrawable(identifier, null)) != null) {
                            Drawable mutate = drawable.mutate();
                            mutate.setTint(i2);
                            return mutate;
                        }
                    } catch (Throwable th2) {
                    }
                }
            }
        }
        return null;
    }

    private void d() {
        if (this.H) {
            this.H = false;
            r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str) {
        boolean z;
        try {
            z = this.z.u(str);
        } catch (Throwable th) {
            Log.w("MiDuoRail", "保存侧栏配置失败", th);
            z = false;
        }
        if (z) {
            return;
        }
        this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.j();
            }
        });
    }

    private void d(final boolean z) {
        if (this.z == null) {
            g("未连接 LSPosed，改动无法保存");
        } else {
            MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.b(z);
                }
            });
        }
    }

    private static void a(Path path, float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8 = f7 / 2.0f;
        float f9 = f6 + f8;
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(f2 - f8, f3 - f8, f4 + f8, f5 + f8, f9, f9, direction);
        float f10 = f2 + f8;
        float f11 = f3 + f8;
        float f12 = f4 - f8;
        float f13 = f5 - f8;
        float f14 = f6 - f8;
        path.addRoundRect(f10, f11, f12, f13, Math.max(0.0f, f14), Math.max(0.0f, f14), direction);
    }

    private boolean a(View view, String str) {
        if (this.G) {
            g("正在加载配置，请稍候");
            return true;
        }
        if (this.z == null) {
            g("未连接 LSPosed，改动无法保存");
            return true;
        }
        view.startDragAndDrop(ClipData.newPlainText("railCustom", str), new View.DragShadowBuilder(view), str, 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(int i2, View view, DragEvent dragEvent) {
        switch (dragEvent.getAction()) {
            case 1:
                return dragEvent.getLocalState() instanceof String;
            case 2:
            default:
                return false;
            case 3:
                a(view, false);
                return (dragEvent.getLocalState() instanceof String) && a(i2, (String) dragEvent.getLocalState());
            case 4:
            case WorkspaceProtocol.QUERY /* 6 */:
                a(view, false);
                return true;
            case 5:
                a(view, true);
                return true;
        }
    }

    private void a(View view, boolean z) {
        Object tag = view.getTag();
        if (tag instanceof View) {
            ((View) tag).setVisibility(z ? 0 : 8);
        }
    }

    private boolean a(int i2, String str) {
        int i3;
        if (this.G || this.H) {
            return false;
        }
        if (this.z == null) {
            g("未连接 LSPosed，改动无法保存");
            return false;
        }
        if (b(str)) {
            g("这个已经添加过了");
            return false;
        }
        if (J.c.equals(str)) {
            int i4 = 0;
            while (true) {
                i3 = i2 + i4;
                if (i3 >= 7 || !"-".equals(this.l[i3])) {
                    break;
                }
                i4++;
            }
            if (i4 < 3) {
                g("从这一格起要有连续 3 个空格，小窗侧边栏才放得下");
                return false;
            }
            while (i2 < i3) {
                this.l[i2] = J.c;
                i2++;
            }
        } else if (J.f.equals(str)) {
            if (i2 > 4) {
                g("Dock 只能从第 1~4 格开始放下（占连续 3 格）");
                return false;
            }
            int i5 = i2;
            while (true) {
                int i6 = i2 + 3;
                if (i5 >= i6) {
                    while (i2 < i6) {
                        this.l[i2] = J.f;
                        i2++;
                    }
                } else {
                    if (!"-".equals(this.l[i5])) {
                        g("Dock 需要连续 3 个空格");
                        return false;
                    }
                    i5++;
                }
            }
        } else {
            if (J.c.equals(this.l[i2])) {
                g("这格被小窗侧边栏占着，先拖它的把手缩小，再放按钮");
                return false;
            }
            if (!"-".equals(this.l[i2])) {
                g("这格已经有按钮了");
                return false;
            }
            if (!J.a(str) && !J.b(str)) {
                return false;
            }
            this.l[i2] = str;
        }
        b();
        v();
        this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.r();
            }
        });
        return true;
    }

    private void a(int i2) {
        if (J.c.equals(this.l[i2])) {
            for (int i3 = 0; i3 < 7; i3++) {
                if (J.c.equals(this.l[i3])) {
                    this.l[i3] = "-";
                }
            }
        } else if (J.f.equals(this.l[i2])) {
            for (int i4 = 0; i4 < 7; i4++) {
                if (J.f.equals(this.l[i4])) {
                    this.l[i4] = "-";
                }
            }
        } else {
            this.l[i2] = "-";
        }
        b();
        this.H = false;
        v();
        r();
    }

    private void a(String str, List<f> list, Predicate<String> predicate, final Consumer<f> consumer) {
        final ArrayList arrayList = new ArrayList(list);
        LinearLayout a2 = T.a((Context) this);
        a2.setPadding(a(20.0f), a(4.0f), a(20.0f), a(4.0f));
        EditText editText = new EditText(this);
        T.a(editText);
        editText.setHint("搜索 App");
        a2.addView(editText, T.a());
        ListView listView = new ListView(this);
        listView.setDivider(null);
        listView.setVerticalScrollBarEnabled(false);
        listView.setBackgroundColor(0);
        a aVar = new a(arrayList, predicate);
        listView.setAdapter((ListAdapter) aVar);
        a2.addView(listView, T.a(new LinearLayout.LayoutParams(-1, a(320.0f)), this, 8.0f));
        final AlertDialog create = T.a((Activity) this, str).setView(a2).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create();
        editText.addTextChangedListener(new b(arrayList, list, aVar));
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda16
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
                RailCustomActivity.a(arrayList, create, consumer, adapterView, view, i2, j2);
            }
        });
        T.a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(List list, AlertDialog alertDialog, Consumer consumer, AdapterView adapterView, View view, int i2, long j2) {
        f fVar = (f) list.get(i2);
        alertDialog.dismiss();
        consumer.accept(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(TextView textView, CompoundButton compoundButton, boolean z) {
        this.r = z;
        textView.setText(z ? "小窗" : "全屏");
        compoundButton.setContentDescription(z ? "小窗打开" : "全屏打开");
        c(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z) {
        boolean z2;
        try {
            z2 = this.z.n(z);
        } catch (Throwable th) {
            Log.w("MiDuoRail", "保存小窗侧边栏打开方式失败", th);
            z2 = false;
        }
        if (z2) {
            return;
        }
        this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.RailCustomActivity.this.l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        this.s = z;
        d(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, View view) {
        a(str, false);
    }

    private Drawable a(Drawable drawable, int i2) {
        if (drawable == null) {
            return null;
        }
        try {
            return getPackageManager().getUserBadgedIcon(drawable, UserHandle.getUserHandleForUid(i2 * 100000));
        } catch (RuntimeException e2) {
            return drawable;
        }
    }

    private View a(Drawable drawable, String str, String str2) {
        return new g(this, str != null ? 2 : 0, this.I, drawable, str, -1, str2, T.b, drawable == null ? null : "app:");
    }

    private void a(final String str, final boolean z) {
        if (this.G) {
            g("正在读取或保存配置，请稍候");
        } else if (this.z == null) {
            g("未连接 LSPosed，改动无法保存");
        } else {
            this.G = true;
            MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.a(z, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, String str) {
        boolean remove;
        final ArrayList arrayList = new ArrayList();
        try {
            arrayList.addAll(this.z.i());
            final String str2 = null;
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
            if (remove && !this.z.a(arrayList)) {
                throw new IllegalStateException("LSPosed 未保存固定应用");
            }
            this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.a(arrayList, str2);
                }
            });
        } catch (Throwable th) {
            Log.w("MiDuoRail", "保存小窗侧边栏应用失败", th);
            this.k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.RailCustomActivity.this.k();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, String str) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.q.clear();
        this.q.addAll(list);
        this.G = false;
        t();
        if (str != null) {
            g(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(f fVar) {
        String str = "app:" + fVar.a;
        if (!b(str) && !this.m.contains(str)) {
            this.m.add(str);
            r();
            ScrollView scrollView = this.E;
            if (scrollView != null) {
                scrollView.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda10
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

    private static int a(String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = f;
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
        return T.a(this, f2);
    }

    private static Drawable a(Context context, int i2, float f2) {
        return new c(i2, T.a(context, f2));
    }
}
