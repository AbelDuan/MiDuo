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
import dev.duo.hookprobe.UiKit;
import dev.duo.hookprobe.RailCustomActivity;
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

/* loaded from: classes.dex */
public final class RailCustomActivity extends Activity {

    /* renamed from: a */
    private static final int f1210a = 7;

    /* renamed from: b */
    private static final String f1211b = "-";

    /* renamed from: c */
    private static final float f1212c = 84.0f;

    /* renamed from: d */
    private static final float f1213d = 40.0f;

    /* renamed from: e */
    private static final int f1214e = 4;

    /* renamed from: f */
    private static final String[] f1215f = RailCodec.f925h;

    /* renamed from: g */
    private static final String[] f1216g = {"返回", "主页", "最近任务", "截屏", "手电筒", "息屏", "静音", "旋转锁定", "录屏", "热点", "深色模式", "自动亮度", "定位", "护眼模式", "微信", "支付宝", "蓝牙", "飞行模式", "省电模式", "投屏", "互传", "常亮", "计算器", "翻译", "上个应用"};

    /* renamed from: h */
    private static final String[] f1217h = {"返", "主", "近", "截", "手", "息", "静", "转", "录", "热", "深", "亮", "定", "护", "微", "支", "蓝", "飞", "省", "投", "互", "常", "算", "译", "切"};

    /* renamed from: i */
    private static final String[] f1218i = {"", "", "", "ic_qs_screenshot", "ic_qs_flashlight_disabled", "ic_qs_screenlock", "ic_qs_mute_off", "ic_qs_auto_rotate_disabled", "qs_screen_record_icon_off", "ic_qs_hotspot_disabled", "ic_qs_night_mode_off", "ic_qs_brightness_auto", "qs_location_icon_off", "ic_qs_paper_mode_off", "", "", "ic_qs_bluetooth_off", "ic_qs_lite_airplane", "ic_qs_battery_saver_off", "ic_cast", "", "ic_keep_off", "", "", ""};

    /* renamed from: j */
    private static final int[] f1219j = {3, 0, 1, -1, -1, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 15};

    /* renamed from: A */
    private LinearLayout f1220A;

    /* renamed from: B */
    private C0082j f1221B;

    /* renamed from: C */
    private View f1222C;

    /* renamed from: D */
    private View f1223D;

    /* renamed from: E */
    private ScrollView f1224E;

    /* renamed from: F */
    private TextView f1225F;

    /* renamed from: H */
    private boolean f1227H;

    /* renamed from: I */
    private int f1228I;

    /* renamed from: J */
    private int f1229J;

    /* renamed from: K */
    private Resources f1230K;

    /* renamed from: L */
    private boolean f1231L;

    /* renamed from: s */
    private boolean f1240s;

    /* renamed from: t */
    private Switch f1241t;

    /* renamed from: u */
    private Switch f1242u;

    /* renamed from: x */
    private LinearLayout f1245x;

    /* renamed from: y */
    private UiKit.d f1246y;

    /* renamed from: z */
    private ConfigStore f1247z;

    /* renamed from: k */
    private final Handler f1232k = new Handler(Looper.getMainLooper());

    /* renamed from: l */
    private final String[] f1233l = new String[7];

    /* renamed from: m */
    private final List<String> f1234m = new ArrayList();

    /* renamed from: n */
    private final List<C0078f> f1235n = new ArrayList();

    /* renamed from: o */
    private final Map<String, C0078f> f1236o = new HashMap();

    /* renamed from: p */
    private final Map<String, Drawable> f1237p = new HashMap();

    /* renamed from: q */
    private final List<String> f1238q = new ArrayList();

    /* renamed from: r */
    private boolean f1239r = true;

    /* renamed from: v */
    private final List<C0078f> f1243v = new ArrayList();

    /* renamed from: w */
    private final Map<String, C0078f> f1244w = new HashMap();

    /* renamed from: G */
    private boolean f1226G = true;

    /* renamed from: dev.duo.hookprobe.RailCustomActivity$a */
    class C0073a extends BaseAdapter {

        /* renamed from: a */
        final /* synthetic */ List f1248a;

        /* renamed from: b */
        final /* synthetic */ Predicate f1249b;

        C0073a(List list, Predicate predicate) {
            this.f1248a = list;
            this.f1249b = predicate;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f1248a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f1248a.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C0078f c0078f = (C0078f) this.f1248a.get(i);
            LinearLayout m1430c = UiKit.m1430c(RailCustomActivity.this);
            m1430c.setMinimumHeight(RailCustomActivity.this.m1266a(56.0f));
            m1430c.setPadding(RailCustomActivity.this.m1266a(8.0f), RailCustomActivity.this.m1266a(8.0f), RailCustomActivity.this.m1266a(8.0f), RailCustomActivity.this.m1266a(8.0f));
            m1430c.addView(UiKit.m1407a(RailCustomActivity.this, c0078f.f1271c), UiKit.m1409a(RailCustomActivity.this, 30.0f, 30.0f));
            TextView m1413a = UiKit.m1413a(RailCustomActivity.this, 15.0f, UiKit.f1345b, 500);
            m1413a.setText(c0078f.f1270b);
            m1413a.setSingleLine(true);
            m1413a.setEllipsize(TextUtils.TruncateAt.END);
            LinearLayout.LayoutParams m1428b = UiKit.m1428b();
            m1428b.leftMargin = RailCustomActivity.this.m1266a(12.0f);
            m1430c.addView(m1413a, m1428b);
            if (this.f1249b.test(c0078f.f1269a)) {
                TextView m1413a2 = UiKit.m1413a(RailCustomActivity.this, 12.0f, -13326253, 600);
                m1413a2.setText("已添加");
                m1430c.addView(m1413a2);
            }
            return m1430c;
        }
    }

    /* renamed from: dev.duo.hookprobe.RailCustomActivity$b */
    class C0074b implements TextWatcher {

        /* renamed from: a */
        final /* synthetic */ List f1251a;

        /* renamed from: b */
        final /* synthetic */ List f1252b;

        /* renamed from: c */
        final /* synthetic */ BaseAdapter f1253c;

        C0074b(List list, List list2, BaseAdapter baseAdapter) {
            this.f1251a = list;
            this.f1252b = list2;
            this.f1253c = baseAdapter;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String lowerCase = editable.toString().trim().toLowerCase(Locale.ROOT);
            this.f1251a.clear();
            for (C0078f c0078f : this.f1252b) {
                if (!lowerCase.isEmpty()) {
                    String str = c0078f.f1270b;
                    Locale locale = Locale.ROOT;
                    if (!str.toLowerCase(locale).contains(lowerCase) && !c0078f.f1269a.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                this.f1251a.add(c0078f);
            }
            this.f1253c.notifyDataSetChanged();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: dev.duo.hookprobe.RailCustomActivity$c */
    class C0075c extends Drawable {

        /* renamed from: a */
        private final Paint f1255a = new Paint(1);

        /* renamed from: b */
        final /* synthetic */ int f1256b;

        /* renamed from: c */
        final /* synthetic */ int f1257c;

        C0075c(int i, int i2) {
            this.f1256b = i;
            this.f1257c = i2;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().left, getBounds().top);
            canvas.scale(getBounds().width() / 24.0f, getBounds().height() / 24.0f);
            this.f1255a.setColor(this.f1256b);
            this.f1255a.setStyle(Paint.Style.STROKE);
            this.f1255a.setStrokeWidth(1.8f);
            canvas.drawRoundRect(2.5f, 8.0f, 21.5f, 18.0f, 3.5f, 3.5f, this.f1255a);
            this.f1255a.setStyle(Paint.Style.FILL);
            float[] fArr = {7.0f, 12.0f, 17.0f};
            for (int i = 0; i < 3; i++) {
                canvas.drawCircle(fArr[i], 13.0f, 1.9f, this.f1255a);
            }
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.f1257c;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.f1257c;
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
    /* renamed from: dev.duo.hookprobe.RailCustomActivity$d */
    static final class C0076d {

        /* renamed from: a */
        final String f1258a;

        /* renamed from: b */
        final String f1259b;

        /* renamed from: c */
        final String f1260c;

        /* renamed from: d */
        final Drawable f1261d;

        /* renamed from: e */
        final int f1262e;

        /* renamed from: f */
        final boolean f1263f;

        C0076d(String str, String str2, String str3, Drawable drawable, int i, boolean z) {
            this.f1258a = str;
            this.f1259b = str2;
            this.f1260c = str3;
            this.f1261d = drawable;
            this.f1262e = i;
            this.f1263f = z;
        }
    }

    /* renamed from: dev.duo.hookprobe.RailCustomActivity$e */
    private final class C0077e extends View {

        /* renamed from: a */
        private final int f1264a;

        /* renamed from: b */
        private final int f1265b;

        /* renamed from: c */
        private final int f1266c;

        /* renamed from: d */
        private final Paint f1267d;

        C0077e(int i, int i2, int i3) {
            super(RailCustomActivity.this);
            this.f1267d = new Paint(1);
            this.f1264a = i;
            this.f1265b = i2;
            this.f1266c = i3;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int width = getWidth();
            int height = getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            float f = height * this.f1265b;
            float max = Math.max(1, RailCustomActivity.this.m1266a(0.9f));
            canvas.save();
            canvas.clipRect(0, 0, width, height);
            canvas.translate(0.0f, (-this.f1264a) * height);
            float f2 = max / 2.0f;
            RectF rectF = new RectF(f2, f2, width - f2, f - f2);
            this.f1267d.setShader(null);
            this.f1267d.setStyle(Paint.Style.FILL);
            this.f1267d.setColor(UiKit.f1343a ? 855638016 : 335544320);
            RectF rectF2 = new RectF(rectF.left, rectF.top + RailCustomActivity.this.m1266a(1.6f), rectF.right, rectF.bottom + RailCustomActivity.this.m1266a(1.6f));
            float f3 = this.f1266c;
            canvas.drawRoundRect(rectF2, f3, f3, this.f1267d);
            Paint paint = this.f1267d;
            boolean z = UiKit.f1343a;
            paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f, z ? -11908528 : -1, z ? -14474454 : -1578513, Shader.TileMode.CLAMP));
            float f4 = this.f1266c;
            canvas.drawRoundRect(rectF, f4, f4, this.f1267d);
            this.f1267d.setShader(null);
            this.f1267d.setStyle(Paint.Style.STROKE);
            this.f1267d.setStrokeWidth(max);
            this.f1267d.setColor(UiKit.f1343a ? 1090519039 : 520093696);
            float f5 = this.f1266c;
            canvas.drawRoundRect(rectF, f5, f5, this.f1267d);
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.hookprobe.RailCustomActivity$f */
    static final class C0078f {

        /* renamed from: a */
        String f1269a;

        /* renamed from: b */
        String f1270b;

        /* renamed from: c */
        Drawable f1271c;

        private C0078f() {
        }

        /* synthetic */ C0078f(C0073a c0073a) {
            this();
        }
    }

    /* renamed from: dev.duo.hookprobe.RailCustomActivity$h */
    private static final class C0080h extends View {

        /* renamed from: a */
        private final Paint f1290a;

        /* renamed from: b */
        private final boolean f1291b;

        C0080h(Context context, boolean z) {
            super(context);
            this.f1290a = new Paint(1);
            this.f1291b = z;
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
            this.f1290a.setStyle(Paint.Style.FILL);
            this.f1290a.setColor(UiKit.f1343a ? isPressed() ? -10855838 : -231065024 : isPressed() ? -1710614 : -218103809);
            float f = width * 0.3f;
            canvas.drawRoundRect(0.0f, 0.0f, width, height, f, f, this.f1290a);
            this.f1290a.setStyle(Paint.Style.STROKE);
            this.f1290a.setStrokeCap(Paint.Cap.ROUND);
            this.f1290a.setStrokeWidth(0.08f * width);
            this.f1290a.setColor(UiKit.f1345b);
            if (this.f1291b) {
                float f2 = width * 0.25f;
                float f3 = height * 0.25f;
                canvas.drawLine(f2, height * 0.65f, width * 0.65f, f3, this.f1290a);
                canvas.drawLine(f2, height * 0.42f, width * 0.42f, f3, this.f1290a);
                return;
            }
            float f4 = height * 0.75f;
            float f5 = width * 0.75f;
            canvas.drawLine(width * 0.35f, f4, f5, height * 0.35f, this.f1290a);
            canvas.drawLine(width * 0.58f, f4, f5, height * 0.58f, this.f1290a);
        }
    }

    /* renamed from: dev.duo.hookprobe.RailCustomActivity$i */
    private final class C0081i implements C0082j.a {

        /* renamed from: a */
        private int f1292a;

        /* renamed from: b */
        private int f1293b;

        /* renamed from: c */
        private boolean f1294c;

        private C0081i() {
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.C0082j.a
        /* renamed from: a */
        public boolean mo1378a(float f, float f2) {
            if (!RailCustomActivity.this.f1226G && !RailCustomActivity.this.f1227H && RailCustomActivity.this.f1247z != null) {
                if (m1375a(RailCustomActivity.this.f1222C, f, f2)) {
                    this.f1294c = true;
                } else if (m1375a(RailCustomActivity.this.f1223D, f, f2)) {
                    this.f1294c = false;
                }
                this.f1292a = RailCodec.m953d(RailCustomActivity.this.f1233l);
                this.f1293b = RailCodec.m955e(RailCustomActivity.this.f1233l);
                return true;
            }
            return false;
        }

        /* synthetic */ C0081i(RailCustomActivity railCustomActivity, C0073a c0073a) {
            this();
        }

        /* renamed from: a */
        private boolean m1375a(View view, float f, float f2) {
            if (view == null) {
                return false;
            }
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            RailCustomActivity.this.f1221B.offsetDescendantRectToMyCoords(view, rect);
            rect.inset(-RailCustomActivity.this.m1266a(12.0f), -RailCustomActivity.this.m1266a(12.0f));
            if (!rect.contains((int) f, (int) f2)) {
                return false;
            }
            view.setPressed(true);
            return true;
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.C0082j.a
        /* renamed from: a */
        public void mo1377a(float f) {
            if (RailCustomActivity.this.f1221B.getChildCount() == 0) {
                return;
            }
            float childCount = RailCustomActivity.this.f1221B.getChildCount();
            int i = 0;
            while (true) {
                if (i >= RailCustomActivity.this.f1221B.getChildCount()) {
                    break;
                }
                View childAt = RailCustomActivity.this.f1221B.getChildAt(i);
                if (f < childAt.getBottom()) {
                    childCount = i + Math.max(0.0f, (f - childAt.getTop()) / Math.max(1, childAt.getHeight()));
                    break;
                }
                i++;
            }
            String[] m949b = this.f1294c ? RailCodec.m949b(RailCustomActivity.this.f1233l, (int) Math.floor(childCount)) : RailCodec.m942a(RailCustomActivity.this.f1233l, Math.round(childCount));
            if (m949b == null || Arrays.equals(m949b, RailCustomActivity.this.f1233l)) {
                return;
            }
            System.arraycopy(m949b, 0, RailCustomActivity.this.f1233l, 0, 7);
            RailCustomActivity.this.m1361u();
            RailCustomActivity.this.f1221B.performHapticFeedback(4);
        }

        @Override // dev.duo.hookprobe.RailCustomActivity.C0082j.a
        /* renamed from: a */
        public void mo1376a() {
            if (RailCodec.m953d(RailCustomActivity.this.f1233l) != this.f1292a || RailCodec.m955e(RailCustomActivity.this.f1233l) != this.f1293b) {
                RailCustomActivity.this.m1305b();
                RailCustomActivity.this.m1362v();
            }
            RailCustomActivity.this.m1358r();
        }
    }

    /* renamed from: dev.duo.hookprobe.RailCustomActivity$j */
    private static final class C0082j extends LinearLayout {

        /* renamed from: a */
        private final int f1296a;

        /* renamed from: b */
        a f1297b;

        /* renamed from: c */
        private boolean f1298c;

        /* renamed from: dev.duo.hookprobe.RailCustomActivity$j$a */
        interface a {
            /* renamed from: a */
            void mo1376a();

            /* renamed from: a */
            void mo1377a(float f);

            /* renamed from: a */
            boolean mo1378a(float f, float f2);
        }

        C0082j(Context context) {
            super(context);
            setOrientation(1);
            this.f1296a = UiKit.m1399a(context, RailCustomActivity.f1213d);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            a aVar;
            if (motionEvent.getActionMasked() != 0 || (aVar = this.f1297b) == null || !aVar.mo1378a(motionEvent.getX(), motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            this.f1298c = true;
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
            int max = Math.max(this.f1296a, (size - i3) / childCount);
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
            if (!this.f1298c) {
                return super.onTouchEvent(motionEvent);
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                this.f1297b.mo1377a(motionEvent.getY());
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.f1298c = false;
                this.f1297b.mo1376a();
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m1352l() {
        m1337g("打开方式保存失败，请检查 LSPosed");
        m1355o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m1353m() {
        m1337g("四方块位置保存失败，请检查 LSPosed");
        m1355o();
    }

    /* renamed from: n */
    private List<C0078f> m1354n() {
        PackageManager packageManager = getPackageManager();
        Intent addCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
        HashMap hashMap = new HashMap();
        Iterator<ResolveInfo> it = packageManager.queryIntentActivities(addCategory, 0).iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            C0073a c0073a = null;
            ApplicationInfo applicationInfo = activityInfo == null ? null : activityInfo.applicationInfo;
            if (applicationInfo != null && !hashMap.containsKey(applicationInfo.packageName) && !applicationInfo.packageName.equals(getPackageName())) {
                C0078f c0078f = new C0078f(c0073a);
                c0078f.f1269a = applicationInfo.packageName;
                c0078f.f1270b = String.valueOf(applicationInfo.loadLabel(packageManager));
                c0078f.f1271c = applicationInfo.loadIcon(packageManager);
                hashMap.put(c0078f.f1269a, c0078f);
            }
        }
        ArrayList arrayList = new ArrayList(hashMap.values());
        final Collator collator = Collator.getInstance(Locale.CHINA);
        Collections.sort(arrayList, new Comparator() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m1269a;
                m1269a = RailCustomActivity.m1269a(collator, (RailCustomActivity.C0078f) obj, (RailCustomActivity.C0078f) obj2);
                return m1269a;
            }
        });
        return arrayList;
    }

    /* renamed from: o */
    private void m1355o() {
        this.f1226G = true;
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                RailCustomActivity.this.m1335g();
            }
        });
    }

    /* renamed from: p */
    private int m1356p() {
        return Math.round(getResources().getDisplayMetrics().density * 42.18182f);
    }

    /* renamed from: q */
    private void m1357q() {
        if (this.f1235n.isEmpty()) {
            m1337g("没有可添加的 App（只列用户自己安装的 App）");
        } else {
            m1290a("选择 App", this.f1235n, new Predicate() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda26
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m1319c;
                    m1319c = RailCustomActivity.this.m1319c((String) obj);
                    return m1319c;
                }
            }, new Consumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda27
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RailCustomActivity.this.m1287a((RailCustomActivity.C0078f) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m1358r() {
        m1365y();
        m1360t();
        m1359s();
        m1361u();
    }

    /* renamed from: s */
    private void m1359s() {
        LinearLayout linearLayout = this.f1220A;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        List<C0076d> m1277a = m1277a();
        LinearLayout linearLayout2 = null;
        for (int i = 0; i < m1277a.size(); i++) {
            if (i % 4 == 0) {
                linearLayout2 = UiKit.m1430c(this);
                linearLayout2.setGravity(48);
                this.f1220A.addView(linearLayout2, UiKit.m1408a());
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, this.f1229J, 1.0f);
            layoutParams.setMargins(m1266a(3.0f), m1266a(3.0f), m1266a(3.0f), m1266a(3.0f));
            linearLayout2.addView(m1276a(m1277a.get(i)), layoutParams);
        }
        int size = m1277a.size() % 4;
        if (linearLayout2 == null || size == 0) {
            return;
        }
        while (size < 4) {
            View view = new View(this);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, this.f1229J, 1.0f);
            layoutParams2.setMargins(m1266a(3.0f), m1266a(3.0f), m1266a(3.0f), m1266a(3.0f));
            linearLayout2.addView(view, layoutParams2);
            size++;
        }
    }

    /* renamed from: t */
    private void m1360t() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2 = this.f1245x;
        if (linearLayout2 == null) {
            return;
        }
        linearLayout2.removeAllViews();
        if (RailCodec.m950c(this.f1233l)) {
            this.f1245x.addView(m1363w(), UiKit.m1408a());
            this.f1245x.addView(m1364x(), UiKit.m1408a());
            TextView m1413a = UiKit.m1413a(this, 11.0f, UiKit.f1349d, RailCodec.f930m);
            m1413a.setText("固定在侧边栏上面，点应用移除；下面会接着显示最近用小窗打开过的应用。双开分身应用在侧栏面板里添加。四方块放到列表最后时，侧边栏占几格就显示几个应用，滑到底点四方块打开面板。");
            m1413a.setLineSpacing(0.0f, 1.2f);
            this.f1245x.addView(m1413a, UiKit.m1410a(UiKit.m1408a(), this, 2.0f));
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = this.f1238q.iterator();
            while (true) {
                linearLayout = null;
                if (!it.hasNext()) {
                    break;
                }
                final String next = it.next();
                C0078f c0078f = this.f1244w.get(RailCodec.m959g(next));
                int m960h = RailCodec.m960h(next);
                String str = c0078f == null ? RailCodec.m959g(next) + "（暂不可用）" : c0078f.f1270b;
                if (m960h != 0) {
                    str = str + "（分身）";
                }
                Drawable drawable = c0078f == null ? null : c0078f.f1271c;
                if (m960h != 0) {
                    drawable = m1273a(drawable, m960h);
                }
                View m1275a = m1275a(drawable, (String) null, str);
                m1275a.setContentDescription(str + "，点一下移除");
                m1275a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        RailCustomActivity.this.m1289a(next, view);
                    }
                });
                arrayList.add(m1275a);
            }
            if (this.f1238q.size() < 12) {
                View m1275a2 = m1275a((Drawable) null, "+", "添加");
                m1275a2.setContentDescription("添加小窗侧边栏应用");
                m1275a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        RailCustomActivity.this.m1345i(view);
                    }
                });
                arrayList.add(m1275a2);
            }
            int i = 0;
            while (i < arrayList.size()) {
                if (i % 4 == 0) {
                    linearLayout = UiKit.m1430c(this);
                    linearLayout.setGravity(48);
                    this.f1245x.addView(linearLayout, UiKit.m1410a(UiKit.m1408a(), this, i == 0 ? 6.0f : 0.0f));
                }
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, this.f1228I + m1266a(22.0f), 1.0f);
                layoutParams.setMargins(m1266a(3.0f), m1266a(3.0f), m1266a(3.0f), m1266a(3.0f));
                linearLayout.addView((View) arrayList.get(i), layoutParams);
                i++;
            }
            for (int size = arrayList.size() % 4; linearLayout != null && size != 0 && size < 4; size++) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, this.f1228I + m1266a(22.0f), 1.0f);
                layoutParams2.setMargins(m1266a(3.0f), m1266a(3.0f), m1266a(3.0f), m1266a(3.0f));
                linearLayout.addView(new View(this), layoutParams2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public void m1361u() {
        C0082j c0082j = this.f1221B;
        if (c0082j == null) {
            return;
        }
        c0082j.removeAllViews();
        this.f1222C = null;
        this.f1223D = null;
        for (int i = 0; i < 7; i++) {
            m1321d(i);
        }
        this.f1221B.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public void m1362v() {
        if (this.f1247z == null) {
            m1337g("未连接 LSPosed，改动无法保存");
        } else {
            final String m946b = RailCodec.m946b(this.f1233l);
            MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    RailCustomActivity.this.m1324d(m946b);
                }
            });
        }
    }

    /* renamed from: w */
    private View m1363w() {
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setPadding(m1266a(10.0f), m1266a(18.0f), m1266a(8.0f), m1266a(8.0f));
        TextView m1413a = UiKit.m1413a(this, 13.0f, UiKit.f1347c, 600);
        m1413a.setText("小窗侧边栏应用（" + this.f1238q.size() + " / 12）");
        m1430c.addView(m1413a, UiKit.m1428b());
        final TextView m1413a2 = UiKit.m1413a(this, 13.0f, UiKit.f1345b, 600);
        m1413a2.setText(this.f1239r ? "小窗" : "全屏");
        m1430c.addView(m1413a2);
        Switch r2 = new Switch(this);
        UiKit.m1422a(r2);
        this.f1241t = r2;
        r2.setEnabled(!this.f1226G);
        r2.setChecked(this.f1239r);
        r2.setContentDescription(this.f1239r ? "小窗打开" : "全屏打开");
        r2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                RailCustomActivity.this.m1285a(m1413a2, compoundButton, z);
            }
        });
        m1430c.addView(r2);
        return m1430c;
    }

    /* renamed from: x */
    private View m1364x() {
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setPadding(m1266a(10.0f), m1266a(4.0f), m1266a(8.0f), m1266a(4.0f));
        TextView m1413a = UiKit.m1413a(this, 13.0f, UiKit.f1345b, 500);
        m1413a.setText("四方块放到列表最后");
        m1430c.addView(m1413a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        UiKit.m1422a(r1);
        this.f1242u = r1;
        r1.setEnabled(!this.f1226G);
        r1.setChecked(this.f1240s);
        r1.setContentDescription("四方块放到列表最后");
        r1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda14
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                RailCustomActivity.this.m1284a(compoundButton, z);
            }
        });
        m1430c.addView(r1);
        return m1430c;
    }

    /* renamed from: y */
    private void m1365y() {
        TextView textView = this.f1225F;
        if (textView == null) {
            return;
        }
        if (this.f1227H) {
            textView.setText("删除模式：点已放置项右上角的红色减号移除；点空白处退出删除模式。");
        } else {
            textView.setText("长按候选拖到右侧空格放下（空位会自动向前压缩，侧栏从下往上连续排）；长按已放置项出现红色减号，点减号删除、点空白退出；改动立即保存。");
        }
    }

    /* renamed from: z */
    private List<C0078f> m1366z() {
        PackageManager packageManager = getPackageManager();
        ArrayList arrayList = new ArrayList();
        for (PackageInfo packageInfo : packageManager.getInstalledPackages(1)) {
            String str = packageInfo.packageName;
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null && (applicationInfo.flags & 1) == 0 && !MainActivity.f960d.contains(str) && !str.equals(getPackageName()) && packageManager.getLaunchIntentForPackage(str) != null) {
                C0078f c0078f = new C0078f(null);
                c0078f.f1269a = str;
                c0078f.f1270b = String.valueOf(applicationInfo.loadLabel(packageManager));
                c0078f.f1271c = applicationInfo.loadIcon(packageManager);
                arrayList.add(c0078f);
            }
        }
        final Collator collator = Collator.getInstance(Locale.CHINA);
        Collections.sort(arrayList, new Comparator() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda24
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m1301b;
                m1301b = RailCustomActivity.m1301b(collator, (RailCustomActivity.C0078f) obj, (RailCustomActivity.C0078f) obj2);
                return m1301b;
            }
        });
        return arrayList;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f1227H) {
            m1320d();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1246y = new UiKit.d(this);
        Arrays.fill(this.f1233l, "-");
        int m1356p = m1356p();
        this.f1228I = m1356p;
        this.f1229J = m1356p + m1266a(36.0f);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.d dVar = this.f1246y;
        int m1432a = dVar.m1432a(dVar.m1439e());
        UiKit.d dVar2 = this.f1246y;
        m1411a.setPadding(m1432a, this.f1246y.m1438d(), m1432a, dVar2.f1396c < 600 ? m1266a(92.0f) : dVar2.m1436b());
        m1411a.addView(m1326e(), UiKit.m1408a());
        TextView m1413a = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        this.f1225F = m1413a;
        m1413a.setLineSpacing(0.0f, 1.25f);
        this.f1225F.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RailCustomActivity.this.m1322d(view);
            }
        });
        m1411a.addView(this.f1225F, UiKit.m1410a(UiKit.m1408a(), this, 8.0f));
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setGravity(48);
        m1430c.setPadding(0, m1266a(10.0f), 0, 0);
        m1411a.addView(m1430c, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        m1411a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RailCustomActivity.this.m1327e(view);
            }
        });
        LinearLayout m1411a3 = UiKit.m1411a((Context) this);
        this.f1245x = m1411a3;
        m1411a2.addView(m1411a3, UiKit.m1408a());
        m1411a2.addView(UiKit.m1414a((Context) this, "候选"), UiKit.m1408a());
        LinearLayout m1411a4 = UiKit.m1411a((Context) this);
        this.f1220A = m1411a4;
        m1411a4.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RailCustomActivity.this.m1333f(view);
            }
        });
        m1411a2.addView(this.f1220A, UiKit.m1408a());
        ScrollView scrollView = new ScrollView(this);
        this.f1224E = scrollView;
        scrollView.setClipToPadding(false);
        this.f1224E.setVerticalScrollBarEnabled(false);
        this.f1224E.addView(m1411a2);
        m1430c.addView(this.f1224E, new LinearLayout.LayoutParams(0, -1, 1.0f));
        LinearLayout m1411a5 = UiKit.m1411a((Context) this);
        m1411a5.addView(UiKit.m1414a((Context) this, "侧栏预览"), UiKit.m1408a());
        C0082j c0082j = new C0082j(this);
        this.f1221B = c0082j;
        c0082j.setGravity(1);
        this.f1221B.f1297b = new C0081i(this, null);
        this.f1221B.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RailCustomActivity.this.m1336g(view);
            }
        });
        m1411a5.addView(this.f1221B, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m1266a(88.0f), -1);
        layoutParams.leftMargin = m1266a(8.0f);
        m1430c.addView(m1411a5, layoutParams);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.addView(m1411a, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RailCustomActivity.this.m1341h(view);
            }
        });
        this.f1246y.f1395b.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        this.f1246y.m1434a(3, new IntConsumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda33
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                RailCustomActivity.this.m1314c(i);
            }
        });
        setContentView(this.f1246y.f1394a);
        m1365y();
        m1358r();
        m1355o();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f1247z == null || this.f1226G) {
            return;
        }
        this.f1226G = true;
        m1329e(false);
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                RailCustomActivity.this.m1344i();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1308b(ConfigStore c0113o, String str, List list, List list2, List list3) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        m1288a(c0113o, str, list, list2, list3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1315c(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1322d(View view) {
        m1320d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1327e(View view) {
        m1320d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m1333f(View view) {
        m1320d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m1336g(View view) {
        m1320d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m1341h(View view) {
        m1320d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m1344i() {
        try {
            final List<String> m1826i = this.f1247z.m1826i();
            final boolean m1864v = this.f1247z.m1864v();
            final boolean m1865w = this.f1247z.m1865w();
            this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    RailCustomActivity.this.m1294a(m1826i, m1864v, m1865w);
                }
            });
        } catch (Throwable th) {
            Log.w("MiDuoRail", "刷新侧栏固定应用失败", th);
            this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    RailCustomActivity.this.m1340h();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ boolean m1348j(View view) {
        m1313c();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m1351k(View view) {
        if (this.f1227H) {
            m1320d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1316c(C0076d c0076d, View view) {
        if (this.f1227H) {
            m1320d();
        } else {
            m1337g("长按「" + c0076d.f1259b + "」拖到右侧空格");
        }
    }

    /* renamed from: d */
    /*
    */
    private void m1321d(final int i) {
        String str;
        FrameLayout frameLayout;
        int i2;
        boolean z;
        String str2;
        String str3;
        String str4;
        int i3;
        String str5;
        String str6;
        int i4;
        int i5;
        float f;
        String str7 = this.f1233l[i];
        boolean equals = RailCodec.f923f.equals(str7);
        boolean z2 = equals && (i == 0 || !RailCodec.f923f.equals(this.f1233l[i + (-1)]));
        boolean equals2 = RailCodec.f920c.equals(str7);
        FrameLayout frameLayout2 = new FrameLayout(this);
        if (!equals2) {
            str = RailCodec.f920c;
            frameLayout = frameLayout2;
            i2 = -1;
            if (equals) {
                int i6 = 0;
                for (int i7 = 0; i7 < i; i7++) {
                    if (RailCodec.f923f.equals(this.f1233l[i7])) {
                        i6++;
                    }
                }
                frameLayout.addView(new C0077e(i6, 3, m1266a(26.0f)), new FrameLayout.LayoutParams(-1, -1));
                if (i6 != 1) {
                    z = true;
                } else {
                    z = true;
                    frameLayout.addView(new C0079g(this, 1, m1266a(999.0f), m1271a(this, UiKit.f1345b, 16.0f), null, -1, null, UiKit.f1345b, null), new FrameLayout.LayoutParams(-1, -1));
                }
                frameLayout.setContentDescription((i + 1) + " Dock");
                str5 = str7;
                str2 = "-";
            } else {
                z = true;
                if ("-".equals(str7)) {
                    str2 = "-";
                    frameLayout.addView(new C0079g(this, 2, this.f1228I, null, null, -1, null, UiKit.f1345b, null), new FrameLayout.LayoutParams(-1, -1));
                    frameLayout.setContentDescription((i + 1) + " 空格");
                    str5 = str7;
                } else {
                    str2 = "-";
                    String m1331f = m1331f(str7);
                    int m1268a = m1268a(str7);
                    int i8 = this.f1228I;
                    Drawable m1339h = m1339h(str7);
                    String str8 = m1268a >= 0 ? f1217h[m1268a] : null;
                    if (m1268a < 0) {
                        str3 = m1331f;
                        str4 = str8;
                        i3 = -1;
                    } else {
                        String str9 = str8;
                        i3 = f1219j[m1268a];
                        str3 = m1331f;
                        str4 = str9;
                    }
                    str5 = str7;
                    frameLayout.addView(new C0079g(this, 3, i8, m1339h, str4, i3, null, UiKit.f1345b, str5), new FrameLayout.LayoutParams(-1, -1));
                    frameLayout.setContentDescription((i + 1) + " " + str3);
                }
            }
        } else {
            int m955e = RailCodec.m955e(this.f1233l);
            int m953d = RailCodec.m953d(this.f1233l);
            frameLayout2.addView(new C0077e(i - m955e, m953d, m1266a(26.0f)), new FrameLayout.LayoutParams(-1, -1));
            if (i == (m953d / 2) + m955e) {
                int m1266a = m1266a(999.0f);
                int i9 = UiKit.f1345b;
                i4 = m955e;
                str = RailCodec.f920c;
                frameLayout = frameLayout2;
                str6 = "-";
                i5 = m953d;
                i2 = -1;
                frameLayout.addView(new C0079g(this, 1, m1266a, null, "窗", -1, "小窗侧边栏", i9, null), new FrameLayout.LayoutParams(-1, -1));
            } else {
                str = RailCodec.f920c;
                frameLayout = frameLayout2;
                str6 = "-";
                i2 = -1;
                i4 = m955e;
                i5 = m953d;
            }
            if (i != i4) {
                f = 26.0f;
            } else if (!this.f1227H) {
                C0080h c0080h = new C0080h(this, true);
                this.f1222C = c0080h;
                c0080h.setContentDescription("拖动调节小窗侧边栏的上沿（3 到 7 格）");
                f = 26.0f;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m1266a(26.0f), m1266a(26.0f), 8388659);
                layoutParams.leftMargin = m1266a(3.0f);
                layoutParams.topMargin = m1266a(3.0f);
                frameLayout.addView(this.f1222C, layoutParams);
            } else {
                f = 26.0f;
            }
            if (i == (r2 + i5) - 1 && !this.f1227H) {
                C0080h c0080h2 = new C0080h(this, false);
                this.f1223D = c0080h2;
                c0080h2.setContentDescription("拖动调节小窗侧边栏的下沿（3 到 7 格）");
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(m1266a(f), m1266a(f), 8388693);
                layoutParams2.rightMargin = m1266a(3.0f);
                layoutParams2.bottomMargin = m1266a(3.0f);
                frameLayout.addView(this.f1223D, layoutParams2);
            }
            frameLayout.setContentDescription((i + 1) + " 小窗侧边栏");
            str5 = str7;
            str2 = str6;
            z = true;
        }
        View view = new View(this);
        GradientDrawable m1404a = UiKit.m1404a(0, m1266a(10.0f));
        m1404a.setStroke(m1266a(2.0f), UiKit.f1345b);
        view.setBackground(m1404a);
        view.setVisibility(8);
        frameLayout.addView(view, new FrameLayout.LayoutParams(i2, i2));
        frameLayout.setTag(view);
        int m955e2 = RailCodec.m955e(this.f1233l);
        String str10 = str2;
        if (!str10.equals(str5) && ((!equals || z2) && (!equals2 || i == m955e2))) {
            TextView m1413a = UiKit.m1413a(this, 14.0f, i2, 700);
            m1413a.setText("−");
            m1413a.setGravity(17);
            m1413a.setBackground(UiKit.m1404a(-2543579, m1266a(10.0f)));
            m1413a.setContentDescription("删除第 " + (i + 1) + " 格");
            m1413a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    RailCustomActivity.this.m1279a(i, view2);
                }
            });
            m1413a.setVisibility(this.f1227H ? 0 : 8);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(m1266a(20.0f), m1266a(20.0f), 8388661);
            layoutParams3.topMargin = m1266a(2.0f);
            layoutParams3.rightMargin = m1266a(2.0f);
            frameLayout.addView(m1413a, layoutParams3);
        }
        if (!str10.equals(str5)) {
            frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    boolean m1348j;
                    m1348j = RailCustomActivity.this.m1348j(view2);
                    return m1348j;
                }
            });
        }
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RailCustomActivity.this.m1351k(view2);
            }
        });
        frameLayout.setOnDragListener(m1303b(i));
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i2, m1266a(f1213d));
        if (i > 0) {
            if (!equals || !RailCodec.f923f.equals(this.f1233l[i - 1])) {
                if (equals2) {
                }
            }
            if (i > 0) {
                layoutParams4.topMargin = z ? 0 : m1266a(6.0f);
            }
            this.f1221B.addView(frameLayout, layoutParams4);
        }
        z = false;
        if (i > 0) {
        }
        this.f1221B.addView(frameLayout, layoutParams4);
    }

    /* renamed from: e */
    private void m1329e(boolean z) {
        Switch[] switchArr = {this.f1241t, this.f1242u};
        for (int i = 0; i < 2; i++) {
            Switch r2 = switchArr[i];
            if (r2 != null) {
                r2.setEnabled(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m1332f() {
        this.f1224E.fullScroll(130);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m1335g() {
        XposedService xposedService;
        final ConfigStore c0113o;
        final String str;
        String m1822h;
        ConfigStore c0113o2 = null;
        try {
            xposedService = ConfigBroadcastHub.m970a(1500L);
        } catch (Throwable th) {
            xposedService = null;
        }
        final ArrayList arrayList = new ArrayList();
        if (xposedService == null) {
            m1822h = null;
        } else {
            try {
                ConfigStore c0113o3 = new ConfigStore(xposedService);
                m1822h = c0113o3.m1822h();
                arrayList.addAll(c0113o3.m1826i());
                c0113o2 = c0113o3;
            } catch (Throwable th2) {
                Log.w("MiDuoRail", "读取侧栏配置失败", th2);
                arrayList.clear();
                c0113o = null;
                str = null;
            }
        }
        str = m1822h;
        c0113o = c0113o2;
        final List<C0078f> m1366z = m1366z();
        final List<C0078f> m1354n = m1354n();
        this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                RailCustomActivity.this.m1308b(c0113o, str, m1366z, arrayList, m1354n);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m1340h() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.f1226G = false;
        m1329e(true);
        m1337g("固定应用刷新失败，请检查 LSPosed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m1347j() {
        m1337g("侧栏配置保存失败，请检查 LSPosed");
        m1355o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m1350k() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        m1337g("小窗侧边栏应用保存失败，请检查 LSPosed");
        m1355o();
    }

    /* renamed from: dev.duo.hookprobe.RailCustomActivity$g */
    private static final class C0079g extends View {

        /* renamed from: o */
        static final int f1272o = 0;

        /* renamed from: p */
        static final int f1273p = 1;

        /* renamed from: q */
        static final int f1274q = 2;

        /* renamed from: r */
        static final int f1275r = 3;

        /* renamed from: a */
        private final int f1276a;

        /* renamed from: b */
        private final int f1277b;

        /* renamed from: c */
        private final Drawable f1278c;

        /* renamed from: d */
        private final String f1279d;

        /* renamed from: e */
        private final int f1280e;

        /* renamed from: f */
        private final String f1281f;

        /* renamed from: g */
        private final String f1282g;

        /* renamed from: h */
        private final int f1283h;

        /* renamed from: i */
        private final Paint f1284i;

        /* renamed from: j */
        private final Paint f1285j;

        /* renamed from: k */
        private final PathEffect f1286k;

        /* renamed from: l */
        private Drawable f1287l;

        /* renamed from: m */
        private int f1288m;

        /* renamed from: n */
        private Drawable f1289n;

        C0079g(Context context, int i, int i2, Drawable drawable, String str, int i3, String str2, int i4, String str3) {
            super(context);
            Paint paint = new Paint(1);
            this.f1284i = paint;
            this.f1285j = new Paint(1);
            this.f1276a = i;
            this.f1281f = str3;
            this.f1277b = i2;
            this.f1278c = drawable;
            this.f1279d = str;
            this.f1280e = i3;
            this.f1282g = str2;
            this.f1283h = i4;
            paint.setTextAlign(Paint.Align.CENTER);
            this.f1286k = new DashPathEffect(new float[]{UiKit.m1399a(context, 3.4f), UiKit.m1399a(context, 2.6f)}, 0.0f);
            setWillNotDraw(false);
        }

        /* renamed from: a */
        private float m1368a(int i) {
            if (this.f1282g == null) {
                return 0.0f;
            }
            return Math.max(UiKit.m1399a(getContext(), 7.5f), Math.min(UiKit.m1399a(getContext(), 10.5f), i * 0.2f));
        }

        /* renamed from: b */
        private void m1374b(Canvas canvas, float f, float f2, float f3) {
            this.f1285j.setStyle(Paint.Style.FILL);
            this.f1285j.setPathEffect(null);
            float m1399a = UiKit.m1399a(getContext(), 1.6f);
            this.f1285j.setColor(UiKit.f1343a ? 855638016 : 268435456);
            float f4 = f2 + m1399a;
            float f5 = f3 / 2.0f;
            canvas.drawCircle(f, f4, UiKit.m1399a(getContext(), 1.2f) + f5, this.f1285j);
            this.f1285j.setColor(UiKit.f1343a ? 1207959552 : 469762048);
            canvas.drawCircle(f, f4, f5, this.f1285j);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f;
            float f2;
            float m1399a;
            int width = getWidth();
            int height = getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            float m1368a = m1368a(height);
            float m1367a = m1367a(m1368a);
            float f3 = height;
            float m1399a2 = (f3 - m1367a) - (m1367a <= 0.0f ? 0.0f : UiKit.m1399a(getContext(), 1.5f));
            int m1369a = m1369a(width, m1399a2);
            float f4 = width;
            float f5 = f4 / 2.0f;
            float f6 = m1369a;
            float f7 = f6 / 2.0f;
            float max = Math.max(0.0f, (m1399a2 - f6) / 2.0f) + f7;
            int i = this.f1276a;
            if (i == 2) {
                this.f1285j.setStyle(Paint.Style.STROKE);
                this.f1285j.setStrokeWidth(Math.max(1, UiKit.m1399a(getContext(), 1.3f)));
                this.f1285j.setColor(UiKit.f1343a ? 1308622847 : 805306368);
                this.f1285j.setPathEffect(this.f1286k);
                canvas.drawCircle(f5, max, Math.max(1.0f, f7), this.f1285j);
                this.f1285j.setPathEffect(null);
                this.f1284i.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
                this.f1284i.setColor(UiKit.f1349d);
                this.f1284i.setTextSize(Math.max(UiKit.m1399a(getContext(), 9.0f), f6 * 0.45f));
                Paint.FontMetrics fontMetrics = this.f1284i.getFontMetrics();
                canvas.drawText("+", f5, max - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.f1284i);
                f = f5;
            } else if (i == 3) {
                int max2 = Math.max(1, m1369a(width, height - UiKit.m1399a(getContext(), 2.0f)));
                if (this.f1282g == null) {
                    m1399a = f5;
                    f2 = 2.0f;
                } else {
                    f2 = 2.0f;
                    m1399a = (max2 / 2.0f) + UiKit.m1399a(getContext(), 1.0f);
                }
                float f8 = f3 / f2;
                float f9 = max2;
                m1374b(canvas, m1399a, f8, f9);
                if (this.f1287l == null || this.f1288m != max2) {
                    Drawable m1302b = RailCustomActivity.m1302b(getContext(), max2);
                    this.f1287l = m1302b;
                    this.f1288m = max2;
                    m1302b.setBounds(0, 0, max2, max2);
                }
                canvas.save();
                float f10 = f9 / 2.0f;
                canvas.translate(m1399a - f10, f8 - f10);
                this.f1287l.draw(canvas);
                canvas.restore();
                if (m1372a(this.f1281f)) {
                    this.f1285j.setColor(this.f1283h);
                    RailCustomActivity.m1306b(canvas, this.f1281f, m1399a, f8, f9, this.f1285j);
                } else {
                    m1371a(canvas, m1399a, f8, f9 * m1373b(this.f1281f));
                }
                if (this.f1282g != null) {
                    this.f1284i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                    this.f1284i.setColor(UiKit.f1347c);
                    this.f1284i.setTextSize(UiKit.m1399a(getContext(), 8.0f));
                    float m1399a3 = m1399a + f10 + UiKit.m1399a(getContext(), 4.0f);
                    String m1370a = m1370a(this.f1282g, this.f1284i, Math.max(UiKit.m1399a(getContext(), 8.0f), (f4 - m1399a3) - UiKit.m1399a(getContext(), 2.0f)));
                    Paint.FontMetrics fontMetrics2 = this.f1284i.getFontMetrics();
                    canvas.drawText(m1370a, m1399a3, f8 - ((fontMetrics2.ascent + fontMetrics2.descent) / 2.0f), this.f1284i);
                    f = f5;
                } else {
                    f = f5;
                }
            } else if (i == 0) {
                m1374b(canvas, f5, max, f6);
                if (this.f1287l == null || this.f1288m != m1369a) {
                    Drawable m1302b2 = RailCustomActivity.m1302b(getContext(), m1369a);
                    this.f1287l = m1302b2;
                    this.f1288m = m1369a;
                    m1302b2.setBounds(0, 0, m1369a, m1369a);
                }
                canvas.save();
                canvas.translate(f5 - f7, max - f7);
                this.f1287l.draw(canvas);
                canvas.restore();
                if (m1372a(this.f1281f)) {
                    this.f1285j.setColor(this.f1283h);
                    f = f5;
                    RailCustomActivity.m1306b(canvas, this.f1281f, f, max, f6, this.f1285j);
                } else {
                    f = f5;
                    m1371a(canvas, f, max, f6 * m1373b(this.f1281f));
                }
            } else {
                f = f5;
                m1371a(canvas, f, m1399a2 / 2.0f, Math.min(f4 * 0.62f, m1399a2 * 0.62f));
            }
            if (m1367a <= 0.0f || this.f1276a == 3) {
                return;
            }
            this.f1284i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            this.f1284i.setTextSize(m1368a);
            this.f1284i.setColor(UiKit.f1347c);
            canvas.drawText(m1370a(this.f1282g, this.f1284i, width - UiKit.m1399a(getContext(), 4.0f)), f, f3 - this.f1284i.getFontMetrics().descent, this.f1284i);
        }

        /* renamed from: a */
        private float m1367a(float f) {
            if (this.f1282g == null || f <= 0.0f) {
                return 0.0f;
            }
            this.f1284i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            this.f1284i.setTextSize(f);
            Paint.FontMetrics fontMetrics = this.f1284i.getFontMetrics();
            return fontMetrics.descent - fontMetrics.ascent;
        }

        /* renamed from: b */
        private static float m1373b(String str) {
            if (str == null) {
                return 0.56f;
            }
            if (QuickTileCatalog.m898a(str)) {
                return 0.5f;
            }
            if ("screenrecord".equals(str) || "eyecare".equals(str)) {
                return 0.62068963f;
            }
            return str.startsWith("app:") ? 0.5689655f : 0.5862069f;
        }

        /* renamed from: a */
        private int m1369a(int i, float f) {
            return Math.max(UiKit.m1399a(getContext(), 10.0f), Math.round(Math.min(this.f1277b, Math.min(i - UiKit.m1399a(getContext(), 2.0f), f))));
        }

        /* renamed from: a */
        private static boolean m1372a(String str) {
            return "back".equals(str) || "home".equals(str) || "recents".equals(str);
        }

        /* renamed from: a */
        private void m1371a(Canvas canvas, float f, float f2, float f3) {
            int max = Math.max(UiKit.m1399a(getContext(), 8.0f), Math.round(f3));
            float f4 = max;
            float f5 = f4 / 2.0f;
            int round = Math.round(f - f5);
            int round2 = Math.round(f2 - f5);
            Drawable drawable = this.f1278c;
            if (drawable != null) {
                drawable.setBounds(round, round2, round + max, max + round2);
                this.f1278c.draw(canvas);
                return;
            }
            if (this.f1280e >= 0) {
                if (this.f1289n == null) {
                    this.f1289n = UiKit.m1403a(getContext(), this.f1280e, this.f1283h, 2.1f, false, 24.0f);
                }
                this.f1289n.setBounds(round, round2, round + max, max + round2);
                this.f1289n.draw(canvas);
                return;
            }
            if (this.f1279d != null) {
                this.f1284i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                this.f1284i.setColor(this.f1283h);
                this.f1284i.setTextSize(Math.max(UiKit.m1399a(getContext(), 9.0f), f4 * 0.72f));
                Paint.FontMetrics fontMetrics = this.f1284i.getFontMetrics();
                canvas.drawText(this.f1279d, f, f2 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.f1284i);
            }
        }

        /* renamed from: a */
        private static String m1370a(String str, Paint paint, float f) {
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
    /* renamed from: b */
    public static /* synthetic */ int m1301b(Collator collator, C0078f c0078f, C0078f c0078f2) {
        return collator.compare(c0078f.f1270b, c0078f2.f1270b);
    }

    /* renamed from: f */
    private String m1331f(String str) {
        if (str.startsWith("app:")) {
            C0078f c0078f = this.f1236o.get(str.substring(4));
            return c0078f == null ? str.substring(4) : c0078f.f1270b;
        }
        if (RailCodec.f923f.equals(str)) {
            return "Dock";
        }
        int m1268a = m1268a(str);
        return m1268a < 0 ? str : f1216g[m1268a];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1294a(List list, boolean z, boolean z2) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.f1238q.clear();
        this.f1238q.addAll(list);
        this.f1239r = z;
        this.f1240s = z2;
        this.f1226G = false;
        m1360t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m1305b() {
        System.arraycopy(RailCodec.m941a(this.f1233l), 0, this.f1233l, 0, 7);
    }

    /* renamed from: c */
    private void m1313c() {
        if (this.f1227H) {
            return;
        }
        boolean z = false;
        for (String str : this.f1233l) {
            if (!"-".equals(str)) {
                z = true;
            }
        }
        if (!z) {
            m1337g("侧栏还是空的");
        } else {
            this.f1227H = true;
            m1358r();
        }
    }

    /* renamed from: e */
    private View m1326e() {
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setPadding(m1266a(4.0f), 0, m1266a(4.0f), 0);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackground(UiKit.m1404a(UiKit.f1353f, m1266a(20.0f)));
        frameLayout.addView(UiKit.m1407a(this, UiKit.m1403a(this, 3, UiKit.f1345b, 2.4f, false, 18.0f)), new FrameLayout.LayoutParams(m1266a(18.0f), m1266a(18.0f), 17));
        frameLayout.setContentDescription("返回");
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RailCustomActivity.this.m1315c(view);
            }
        });
        m1430c.addView(frameLayout, UiKit.m1409a(this, f1213d, f1213d));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setPadding(m1266a(12.0f), 0, 0, 0);
        TextView m1413a = UiKit.m1413a(this, 22.0f, UiKit.f1345b, 800);
        m1413a.setText("外屏 App 内侧栏自定义");
        m1413a.setLetterSpacing(-0.01f);
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("只改外屏 App 模式的右侧栏，全局共用");
        m1413a2.setPadding(0, m1266a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ boolean m1310b(View view) {
        m1320d();
        if (this.f1226G) {
            m1337g("正在加载配置，请稍候");
            return true;
        }
        m1357q();
        return true;
    }

    /* renamed from: h */
    private Drawable m1339h(String str) {
        int m1268a;
        Drawable m1198a;
        if (this.f1237p.containsKey(str)) {
            return this.f1237p.get(str);
        }
        if (str.startsWith("app:")) {
            C0078f c0078f = this.f1236o.get(str.substring(4));
            if (c0078f != null) {
                m1198a = c0078f.f1271c;
            }
            m1198a = null;
        } else {
            if (!RailCodec.f923f.equals(str) && (m1268a = m1268a(str)) >= 0) {
                if (!"wechat".equals(str) && !"alipay".equals(str)) {
                    Drawable m896a = QuickTileCatalog.m896a(this, str);
                    if (m896a != null) {
                        m896a.setTint(UiKit.f1345b);
                        m1198a = m896a;
                    } else if ("huanji".equals(str)) {
                        m1198a = m1272a(this, "com.miui.huanji");
                    } else if ("calculator".equals(str)) {
                        m1198a = m1272a(this, "com.miui.calculator");
                    } else {
                        m1198a = "translate".equals(str) ? m1272a(this, "com.xiaomi.aiasst.vision") : m1274a(f1218i[m1268a], UiKit.f1345b);
                    }
                } else {
                    m1198a = TrialRingDrawable.m1198a(str);
                }
            }
            m1198a = null;
        }
        this.f1237p.put(str, m1198a);
        return m1198a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ boolean m1311b(C0076d c0076d, View view) {
        if (this.f1227H) {
            m1320d();
            m1337g("已退出删除模式，请再长按拖动");
            return true;
        }
        return m1299a(view, c0076d.f1258a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ int m1269a(Collator collator, C0078f c0078f, C0078f c0078f2) {
        return collator.compare(c0078f.f1270b, c0078f2.f1270b);
    }

    /* renamed from: a */
    private void m1288a(ConfigStore c0113o, String str, List<C0078f> list, List<String> list2, List<C0078f> list3) {
        this.f1247z = c0113o;
        this.f1239r = c0113o == null || c0113o.m1864v();
        this.f1240s = c0113o != null && c0113o.m1865w();
        this.f1243v.clear();
        this.f1243v.addAll(list3);
        this.f1244w.clear();
        for (C0078f c0078f : this.f1243v) {
            this.f1244w.put(c0078f.f1269a, c0078f);
        }
        this.f1238q.clear();
        this.f1238q.addAll(list2);
        this.f1235n.clear();
        this.f1235n.addAll(list);
        this.f1236o.clear();
        for (C0078f c0078f2 : this.f1235n) {
            this.f1236o.put(c0078f2.f1269a, c0078f2);
        }
        System.arraycopy(m1330e(str), 0, this.f1233l, 0, 7);
        m1305b();
        this.f1234m.clear();
        for (String str2 : this.f1233l) {
            if (str2.startsWith("app:") && !this.f1234m.contains(str2)) {
                this.f1234m.add(str2);
            }
        }
        this.f1226G = false;
        m1358r();
        if (this.f1247z == null) {
            m1337g("未连接 LSPosed，改动本次无法保存");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ boolean m1319c(String str) {
        return m1312b(new StringBuilder().append("app:").append(str).toString()) || this.f1234m.contains(new StringBuilder().append("app:").append(str).toString());
    }

    /* renamed from: c */
    private void m1318c(final boolean z) {
        if (this.f1247z == null) {
            m1337g("未连接 LSPosed，改动无法保存");
        } else {
            MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    RailCustomActivity.this.m1295a(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1306b(Canvas canvas, String str, float f, float f2, float f3, Paint paint) {
        char c;
        float f4 = f3 / 116.0f;
        float f5 = f4 * 4.5f;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f5);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        Path path = new Path();
        str.getClass();
        switch (str.hashCode()) {
            case 3015911:
                if (str.equals("back")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 3208415:
                if (str.equals("home")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1082295672:
                if (str.equals("recents")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                float f6 = (7.0f * f4) + f;
                float f7 = 18.0f * f4;
                path.moveTo(f6, f2 - f7);
                path.lineTo(f - (f4 * 10.0f), f2);
                path.lineTo(f6, f2 + f7);
                canvas.drawPath(path, paint);
                break;
            case 1:
                paint.setStyle(Paint.Style.FILL);
                path.setFillType(Path.FillType.EVEN_ODD);
                float f8 = 21.0f * f4;
                float f9 = f - f8;
                float f10 = f2 - f8;
                float f11 = 3.0f * f4;
                float f12 = f - f11;
                float f13 = f2 - f11;
                float f14 = 6.5f * f4;
                m1281a(path, f9, f10, f12, f13, f14, f5);
                float f15 = f + f11;
                float f16 = f + f8;
                m1281a(path, f15, f10, f16, f13, f14, f5);
                float f17 = f2 + f11;
                float f18 = f2 + f8;
                m1281a(path, f9, f17, f12, f18, f14, f5);
                m1281a(path, f15, f17, f16, f18, f14, f5);
                canvas.drawPath(path, paint);
                break;
            case 2:
                paint.setStyle(Paint.Style.FILL);
                path.setFillType(Path.FillType.EVEN_ODD);
                canvas.save();
                float f19 = 15.0f * f4;
                canvas.clipOutRect(f - (23.0f * f4), f2 - f19, f19 + f, (25.0f * f4) + f2);
                float f20 = 10.0f * f4;
                float f21 = f4 * 20.0f;
                float f22 = 18.0f * f4;
                float f23 = 8.5f * f4;
                m1281a(path, f - f20, f2 - f21, f + f22, f2 + f20, f23, f5);
                canvas.drawPath(path, paint);
                canvas.restore();
                path.reset();
                m1281a(path, f - f22, f2 - f20, f + f20, f2 + f21, f23, f5);
                canvas.drawPath(path, paint);
                break;
            default:
                canvas.drawCircle(f, f2, f4 * 4.0f, paint);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m1345i(View view) {
        if (this.f1226G) {
            m1337g("正在加载配置，请稍候");
            return;
        }
        if (this.f1247z == null) {
            m1337g("未连接 LSPosed，改动无法保存");
            return;
        }
        List<C0078f> list = this.f1243v;
        final List<String> list2 = this.f1238q;
        Objects.requireNonNull(list2);
        m1290a("添加到小窗侧边栏", list, new Predicate() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda17
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return list2.contains((String) obj);
            }
        }, new Consumer() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda18
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RailCustomActivity.this.m1307b((RailCustomActivity.C0078f) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m1314c(int i) {
        startActivity(new Intent(this, (Class<?>) MainActivity.class).putExtra("tab", i).addFlags(603979776));
        finish();
    }

    /* renamed from: e */
    private String[] m1330e(String str) {
        String[] m951c = RailCodec.m951c(str);
        if (m951c == null) {
            return RailCodec.m940a();
        }
        for (int i = 0; i < m951c.length; i++) {
            if (m951c[i].startsWith("app:") && !this.f1236o.containsKey(m951c[i].substring(4))) {
                m951c[i] = "-";
            }
        }
        return RailCodec.m941a(m951c);
    }

    /* renamed from: g */
    private void m1337g(String str) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Toast.makeText(this, str, 0).show();
    }

    /* renamed from: a */
    private List<C0076d> m1277a() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            String[] strArr = f1215f;
            if (i >= strArr.length) {
                break;
            }
            String str = strArr[i];
            arrayList.add(new C0076d(str, f1216g[i], f1217h[i], m1339h(str), f1219j[i], false));
            i++;
        }
        arrayList.add(new C0076d(null, "选择 App", "+", null, -1, true));
        arrayList.add(new C0076d(RailCodec.f923f, "Dock", null, m1271a(this, UiKit.f1345b, 26.0f), -1, false));
        arrayList.add(new C0076d(RailCodec.f920c, "小窗侧边栏", "窗", null, -1, false));
        for (String str2 : this.f1234m) {
            C0078f c0078f = this.f1236o.get(str2.substring(4));
            if (c0078f != null) {
                arrayList.add(new C0076d(str2, c0078f.f1270b, null, c0078f.f1271c, -1, false));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private View m1276a(final C0076d c0076d) {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setGravity(1);
        String str = c0076d.f1258a;
        boolean z = str != null && m1312b(str);
        C0079g c0079g = new C0079g(this, 0, this.f1228I, c0076d.f1261d, c0076d.f1260c, c0076d.f1262e, c0076d.f1259b, UiKit.f1345b, c0076d.f1258a);
        if (z) {
            c0079g.setAlpha(0.45f);
        }
        m1411a.addView(c0079g, new LinearLayout.LayoutParams(-1, this.f1228I + m1266a(18.0f)));
        TextView m1413a = UiKit.m1413a(this, 9.0f, -13326253, 600);
        m1413a.setText(z ? "已添加" : "");
        m1413a.setGravity(17);
        m1411a.addView(m1413a, UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1266a(14.0f)), this, 2.0f));
        if (c0076d.f1263f) {
            m1411a.setContentDescription("选择 App");
            m1411a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda38
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RailCustomActivity.this.m1282a(view);
                }
            });
            m1411a.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda39
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m1310b;
                    m1310b = RailCustomActivity.this.m1310b(view);
                    return m1310b;
                }
            });
            return m1411a;
        }
        if (z) {
            m1411a.setContentDescription(c0076d.f1259b + "，已添加");
            m1411a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda40
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RailCustomActivity.this.m1286a(c0076d, view);
                }
            });
            return m1411a;
        }
        m1411a.setContentDescription(c0076d.f1259b + "，长按拖到右侧空格");
        m1411a.setOnLongClickListener(new View.OnLongClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda41
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m1311b;
                m1311b = RailCustomActivity.this.m1311b(c0076d, view);
                return m1311b;
            }
        });
        m1411a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RailCustomActivity.this.m1316c(c0076d, view);
            }
        });
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Drawable m1302b(Context context, int i) {
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        boolean z = UiKit.f1343a;
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{z ? -11908528 : -1, z ? -14474454 : -1578513});
        gradientDrawable.setShape(1);
        int max = Math.max(1, Math.round(i * 0.018f));
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) gradientDrawable, max, max, max, max);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(0);
        gradientDrawable2.setStroke(max, UiKit.f1343a ? 1090519039 : 520093696);
        return new LayerDrawable(new Drawable[]{insetDrawable, gradientDrawable2});
    }

    /* renamed from: b */
    private View.OnDragListener m1303b(final int i) {
        return new View.OnDragListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnDragListener
            public final boolean onDrag(View view, DragEvent dragEvent) {
                boolean m1297a;
                m1297a = RailCustomActivity.this.m1297a(i, view, dragEvent);
                return m1297a;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1309b(boolean z) {
        boolean z2;
        try {
            z2 = this.f1247z.m1846o(z);
        } catch (Throwable th) {
            Log.w("MiDuoRail", "保存四方块位置失败", th);
            z2 = false;
        }
        if (z2) {
            return;
        }
        this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                RailCustomActivity.this.m1353m();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1307b(C0078f c0078f) {
        m1291a(c0078f.f1269a, true);
    }

    /* renamed from: b */
    private boolean m1312b(String str) {
        if (str == null) {
            return false;
        }
        for (String str2 : this.f1233l) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1282a(View view) {
        m1320d();
        if (this.f1226G) {
            m1337g("正在加载配置，请稍候");
        } else {
            m1357q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1286a(C0076d c0076d, View view) {
        m1320d();
        m1337g("「" + c0076d.f1259b + "」已添加到侧栏");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1279a(int i, View view) {
        m1278a(i);
    }

    /* renamed from: a */
    private static Drawable m1272a(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationIcon(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private Drawable m1274a(String str, int i) {
        Drawable drawable;
        if (str != null && !str.isEmpty()) {
            if (!this.f1231L) {
                this.f1231L = true;
                try {
                    this.f1230K = createPackageContext("com.android.systemui", 0).getResources();
                } catch (Throwable th) {
                    Log.w("MiDuoRail", "读取 SystemUI 资源失败，用自绘图标", th);
                    this.f1230K = null;
                }
            }
            if (this.f1230K == null) {
                return null;
            }
            for (String str2 : str.split(",")) {
                String trim = str2.trim();
                if (!trim.isEmpty()) {
                    try {
                        int identifier = this.f1230K.getIdentifier(trim, "drawable", "com.android.systemui");
                        if (identifier == 0) {
                            identifier = this.f1230K.getIdentifier(trim, "mipmap", "com.android.systemui");
                        }
                        if (identifier != 0 && (drawable = this.f1230K.getDrawable(identifier, null)) != null) {
                            Drawable mutate = drawable.mutate();
                            mutate.setTint(i);
                            return mutate;
                        }
                    } catch (Throwable th2) {
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: d */
    private void m1320d() {
        if (this.f1227H) {
            this.f1227H = false;
            m1358r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1324d(String str) {
        boolean z;
        try {
            z = this.f1247z.m1863u(str);
        } catch (Throwable th) {
            Log.w("MiDuoRail", "保存侧栏配置失败", th);
            z = false;
        }
        if (z) {
            return;
        }
        this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                RailCustomActivity.this.m1347j();
            }
        });
    }

    /* renamed from: d */
    private void m1325d(final boolean z) {
        if (this.f1247z == null) {
            m1337g("未连接 LSPosed，改动无法保存");
        } else {
            MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    RailCustomActivity.this.m1309b(z);
                }
            });
        }
    }

    /* renamed from: a */
    private static void m1281a(Path path, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f6 / 2.0f;
        float f8 = f5 + f7;
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(f - f7, f2 - f7, f3 + f7, f4 + f7, f8, f8, direction);
        float f9 = f + f7;
        float f10 = f2 + f7;
        float f11 = f3 - f7;
        float f12 = f4 - f7;
        float f13 = f5 - f7;
        path.addRoundRect(f9, f10, f11, f12, Math.max(0.0f, f13), Math.max(0.0f, f13), direction);
    }

    /* renamed from: a */
    private boolean m1299a(View view, String str) {
        if (this.f1226G) {
            m1337g("正在加载配置，请稍候");
            return true;
        }
        if (this.f1247z == null) {
            m1337g("未连接 LSPosed，改动无法保存");
            return true;
        }
        view.startDragAndDrop(ClipData.newPlainText("railCustom", str), new View.DragShadowBuilder(view), str, 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ boolean m1297a(int i, View view, DragEvent dragEvent) {
        switch (dragEvent.getAction()) {
            case 1:
                return dragEvent.getLocalState() instanceof String;
            case 2:
            default:
                return false;
            case 3:
                m1283a(view, false);
                return (dragEvent.getLocalState() instanceof String) && m1298a(i, (String) dragEvent.getLocalState());
            case 4:
            case WorkspaceProtocol.QUERY /* 6 */:
                m1283a(view, false);
                return true;
            case 5:
                m1283a(view, true);
                return true;
        }
    }

    /* renamed from: a */
    private void m1283a(View view, boolean z) {
        Object tag = view.getTag();
        if (tag instanceof View) {
            ((View) tag).setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: a */
    private boolean m1298a(int i, String str) {
        int i2;
        if (this.f1226G || this.f1227H) {
            return false;
        }
        if (this.f1247z == null) {
            m1337g("未连接 LSPosed，改动无法保存");
            return false;
        }
        if (m1312b(str)) {
            m1337g("这个已经添加过了");
            return false;
        }
        if (RailCodec.f920c.equals(str)) {
            int i3 = 0;
            while (true) {
                i2 = i + i3;
                if (i2 >= 7 || !"-".equals(this.f1233l[i2])) {
                    break;
                }
                i3++;
            }
            if (i3 < 3) {
                m1337g("从这一格起要有连续 3 个空格，小窗侧边栏才放得下");
                return false;
            }
            while (i < i2) {
                this.f1233l[i] = RailCodec.f920c;
                i++;
            }
        } else if (RailCodec.f923f.equals(str)) {
            if (i > 4) {
                m1337g("Dock 只能从第 1~4 格开始放下（占连续 3 格）");
                return false;
            }
            int i4 = i;
            while (true) {
                int i5 = i + 3;
                if (i4 >= i5) {
                    while (i < i5) {
                        this.f1233l[i] = RailCodec.f923f;
                        i++;
                    }
                } else {
                    if (!"-".equals(this.f1233l[i4])) {
                        m1337g("Dock 需要连续 3 个空格");
                        return false;
                    }
                    i4++;
                }
            }
        } else {
            if (RailCodec.f920c.equals(this.f1233l[i])) {
                m1337g("这格被小窗侧边栏占着，先拖它的把手缩小，再放按钮");
                return false;
            }
            if (!"-".equals(this.f1233l[i])) {
                m1337g("这格已经有按钮了");
                return false;
            }
            if (!RailCodec.m939a(str) && !RailCodec.m947b(str)) {
                return false;
            }
            this.f1233l[i] = str;
        }
        m1305b();
        m1362v();
        this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                RailCustomActivity.this.m1358r();
            }
        });
        return true;
    }

    /* renamed from: a */
    private void m1278a(int i) {
        if (RailCodec.f920c.equals(this.f1233l[i])) {
            for (int i2 = 0; i2 < 7; i2++) {
                if (RailCodec.f920c.equals(this.f1233l[i2])) {
                    this.f1233l[i2] = "-";
                }
            }
        } else if (RailCodec.f923f.equals(this.f1233l[i])) {
            for (int i3 = 0; i3 < 7; i3++) {
                if (RailCodec.f923f.equals(this.f1233l[i3])) {
                    this.f1233l[i3] = "-";
                }
            }
        } else {
            this.f1233l[i] = "-";
        }
        m1305b();
        this.f1227H = false;
        m1362v();
        m1358r();
    }

    /* renamed from: a */
    private void m1290a(String str, List<C0078f> list, Predicate<String> predicate, final Consumer<C0078f> consumer) {
        final ArrayList arrayList = new ArrayList(list);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setPadding(m1266a(20.0f), m1266a(4.0f), m1266a(20.0f), m1266a(4.0f));
        EditText editText = new EditText(this);
        UiKit.m1419a(editText);
        editText.setHint("搜索 App");
        m1411a.addView(editText, UiKit.m1408a());
        ListView listView = new ListView(this);
        listView.setDivider(null);
        listView.setVerticalScrollBarEnabled(false);
        listView.setBackgroundColor(0);
        C0073a c0073a = new C0073a(arrayList, predicate);
        listView.setAdapter((ListAdapter) c0073a);
        m1411a.addView(listView, UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1266a(320.0f)), this, 8.0f));
        final AlertDialog create = UiKit.m1400a((Activity) this, str).setView(m1411a).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create();
        editText.addTextChangedListener(new C0074b(arrayList, list, c0073a));
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda16
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                RailCustomActivity.m1292a(arrayList, create, consumer, adapterView, view, i, j);
            }
        });
        UiKit.m1417a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1292a(List list, AlertDialog alertDialog, Consumer consumer, AdapterView adapterView, View view, int i, long j) {
        C0078f c0078f = (C0078f) list.get(i);
        alertDialog.dismiss();
        consumer.accept(c0078f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1285a(TextView textView, CompoundButton compoundButton, boolean z) {
        this.f1239r = z;
        textView.setText(z ? "小窗" : "全屏");
        compoundButton.setContentDescription(z ? "小窗打开" : "全屏打开");
        m1318c(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1295a(boolean z) {
        boolean z2;
        try {
            z2 = this.f1247z.m1843n(z);
        } catch (Throwable th) {
            Log.w("MiDuoRail", "保存小窗侧边栏打开方式失败", th);
            z2 = false;
        }
        if (z2) {
            return;
        }
        this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                RailCustomActivity.this.m1352l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1284a(CompoundButton compoundButton, boolean z) {
        this.f1240s = z;
        m1325d(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1289a(String str, View view) {
        m1291a(str, false);
    }

    /* renamed from: a */
    private Drawable m1273a(Drawable drawable, int i) {
        if (drawable == null) {
            return null;
        }
        try {
            return getPackageManager().getUserBadgedIcon(drawable, UserHandle.getUserHandleForUid(i * 100000));
        } catch (RuntimeException e) {
            return drawable;
        }
    }

    /* renamed from: a */
    private View m1275a(Drawable drawable, String str, String str2) {
        return new C0079g(this, str != null ? 2 : 0, this.f1228I, drawable, str, -1, str2, UiKit.f1345b, drawable == null ? null : "app:");
    }

    /* renamed from: a */
    private void m1291a(final String str, final boolean z) {
        if (this.f1226G) {
            m1337g("正在读取或保存配置，请稍候");
        } else if (this.f1247z == null) {
            m1337g("未连接 LSPosed，改动无法保存");
        } else {
            this.f1226G = true;
            MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    RailCustomActivity.this.m1296a(z, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1296a(boolean z, String str) {
        boolean remove;
        final ArrayList arrayList = new ArrayList();
        try {
            arrayList.addAll(this.f1247z.m1826i());
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
            if (remove && !this.f1247z.m1784a(arrayList)) {
                throw new IllegalStateException("LSPosed 未保存固定应用");
            }
            this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    RailCustomActivity.this.m1293a(arrayList, str2);
                }
            });
        } catch (Throwable th) {
            Log.w("MiDuoRail", "保存小窗侧边栏应用失败", th);
            this.f1232k.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    RailCustomActivity.this.m1350k();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1293a(List list, String str) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.f1238q.clear();
        this.f1238q.addAll(list);
        this.f1226G = false;
        m1360t();
        if (str != null) {
            m1337g(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1287a(C0078f c0078f) {
        String str = "app:" + c0078f.f1269a;
        if (!m1312b(str) && !this.f1234m.contains(str)) {
            this.f1234m.add(str);
            m1358r();
            ScrollView scrollView = this.f1224E;
            if (scrollView != null) {
                scrollView.post(new Runnable() { // from class: dev.duo.hookprobe.RailCustomActivity$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        RailCustomActivity.this.m1332f();
                    }
                });
            }
            m1337g("已加入候选，长按拖到右侧空格");
            return;
        }
        m1337g("「" + c0078f.f1270b + "」已经在侧栏或候选里了");
    }

    /* renamed from: a */
    private static int m1268a(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f1215f;
            if (i >= strArr.length) {
                return -1;
            }
            if (strArr[i].equals(str)) {
                return i;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m1266a(float f) {
        return UiKit.m1399a(this, f);
    }

    /* renamed from: a */
    private static Drawable m1271a(Context context, int i, float f) {
        return new C0075c(i, UiKit.m1399a(context, f));
    }
}
