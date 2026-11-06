package dev.duo.hookprobe;

import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.AppInventory;
import dev.duo.hookprobe.UiKit;
import dev.duo.hookprobe.Diagnostics;
import dev.duo.hookprobe.MainActivity;
import dev.duo.icons.IconConst;
import io.github.libxposed.service.XposedService;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntConsumer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class MainActivity extends Activity {

    /* renamed from: a */
    static final ExecutorService f957a = Executors.newSingleThreadExecutor();

    /* renamed from: b */
    static final ExecutorService f958b = Executors.newSingleThreadExecutor();

    /* renamed from: c */
    static final ExecutorService f959c = Executors.newSingleThreadExecutor();

    /* renamed from: d */
    static final Set<String> f960d;

    /* renamed from: e */
    private static final String[] f961e;

    /* renamed from: f */
    private static volatile boolean f962f = false;

    /* renamed from: g */
    private static volatile String f963g = null;

    /* renamed from: h */
    private static final String f964h = "8.01.02.6325";

    /* renamed from: i */
    private static final int f965i = 316;

    /* renamed from: j */
    private static final String f966j = "全屏 App 轻折放平进入双分屏，双分屏再轻折放平，原有分屏收到左边、桌面选第三个 App 进入三分屏；关闭后全部恢复小米原生";

    /* renamed from: k */
    private static final int f967k = 10;

    /* renamed from: A */
    private TextView f968A;

    /* renamed from: A0 */
    private TextView f969A0;

    /* renamed from: B */
    private TextView f970B;

    /* renamed from: B0 */
    private TextView f971B0;

    /* renamed from: C */
    private Switch f972C;

    /* renamed from: C0 */
    private TextView f973C0;

    /* renamed from: D */
    private TextView f974D;

    /* renamed from: D0 */
    private TextView f975D0;

    /* renamed from: E */
    private TextView f976E;

    /* renamed from: E0 */
    private TextView f977E0;

    /* renamed from: F */
    private TextView f978F;

    /* renamed from: F0 */
    private TextView f979F0;

    /* renamed from: G */
    private TextView f980G;

    /* renamed from: G0 */
    private TextView f981G0;

    /* renamed from: H */
    private SeekBar f982H;

    /* renamed from: H0 */
    private TextView f983H0;

    /* renamed from: I */
    private TextView f984I;

    /* renamed from: I0 */
    private EditText f985I0;

    /* renamed from: J */
    private SeekBar f986J;

    /* renamed from: J0 */
    private Switch f987J0;

    /* renamed from: K0 */
    private Switch f989K0;

    /* renamed from: L */
    private UiKit.e f990L;

    /* renamed from: L0 */
    private TextView f991L0;

    /* renamed from: M */
    private TextView f992M;

    /* renamed from: M0 */
    private UiKit.e f993M0;

    /* renamed from: N */
    private Switch f994N;

    /* renamed from: N0 */
    private int f995N0;

    /* renamed from: O */
    private TextView f996O;

    /* renamed from: O0 */
    private C0063f f997O0;

    /* renamed from: P */
    private boolean f998P;

    /* renamed from: P0 */
    private ListView f999P0;

    /* renamed from: Q */
    private Switch f1000Q;

    /* renamed from: Q0 */
    private LinearLayout f1001Q0;

    /* renamed from: R */
    private Switch f1002R;

    /* renamed from: R0 */
    private View f1003R0;

    /* renamed from: S */
    private LinearLayout f1004S;

    /* renamed from: S0 */
    private C0065h f1005S0;

    /* renamed from: T */
    private TextView f1006T;

    /* renamed from: T0 */
    private boolean f1007T0;

    /* renamed from: U */
    private SeekBar f1008U;

    /* renamed from: U0 */
    private boolean f1009U0;

    /* renamed from: V */
    private Switch f1010V;

    /* renamed from: V0 */
    private boolean f1011V0;

    /* renamed from: W */
    private Switch f1012W;

    /* renamed from: W0 */
    private String f1013W0;

    /* renamed from: X */
    private Switch f1014X;

    /* renamed from: X0 */
    private String[] f1015X0;

    /* renamed from: Y */
    private Switch f1016Y;

    /* renamed from: Y0 */
    private Set<String> f1017Y0;

    /* renamed from: Z */
    private Switch f1018Z;

    /* renamed from: Z0 */
    private String f1019Z0;

    /* renamed from: a0 */
    private Switch f1020a0;

    /* renamed from: a1 */
    private int f1021a1;

    /* renamed from: b0 */
    private Switch f1022b0;

    /* renamed from: b1 */
    private boolean f1023b1;

    /* renamed from: c0 */
    private Switch f1024c0;

    /* renamed from: c1 */
    private boolean f1025c1;

    /* renamed from: d0 */
    private UiKit.e f1026d0;

    /* renamed from: d1 */
    private final Runnable f1027d1;

    /* renamed from: e0 */
    private UiKit.e f1028e0;

    /* renamed from: e1 */
    private C0066i f1029e1;

    /* renamed from: f0 */
    private UiKit.e f1030f0;

    /* renamed from: f1 */
    private boolean f1031f1;

    /* renamed from: g0 */
    private final SeekBar[] f1032g0;

    /* renamed from: g1 */
    private TextView f1033g1;

    /* renamed from: h0 */
    private final TextView[] f1034h0;

    /* renamed from: h1 */
    private String f1035h1;

    /* renamed from: i0 */
    private final Runnable[] f1036i0;

    /* renamed from: i1 */
    private float f1037i1;

    /* renamed from: j0 */
    private TextView f1038j0;

    /* renamed from: j1 */
    private boolean f1039j1;

    /* renamed from: k0 */
    private FrameLayout f1040k0;

    /* renamed from: l0 */
    private View f1042l0;

    /* renamed from: m0 */
    private View f1044m0;

    /* renamed from: n0 */
    private UiKit.e f1046n0;

    /* renamed from: o0 */
    private UiKit.e f1048o0;

    /* renamed from: p */
    private ConfigStore f1049p;

    /* renamed from: p0 */
    private float f1050p0;

    /* renamed from: q */
    private UiKit.d f1051q;

    /* renamed from: q0 */
    private ValueAnimator f1052q0;

    /* renamed from: r0 */
    private View f1054r0;

    /* renamed from: s0 */
    private TextView f1056s0;

    /* renamed from: t */
    private boolean f1057t;

    /* renamed from: t0 */
    private TextView f1058t0;

    /* renamed from: u */
    private FrameLayout f1059u;

    /* renamed from: u0 */
    private TextView f1060u0;

    /* renamed from: v */
    private String f1061v;

    /* renamed from: v0 */
    private TextView f1062v0;

    /* renamed from: w */
    private String f1063w;

    /* renamed from: w0 */
    private TextView f1064w0;

    /* renamed from: x */
    private int f1065x;

    /* renamed from: x0 */
    private ImageView f1066x0;

    /* renamed from: y */
    private LinearLayout f1067y;

    /* renamed from: y0 */
    private LinearLayout f1068y0;

    /* renamed from: z */
    private FrameLayout f1069z;

    /* renamed from: z0 */
    private TextView f1070z0;

    /* renamed from: l */
    private final AtomicBoolean f1041l = new AtomicBoolean();

    /* renamed from: m */
    private final Handler f1043m = new Handler(Looper.getMainLooper());

    /* renamed from: n */
    private final List<C0064g> f1045n = new ArrayList();

    /* renamed from: o */
    private final List<C0064g> f1047o = new ArrayList();

    /* renamed from: r */
    private final View[] f1053r = new View[5];

    /* renamed from: s */
    private int f1055s = 0;

    /* renamed from: K */
    private final List<TextView> f988K = new ArrayList();

    /* renamed from: dev.duo.hookprobe.MainActivity$a */
    class C0058a implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: a */
        final /* synthetic */ TextView f1071a;

        /* renamed from: b */
        final /* synthetic */ int f1072b;

        /* renamed from: c */
        final /* synthetic */ IntConsumer f1073c;

        C0058a(TextView textView, int i, IntConsumer intConsumer) {
            this.f1071a = textView;
            this.f1072b = i;
            this.f1073c = intConsumer;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            this.f1071a.setText(String.valueOf(i + this.f1072b));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            this.f1073c.accept(seekBar.getProgress() + this.f1072b);
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$b */
    class C0059b implements TextWatcher {
        C0059b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            MainActivity.this.m1159o();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$c */
    class C0060c extends ListView {
        C0060c(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m1187a(int i, int i2) {
            setSelectionFromTop(i, i2);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            final int firstVisiblePosition = getFirstVisiblePosition();
            View childAt = getChildAt(0);
            final int top = childAt != null ? childAt.getTop() : 0;
            super.onSizeChanged(i, i2, i3, i4);
            if (MainActivity.this.f985I0 == null || !MainActivity.this.f985I0.hasFocus()) {
                return;
            }
            if (firstVisiblePosition == 0) {
                View view = (View) MainActivity.this.f985I0.getParent();
                top = Math.max(Math.min(top, (i2 - getPaddingBottom()) - view.getBottom()), getPaddingTop() - view.getTop());
            }
            post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.C0060c.this.m1187a(firstVisiblePosition, top);
                }
            });
        }

        @Override // android.widget.ListView, android.view.ViewGroup, android.view.ViewParent
        public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
            if (MainActivity.this.f985I0 == null || !MainActivity.this.f985I0.hasFocus()) {
                return super.requestChildRectangleOnScreen(view, rect, z);
            }
            return false;
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$d */
    class C0061d implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: a */
        final /* synthetic */ TextView f1077a;

        /* renamed from: b */
        final /* synthetic */ int f1078b;

        C0061d(TextView textView, int i) {
            this.f1077a = textView;
            this.f1078b = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m1188a(int i, int i2) {
            MainActivity.this.f1036i0[i] = null;
            if (MainActivity.this.f1049p.m1777a(i, i2)) {
                return;
            }
            Toast.makeText(MainActivity.this, "时钟模块位置保存失败", 0).show();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            final int i2 = i - 60;
            this.f1077a.setText(MainActivity.m1076c(i2));
            MainActivity.this.m1003Z();
            if (!z || MainActivity.this.f1049p == null || MainActivity.f962f) {
                return;
            }
            if (MainActivity.this.f1036i0[this.f1078b] != null) {
                MainActivity.this.f1043m.removeCallbacks(MainActivity.this.f1036i0[this.f1078b]);
            }
            Runnable[] runnableArr = MainActivity.this.f1036i0;
            final int i3 = this.f1078b;
            runnableArr[i3] = new Runnable() { // from class: dev.duo.hookprobe.MainActivity$d$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.C0061d.this.m1188a(i3, i2);
                }
            };
            MainActivity.this.f1043m.postDelayed(MainActivity.this.f1036i0[this.f1078b], 80L);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$f */
    private final class C0063f extends BaseAdapter {
        private C0063f() {
        }

        /* renamed from: a */
        private String m1191a(String str, boolean z) {
            if (!z) {
                return "未开启 Duo";
            }
            String str2 = (MainActivity.this.f1049p.m1792b(str, "inner") || MainActivity.this.f1049p.m1792b(str, "outer")) ? MainActivity.this.f1049p.m1808e(str, "inner") == MainActivity.this.f1049p.m1808e(str, "outer") ? "高度 " + MainActivity.this.f1049p.m1808e(str, "inner") + "px" : "内屏 " + MainActivity.this.f1049p.m1808e(str, "inner") + " / 外屏 " + MainActivity.this.f1049p.m1808e(str, "outer") : "高度跟随全局";
            String m1848p = MainActivity.this.f1049p.m1848p(str);
            return str2 + " · " + (m1848p == null ? "侧栏跟随全局" : "black".equals(m1848p) ? "侧栏黑色" : "侧栏白色") + (((ConfigKeys.f1183o.contains(str) || ConfigKeys.f1185p.contains(str)) && MainActivity.this.f1019Z0 == null && !MainActivity.this.f1017Y0.contains(str)) ? " · 等待授权" : "");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return MainActivity.this.f1047o.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return MainActivity.this.f1047o.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C0067j c0067j = view == null ? MainActivity.this.new C0067j() : (C0067j) view.getTag();
            C0064g c0064g = (C0064g) MainActivity.this.f1047o.get(i);
            boolean z = i == 0;
            boolean z2 = i == MainActivity.this.f1047o.size() - 1;
            float m1004a = MainActivity.this.m1004a(24.0f);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor((MainActivity.this.f1057t && c0064g.f1082a.equals(MainActivity.this.f1061v)) ? UiKit.f1379w : UiKit.f1359i);
            float f = z ? m1004a : 0.0f;
            float f2 = z ? m1004a : 0.0f;
            float f3 = z ? m1004a : 0.0f;
            float f4 = z ? m1004a : 0.0f;
            float f5 = z2 ? m1004a : 0.0f;
            float f6 = z2 ? m1004a : 0.0f;
            float f7 = z2 ? m1004a : 0.0f;
            if (!z2) {
                m1004a = 0.0f;
            }
            gradientDrawable.setCornerRadii(new float[]{f, f2, f3, f4, f5, f6, f7, m1004a});
            c0067j.f1105b.setBackground(gradientDrawable);
            c0067j.f1105b.setPadding(MainActivity.this.m1004a(16.0f), z ? MainActivity.this.m1004a(4.0f) : 0, 0, z2 ? MainActivity.this.m1004a(4.0f) : 0);
            c0067j.f1110g.setVisibility(z2 ? 4 : 0);
            c0067j.f1106c.setImageDrawable(c0064g.f1084c);
            c0067j.f1107d.setText(c0064g.f1083b);
            c0067j.f1105b.setAlpha(c0064g.f1085d ? 0.45f : 1.0f);
            if (c0064g.f1085d) {
                c0067j.f1108e.setText(c0064g.f1086e);
                c0067j.f1109f.setText("不可用");
                GradientDrawable m1404a = UiKit.m1404a(0, MainActivity.this.m1004a(11.0f));
                m1404a.setStroke(Math.max(1, MainActivity.this.m1004a(1.0f)), 1198945920);
                c0067j.f1109f.setBackground(m1404a);
                c0067j.f1109f.setTextColor(UiKit.f1351e);
                c0067j.f1109f.setVisibility(0);
                return c0067j.f1104a;
            }
            boolean z3 = MainActivity.this.f1049p != null && MainActivity.this.f1049p.m1827i(c0064g.f1082a);
            c0067j.f1108e.setText(MainActivity.this.f1049p == null ? c0064g.f1082a : m1191a(c0064g.f1082a, z3));
            boolean z4 = MainActivity.this.f1049p != null && MainActivity.this.m1072b(c0064g.f1082a);
            c0067j.f1109f.setText(!z3 ? "关" : z4 ? "单独" : "开");
            GradientDrawable m1404a2 = UiKit.m1404a((!z3 || z4) ? 0 : UiKit.f1353f, MainActivity.this.m1004a(11.0f));
            if (!z3 || z4) {
                m1404a2.setStroke(Math.max(1, MainActivity.this.m1004a(1.0f)), z3 ? (UiKit.f1345b & 16777215) | (-1946157056) : 1198945920);
            }
            c0067j.f1109f.setBackground(m1404a2);
            c0067j.f1109f.setTextColor(z3 ? UiKit.f1345b : UiKit.f1351e);
            c0067j.f1109f.setVisibility(MainActivity.this.f1049p == null ? 8 : 0);
            return c0067j.f1104a;
        }

        /* synthetic */ C0063f(MainActivity mainActivity, C0058a c0058a) {
            this();
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$g */
    static final class C0064g {

        /* renamed from: a */
        String f1082a;

        /* renamed from: b */
        String f1083b;

        /* renamed from: c */
        Drawable f1084c;

        /* renamed from: d */
        boolean f1085d;

        /* renamed from: e */
        String f1086e;

        C0064g() {
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$h */
    static final class C0065h {

        /* renamed from: a */
        boolean f1087a;

        /* renamed from: b */
        boolean f1088b;

        /* renamed from: c */
        boolean f1089c = true;

        /* renamed from: d */
        String f1090d;

        /* renamed from: e */
        int f1091e;

        /* renamed from: f */
        float f1092f;

        /* renamed from: g */
        String f1093g;

        C0065h() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.hookprobe.MainActivity$i */
    static final class C0066i {

        /* renamed from: a */
        List<C0064g> f1094a;

        /* renamed from: b */
        ConfigStore f1095b;

        /* renamed from: c */
        C0065h f1096c;

        /* renamed from: d */
        Set<String> f1097d;

        /* renamed from: e */
        String f1098e;

        /* renamed from: f */
        boolean f1099f;

        /* renamed from: g */
        String f1100g;

        /* renamed from: h */
        int f1101h;

        /* renamed from: i */
        String[] f1102i;

        /* renamed from: j */
        Diagnostics.a f1103j;

        private C0066i() {
        }

        /* synthetic */ C0066i(C0058a c0058a) {
            this();
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$j */
    private final class C0067j {

        /* renamed from: a */
        final LinearLayout f1104a;

        /* renamed from: b */
        final LinearLayout f1105b;

        /* renamed from: c */
        final ImageView f1106c;

        /* renamed from: d */
        final TextView f1107d;

        /* renamed from: e */
        final TextView f1108e;

        /* renamed from: f */
        final TextView f1109f;

        /* renamed from: g */
        final View f1110g;

        C0067j() {
            LinearLayout m1430c = UiKit.m1430c(MainActivity.this);
            this.f1104a = m1430c;
            LinearLayout m1430c2 = UiKit.m1430c(MainActivity.this);
            this.f1105b = m1430c2;
            ImageView imageView = new ImageView(MainActivity.this);
            this.f1106c = imageView;
            TextView m1413a = UiKit.m1413a(MainActivity.this, 16.0f, UiKit.f1345b, 600);
            this.f1107d = m1413a;
            TextView m1413a2 = UiKit.m1413a(MainActivity.this, 12.0f, UiKit.f1349d, RailCodec.f930m);
            this.f1108e = m1413a2;
            TextView m1413a3 = UiKit.m1413a(MainActivity.this, 11.0f, UiKit.f1345b, 600);
            this.f1109f = m1413a3;
            View view = new View(MainActivity.this);
            this.f1110g = view;
            m1430c.setPadding(MainActivity.this.f1065x, 0, MainActivity.this.f1065x, 0);
            m1430c.setTag(this);
            m1430c.addView(m1430c2, UiKit.m1408a());
            m1430c2.addView(imageView, UiKit.m1409a(MainActivity.this, 42.0f, 42.0f));
            LinearLayout m1411a = UiKit.m1411a((Context) MainActivity.this);
            LinearLayout m1430c3 = UiKit.m1430c(MainActivity.this);
            m1430c3.setPadding(0, MainActivity.this.m1004a(12.0f), MainActivity.this.m1004a(14.0f), MainActivity.this.m1004a(12.0f));
            LinearLayout m1411a2 = UiKit.m1411a((Context) MainActivity.this);
            m1413a.setSingleLine(true);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            m1413a.setEllipsize(truncateAt);
            m1411a2.addView(m1413a);
            m1413a2.setSingleLine(true);
            m1413a2.setEllipsize(truncateAt);
            m1413a2.setPadding(0, MainActivity.this.m1004a(4.0f), 0, 0);
            m1411a2.addView(m1413a2);
            m1430c3.addView(m1411a2, UiKit.m1428b());
            m1413a3.setGravity(17);
            m1413a3.setPadding(MainActivity.this.m1004a(9.0f), 0, MainActivity.this.m1004a(9.0f), 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, MainActivity.this.m1004a(22.0f));
            layoutParams.leftMargin = MainActivity.this.m1004a(8.0f);
            m1430c3.addView(m1413a3, layoutParams);
            LinearLayout.LayoutParams m1409a = UiKit.m1409a(MainActivity.this, 13.0f, 13.0f);
            m1409a.leftMargin = MainActivity.this.m1004a(8.0f);
            m1430c3.addView(UiKit.m1407a(MainActivity.this, UiKit.m1403a(MainActivity.this, 4, UiKit.f1380x, 3.0f, false, 13.0f)), m1409a);
            m1411a.addView(m1430c3, UiKit.m1408a());
            view.setBackgroundColor(UiKit.f1357h);
            m1411a.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, MainActivity.this.m1004a(0.5f))));
            LinearLayout.LayoutParams m1428b = UiKit.m1428b();
            m1428b.leftMargin = MainActivity.this.m1004a(12.0f);
            m1430c2.addView(m1411a, m1428b);
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$k */
    private static final class C0068k extends View {

        /* renamed from: a */
        private final Paint f1112a;

        /* renamed from: b */
        private final float f1113b;

        /* renamed from: c */
        private final int f1114c;

        C0068k(Context context, float f, int i) {
            super(context);
            this.f1112a = new Paint(1);
            this.f1113b = f;
            this.f1114c = i;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Canvas canvas2;
            float m1399a = UiKit.m1399a(getContext(), 8.0f);
            float f = m1399a / 2.0f;
            RectF rectF = new RectF(f, f, getWidth() - f, getHeight() - f);
            this.f1112a.setStyle(Paint.Style.STROKE);
            this.f1112a.setStrokeWidth(m1399a);
            this.f1112a.setStrokeCap(Paint.Cap.ROUND);
            this.f1112a.setColor(695629440);
            canvas.drawOval(rectF, this.f1112a);
            this.f1112a.setColor(UiKit.f1345b);
            float f2 = this.f1113b;
            if (f2 > 0.0f) {
                canvas2 = canvas;
                canvas2.drawArc(rectF, -90.0f, f2 * 360.0f, false, this.f1112a);
            } else {
                canvas2 = canvas;
            }
            this.f1112a.setStyle(Paint.Style.FILL);
            this.f1112a.setTextAlign(Paint.Align.CENTER);
            Paint paint = this.f1112a;
            Typeface typeface = Typeface.DEFAULT;
            paint.setTypeface(Typeface.create(typeface, 800, false));
            this.f1112a.setTextSize(UiKit.m1399a(getContext(), 42.0f));
            canvas2.drawText(String.valueOf(this.f1114c), getWidth() / 2.0f, (getHeight() / 2.0f) + UiKit.m1399a(getContext(), 6.0f), this.f1112a);
            this.f1112a.setColor(UiKit.f1349d);
            this.f1112a.setTypeface(Typeface.create(typeface, 600, false));
            this.f1112a.setTextSize(UiKit.m1399a(getContext(), 12.0f));
            canvas2.drawText("分钟剩余", getWidth() / 2.0f, (getHeight() / 2.0f) + UiKit.m1399a(getContext(), 26.0f), this.f1112a);
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("android", "com.miui.home", "com.miui.personalassistant", "com.android.systemui", IconConst.f1963a, "dev.duo.workspaceprobe"));
        f960d = hashSet;
        hashSet.addAll(ConfigKeys.f1171i);
        f961e = new String[]{"全部", "已开", "单独设置", "未开"};
        f963g = "";
    }

    public MainActivity() {
        String[] strArr = ConfigKeys.f1164e0;
        this.f1032g0 = new SeekBar[strArr.length];
        this.f1034h0 = new TextView[strArr.length];
        this.f1036i0 = new Runnable[strArr.length];
        this.f1009U0 = true;
        this.f1013W0 = "正在连接…";
        this.f1015X0 = new String[]{"", "", "", ""};
        this.f1017Y0 = Collections.EMPTY_SET;
        this.f1027d1 = new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda83
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1056a0();
            }
        };
    }

    /* renamed from: A */
    private int m979A() {
        int i = 0;
        if (this.f1049p != null && this.f1019Z0 == null) {
            Iterator<String> it = ConfigKeys.f1183o.iterator();
            while (it.hasNext()) {
                if (!this.f1017Y0.contains(it.next())) {
                    i++;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public List<String> m980B() {
        ArrayList arrayList = new ArrayList();
        if (this.f1049p != null && this.f1019Z0 == null) {
            for (String str : ConfigKeys.f1183o) {
                if (!this.f1017Y0.contains(str)) {
                    arrayList.add(str);
                }
            }
            for (String str2 : ConfigKeys.f1185p) {
                if (!this.f1017Y0.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: C */
    private View m981C() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("通知图标");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("在时间模块下方显示通知 App 图标，点那一块打开通知中心；关掉后两样都没有");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1012W = r1;
        UiKit.m1422a(r1);
        this.f1012W.setContentDescription("通知图标");
        this.f1012W.setEnabled(false);
        this.f1012W.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda27
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1111g(compoundButton, z);
            }
        });
        m1430c.addView(this.f1012W);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1156n(view);
            }
        });
        return m1430c;
    }

    /* renamed from: E */
    private View m982E() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1411a.setPadding(m1004a(18.0f), m1004a(12.0f), m1004a(16.0f), m1004a(12.0f));
        LinearLayout m1430c = UiKit.m1430c(this);
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("外屏非 Duo 顶栏");
        m1411a2.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("开启后隐藏未开启 Duo 的 App 原生状态栏；单独设置过的 App 优先");
        m1413a2.setPadding(0, m1004a(3.0f), m1004a(8.0f), 0);
        m1411a2.addView(m1413a2);
        m1430c.addView(m1411a2, UiKit.m1428b());
        Switch r2 = new Switch(this);
        this.f1002R = r2;
        UiKit.m1422a(r2);
        this.f1002R.setContentDescription("隐藏外屏非 Duo 原生状态栏");
        this.f1002R.setEnabled(false);
        this.f1002R.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda91
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1119h(compoundButton, z);
            }
        });
        m1430c.addView(this.f1002R);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda92
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1160o(view);
            }
        });
        m1411a.addView(m1430c);
        TextView[] textViewArr = new TextView[1];
        SeekBar[] seekBarArr = new SeekBar[1];
        LinearLayout m1014a = m1014a("顶部留白高度", "px", 1, 126, textViewArr, seekBarArr, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda93
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.m1109g(i);
            }
        });
        this.f1004S = m1014a;
        m1014a.setBackground(null);
        this.f1004S.setPadding(0, m1004a(12.0f), 0, 0);
        this.f1006T = textViewArr[0];
        this.f1008U = seekBarArr[0];
        TextView m1413a3 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a3.setText("外屏竖屏生效；高度是隐藏状态栏后的顶部留白，单个 App 可单独调整");
        this.f1004S.addView(m1413a3);
        this.f1004S.setVisibility(8);
        m1411a.addView(this.f1004S);
        return m1411a;
    }

    /* renamed from: F */
    private View m983F() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, 26.0f);
        m1430c.setPadding(m1004a(20.0f), 0, m1004a(12.0f), 0);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("App 概览");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        this.f1058t0 = m1413a2;
        m1413a2.setPadding(0, m1004a(4.0f), 0, 0);
        m1411a.addView(this.f1058t0);
        m1430c.addView(m1411a, new LinearLayout.LayoutParams(m1004a(112.0f), -2));
        LinearLayout m1430c2 = UiKit.m1430c(this);
        this.f1060u0 = m1016a(m1430c2, "已开 Duo", 0.0f);
        this.f1062v0 = m1016a(m1430c2, "单独设置", 8.0f);
        TextView m1016a = m1016a(m1430c2, "未开", 8.0f);
        this.f1064w0 = m1016a;
        TextView[] textViewArr = {this.f1060u0, this.f1062v0, m1016a};
        for (int i = 0; i < 3; i++) {
            TextView textView = textViewArr[i];
            textView.setTextSize(18.0f);
            textView.setFontFeatureSettings("tnum");
        }
        m1430c.addView(m1430c2, UiKit.m1428b());
        TextView m1415a = UiKit.m1415a((Context) this, "管理 App", true, 40.0f);
        m1415a.setTextSize(13.0f);
        m1415a.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, UiKit.m1403a(this, 4, UiKit.f1371o, 3.0f, false, 12.0f), (Drawable) null);
        m1415a.setCompoundDrawablePadding(m1004a(4.0f));
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1163p(view);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, m1004a(40.0f));
        layoutParams.leftMargin = m1004a(14.0f);
        m1430c.addView(m1415a, layoutParams);
        return m1430c;
    }

    /* renamed from: G */
    private View m984G() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        m1430c.setMinimumHeight(m1004a(76.0f));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("取色按钮");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("取色按钮贴在 App 侧栏搜索键的头顶，在哪个 App 点它就给哪个 App 取色");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1016Y = r1;
        UiKit.m1422a(r1);
        this.f1016Y.setContentDescription("取色按钮");
        this.f1016Y.setEnabled(false);
        this.f1016Y.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda49
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1126i(compoundButton, z);
            }
        });
        m1430c.addView(this.f1016Y);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1166q(view);
            }
        });
        return m1430c;
    }

    /* renamed from: H */
    private LinearLayout m985H() {
        LinearLayout m1175u = m1175u();
        LinearLayout m1121i = m1121i();
        TextView m1413a = UiKit.m1413a(this, 16.0f, UiKit.f1345b, 600);
        m1413a.setText("外屏侧栏颜色");
        m1121i.addView(m1413a);
        m1175u.addView(m1121i);
        UiKit.e eVar = new UiKit.e(this, new String[]{"白色", "黑色", "跟随系统"}, new int[]{-1, -14869217, 0}, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda84
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.m1130j(i);
            }
        });
        this.f990L = eVar;
        eVar.m1442a(false);
        m1175u.addView(this.f990L.f1407a, UiKit.m1410a(UiKit.m1408a(), this, 8.0f));
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        this.f992M = m1413a2;
        m1175u.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        return m1175u;
    }

    /* renamed from: I */
    private View m986I() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        m1430c.setMinimumHeight(m1004a(76.0f));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("外屏 App 内侧栏自定义");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("外屏 App 模式右侧 6 格：拖入返回、主页等动作，自己的 App 或 dock");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 14.0f, 14.0f);
        m1409a.leftMargin = m1004a(8.0f);
        m1430c.addView(UiKit.m1407a(this, UiKit.m1403a(this, 4, UiKit.f1349d, 3.0f, false, 14.0f)), m1409a);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1169r(view);
            }
        });
        return m1430c;
    }

    /* renamed from: J */
    private void m987J() {
        final ConfigStore c0113o = this.f1049p;
        if (c0113o == null) {
            return;
        }
        if (this.f1041l.compareAndSet(false, true)) {
            f958b.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda85
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m1043a(c0113o);
                }
            });
        } else {
            this.f1039j1 = true;
        }
    }

    /* renamed from: K */
    private void m988K() {
        float f;
        int i;
        float f2;
        this.f1001Q0.removeAllViews();
        final C0065h c0065h = this.f1005S0;
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, 28.0f);
        m1411a.setGravity(1);
        m1411a.setPadding(m1004a(20.0f), m1004a(28.0f), m1004a(20.0f), m1004a(26.0f));
        this.f1001Q0.addView(m1411a, UiKit.m1408a());
        float f3 = 12.0f;
        if (c0065h == null) {
            f = 16.0f;
            i = 17;
            f2 = 10.0f;
        } else {
            if (!c0065h.f1087a) {
                if (c0065h.f1088b) {
                    FrameLayout frameLayout = new FrameLayout(this);
                    frameLayout.setBackground(UiKit.m1406a(UiKit.f1374r, UiKit.f1375s));
                    frameLayout.setElevation(m1004a(6.0f));
                    i = 17;
                    frameLayout.addView(UiKit.m1407a(this, UiKit.m1403a(this, 6, UiKit.f1378v, 2.6f, false, 30.0f)), new FrameLayout.LayoutParams(m1004a(30.0f), m1004a(30.0f), 17));
                    m1411a.addView(frameLayout, UiKit.m1409a(this, 64.0f, 64.0f));
                    TextView m1413a = UiKit.m1413a(this, 22.0f, UiKit.f1345b, 800);
                    m1413a.setText("已买断，永久使用");
                    m1411a.addView(m1413a, UiKit.m1410a(UiKit.m1429c(), this, 16.0f));
                    TextView m1413a2 = UiKit.m1413a(this, 13.0f, UiKit.f1349d, RailCodec.f930m);
                    m1413a2.setText("绑定在这台手机上");
                    m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1429c(), this, 8.0f));
                    if (c0065h.f1090d != null) {
                        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
                        UiKit.m1418a(m1411a2, 24.0f);
                        m1411a2.setPadding(m1004a(18.0f), m1004a(16.0f), m1004a(16.0f), m1004a(16.0f));
                        TextView m1413a3 = UiKit.m1413a(this, 13.0f, UiKit.f1347c, 600);
                        m1413a3.setText("授权码 · 换手机时要用，请保存好");
                        m1411a2.addView(m1413a3);
                        LinearLayout m1430c = UiKit.m1430c(this);
                        m1430c.setBackground(UiKit.m1404a(UiKit.f1355g, m1004a(16.0f)));
                        m1430c.setPadding(m1004a(14.0f), m1004a(8.0f), m1004a(6.0f), m1004a(8.0f));
                        TextView m1413a4 = UiKit.m1413a(this, 16.0f, UiKit.f1345b, 700);
                        m1413a4.setText(c0065h.f1090d);
                        m1413a4.setSingleLine(true);
                        m1413a4.setEllipsize(TextUtils.TruncateAt.END);
                        m1413a4.setLetterSpacing(0.04f);
                        m1413a4.setTextIsSelectable(true);
                        m1430c.addView(m1413a4, UiKit.m1428b());
                        TextView m1415a = UiKit.m1415a((Context) this, this.f1007T0 ? "已复制" : "复制", true, 34.0f);
                        m1415a.setTextSize(13.0f);
                        m1415a.setMinWidth(m1004a(72.0f));
                        m1415a.setBackground(UiKit.m1404a(this.f1007T0 ? -13326253 : UiKit.f1369n, m1004a(17.0f)));
                        m1415a.setTextColor(this.f1007T0 ? -1 : UiKit.f1371o);
                        boolean z = this.f1007T0;
                        m1415a.setCompoundDrawablesRelativeWithIntrinsicBounds(UiKit.m1403a(this, z ? 6 : 9, z ? -1 : UiKit.f1371o, 2.4f, false, 13.0f), (Drawable) null, (Drawable) null, (Drawable) null);
                        m1415a.setCompoundDrawablePadding(m1004a(5.0f));
                        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda41
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MainActivity.this.m1039a(c0065h, view);
                            }
                        });
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, m1004a(34.0f));
                        f2 = 10.0f;
                        layoutParams.leftMargin = m1004a(10.0f);
                        m1430c.addView(m1415a, layoutParams);
                        m1411a2.addView(m1430c, UiKit.m1410a(UiKit.m1408a(), this, 10.0f));
                        f3 = 12.0f;
                        this.f1001Q0.addView(m1411a2, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
                    } else {
                        f3 = 12.0f;
                        f2 = 10.0f;
                    }
                } else {
                    i = 17;
                    f2 = 10.0f;
                    m1411a.addView(new C0068k(this, c0065h.f1092f, c0065h.f1091e), UiKit.m1409a(this, 140.0f, 140.0f));
                    TextView m1413a5 = UiKit.m1413a(this, 20.0f, UiKit.f1345b, 800);
                    m1413a5.setText(c0065h.f1089c ? "免费试用中" : "试用已结束");
                    m1411a.addView(m1413a5, UiKit.m1410a(UiKit.m1429c(), this, 14.0f));
                    TextView m1413a6 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
                    m1413a6.setGravity(17);
                    m1413a6.setLineSpacing(0.0f, 1.3f);
                    m1413a6.setText(c0065h.f1089c ? "只算亮屏且 MiDuo 开着的时间。用完后在下次熄屏时停用，桌面、侧栏、外屏比例恢复小米原装。" : "MiDuo 已停用，桌面、侧栏、外屏比例为小米原装；购买后可继续使用。");
                    m1411a.addView(m1413a6, UiKit.m1410a(UiKit.m1408a(), this, 10.0f));
                    LinearLayout m1411a3 = UiKit.m1411a((Context) this);
                    UiKit.m1418a(m1411a3, 24.0f);
                    m1411a3.setPadding(m1004a(18.0f), m1004a(18.0f), m1004a(18.0f), m1004a(18.0f));
                    LinearLayout m1430c2 = UiKit.m1430c(this);
                    m1430c2.setGravity(80);
                    TextView m1413a7 = UiKit.m1413a(this, 17.0f, UiKit.f1345b, 700);
                    m1413a7.setText("永久买断");
                    m1430c2.addView(m1413a7, UiKit.m1428b());
                    TextView m1413a8 = UiKit.m1413a(this, 24.0f, UiKit.f1345b, 800);
                    m1413a8.setText("¥49.9");
                    m1430c2.addView(m1413a8);
                    m1411a3.addView(m1430c2);
                    TextView m1413a9 = UiKit.m1413a(this, 13.0f, UiKit.f1349d, RailCodec.f930m);
                    m1413a9.setText("一次付费，这台手机永久使用；每年可换机 2 次。");
                    m1411a3.addView(m1413a9, UiKit.m1410a(UiKit.m1408a(), this, 10.0f));
                    TextView m1415a2 = UiKit.m1415a((Context) this, "立即购买", true, 50.0f);
                    m1415a2.setTextSize(16.0f);
                    m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda42
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MainActivity.this.m1172s(view);
                        }
                    });
                    m1411a3.addView(m1415a2, UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(50.0f)), this, 14.0f));
                    this.f1001Q0.addView(m1411a3, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
                }
                LinearLayout m1430c3 = UiKit.m1430c(this);
                UiKit.m1418a(m1430c3, 25.0f);
                m1430c3.setGravity(i);
                float f4 = f3;
                m1430c3.addView(UiKit.m1407a(this, UiKit.m1403a(this, 2, UiKit.f1345b, 2.2f, false, 17.0f)), UiKit.m1409a(this, 17.0f, 17.0f));
                TextView m1413a10 = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
                m1413a10.setText("输入授权码");
                m1413a10.setPadding(m1004a(8.0f), 0, 0, 0);
                m1430c3.addView(m1413a10);
                m1430c3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda43
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainActivity.this.m1174t(view);
                    }
                });
                this.f1001Q0.addView(m1430c3, UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(50.0f)), this, f4));
                TextView m1413a11 = UiKit.m1413a(this, f4, UiKit.f1349d, RailCodec.f930m);
                m1413a11.setLineSpacing(0.0f, 1.3f);
                m1413a11.setText("在另一台手机买过的，输入授权码即可在这台手机使用；是否已授权以本页和首页显示为准。" + ((c0065h != null || c0065h.f1093g == null) ? "" : "\n" + c0065h.f1093g));
                m1413a11.setPadding(m1004a(f2), 0, m1004a(f2), 0);
                this.f1001Q0.addView(m1413a11, UiKit.m1410a(UiKit.m1408a(), this, f4));
                LinearLayout m1200a = MtzIconImportDialog.m1200a(this);
                this.f1003R0 = m1200a;
                this.f1001Q0.addView(m1200a, UiKit.m1410a(UiKit.m1408a(), this, 20.0f));
                this.f1001Q0.addView(MtzIconImportDialog.m1206b(this), UiKit.m1410a(UiKit.m1408a(), this, f4));
            }
            f = 16.0f;
            i = 17;
            f2 = 10.0f;
        }
        TextView m1413a12 = UiKit.m1413a(this, f, UiKit.f1347c, 600);
        m1413a12.setGravity(i);
        m1413a12.setText(c0065h == null ? "正在读取授权…" : "系统框架还没加载 MiDuo，暂时不能试用和购买。LSPosed 里启用 MiDuo 后，系统框架要到手机下次开机才加载");
        m1411a.addView(m1413a12);
        LinearLayout m1430c32 = UiKit.m1430c(this);
        UiKit.m1418a(m1430c32, 25.0f);
        m1430c32.setGravity(i);
        float f42 = f3;
        m1430c32.addView(UiKit.m1407a(this, UiKit.m1403a(this, 2, UiKit.f1345b, 2.2f, false, 17.0f)), UiKit.m1409a(this, 17.0f, 17.0f));
        TextView m1413a102 = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a102.setText("输入授权码");
        m1413a102.setPadding(m1004a(8.0f), 0, 0, 0);
        m1430c32.addView(m1413a102);
        m1430c32.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1174t(view);
            }
        });
        this.f1001Q0.addView(m1430c32, UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(50.0f)), this, f42));
        TextView m1413a112 = UiKit.m1413a(this, f42, UiKit.f1349d, RailCodec.f930m);
        m1413a112.setLineSpacing(0.0f, 1.3f);
        m1413a112.setText("在另一台手机买过的，输入授权码即可在这台手机使用；是否已授权以本页和首页显示为准。" + ((c0065h != null || c0065h.f1093g == null) ? "" : "\n" + c0065h.f1093g));
        m1413a112.setPadding(m1004a(f2), 0, m1004a(f2), 0);
        this.f1001Q0.addView(m1413a112, UiKit.m1410a(UiKit.m1408a(), this, f42));
        LinearLayout m1200a2 = MtzIconImportDialog.m1200a(this);
        this.f1003R0 = m1200a2;
        this.f1001Q0.addView(m1200a2, UiKit.m1410a(UiKit.m1408a(), this, 20.0f));
        this.f1001Q0.addView(MtzIconImportDialog.m1206b(this), UiKit.m1410a(UiKit.m1408a(), this, f42));
    }

    /* renamed from: L */
    private void m989L() {
        XposedService m975c = ConfigBroadcastHub.m975c();
        List<String> m980B = m980B();
        if (m975c == null || m980B.isEmpty() || this.f1025c1) {
            return;
        }
        this.f1025c1 = true;
        this.f983H0.setEnabled(false);
        f963g += (f963g.isEmpty() ? "" : "\n") + "已一次申请 " + m980B.size() + " 个作用域，请在 LSPosed 通知中批准";
        Toast.makeText(this, "已申请 " + m980B.size() + " 个作用域，请在 LSPosed 通知中批准", 1).show();
        m995R();
        try {
            m975c.requestScope(m980B, new C0062e());
        } catch (Throwable th) {
            this.f1025c1 = false;
            f963g += "\n作用域申请失败：" + th.getMessage();
            m995R();
        }
    }

    /* renamed from: M */
    private View m990M() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("旋转建议按钮");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("关闭自动旋转时，转动手机可点按钮旋转屏幕");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1000Q = r1;
        UiKit.m1422a(r1);
        this.f1000Q.setContentDescription("旋转建议按钮");
        this.f1000Q.setEnabled(false);
        this.f1000Q.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda31
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1132j(compoundButton, z);
            }
        });
        m1430c.addView(this.f1000Q);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1176u(view);
            }
        });
        return m1430c;
    }

    /* renamed from: N */
    private View m991N() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1411a.setPadding(m1004a(16.0f), m1004a(14.0f), m1004a(16.0f), m1004a(14.0f));
        int i = 0;
        boolean z = this.f1051q.f1396c >= 600;
        String[] strArr = {"左下", "右下"};
        this.f1046n0 = new UiKit.e(this, strArr, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda11
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                MainActivity.this.m1117h(i2);
            }
        });
        this.f1048o0 = new UiKit.e(this, strArr, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda12
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                MainActivity.this.m1124i(i2);
            }
        });
        this.f1046n0.m1442a(false);
        this.f1048o0.m1442a(false);
        UiKit.e[] eVarArr = {this.f1046n0, this.f1048o0};
        String[] strArr2 = {"竖屏", "横屏"};
        while (i < 2) {
            LinearLayout m1430c = z ? UiKit.m1430c(this) : UiKit.m1411a((Context) this);
            TextView m1413a = UiKit.m1413a(this, 13.0f, UiKit.f1347c, 600);
            m1413a.setText(strArr2[i]);
            if (z) {
                m1430c.addView(m1413a, new LinearLayout.LayoutParams(m1004a(44.0f), -2));
                m1430c.addView(eVarArr[i].f1407a, UiKit.m1428b());
            } else {
                m1430c.addView(m1413a);
                m1430c.addView(eVarArr[i].f1407a, UiKit.m1410a(UiKit.m1408a(), this, 6.0f));
            }
            m1411a.addView(m1430c, i == 0 ? UiKit.m1408a() : UiKit.m1410a(UiKit.m1408a(), this, 10.0f));
            i++;
        }
        return m1411a;
    }

    /* renamed from: O */
    private View m992O() {
        this.f1040k0 = new FrameLayout(this);
        int m1004a = m1004a(10.0f);
        this.f1040k0.setPadding(m1004a, m1004a, m1004a, m1004a);
        this.f1040k0.setClipToPadding(false);
        this.f1040k0.setClipChildren(true);
        this.f1042l0 = m990M();
        View m991N = m991N();
        this.f1044m0 = m991N;
        this.f1040k0.addView(m991N, new FrameLayout.LayoutParams(0, -2));
        this.f1040k0.addView(this.f1042l0, new FrameLayout.LayoutParams(-1, m1004a(76.0f)));
        this.f1040k0.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda73
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                MainActivity.this.m1031a(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, m1004a(76.0f) + (m1004a * 2));
        int i = -m1004a;
        layoutParams.setMargins(i, m1004a(12.0f) - m1004a, i, i);
        this.f1040k0.setLayoutParams(layoutParams);
        return this.f1040k0;
    }

    /* renamed from: P */
    private LinearLayout m993P() {
        TextView[] textViewArr = new TextView[1];
        SeekBar[] seekBarArr = new SeekBar[1];
        LinearLayout m1014a = m1014a("外屏页面缩放", "%", 60, 100, textViewArr, seekBarArr, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda67
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.m1148m(i);
            }
        });
        this.f984I = textViewArr[0];
        this.f986J = seekBarArr[0];
        TextView m1413a = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a.setText("全局比例只用于已开启 Duo 且未单独设置的 App；未开 Duo 的 App 可在详情页单独缩放，否则保持原样。内屏不受影响（微信内外屏一起缩）");
        m1014a.addView(m1413a, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        return m1014a;
    }

    /* renamed from: Q */
    private View m994Q() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("搜索按钮");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("在内外屏桌面和应用侧栏显示右下角圆形搜索按钮");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1014X = r1;
        UiKit.m1422a(r1);
        this.f1014X.setContentDescription("搜索按钮");
        this.f1014X.setEnabled(false);
        this.f1014X.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda46
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1138k(compoundButton, z);
            }
        });
        m1430c.addView(this.f1014X);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1178v(view);
            }
        });
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public void m995R() {
        int i;
        int i2;
        ConfigStore c0113o = this.f1049p;
        boolean z = c0113o == null || c0113o.m1838m();
        this.f1023b1 = true;
        Switch r3 = this.f987J0;
        ConfigStore c0113o2 = this.f1049p;
        r3.setChecked(c0113o2 != null && c0113o2.m1775a());
        Switch r32 = this.f989K0;
        if (r32 != null) {
            ConfigStore c0113o3 = this.f1049p;
            r32.setChecked(c0113o3 != null && c0113o3.m1801d());
            this.f989K0.setEnabled((this.f1049p == null || f962f) ? false : true);
        }
        this.f972C.setChecked(z);
        this.f1023b1 = false;
        this.f972C.setEnabled(this.f1049p != null && this.f1011V0 && this.f1009U0 && !f962f);
        this.f968A.setText(z ? "MiDuo 运行中" : "MiDuo 已关闭");
        String str = this.f1049p == null ? "未连接 LSPosed，请在 LSPosed 中启用 MiDuo" : !this.f1011V0 ? "系统框架还没加载 MiDuo，总开关暂不能用。LSPosed 里启用 MiDuo 后，系统框架要到手机下次开机才加载" : !this.f1009U0 ? "试用已结束，购买后可继续使用" : null;
        this.f970B.setText(str);
        this.f970B.setVisibility(str == null ? 8 : 0);
        FrameLayout frameLayout = this.f1069z;
        if (z && str == null) {
            i = UiKit.f1374r;
            i2 = UiKit.f1375s;
        } else {
            i = UiKit.f1376t;
            i2 = UiKit.f1377u;
        }
        frameLayout.setBackground(UiKit.m1406a(i, i2));
        this.f1069z.setElevation((z && str == null) ? m1004a(4.0f) : 0.0f);
        String str2 = "原装";
        this.f974D.setText(this.f1049p == null ? "—" : z ? "4×6" : "原装");
        TextView textView = this.f976E;
        if (this.f1049p == null) {
            str2 = "—";
        } else if (z) {
            str2 = "9:16";
        }
        textView.setText(str2);
        if (this.f1049p == null) {
            this.f978F.setText("—");
        }
        this.f987J0.setEnabled((this.f1049p == null || f962f) ? false : true);
        this.f999P0.setEnabled(!f962f);
        int size = m980B().size();
        int m979A = m979A();
        boolean z2 = this.f1049p != null && this.f1011V0 && this.f1019Z0 == null && m979A == 0 && !"未安装".equals(this.f1015X0[2]);
        boolean z3 = this.f1015X0[1].isEmpty() || f964h.equals(this.f1015X0[1]);
        this.f1054r0.setBackground(m1058b((z2 && z3) ? -13326253 : -2543579));
        this.f1056s0.setText(!z2 ? "需要处理" : z3 ? "运行正常" : "版本不对");
        this.f1070z0.setText(this.f1013W0);
        this.f969A0.setText(this.f1019Z0 != null ? "读取失败（" + this.f1019Z0 + "）" : (m979A == 0 && size == 0) ? "核心五项和附加功能都已勾选" : "核心缺 " + m979A + " 个，附加功能缺 " + (size - m979A) + " 个");
        this.f983H0.setText("补齐缺失作用域（" + size + " 个）");
        this.f983H0.setVisibility(size == 0 ? 8 : 0);
        this.f983H0.setEnabled((f962f || this.f1025c1) ? false : true);
        this.f991L0.setText(f963g);
        this.f991L0.setVisibility(f963g.isEmpty() ? 8 : 0);
    }

    /* renamed from: S */
    private void m996S() {
        MainActivity mainActivity;
        this.f1059u.removeAllViews();
        int firstVisiblePosition = this.f999P0.getFirstVisiblePosition();
        View childAt = this.f999P0.getChildAt(0);
        int top = childAt != null ? childAt.getTop() : 0;
        String str = this.f1061v;
        if (str == null) {
            TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1349d, 500);
            m1413a.setText("选择左侧的 App 查看设置");
            this.f1059u.addView(m1413a, new FrameLayout.LayoutParams(-2, -2, 17));
            mainActivity = this;
        } else {
            mainActivity = this;
            mainActivity.f1059u.addView(new AppSettingsPanel(mainActivity, str, this.f1063w, null, true, 0, this.f1051q.m1438d(), 0, this.f1051q.m1436b(), new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda90
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m1159o();
                }
            }).f1569e, new FrameLayout.LayoutParams(-1, -1));
        }
        C0063f c0063f = mainActivity.f997O0;
        if (c0063f != null) {
            c0063f.notifyDataSetChanged();
        }
        mainActivity.f999P0.setSelectionFromTop(firstVisiblePosition, top);
    }

    /* renamed from: T */
    private void m997T() {
        ConfigStore c0113o = this.f1049p;
        if (c0113o == null) {
            this.f980G.setText("—");
            return;
        }
        int m1829j = c0113o.m1829j();
        this.f982H.setEnabled(!f962f);
        this.f982H.setProgress(m1829j - 1);
        this.f980G.setText(String.valueOf(m1829j));
        for (int i = 0; i < this.f988K.size(); i++) {
            UiKit.m1423a(this.f988K.get(i), ConfigKeys.f1193x[i] == m1829j);
            this.f988K.get(i).setEnabled(!f962f);
        }
        this.f986J.setEnabled(!f962f);
        this.f986J.setProgress(this.f1049p.m1847p() - 60);
        this.f984I.setText(String.valueOf(this.f1049p.m1847p()));
        boolean m1862u = this.f1049p.m1862u();
        boolean equals = "black".equals(this.f1049p.m1832k());
        this.f990L.m1441a(m1862u ? 2 : equals ? 1 : 0);
        this.f990L.m1442a(!f962f);
        this.f992M.setText(m1862u ? "浅色模式白色，深色模式黑色；单独设置过的 App 不受影响" : "单独设置过颜色的 App 不受影响");
        this.f978F.setText(m1862u ? "跟随" : equals ? "黑色" : "白色");
        this.f1023b1 = true;
        this.f1000Q.setChecked(this.f1049p.m1866x());
        this.f1010V.setChecked(this.f1049p.m1836l());
        this.f1002R.setChecked(this.f1049p.m1845o());
        this.f1004S.setVisibility(this.f1049p.m1845o() ? 0 : 8);
        this.f1006T.setText(String.valueOf(this.f1049p.m1850q()));
        this.f1008U.setProgress(this.f1049p.m1850q() - 1);
        this.f1012W.setChecked(this.f1049p.m1841n());
        this.f1014X.setChecked(this.f1049p.m1867y());
        this.f994N.setChecked(this.f1049p.m1868z());
        this.f1016Y.setChecked(this.f1049p.m1859t());
        this.f1024c0.setChecked(this.f1049p.m1771B());
        boolean m1809e = this.f1049p.m1809e();
        this.f1018Z.setChecked(this.f1049p.m1818g() && !m1809e);
        this.f1033g1.setText(m1809e ? "开合动画开启时不可用：两者都靠开合手势，会互相干扰。关闭开合动画后恢复" : f966j);
        this.f1020a0.setChecked(this.f1049p.m1809e());
        this.f1022b0.setChecked(this.f1049p.m1796c());
        this.f1023b1 = false;
        this.f1000Q.setEnabled(!f962f);
        this.f1010V.setEnabled(!f962f);
        this.f1002R.setEnabled(!f962f);
        this.f1008U.setEnabled(!f962f && this.f1049p.m1845o());
        this.f1012W.setEnabled(!f962f);
        this.f1014X.setEnabled(!f962f);
        this.f994N.setEnabled((f962f || this.f998P) ? false : true);
        this.f996O.setText(this.f998P ? "正在开启锁屏显示权限…" : "开启时自动允许锁屏显示（需 Root）；权限被关闭后可重新开启");
        this.f1016Y.setEnabled(!f962f);
        this.f1024c0.setEnabled(!f962f);
        this.f1018Z.setEnabled((f962f || m1809e) ? false : true);
        this.f1020a0.setEnabled(!f962f && this.f1035h1 == null);
        this.f1022b0.setEnabled(!f962f);
        this.f1026d0.m1441a(!this.f1049p.m1770A() ? 1 : 0);
        this.f1028e0.m1441a(this.f1049p.m1856s() ? 1 : 0);
        this.f1026d0.m1442a(!f962f);
        this.f1030f0.m1441a(this.f1049p.m1813f());
        this.f1030f0.m1442a((f962f || m1809e) ? false : true);
        this.f1028e0.m1442a(!f962f);
        int i2 = 0;
        while (true) {
            SeekBar[] seekBarArr = this.f1032g0;
            if (i2 >= seekBarArr.length) {
                m1003Z();
                this.f1051q.m1435a(this.f1049p.m1770A());
                this.f1046n0.m1441a(this.f1049p.m1786a(false) ? 1 : 0);
                this.f1048o0.m1441a(this.f1049p.m1786a(true) ? 1 : 0);
                this.f1046n0.m1442a(!f962f);
                this.f1048o0.m1442a(!f962f);
                return;
            }
            if (this.f1036i0[i2] == null) {
                seekBarArr[i2].setProgress(this.f1049p.m1807e(i2) + 60);
                this.f1034h0[i2].setText(m1076c(this.f1049p.m1807e(i2)));
                this.f1032g0[i2].setEnabled(!f962f);
            }
            i2++;
        }
    }

    /* renamed from: U */
    private void m998U() {
        int i;
        if (this.f1058t0 == null) {
            return;
        }
        int i2 = 0;
        if (this.f1049p != null) {
            i = 0;
            for (C0064g c0064g : this.f1045n) {
                if (this.f1049p.m1827i(c0064g.f1082a)) {
                    i2++;
                }
                if (m1072b(c0064g.f1082a)) {
                    i++;
                }
            }
        } else {
            i = 0;
        }
        this.f1058t0.setText("共 " + this.f1045n.size() + " 个");
        this.f1060u0.setText(this.f1049p == null ? "—" : String.valueOf(i2));
        this.f1062v0.setText(this.f1049p == null ? "—" : String.valueOf(i));
        this.f1064w0.setText(this.f1049p != null ? String.valueOf(this.f1045n.size() - i2) : "—");
    }

    /* renamed from: V */
    private void m999V() {
        ((ScrollView) this.f1053r[2]).smoothScrollTo(0, Math.max(0, (this.f1001Q0.getTop() + this.f1003R0.getTop()) - m1004a(12.0f)));
    }

    /* renamed from: W */
    private View m1000W() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1411a.setPadding(m1004a(18.0f), m1004a(6.0f), m1004a(16.0f), m1004a(12.0f));
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setMinimumHeight(m1004a(76.0f));
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("帐篷钟面");
        m1411a2.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("锁屏摆成帐篷姿势时，在外屏显示常亮钟面");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a2.addView(m1413a2);
        m1430c.addView(m1411a2, UiKit.m1428b());
        Switch r2 = new Switch(this);
        this.f994N = r2;
        UiKit.m1422a(r2);
        this.f994N.setContentDescription("帐篷钟面");
        this.f994N.setEnabled(false);
        this.f994N.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda51
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1145l(compoundButton, z);
            }
        });
        m1430c.addView(this.f994N);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda52
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1180w(view);
            }
        });
        m1411a.addView(m1430c);
        TextView m1413a3 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        this.f996O = m1413a3;
        m1413a3.setLineSpacing(0.0f, 1.2f);
        this.f996O.setText("开启时自动允许锁屏显示（需 Root）；权限被关闭后可重新开启");
        m1411a.addView(this.f996O, UiKit.m1408a());
        return m1411a;
    }

    /* renamed from: X */
    private LinearLayout m1001X() {
        LinearLayout m1175u = m1175u();
        LinearLayout m1121i = m1121i();
        FrameLayout frameLayout = new FrameLayout(this);
        this.f1069z = frameLayout;
        frameLayout.addView(UiKit.m1407a(this, UiKit.m1403a(this, 7, UiKit.f1378v, 2.4f, false, 20.0f)), new FrameLayout.LayoutParams(m1004a(20.0f), m1004a(20.0f), 17));
        m1121i.addView(this.f1069z, UiKit.m1409a(this, 44.0f, 44.0f));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setPadding(m1004a(12.0f), 0, m1004a(8.0f), 0);
        TextView m1413a = UiKit.m1413a(this, 18.0f, UiKit.f1345b, 700);
        this.f968A = m1413a;
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1347c, RailCodec.f930m);
        this.f970B = m1413a2;
        m1413a2.setPadding(0, m1004a(4.0f), 0, 0);
        m1411a.addView(this.f970B);
        m1121i.addView(m1411a, UiKit.m1428b());
        Switch r2 = new Switch(this);
        this.f972C = r2;
        UiKit.m1422a(r2);
        this.f972C.setContentDescription("MiDuo 总开关");
        this.f972C.setEnabled(false);
        this.f972C.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1150m(compoundButton, z);
            }
        });
        m1121i.addView(this.f972C);
        m1175u.addView(m1121i);
        LinearLayout m1430c = UiKit.m1430c(this);
        this.f974D = m1016a(m1430c, "桌面", 0.0f);
        this.f976E = m1016a(m1430c, "外屏比例", 8.0f);
        this.f978F = m1016a(m1430c, "侧栏", 8.0f);
        m1175u.addView(m1430c, UiKit.m1410a(UiKit.m1408a(), this, 14.0f));
        return m1175u;
    }

    /* renamed from: Y */
    private View m1002Y() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, this.f1051q.f1398e ? 26.0f : 28.0f);
        int i = 0;
        m1411a.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setGravity(16);
        m1430c.setMinimumHeight(m1004a(64.0f));
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("时钟模块位置");
        m1411a2.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("时间、电量环和通知图标一起上下移动");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a2.addView(m1413a2);
        m1430c.addView(m1411a2, UiKit.m1428b());
        TextView m1413a3 = UiKit.m1413a(this, 13.0f, UiKit.f1349d, 500);
        this.f1038j0 = m1413a3;
        m1430c.addView(m1413a3);
        final ImageView m1407a = UiKit.m1407a(this, UiKit.m1403a(this, 5, UiKit.f1351e, 2.6f, false, 14.0f));
        LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 14.0f, 14.0f);
        m1409a.leftMargin = m1004a(10.0f);
        m1430c.addView(m1407a, m1409a);
        m1411a.addView(m1430c);
        final LinearLayout m1411a3 = UiKit.m1411a((Context) this);
        String[] strArr = {"外屏桌面", "外屏应用", "内屏横屏桌面", "内屏竖屏桌面", "外屏锁屏", "内屏横屏锁屏", "内屏竖屏锁屏"};
        while (i < 7) {
            m1411a3.addView(m1008a(i, strArr[i]), UiKit.m1410a(UiKit.m1408a(), this, i == 0 ? 2.0f : 14.0f));
            i++;
        }
        m1411a3.addView(new View(this), new LinearLayout.LayoutParams(-1, m1004a(16.0f)));
        m1411a3.setVisibility(8);
        m1411a.addView(m1411a3);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda86
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.m1081c(m1411a3, m1407a, view);
            }
        });
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public void m1003Z() {
        int i = 0;
        for (SeekBar seekBar : this.f1032g0) {
            if (seekBar.getProgress() != 60) {
                i++;
            }
        }
        this.f1038j0.setText(i == 0 ? "全部默认" : "已调 " + i + " 处");
    }

    /* renamed from: a */
    private static int m1005a(int i, int i2) {
        if (i == 2) {
            return -2543579;
        }
        if (i == 1) {
            return -878336;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public void m1056a0() {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        this.f1043m.removeCallbacks(this.f1027d1);
        m995R();
        m1159o();
        if (f962f) {
            this.f1043m.postDelayed(this.f1027d1, 500L);
        }
    }

    /* renamed from: b0 */
    private View m1073b0() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        m1430c.setMinimumHeight(m1004a(76.0f));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("小组件");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("预览 MiDuo 的桌面小组件，添加到桌面或换照片");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 14.0f, 14.0f);
        m1409a.leftMargin = m1004a(8.0f);
        m1430c.addView(UiKit.m1407a(this, UiKit.m1403a(this, 4, UiKit.f1349d, 3.0f, false, 14.0f)), m1409a);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda77
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1182x(view);
            }
        });
        return m1430c;
    }

    /* renamed from: c0 */
    private View m1085c0() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        m1430c.setMinimumHeight(m1004a(76.0f));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("工作台");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("内屏横放时，在全屏 App 右下角按住再往里拉，进入工作台。关闭后右下角不再响应，正在显示的工作台会退出、当前大窗 App 回到全屏；小米原生分屏不受影响");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1024c0 = r1;
        UiKit.m1422a(r1);
        this.f1024c0.setContentDescription("工作台");
        this.f1024c0.setEnabled(false);
        this.f1024c0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda38
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1157n(compoundButton, z);
            }
        });
        m1430c.addView(this.f1024c0);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1184y(view);
            }
        });
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m1160o(View view) {
        if (this.f1002R.isEnabled()) {
            this.f1002R.performClick();
        }
    }

    /* renamed from: p */
    private View m1162p() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        m1430c.setMinimumHeight(m1004a(76.0f));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("开合动画（实验性）");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        String m2004a = DeviceGate.m2004a(this);
        this.f1035h1 = m2004a;
        if (m2004a == null) {
            m2004a = "切换后要等系统下次启动才用上";
        }
        m1413a2.setText(m2004a);
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1020a0 = r1;
        UiKit.m1422a(r1);
        this.f1020a0.setContentDescription("开合动画（实验性）");
        this.f1020a0.setEnabled(false);
        this.f1020a0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda36
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1090d(compoundButton, z);
            }
        });
        m1430c.addView(this.f1020a0);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1125i(view);
            }
        });
        return m1430c;
    }

    /* renamed from: q */
    private View m1165q() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1411a.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setGravity(16);
        m1430c.setMinimumHeight(m1004a(76.0f));
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("轻折分屏");
        m1411a2.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        this.f1033g1 = m1413a2;
        m1413a2.setText(f966j);
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a2.addView(m1413a2);
        m1430c.addView(m1411a2, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1018Z = r1;
        UiKit.m1422a(r1);
        this.f1018Z.setContentDescription("轻折分屏");
        this.f1018Z.setEnabled(false);
        this.f1018Z.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1097e(compoundButton, z);
            }
        });
        m1430c.addView(this.f1018Z);
        final ImageView m1407a = UiKit.m1407a(this, UiKit.m1403a(this, 5, UiKit.f1351e, 2.6f, false, 14.0f));
        LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 14.0f, 14.0f);
        m1409a.leftMargin = m1004a(10.0f);
        m1430c.addView(m1407a, m1409a);
        m1411a.addView(m1430c);
        final LinearLayout m1411a3 = UiKit.m1411a((Context) this);
        TextView m1413a3 = UiKit.m1413a(this, 13.0f, UiKit.f1347c, 600);
        m1413a3.setText("轻折灵敏度");
        m1411a3.addView(m1413a3, UiKit.m1410a(UiKit.m1408a(), this, 2.0f));
        UiKit.e eVar = new UiKit.e(this, new String[]{"灵敏", "标准", "稳定"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda7
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.m1136k(i);
            }
        });
        this.f1030f0 = eVar;
        eVar.m1442a(false);
        m1411a3.addView(this.f1030f0.f1407a, UiKit.m1410a(UiKit.m1408a(), this, 10.0f));
        TextView m1413a4 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a4.setText("灵敏：轻轻一折就触发；稳定：要折得更深、更快，不容易误触。容易误触就选稳定，不好触发就选灵敏");
        m1411a3.addView(m1413a4, UiKit.m1410a(UiKit.m1408a(), this, 10.0f));
        m1411a3.addView(new View(this), new LinearLayout.LayoutParams(-1, m1004a(16.0f)));
        m1411a3.setVisibility(8);
        m1411a.addView(m1411a3);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.m1067b(m1411a3, m1407a, view);
            }
        });
        return m1411a;
    }

    /* renamed from: r */
    private void m1168r() throws IOException, InterruptedException {
        int myUid = Process.myUid() / 100000;
        Process start = new ProcessBuilder("su", "-c", "cmd appops set --user " + myUid + " dev.duo.hookprobe 10020 allow && cmd appops get --user " + myUid + " dev.duo.hookprobe 10020").redirectErrorStream(true).start();
        try {
            if (!start.waitFor(30L, TimeUnit.SECONDS)) {
                start.destroyForcibly();
                throw new IOException("Lockscreen permission request timed out");
            }
            InputStream inputStream = start.getInputStream();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[256];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        break;
                    } else {
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                }
                String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                inputStream.close();
                if (start.exitValue() != 0 || !Pattern.compile("(?m)^\\s*MIUIOP\\(10020\\): allow(?:;[^\\r\\n]*)?\\s*$").matcher(byteArrayOutputStream2).find()) {
                    throw new IOException("Lockscreen permission was not allowed: " + byteArrayOutputStream2.trim());
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (InterruptedException e) {
            start.destroyForcibly();
            throw e;
        }
    }

    /* renamed from: s */
    private View m1171s() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("使用说明");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("安装要求、注意事项和免责声明");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        m1430c.addView(UiKit.m1407a(this, UiKit.m1403a(this, 4, UiKit.f1351e, 2.6f, false, 14.0f)), UiKit.m1409a(this, 14.0f, 14.0f));
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda59
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1131j(view);
            }
        });
        return m1430c;
    }

    /* renamed from: t */
    private LinearLayout m1173t() {
        TextView[] textViewArr = new TextView[1];
        SeekBar[] seekBarArr = new SeekBar[1];
        LinearLayout m1014a = m1014a("顶部避让高度", "px", 1, 126, textViewArr, seekBarArr, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda81
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.m1143l(i);
            }
        });
        this.f980G = textViewArr[0];
        this.f982H = seekBarArr[0];
        LinearLayout m1430c = UiKit.m1430c(this);
        int i = 0;
        while (true) {
            int[] iArr = ConfigKeys.f1193x;
            if (i >= iArr.length) {
                m1014a.addView(m1430c);
                TextView m1413a = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
                m1413a.setText("单独设置过的 App 不受影响，App 下次打开时生效");
                m1014a.addView(m1413a, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
                return m1014a;
            }
            final int i2 = iArr[i];
            TextView m1415a = UiKit.m1415a((Context) this, i2 + "px", false, 36.0f);
            m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda82
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MainActivity.this.m1023a(i2, view);
                }
            });
            this.f988K.add(m1415a);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, m1004a(36.0f), 1.0f);
            if (i > 0) {
                layoutParams.leftMargin = m1004a(8.0f);
            }
            m1430c.addView(m1415a, layoutParams);
            i++;
        }
    }

    /* renamed from: u */
    private LinearLayout m1175u() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1411a.setPadding(m1004a(18.0f), m1004a(18.0f), m1004a(18.0f), m1004a(18.0f));
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m1178v(View view) {
        if (this.f1014X.isEnabled()) {
            this.f1014X.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public /* synthetic */ void m1180w(View view) {
        if (this.f994N.isEnabled()) {
            this.f994N.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ void m1182x(View view) {
        startActivity(new Intent(this, (Class<?>) WidgetCenterActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public /* synthetic */ void m1184y(View view) {
        if (this.f1024c0.isEnabled()) {
            this.f1024c0.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    /*
    */
    public void m1185z() {
        ConfigStore c0113o;
        final ConfigStore c0113o2;
        String valueOf;
        String valueOf2;
        PackageManager packageManager = getPackageManager();
        final ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<String> it = f960d.iterator();
        boolean z = false;
        int i = 0;
        while (it.hasNext()) {
            try {
                packageManager.getApplicationInfo(it.next(), 0);
                i++;
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        for (PackageInfo packageInfo : packageManager.getInstalledPackages(1)) {
            String str = packageInfo.packageName;
            if (!f960d.contains(str)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo.enabled && packageInfo.activities != null && !"system".equals(applicationInfo.processName)) {
                    ActivityInfo[] activityInfoArr = packageInfo.activities;
                    int length = activityInfoArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            ActivityInfo activityInfo = activityInfoArr[i2];
                            if (activityInfo.enabled && !"system".equals(activityInfo.processName) && !"com.android.systemui".equals(activityInfo.processName)) {
                                C0064g c0064g = new C0064g();
                                c0064g.f1082a = str;
                                c0064g.f1083b = String.valueOf(packageInfo.applicationInfo.loadLabel(packageManager));
                                c0064g.f1084c = packageInfo.applicationInfo.loadIcon(packageManager);
                                arrayList.add(c0064g);
                                hashSet.add(str);
                                break;
                            }
                            i2++;
                        }
                    }
                }
            }
        }
        final Collator collator = Collator.getInstance(Locale.CHINA);
        Collections.sort(arrayList, new Comparator() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda63
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m1007a;
                m1007a = MainActivity.m1007a(collator, (MainActivity.C0064g) obj, (MainActivity.C0064g) obj2);
                return m1007a;
            }
        });
        for (String str2 : ConfigKeys.f1171i) {
            try {
                ApplicationInfo applicationInfo2 = packageManager.getApplicationInfo(str2, 0);
                C0064g c0064g2 = new C0064g();
                c0064g2.f1082a = str2;
                c0064g2.f1083b = String.valueOf(applicationInfo2.loadLabel(packageManager));
                c0064g2.f1084c = applicationInfo2.loadIcon(packageManager);
                c0064g2.f1085d = true;
                c0064g2.f1086e = m1116h(str2);
                arrayList.add(c0064g2);
                hashSet.add(str2);
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
        for (String str3 : ConfigKeys.f1173j) {
            if (!hashSet.contains(str3)) {
                try {
                    ApplicationInfo applicationInfo3 = packageManager.getApplicationInfo(str3, 0);
                    C0064g c0064g3 = new C0064g();
                    c0064g3.f1082a = str3;
                    c0064g3.f1083b = String.valueOf(applicationInfo3.loadLabel(packageManager));
                    c0064g3.f1084c = applicationInfo3.loadIcon(packageManager);
                    arrayList.add(c0064g3);
                } catch (PackageManager.NameNotFoundException e3) {
                }
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda64
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m1057b;
                m1057b = MainActivity.m1057b(collator, (MainActivity.C0064g) obj, (MainActivity.C0064g) obj2);
                return m1057b;
            }
        });
        boolean z2 = !m1123i("debug.duo.master").isEmpty();
        XposedService m970a = ConfigBroadcastHub.m970a(8000L);
        C0058a c0058a = null;
        if (m970a != null) {
            try {
                c0113o = new ConfigStore(m970a);
            } catch (Throwable th) {
                th = th;
                c0113o = null;
                c0113o2 = c0113o;
                valueOf = String.valueOf(th);
                HashSet hashSet2 = new HashSet();
                if (m970a != null) {
                }
                valueOf2 = null;
                final C0066i c0066i = new C0066i(c0058a);
                c0066i.f1094a = arrayList;
                c0066i.f1095b = c0113o2;
                c0066i.f1096c = null;
                c0066i.f1097d = hashSet2;
                c0066i.f1098e = valueOf2;
                c0066i.f1099f = z2;
                c0066i.f1101h = i;
                if (c0113o2 != null) {
                }
                c0066i.f1100g = c0113o2 != null ? "已连接 · " + m970a.getFrameworkVersion() : "未连接" + (valueOf == null ? "：请在 LSPosed 中启用 MiDuo" : "（" + valueOf + "）");
                c0066i.f1102i = new String[]{Build.VERSION.INCREMENTAL, m1019a(packageManager, "com.miui.home"), m1019a(packageManager, "com.miui.personalassistant"), m1019a(packageManager, getPackageName())};
                if (c0113o2 != null) {
                }
                c0066i.f1103j = Diagnostics.m1896a(z);
                this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda65
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.this.m1041a(c0066i, c0113o2, arrayList);
                    }
                });
            }
        } else {
            c0113o = null;
        }
        if (c0113o != null) {
            try {
                if (!c0113o.m1788b()) {
                    Log.e("MiDuo", "通知中心固定配置写入失败");
                }
            } catch (Throwable th2) {
                th = th2;
                c0113o2 = c0113o;
                valueOf = String.valueOf(th);
                HashSet hashSet22 = new HashSet();
                if (m970a != null) {
                }
                valueOf2 = null;
                final C0066i c0066i2 = new C0066i(c0058a);
                c0066i2.f1094a = arrayList;
                c0066i2.f1095b = c0113o2;
                c0066i2.f1096c = null;
                c0066i2.f1097d = hashSet22;
                c0066i2.f1098e = valueOf2;
                c0066i2.f1099f = z2;
                c0066i2.f1101h = i;
                if (c0113o2 != null) {
                }
                c0066i2.f1100g = c0113o2 != null ? "已连接 · " + m970a.getFrameworkVersion() : "未连接" + (valueOf == null ? "：请在 LSPosed 中启用 MiDuo" : "（" + valueOf + "）");
                c0066i2.f1102i = new String[]{Build.VERSION.INCREMENTAL, m1019a(packageManager, "com.miui.home"), m1019a(packageManager, "com.miui.personalassistant"), m1019a(packageManager, getPackageName())};
                if (c0113o2 != null) {
                    z = true;
                }
                c0066i2.f1103j = Diagnostics.m1896a(z);
                this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda65
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.this.m1041a(c0066i2, c0113o2, arrayList);
                    }
                });
            }
        }
        c0113o2 = c0113o;
        valueOf = null;
        HashSet hashSet222 = new HashSet();
        if (m970a != null) {
            try {
                hashSet222.addAll(m970a.getScope());
            } catch (Throwable th3) {
                valueOf2 = String.valueOf(th3);
            }
        }
        valueOf2 = null;
        final C0066i c0066i22 = new C0066i(c0058a);
        c0066i22.f1094a = arrayList;
        c0066i22.f1095b = c0113o2;
        c0066i22.f1096c = null;
        c0066i22.f1097d = hashSet222;
        c0066i22.f1098e = valueOf2;
        c0066i22.f1099f = z2;
        c0066i22.f1101h = i;
        c0066i22.f1100g = c0113o2 != null ? "已连接 · " + m970a.getFrameworkVersion() : "未连接" + (valueOf == null ? "：请在 LSPosed 中启用 MiDuo" : "（" + valueOf + "）");
        c0066i22.f1102i = new String[]{Build.VERSION.INCREMENTAL, m1019a(packageManager, "com.miui.home"), m1019a(packageManager, "com.miui.personalassistant"), m1019a(packageManager, getPackageName())};
        if (c0113o2 != null && c0113o2.m1809e()) {
            z = true;
        }
        c0066i22.f1103j = Diagnostics.m1896a(z);
        this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1041a(c0066i22, c0113o2, arrayList);
            }
        });
    }

    /* renamed from: D */
    void m1186D() {
        if (this.f1031f1 || isDestroyed()) {
            return;
        }
        this.f1031f1 = true;
        ExecutorService executorService = f957a;
        executorService.execute(new MainActivity$$ExternalSyntheticLambda13(this));
        executorService.execute(new MainActivity$$ExternalSyntheticLambda14());
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConfigBroadcastHub.m976d();
        UiKit.d dVar = new UiKit.d(this);
        this.f1051q = dVar;
        this.f1057t = dVar.f1398e;
        this.f1053r[0] = m1093e();
        this.f1053r[1] = m1086d();
        this.f1053r[2] = m1100f();
        this.f1053r[3] = m1114h();
        this.f1053r[4] = m1107g();
        this.f1053r[0].setId(1001);
        this.f1053r[2].setId(1003);
        this.f1053r[3].setId(1004);
        this.f1053r[4].setId(1005);
        for (View view : this.f1053r) {
            this.f1051q.f1395b.addView(view, new FrameLayout.LayoutParams(-1, -1));
        }
        Intent intent = getIntent();
        int intExtra = intent.getIntExtra("tab", 0);
        this.f1061v = intent.getStringExtra("pkg");
        this.f1063w = intent.getStringExtra("label");
        if (bundle != null) {
            intExtra = bundle.getInt("tab", intExtra);
            this.f995N0 = bundle.getInt("appTab", 0);
            this.f1061v = bundle.getString("pkg");
            this.f1063w = bundle.getString("label");
        }
        this.f993M0.m1441a(this.f995N0);
        m1038a((C0065h) null);
        m1155n(intExtra);
        setContentView(this.f1051q.f1394a);
        this.f1051q.m1433a();
        C0066i c0066i = (C0066i) getLastNonConfigurationInstance();
        if (c0066i != null) {
            m1040a(c0066i);
        } else if (FirstRunGuide.m2041a((Context) this)) {
            f957a.execute(new MainActivity$$ExternalSyntheticLambda13(this));
        }
        if (bundle == null && FirstRunGuide.m2041a((Context) this)) {
            f957a.execute(new MainActivity$$ExternalSyntheticLambda14());
        }
        if (c0066i != null || FirstRunGuide.m2041a((Context) this)) {
            this.f1031f1 = true;
        }
        if (this.f1057t) {
            m996S();
        }
        FirstRunGuide.m2042b((Activity) this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m1155n(intent.getIntExtra("tab", this.f1055s));
        if (intent.getStringExtra("pkg") != null) {
            this.f1061v = intent.getStringExtra("pkg");
            this.f1063w = intent.getStringExtra("label");
            if (this.f1057t) {
                m996S();
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f1049p == null || !this.f1031f1) {
            return;
        }
        f957a.execute(new MainActivity$$ExternalSyntheticLambda13(this));
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        return this.f1029e1;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("tab", this.f1055s);
        bundle.putInt("appTab", this.f995N0);
        bundle.putString("pkg", this.f1061v);
        bundle.putString("label", this.f1063w);
    }

    /* renamed from: c */
    private TextView m1074c(String str) {
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setPadding(0, m1004a(10.0f), 0, 0);
        TextView m1413a = UiKit.m1413a(this, 13.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a.setText(str);
        m1430c.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 13.0f, UiKit.f1345b, 500);
        m1413a2.setGravity(8388613);
        m1413a2.setPadding(m1004a(16.0f), 0, 0, 0);
        m1430c.addView(m1413a2, UiKit.m1428b());
        this.f1068y0.addView(m1430c);
        return m1413a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1090d(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        if (!z) {
            m1127i(false);
            return;
        }
        this.f1023b1 = true;
        compoundButton.setChecked(false);
        this.f1023b1 = false;
        m1135k();
    }

    /* renamed from: e */
    private View m1093e() {
        MainActivity mainActivity;
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        LinearLayout m1430c = UiKit.m1430c(this);
        if (this.f1051q.f1398e) {
            mainActivity = this;
        } else {
            m1430c.setPadding(m1004a(6.0f), 0, m1004a(6.0f) + this.f1051q.m1437c(), m1004a(4.0f));
            FrameLayout frameLayout = new FrameLayout(this);
            UiKit.m1418a(frameLayout, 14.0f);
            mainActivity = this;
            frameLayout.addView(UiKit.m1407a(this, UiKit.m1403a(mainActivity, 10, UiKit.f1345b, 0.0f, true, 26.0f)), new FrameLayout.LayoutParams(m1004a(26.0f), m1004a(26.0f), 17));
            m1430c.addView(frameLayout, UiKit.m1409a(this, 46.0f, 46.0f));
        }
        TextView m1108g = m1108g("MiDuo");
        if (mainActivity.f1051q.f1398e) {
            m1108g.setTextSize(28.0f);
        } else {
            m1108g.setPadding(m1004a(12.0f), 0, 0, 0);
        }
        m1430c.addView(m1108g, UiKit.m1428b());
        LinearLayout m1430c2 = UiKit.m1430c(this);
        mainActivity.f1067y = m1430c2;
        UiKit.m1418a(m1430c2, 16.0f);
        mainActivity.f1067y.setPadding(m1004a(7.0f), 0, m1004a(12.0f), 0);
        mainActivity.f1067y.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1030a(view);
            }
        });
        m1430c.addView(mainActivity.f1067y, new LinearLayout.LayoutParams(-2, m1004a(32.0f)));
        m1411a.addView(m1430c, new LinearLayout.LayoutParams(-1, mainActivity.f1051q.f1398e ? m1004a(40.0f) : -2));
        View m1001X = m1001X();
        View m1173t = m1173t();
        View m993P = m993P();
        View m985H = m985H();
        View m1060b = m1060b(!mainActivity.f1051q.f1398e);
        if (!mainActivity.f1051q.f1398e) {
            m1411a.addView(m1001X, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
            m1411a.addView(UiKit.m1414a((Context) this, "常用设置"));
            m1411a.addView(m1173t, UiKit.m1408a());
            m1411a.addView(m993P, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
            m1411a.addView(m985H, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
            m1411a.addView(m1060b, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
            m1411a.addView(m1177v(), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(64.0f)), this, 12.0f));
            m1411a.addView(m1171s(), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(64.0f)), this, 12.0f));
            return m1015a(m1411a);
        }
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        m1411a2.addView(m1012a(m1001X, m1173t), new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        layoutParams.topMargin = m1004a(14.0f);
        m1411a2.addView(m1012a(m1060b, m985H), layoutParams);
        m1411a.addView(m1411a2, UiKit.m1410a(new LinearLayout.LayoutParams(-1, 0, 1.0f), this, 14.0f));
        m1411a.addView(m993P, UiKit.m1410a(UiKit.m1408a(), this, 14.0f));
        m1411a.addView(m983F(), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(84.0f)), this, 14.0f));
        m1411a.addView(m1177v(), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(64.0f)), this, 14.0f));
        m1411a.addView(m1171s(), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(64.0f)), this, 14.0f));
        ScrollView m1015a = m1015a(m1411a);
        m1015a.setFillViewport(true);
        return m1015a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m1103f(View view) {
        boolean z = this.f1068y0.getVisibility() != 0;
        this.f1068y0.setVisibility(z ? 0 : 8);
        this.f1066x0.setRotation(z ? 180.0f : 0.0f);
    }

    /* renamed from: g */
    private TextView m1108g(String str) {
        TextView m1413a = UiKit.m1413a(this, 32.0f, UiKit.f1345b, 800);
        m1413a.setText(str);
        m1413a.setLetterSpacing(-0.02f);
        return m1413a;
    }

    /* renamed from: h */
    static String m1116h(String str) {
        return "com.android.camera".equals(str) ? "相机不能开 Duo" : "com.android.quicksearchbox".equals(str) ? "系统搜索不能开 Duo" : "miui.systemui.plugin".equals(str) ? "系统界面插件不能开 Duo" : "这个应用不能开 Duo";
    }

    /* renamed from: i */
    private LinearLayout m1121i() {
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setMinimumHeight(m1004a(44.0f));
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m1132j(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1158n(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m1138k(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1161o(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m1145l(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1164p(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m1150m(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1050a(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m1155n(int i) {
        this.f1055s = i;
        int i2 = 0;
        while (true) {
            View[] viewArr = this.f1053r;
            if (i2 >= viewArr.length) {
                this.f1051q.m1434a(i, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda68
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i3) {
                        MainActivity.this.m1155n(i3);
                    }
                });
                return;
            } else {
                viewArr[i2].setVisibility(i2 == i ? 0 : 8);
                i2++;
            }
        }
    }

    /* renamed from: o */
    private void m1161o(boolean z) {
        if (this.f1049p.m1852q(z)) {
            Toast.makeText(this, z ? "已开启搜索按钮" : "已关闭搜索按钮", 0).show();
        } else {
            Toast.makeText(this, "搜索按钮保存失败", 0).show();
            m997T();
        }
    }

    /* renamed from: v */
    private View m1177v() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("图标");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("从 MTZ 导入图标，或恢复原备份");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        m1430c.addView(UiKit.m1407a(this, UiKit.m1403a(this, 4, UiKit.f1351e, 2.6f, false, 14.0f)), UiKit.m1409a(this, 14.0f, 14.0f));
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1137k(view);
            }
        });
        return m1430c;
    }

    /* renamed from: w */
    private View m1179w() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), m1004a(12.0f), m1004a(16.0f), m1004a(12.0f));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("内屏原生顶栏");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("开启后内屏显示小米原厂顶栏（时间、电量、通知），往下拉交给系统；每个 App 可在详情里单独设置");
        m1413a2.setPadding(0, m1004a(3.0f), m1004a(8.0f), 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1010V = r1;
        UiKit.m1422a(r1);
        this.f1010V.setContentDescription("内屏原生顶栏");
        this.f1010V.setEnabled(false);
        this.f1010V.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda61
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1104f(compoundButton, z);
            }
        });
        m1430c.addView(this.f1010V);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda62
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1144l(view);
            }
        });
        return m1430c;
    }

    /* renamed from: x */
    private View m1181x() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        m1430c.setMinimumHeight(m1004a(76.0f));
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("iOS 风格通知中心");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("下拉通知时的圆角面板、横条、清除按钮和底部偏移");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 14.0f, 14.0f);
        m1409a.leftMargin = m1004a(8.0f);
        m1430c.addView(UiKit.m1407a(this, UiKit.m1403a(this, 4, UiKit.f1349d, 3.0f, false, 14.0f)), m1409a);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1149m(view);
            }
        });
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public /* synthetic */ void m1183y() {
        m1061b(this.f1050p0);
    }

    /* renamed from: b */
    private LinearLayout m1060b(boolean z) {
        MainActivity mainActivity;
        LinearLayout m1175u = m1175u();
        if (z) {
            m1175u.setPadding(m1004a(18.0f), 0, m1004a(18.0f), 0);
        }
        LinearLayout m1121i = m1121i();
        if (z) {
            m1121i.setMinimumHeight(m1004a(52.0f));
        }
        View view = new View(this);
        this.f1054r0 = view;
        m1121i.addView(view, UiKit.m1409a(this, 7.0f, 7.0f));
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("诊断信息");
        m1413a.setPadding(m1004a(10.0f), 0, 0, 0);
        m1121i.addView(m1413a, UiKit.m1428b());
        TextView m1413a2 = UiKit.m1413a(this, 13.0f, UiKit.f1349d, 500);
        this.f1056s0 = m1413a2;
        m1121i.addView(m1413a2);
        m1175u.addView(m1121i);
        this.f1068y0 = UiKit.m1411a((Context) this);
        if (!z) {
            mainActivity = this;
        } else {
            mainActivity = this;
            mainActivity.f1066x0 = UiKit.m1407a(this, UiKit.m1403a(mainActivity, 5, UiKit.f1351e, 2.6f, false, 14.0f));
            LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 14.0f, 14.0f);
            m1409a.leftMargin = m1004a(10.0f);
            m1121i.addView(mainActivity.f1066x0, m1409a);
            m1121i.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda69
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MainActivity.this.m1103f(view2);
                }
            });
            mainActivity.f1068y0.setVisibility(8);
        }
        View view2 = new View(this);
        view2.setBackgroundColor(UiKit.f1357h);
        mainActivity.f1068y0.addView(view2, new LinearLayout.LayoutParams(-1, Math.max(1, m1004a(0.5f))));
        mainActivity.f1070z0 = m1074c("LSPosed");
        mainActivity.f969A0 = m1074c("作用域");
        mainActivity.f971B0 = m1074c("系统");
        mainActivity.f973C0 = m1074c("小米桌面");
        mainActivity.f975D0 = m1074c("智能助理");
        mainActivity.f977E0 = m1074c("MiDuo");
        mainActivity.f979F0 = m1074c("开合动画");
        TextView m1413a3 = UiKit.m1413a(this, 12.0f, -2543579, 500);
        mainActivity.f981G0 = m1413a3;
        m1413a3.setPadding(0, m1004a(10.0f), 0, 0);
        mainActivity.f981G0.setVisibility(8);
        mainActivity.f1068y0.addView(mainActivity.f981G0);
        TextView m1415a = UiKit.m1415a((Context) this, "", false, 40.0f);
        mainActivity.f983H0 = m1415a;
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda70
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                MainActivity.this.m1110g(view3);
            }
        });
        mainActivity.f1068y0.addView(mainActivity.f983H0, UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(40.0f)), this, 10.0f));
        TextView m1415a2 = UiKit.m1415a((Context) this, "Bug 抓取与导出", false, 40.0f);
        m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda71
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                MainActivity.this.m1118h(view3);
            }
        });
        mainActivity.f1068y0.addView(m1415a2, UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(40.0f)), this, 8.0f));
        if (z) {
            mainActivity.f1068y0.addView(new View(this), new LinearLayout.LayoutParams(-1, m1004a(14.0f)));
        }
        m1175u.addView(mainActivity.f1068y0);
        return m1175u;
    }

    /* renamed from: j */
    private View m1129j() {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("5G 新样式");
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("用流量时圆环中间显示信号格，缺口处写网络类型");
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        Switch r1 = new Switch(this);
        this.f1022b0 = r1;
        UiKit.m1422a(r1);
        this.f1022b0.setContentDescription("5G 新样式");
        this.f1022b0.setEnabled(false);
        this.f1022b0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda29
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1066b(compoundButton, z);
            }
        });
        m1430c.addView(this.f1022b0);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1065b(view);
            }
        });
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m1137k(View view) {
        startActivity(new Intent(this, (Class<?>) dev.duo.icons.MainActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m1144l(View view) {
        if (this.f1010V.isEnabled()) {
            this.f1010V.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m1148m(int i) {
        ConfigStore c0113o = this.f1049p;
        if (c0113o == null || c0113o.m1797c(i)) {
            return;
        }
        Toast.makeText(this, "外屏缩放保存失败", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m1125i(View view) {
        if (this.f1020a0.isEnabled()) {
            this.f1020a0.performClick();
        }
    }

    /* renamed from: k */
    private void m1140k(boolean z) {
        if (this.f1049p.m1828i(z)) {
            Toast.makeText(this, z ? "已开启通知图标" : "已关闭通知图标", 0).show();
        } else {
            Toast.makeText(this, "通知图标保存失败", 0).show();
            m997T();
        }
    }

    /* renamed from: l */
    private void m1142l() {
        final long j;
        final int i;
        final String str;
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        ScrollView scrollView = new ScrollView(this);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setPadding(m1004a(22.0f), m1004a(22.0f), m1004a(22.0f), m1004a(18.0f));
        scrollView.addView(m1411a);
        TextView m1413a = UiKit.m1413a(this, 20.0f, UiKit.f1345b, 700);
        m1413a.setText("打开前检查");
        m1411a.addView(m1413a);
        final TextView m1413a2 = UiKit.m1413a(this, 13.0f, UiKit.f1347c, RailCodec.f930m);
        m1413a2.setText("正在检查…");
        m1413a2.setLineSpacing(m1004a(2.0f), 1.0f);
        m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), this, 8.0f));
        final LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        m1411a2.setBackground(UiKit.m1404a(UiKit.f1355g, m1004a(16.0f)));
        m1411a2.setPadding(m1004a(14.0f), 0, m1004a(14.0f), 0);
        m1411a2.setVisibility(8);
        m1411a.addView(m1411a2, UiKit.m1410a(UiKit.m1408a(), this, 14.0f));
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setGravity(8388629);
        final TextView m1415a = UiKit.m1415a((Context) this, "取消", false, 38.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        m1430c.addView(m1415a);
        m1411a.addView(m1430c, UiKit.m1410a(UiKit.m1408a(), this, 18.0f));
        dialog.setContentView(scrollView);
        dialog.show();
        dialog.getWindow().setBackgroundDrawable(UiKit.m1404a(UiKit.f1359i, m1004a(24.0f)));
        dialog.getWindow().setLayout(Math.min(getResources().getDisplayMetrics().widthPixels - m1004a(32.0f), m1004a(560.0f)), -2);
        XposedService m975c = ConfigBroadcastHub.m975c();
        final boolean z = (this.f1049p == null || m975c == null) ? false : true;
        if (!z) {
            j = 0;
            i = 0;
            str = "";
        } else {
            String frameworkVersion = m975c.getFrameworkVersion();
            int apiVersion = m975c.getApiVersion();
            j = m975c.getFrameworkVersionCode();
            i = apiVersion;
            str = frameworkVersion;
        }
        final Set<String> set = this.f1017Y0;
        final String str2 = this.f1019Z0;
        final Future<?> submit = f959c.submit(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1052a(z, str, i, j, set, str2, dialog, m1411a2, m1413a2, m1415a);
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainActivity.this.m1070b(submit, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public /* synthetic */ void m1176u(View view) {
        m1106f(this.f1037i1 == 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m1104f(CompoundButton compoundButton, boolean z) {
        ConfigStore c0113o;
        if (this.f1023b1 || (c0113o = this.f1049p) == null) {
            return;
        }
        if (!c0113o.m1821g(z)) {
            Toast.makeText(this, "内屏原生顶栏保存失败", 0).show();
            m997T();
        } else {
            Toast.makeText(this, "已保存，切回 App 或开合一下即生效；个别 App 要重新打开", 1).show();
            if (this.f1059u != null) {
                m996S();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m1110g(View view) {
        m989L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m1126i(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1151m(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m1149m(View view) {
        startActivity(new Intent(this, (Class<?>) IosNcActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m1156n(View view) {
        if (this.f1012W.isEnabled()) {
            this.f1012W.performClick();
        }
    }

    /* renamed from: a */
    static /* synthetic */ String m1020a(Object obj) {
        String str = f963g + obj;
        f963g = str;
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m1111g(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1140k(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m1118h(View view) {
        startActivity(new Intent(this, (Class<?>) BugCaptureActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m1124i(int i) {
        m1053a(true, i == 1);
    }

    /* renamed from: m */
    private View m1147m() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1411a.setPadding(m1004a(18.0f), m1004a(6.0f), m1004a(18.0f), m1004a(6.0f));
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setMinimumHeight(m1004a(76.0f));
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("颜色配置");
        m1430c.addView(m1413a, UiKit.m1428b());
        final ImageView m1407a = UiKit.m1407a(this, UiKit.m1403a(this, 5, UiKit.f1349d, 3.0f, false, 12.0f));
        m1430c.addView(m1407a, UiKit.m1409a(this, 12.0f, 12.0f));
        m1411a.addView(m1430c);
        final LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        m1411a2.setPadding(0, 0, 0, m1004a(12.0f));
        TextView m1415a = UiKit.m1415a((Context) this, "导出全部 App 颜色配置", false, 48.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda78
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1079c(view);
            }
        });
        m1411a2.addView(m1415a, UiKit.m1408a());
        TextView m1415a2 = UiKit.m1415a((Context) this, "导入颜色配置", false, 48.0f);
        m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda79
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1089d(view);
            }
        });
        m1411a2.addView(m1415a2, UiKit.m1410a(UiKit.m1408a(), this, 8.0f));
        m1411a2.setVisibility(8);
        m1411a.addView(m1411a2);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda80
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.m1035a(m1411a2, m1407a, view);
            }
        });
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m1157n(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1170r(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m1109g(int i) {
        if (!this.f1049p.m1802d(i)) {
            Toast.makeText(this, "顶部留白保存失败", 0).show();
        }
        m997T();
        if (this.f1059u != null) {
            m996S();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m1119h(CompoundButton compoundButton, boolean z) {
        ConfigStore c0113o;
        if (this.f1023b1 || (c0113o = this.f1049p) == null) {
            return;
        }
        if (!c0113o.m1831j(z)) {
            Toast.makeText(this, "外屏顶栏保存失败", 0).show();
            m997T();
            return;
        }
        m997T();
        Toast.makeText(this, "已保存，切回 App 后生效；个别 App 要重新打开", 1).show();
        if (this.f1059u != null) {
            m996S();
        }
    }

    /* renamed from: i */
    static String m1123i(String str) {
        try {
            Process start = new ProcessBuilder("getprop", str).start();
            byte[] bArr = new byte[16];
            int read = start.getInputStream().read(bArr);
            start.waitFor();
            if (read <= 0) {
                return "";
            }
            return new String(bArr, 0, read).trim();
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: n */
    private View m1154n() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1411a.setPadding(m1004a(18.0f), m1004a(12.0f), m1004a(16.0f), m1004a(12.0f));
        LinearLayout m1430c = UiKit.m1430c(this);
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText("新应用默认开 Duo");
        m1411a2.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText("只影响还没单独设过的应用。打开时会把它们打开；关掉后，已经打开的不变");
        m1413a2.setPadding(0, m1004a(3.0f), m1004a(8.0f), 0);
        m1411a2.addView(m1413a2);
        m1430c.addView(m1411a2, UiKit.m1428b());
        Switch r2 = new Switch(this);
        this.f989K0 = r2;
        UiKit.m1422a(r2);
        this.f989K0.setContentDescription("新应用默认开 Duo");
        this.f989K0.setEnabled(false);
        this.f989K0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda34
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1080c(compoundButton, z);
            }
        });
        m1430c.addView(this.f989K0);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1096e(view);
            }
        });
        m1411a.addView(m1430c);
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m1159o() {
        int i;
        ConfigStore c0113o;
        String lowerCase = this.f985I0.getText().toString().trim().toLowerCase(Locale.ROOT);
        this.f1047o.clear();
        ArrayList arrayList = new ArrayList();
        Iterator<C0064g> it = this.f1045n.iterator();
        while (true) {
            boolean z = false;
            if (it.hasNext()) {
                C0064g next = it.next();
                if (!lowerCase.isEmpty()) {
                    String str = next.f1083b;
                    Locale locale = Locale.ROOT;
                    if (!str.toLowerCase(locale).contains(lowerCase) && !next.f1082a.toLowerCase(locale).contains(lowerCase)) {
                    }
                }
                if (!next.f1085d && (c0113o = this.f1049p) != null && c0113o.m1827i(next.f1082a)) {
                    z = true;
                }
                if (!next.f1085d || ((i = this.f995N0) != 1 && i != 2)) {
                    int i2 = this.f995N0;
                    if (i2 != 1 || z) {
                        if (i2 != 3 || !z) {
                            if (i2 != 2 || (this.f1049p != null && m1072b(next.f1082a))) {
                                (z ? arrayList : this.f1047o).add(next);
                            }
                        }
                    }
                }
            } else {
                this.f1047o.addAll(0, arrayList);
                this.f997O0.notifyDataSetChanged();
                m998U();
                return;
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.MainActivity$e */
    class C0062e implements XposedService.OnScopeEventListener {
        C0062e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m1190a(List list) {
            MainActivity.this.f1025c1 = false;
            MainActivity.this.f1017Y0 = new HashSet(MainActivity.this.f1017Y0);
            MainActivity.this.f1017Y0.addAll(list);
            String unused = MainActivity.f963g = MainActivity.f963g.replaceFirst("\\d+ 个等待 LSPosed 授权", MainActivity.this.m980B().size() + " 个等待 LSPosed 授权");
            MainActivity.this.m995R();
            MainActivity.this.m1159o();
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestApproved(final List<String> list) {
            MainActivity.this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$e$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.C0062e.this.m1190a(list);
                }
            });
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestFailed(final String str) {
            MainActivity.this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$e$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.C0062e.this.m1189a(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m1189a(String str) {
            MainActivity.this.f1025c1 = false;
            MainActivity.m1020a((Object) ("\n作用域申请未完成：" + str));
            MainActivity.this.m995R();
        }
    }

    /* renamed from: g */
    private View m1107g() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1108g = m1108g("UI");
        m1108g.setPadding(m1004a(6.0f), 0, 0, m1004a(10.0f));
        m1411a.addView(m1108g, new LinearLayout.LayoutParams(-1, m1004a(56.0f)));
        UiKit.e eVar = new UiKit.e(this, new String[]{"细", "粗"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda57
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.m1095e(i);
            }
        });
        this.f1026d0 = eVar;
        m1411a.addView(m1011a("时钟线条", "圆环、时间和数字一起变粗或变细", eVar), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(64.0f)), this, 12.0f));
        UiKit.e eVar2 = new UiKit.e(this, new String[]{"下方", "顶部"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda58
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.m1102f(i);
            }
        });
        this.f1028e0 = eVar2;
        m1411a.addView(m1011a("电量百分比位置", "系统电量百分比打开时，显示在圆环下方或顶部", eVar2), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(72.0f)), this, 12.0f));
        m1411a.addView(m1129j(), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(72.0f)), this, 12.0f));
        m1411a.addView(m981C(), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(64.0f)), this, 12.0f));
        m1411a.addView(m994Q(), UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(72.0f)), this, 12.0f));
        m1411a.addView(m1002Y(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        return m1015a(m1411a);
    }

    /* renamed from: k */
    private void m1135k() {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        ScrollView scrollView = new ScrollView(this);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setPadding(m1004a(22.0f), m1004a(22.0f), m1004a(22.0f), m1004a(18.0f));
        scrollView.addView(m1411a);
        TextView m1413a = UiKit.m1413a(this, 20.0f, UiKit.f1345b, 700);
        m1413a.setText("开合动画检查");
        m1411a.addView(m1413a);
        final TextView m1413a2 = UiKit.m1413a(this, 13.0f, UiKit.f1347c, RailCodec.f930m);
        m1413a2.setText("正在检查接口和传感器数据，请稍候…");
        m1413a2.setLineSpacing(m1004a(2.0f), 1.0f);
        m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), this, 8.0f));
        final LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        m1411a2.setBackground(UiKit.m1404a(UiKit.f1355g, m1004a(16.0f)));
        m1411a2.setPadding(m1004a(14.0f), 0, m1004a(14.0f), 0);
        m1411a2.setVisibility(8);
        m1411a.addView(m1411a2, UiKit.m1410a(UiKit.m1408a(), this, 14.0f));
        final LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setGravity(8388629);
        final TextView m1415a = UiKit.m1415a((Context) this, "取消", false, 38.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        m1430c.addView(m1415a);
        m1411a.addView(m1430c, UiKit.m1410a(UiKit.m1408a(), this, 18.0f));
        dialog.setContentView(scrollView);
        dialog.show();
        dialog.getWindow().setBackgroundDrawable(UiKit.m1404a(UiKit.f1359i, m1004a(24.0f)));
        dialog.getWindow().setLayout(Math.min(getResources().getDisplayMetrics().widthPixels - m1004a(32.0f), m1004a(560.0f)), -2);
        final ConfigStore c0113o = this.f1049p;
        final boolean z = this.f1011V0;
        final boolean z2 = this.f1009U0;
        final boolean z3 = c0113o.m1838m() && z && z2;
        final Set<String> set = this.f1017Y0;
        final String str = this.f1019Z0;
        final String str2 = this.f1015X0[2];
        final Future<?> submit = f959c.submit(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1046a(c0113o, z, z2, set, str, str2, dialog, m1411a2, z3, m1413a2, m1415a, m1430c);
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                submit.cancel(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m1004a(float f) {
        return UiKit.m1399a(this, f);
    }

    /* renamed from: d */
    private View m1086d() {
        UiKit.d dVar = this.f1051q;
        this.f1065x = dVar.m1432a(dVar.m1439e());
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setPadding(this.f1065x, this.f1051q.m1438d(), this.f1065x, m1004a(12.0f));
        TextView m1108g = m1108g("App");
        if (!this.f1051q.f1398e) {
            m1108g.setPadding(m1004a(6.0f), 0, 0, m1004a(10.0f));
            m1411a.addView(m1108g, new LinearLayout.LayoutParams(-1, m1004a(56.0f)));
        } else {
            m1108g.setTextSize(28.0f);
            m1108g.setGravity(16);
            m1411a.addView(m1108g, new LinearLayout.LayoutParams(-1, m1004a(40.0f)));
        }
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, 23.0f);
        m1430c.setPadding(m1004a(16.0f), 0, m1004a(16.0f), 0);
        m1430c.addView(UiKit.m1407a(this, UiKit.m1403a(this, 8, UiKit.f1349d, 2.4f, false, 17.0f)), UiKit.m1409a(this, 17.0f, 17.0f));
        EditText editText = new EditText(this);
        this.f985I0 = editText;
        editText.setId(1004);
        this.f985I0.setHint("搜索 App 名称或包名");
        this.f985I0.setHintTextColor(UiKit.f1349d);
        this.f985I0.setTextColor(UiKit.f1345b);
        this.f985I0.setTextSize(15.0f);
        this.f985I0.setSingleLine(true);
        C0058a c0058a = null;
        this.f985I0.setBackground(null);
        this.f985I0.setPadding(m1004a(10.0f), 0, 0, 0);
        this.f985I0.addTextChangedListener(new C0059b());
        m1430c.addView(this.f985I0, new LinearLayout.LayoutParams(0, -1, 1.0f));
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a2, 24.0f);
        m1411a2.setPadding(m1004a(18.0f), 0, m1004a(14.0f), 0);
        LinearLayout m1430c2 = UiKit.m1430c(this);
        m1430c2.setMinimumHeight(m1004a(58.0f));
        TextView m1413a = UiKit.m1413a(this, 16.0f, UiKit.f1345b, 600);
        m1413a.setText("全部 App 开启 Duo");
        m1430c2.addView(m1413a, UiKit.m1428b());
        Switch r13 = new Switch(this);
        this.f987J0 = r13;
        UiKit.m1422a(r13);
        this.f987J0.setContentDescription("全部 App 开启 Duo");
        this.f987J0.setEnabled(false);
        this.f987J0.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda87
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MainActivity.this.m1033a(compoundButton, z);
            }
        });
        m1430c2.addView(this.f987J0);
        m1411a2.addView(m1430c2);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1347c, RailCodec.f930m);
        this.f991L0 = m1413a2;
        m1413a2.setLineSpacing(0.0f, 1.3f);
        this.f991L0.setPadding(0, 0, 0, m1004a(14.0f));
        this.f991L0.setVisibility(8);
        m1411a2.addView(this.f991L0);
        m1411a.addView(m1430c, UiKit.m1410a(new LinearLayout.LayoutParams(-1, m1004a(46.0f)), this, 12.0f));
        m1411a.addView(m1411a2, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m1154n(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m982E(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m1179w(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        UiKit.e eVar = new UiKit.e(this, f961e, null, new IntConsumer() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda88
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.m1088d(i);
            }
        });
        this.f993M0 = eVar;
        for (TextView textView : eVar.f1409c) {
            textView.setTextSize(13.0f);
        }
        this.f993M0.m1441a(0);
        m1411a.addView(this.f993M0.f1407a, UiKit.m1410a(UiKit.m1408a(), this, 16.0f));
        C0060c c0060c = new C0060c(this);
        this.f999P0 = c0060c;
        c0060c.setId(1002);
        this.f999P0.setDivider(null);
        this.f999P0.setSelector(R.color.transparent);
        this.f999P0.setClipToPadding(false);
        this.f999P0.setVerticalScrollBarEnabled(false);
        this.f999P0.setPadding(0, m1004a(18.0f), 0, this.f1051q.m1436b());
        this.f999P0.addHeaderView(m1411a, null, false);
        C0063f c0063f = new C0063f(this, c0058a);
        this.f997O0 = c0063f;
        this.f999P0.setAdapter((ListAdapter) c0063f);
        this.f999P0.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda89
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                MainActivity.this.m1032a(adapterView, view, i, j);
            }
        });
        if (!this.f1057t) {
            return this.f999P0;
        }
        LinearLayout m1430c3 = UiKit.m1430c(this);
        m1430c3.setGravity(48);
        m1430c3.addView(this.f999P0, new LinearLayout.LayoutParams(m1004a(316.0f), -1));
        this.f1059u = new FrameLayout(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.leftMargin = m1004a(14.0f);
        m1430c3.addView(this.f1059u, layoutParams);
        return m1430c3;
    }

    /* renamed from: a */
    private ScrollView m1015a(LinearLayout linearLayout) {
        ScrollView scrollView = new ScrollView(this);
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        UiKit.d dVar = this.f1051q;
        int m1432a = dVar.m1432a(dVar.m1439e());
        linearLayout.setPadding(m1432a, this.f1051q.m1438d(), m1432a, this.f1051q.m1436b());
        scrollView.addView(linearLayout);
        return scrollView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1080c(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null || f962f) {
            return;
        }
        if (!this.f1049p.m1806d(z)) {
            Toast.makeText(this, "默认开关保存失败", 0).show();
            m995R();
            return;
        }
        if (z) {
            ArrayList arrayList = new ArrayList();
            for (C0064g c0064g : this.f1045n) {
                if (!c0064g.f1085d && !ConfigKeys.f1175k.contains(c0064g.f1082a) && this.f1049p.m1839m(c0064g.f1082a)) {
                    arrayList.add(c0064g);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            m1048a((List<C0064g>) arrayList, true, false);
        }
    }

    /* renamed from: f */
    private void m1106f(boolean z) {
        this.f1037i1 = z ? 1.0f : 0.0f;
        ValueAnimator valueAnimator = this.f1052q0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f1050p0, this.f1037i1);
        this.f1052q0 = ofFloat;
        ofFloat.setDuration(Math.max(1, Math.round(Math.abs(this.f1037i1 - r6) * 460.0f)));
        this.f1052q0.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f));
        this.f1052q0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda75
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                MainActivity.this.m1024a(valueAnimator2);
            }
        });
        this.f1052q0.start();
    }

    /* renamed from: i */
    private void m1127i(final boolean z) {
        if (!this.f1049p.m1812e(z)) {
            Toast.makeText(this, "开合动画保存失败", 0).show();
            m997T();
        } else {
            Toast.makeText(this, "已保存，系统下次启动时用上", 0).show();
            m997T();
            f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m1092d(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m1172s(View view) {
        m999V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m1117h(int i) {
        m1053a(false, i == 1);
    }

    /* renamed from: h */
    private View m1114h() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1108g = m1108g("小功能");
        m1108g.setPadding(m1004a(6.0f), 0, 0, m1004a(10.0f));
        m1411a.addView(m1108g, new LinearLayout.LayoutParams(-1, m1004a(56.0f)));
        m1411a.addView(m1073b0(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m986I(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m1181x(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m992O());
        m1411a.addView(m984G(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m1147m(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m1085c0(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m1165q(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m1000W(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        m1411a.addView(m1162p(), UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        return m1015a(m1411a);
    }

    /* renamed from: a */
    private LinearLayout m1013a(LinearLayout linearLayout, float f, float f2) {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        UiKit.m1418a(m1411a, f);
        m1411a.setPadding(m1004a(f2), m1004a(f2), m1004a(f2), m1004a(f2));
        linearLayout.addView(m1411a, UiKit.m1410a(UiKit.m1408a(), this, 12.0f));
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m1174t(View view) {
        m1077c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m1102f(int i) {
        m1146l(i == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1030a(View view) {
        m1155n(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1079c(View view) {
        ColorConfigActivity.m828a((Activity) this, (String) null, true);
    }

    /* renamed from: f */
    private View m1100f() {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1108g = m1108g("授权");
        m1108g.setPadding(m1004a(6.0f), 0, 0, m1004a(10.0f));
        m1411a.addView(m1108g, new LinearLayout.LayoutParams(-1, m1004a(56.0f)));
        LinearLayout m1411a2 = UiKit.m1411a((Context) this);
        this.f1001Q0 = m1411a2;
        m1411a.addView(m1411a2);
        return m1015a(m1411a);
    }

    /* renamed from: a */
    private LinearLayout m1012a(View view, View view2) {
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setBaselineAligned(false);
        m1430c.addView(view, new LinearLayout.LayoutParams(0, -1, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.leftMargin = m1004a(14.0f);
        m1430c.addView(view2, layoutParams);
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static /* synthetic */ void m1081c(LinearLayout linearLayout, ImageView imageView, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m1131j(View view) {
        FirstRunGuide.m2035a((Activity) this);
    }

    /* renamed from: j */
    private void m1133j(final String str) {
        final ConfigStore c0113o = this.f1049p;
        if (c0113o == null) {
            return;
        }
        f958b.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1047a(str, c0113o);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static String m1076c(int i) {
        if (i == 0) {
            return "默认";
        }
        return (i < 0 ? "上移 " : "下移 ") + Math.abs(i);
    }

    /* renamed from: c */
    private C0065h m1075c(ConfigStore c0113o) {
        C0065h c0065h = new C0065h();
        String m772a = LicenseClient.m772a();
        if (m772a.isEmpty()) {
            c0065h.f1087a = true;
            return c0065h;
        }
        SharedPreferences sharedPreferences = getSharedPreferences("billing", 0);
        SharedPreferences sharedPreferences2 = c0113o.f1684a;
        try {
            String string = sharedPreferences.getString("order", null);
            if (string != null) {
                JSONObject m777a = LicenseClient.m777a(string, m772a);
                if ("paid".equals(m777a.optString("status"))) {
                    LicenseClient.m782a(sharedPreferences2, m772a, m777a.getJSONObject("license"));
                    sharedPreferences.edit().remove("order").apply();
                } else if (m777a.has("error")) {
                    sharedPreferences.edit().remove("order").apply();
                }
            }
            JSONObject jSONObject = LicenseClient.m773a(sharedPreferences2, m772a).getJSONObject("license");
            if ("active".equals(jSONObject.getString("state"))) {
                sharedPreferences.edit().putString("key", jSONObject.getString("license_key")).apply();
            }
        } catch (Throwable th) {
            Log.w("MiDuoLicense", "server sync failed", th);
            c0065h.f1093g = "未连上授权服务器，显示的是本机记录";
        }
        int min = Math.min(1800, sharedPreferences2.getInt("_global/trialUsedSec", 0));
        if (LicenseCrypto.m1705a(sharedPreferences2.getString("_global/licenseToken", null), m772a)) {
            c0065h.f1088b = true;
            c0065h.f1090d = sharedPreferences.getString("key", null);
        } else {
            c0065h.f1089c = min < 1800;
            c0065h.f1091e = (1859 - min) / 60;
            c0065h.f1092f = (1800 - min) / 1800.0f;
        }
        return c0065h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m1130j(int i) {
        boolean z;
        String str;
        if (this.f1049p == null || f962f) {
            return;
        }
        if (i == 2) {
            z = this.f1049p.m1840m(true);
        } else {
            if (this.f1049p.m1840m(false)) {
                if (this.f1049p.m1860t(i == 1 ? "black" : "white")) {
                    z = true;
                }
            }
            z = false;
        }
        m997T();
        if (z) {
            str = "外屏侧栏已设为" + (i == 2 ? "跟随系统" : i == 1 ? "黑色" : "白色") + "，离开 MiDuo 后生效";
        } else {
            str = "侧栏颜色保存失败";
        }
        Toast.makeText(this, str, 0).show();
    }

    /* renamed from: m */
    private void m1151m(boolean z) {
        if (this.f1049p.m1837l(z)) {
            Toast.makeText(this, z ? "已开启取色按钮" : "已关闭取色按钮", 0).show();
        } else {
            Toast.makeText(this, "取色按钮保存失败", 0).show();
            m997T();
        }
    }

    /* renamed from: a */
    private LinearLayout m1014a(String str, String str2, int i, int i2, TextView[] textViewArr, SeekBar[] seekBarArr, IntConsumer intConsumer) {
        LinearLayout m1175u = m1175u();
        LinearLayout m1121i = m1121i();
        TextView m1413a = UiKit.m1413a(this, 16.0f, UiKit.f1345b, 600);
        m1413a.setText(str);
        m1121i.addView(m1413a, UiKit.m1428b());
        TextView m1413a2 = UiKit.m1413a(this, 26.0f, UiKit.f1345b, 800);
        m1413a2.setFontFeatureSettings("tnum");
        m1121i.addView(m1413a2);
        TextView m1413a3 = UiKit.m1413a(this, 14.0f, UiKit.f1347c, 600);
        m1413a3.setText(str2);
        m1413a3.setPadding(m1004a(2.0f), m1004a(8.0f), 0, 0);
        m1121i.addView(m1413a3);
        m1175u.addView(m1121i);
        SeekBar seekBar = new SeekBar(this);
        UiKit.m1420a(seekBar);
        seekBar.setMax(i2 - i);
        seekBar.setEnabled(false);
        seekBar.setContentDescription(str);
        seekBar.setOnSeekBarChangeListener(new C0058a(m1413a2, i, intConsumer));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, m1004a(44.0f));
        layoutParams.leftMargin = -m1004a(17.0f);
        layoutParams.rightMargin = -m1004a(17.0f);
        m1175u.addView(seekBar, layoutParams);
        textViewArr[0] = m1413a2;
        seekBarArr[0] = seekBar;
        return m1175u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m1105f(String str) {
        this.f998P = false;
        if (isDestroyed() || isFinishing()) {
            return;
        }
        m997T();
        Toast.makeText(this, str, 1).show();
    }

    /* renamed from: g */
    private void m1112g(final boolean z) {
        f959c.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1084c(z);
            }
        });
    }

    /* renamed from: h */
    private void m1120h(boolean z) {
        if (this.f1049p.m1800c(z)) {
            Toast.makeText(this, z ? "已开启 5G 新样式" : "已关闭 5G 新样式", 0).show();
        } else {
            Toast.makeText(this, "5G 新样式保存失败", 0).show();
            m997T();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m1163p(View view) {
        m1155n(1);
    }

    /* renamed from: r */
    private void m1170r(boolean z) {
        if (this.f1049p.m1861t(z) && this.f1049p.m1771B() == z) {
            Toast.makeText(this, (z ? "已保存为开启" : "已保存为关闭") + "，系统界面读到后生效", 0).show();
        } else {
            Toast.makeText(this, "工作台开关保存失败，仍是" + (this.f1049p.m1771B() ? "开启" : "关闭"), 0).show();
            m997T();
        }
    }

    /* renamed from: p */
    private void m1164p(boolean z) {
        String message;
        if (this.f998P) {
            return;
        }
        if (!z) {
            try {
                message = this.f1049p.m1855r(false) ? "已关闭帐篷钟面" : "帐篷钟面保存失败";
            } catch (IllegalStateException e) {
                Log.e("DuoStandby", "Clock switch state unconfirmed", e);
                message = e.getMessage();
            }
            m997T();
            Toast.makeText(this, message, 0).show();
            return;
        }
        this.f998P = true;
        m997T();
        final ConfigStore c0113o = this.f1049p;
        f959c.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda76
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1068b(c0113o);
            }
        });
    }

    /* renamed from: j */
    private void m1134j(boolean z) {
        if (this.f1049p.m1817f(z)) {
            Toast.makeText(this, z ? "已开启轻折分屏" : "已关闭轻折分屏", 0).show();
        } else {
            Toast.makeText(this, "轻折分屏保存失败", 0).show();
            m997T();
        }
    }

    /* renamed from: n */
    private void m1158n(boolean z) {
        if (this.f1049p.m1849p(z)) {
            Toast.makeText(this, z ? "已开启旋转建议按钮" : "已关闭旋转建议按钮", 0).show();
        } else {
            Toast.makeText(this, "旋转建议按钮保存失败", 0).show();
            m997T();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m1169r(View view) {
        startActivity(new Intent(this, (Class<?>) RailCustomActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m1166q(View view) {
        if (this.f1016Y.isEnabled()) {
            this.f1016Y.performClick();
        }
    }

    /* renamed from: q */
    private void m1167q(boolean z) {
        if (this.f1049p == null || f962f) {
            return;
        }
        if (!this.f1049p.m1858s(z)) {
            Toast.makeText(this, "时钟线条保存失败", 0).show();
        }
        m997T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ void m1067b(LinearLayout linearLayout, ImageView imageView, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1066b(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1120h(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1097e(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null) {
            return;
        }
        m1134j(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1065b(View view) {
        if (this.f1022b0.isEnabled()) {
            this.f1022b0.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1096e(View view) {
        if (this.f989K0.isEnabled()) {
            this.f989K0.performClick();
        }
    }

    /* renamed from: b */
    private void m1061b(float f) {
        this.f1050p0 = f;
        int m1004a = m1004a(10.0f) * 2;
        int width = this.f1040k0.getWidth() - m1004a;
        if (width <= 0) {
            return;
        }
        int m1004a2 = (width - m1004a(this.f1051q.f1398e ? 14.0f : 12.0f)) / 2;
        int m1004a3 = m1004a(76.0f);
        this.f1044m0.measure(View.MeasureSpec.makeMeasureSpec(m1004a2, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        int max = Math.max(m1004a3, this.f1044m0.getMeasuredHeight());
        int round = m1004a3 + Math.round((max - m1004a3) * f);
        int i = width - m1004a2;
        int round2 = width - Math.round(i * f);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f1044m0.getLayoutParams();
        layoutParams.width = m1004a2;
        layoutParams.height = max;
        layoutParams.leftMargin = i;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f1042l0.getLayoutParams();
        layoutParams2.width = round2;
        layoutParams2.height = round;
        this.f1044m0.setTranslationX((round2 + r2) - i);
        this.f1044m0.setAlpha(Math.min(1.0f, f * 2.0f));
        this.f1040k0.getLayoutParams().height = round + m1004a;
        this.f1040k0.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1095e(int i) {
        m1167q(i == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1098e(String str) {
        Toast.makeText(this, str, 1).show();
        m995R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1099e(boolean z) {
        XposedService m975c = ConfigBroadcastHub.m975c();
        if (m975c != null) {
            try {
                this.f1017Y0 = new HashSet(m975c.getScope());
                this.f1019Z0 = null;
            } catch (Throwable th) {
                this.f1019Z0 = String.valueOf(th);
            }
        }
        f963g += (this.f1019Z0 != null ? " · 作用域读取失败，未刷新" : " · " + m980B().size() + " 个等待 LSPosed 授权");
        m997T();
        m995R();
        m1159o();
        if (z) {
            m989L();
        }
    }

    /* renamed from: c */
    private void m1077c() {
        final EditText editText = new EditText(this);
        editText.setHint("MD-XXXX-XXXX-XXXX-XXXX");
        editText.setSingleLine(true);
        new AlertDialog.Builder(this).setTitle("输入授权码").setMessage("在另一台手机买过的，输入授权码即可在这台手机使用。").setView(editText).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.m1034a(editText, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1023a(int i, View view) {
        m1143l(i);
    }

    /* renamed from: a */
    private View m1011a(String str, String str2, UiKit.e eVar) {
        LinearLayout m1430c = UiKit.m1430c(this);
        UiKit.m1418a(m1430c, this.f1051q.f1398e ? 26.0f : 28.0f);
        m1430c.setPadding(m1004a(18.0f), 0, m1004a(16.0f), 0);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 600);
        m1413a.setText(str);
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText(str2);
        m1413a2.setPadding(0, m1004a(3.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, UiKit.m1428b());
        eVar.m1442a(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m1004a(124.0f), -2);
        layoutParams.leftMargin = m1004a(12.0f);
        m1430c.addView(eVar.f1407a, layoutParams);
        return m1430c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1084c(boolean z) {
        String str;
        final String str2;
        ConfigStore c0113o = this.f1049p;
        boolean z2 = c0113o != null && c0113o.m1825h(z) && c0113o.m1838m() == z;
        if (!z2) {
            str = "";
        } else {
            try {
                Thread.sleep(1500L);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            String m1123i = m1123i("debug.duo.master");
            if ((z ? "1" : "0").equals(m1123i)) {
                str = "系统框架已读取；";
            } else {
                StringBuilder append = new StringBuilder().append("系统框架还没读到（当前 ");
                if (m1123i.isEmpty()) {
                    m1123i = "无记录";
                }
                str = append.append(m1123i).append("），以首页状态为准；").toString();
            }
        }
        if (z2) {
            str2 = (z ? "已保存为打开。" : "已保存为关闭。") + str + "桌面会重开一次，布局是否换好以桌面实际显示为准";
        } else {
            str2 = "总开关保存失败，什么都没有改";
        }
        this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1098e(str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static /* synthetic */ int m1057b(Collator collator, C0064g c0064g, C0064g c0064g2) {
        return collator.compare(c0064g.f1083b, c0064g2.f1083b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m1136k(int i) {
        if (this.f1049p == null || f962f) {
            return;
        }
        if (!this.f1049p.m1776a(i)) {
            Toast.makeText(this, "轻折灵敏度保存失败", 0).show();
        }
        m997T();
    }

    /* renamed from: b */
    private Drawable m1058b(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1031a(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i3 - i != i7 - i5) {
            view.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m1183y();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1024a(ValueAnimator valueAnimator) {
        m1061b(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: a */
    private TextView m1016a(LinearLayout linearLayout, String str, float f) {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        m1411a.setBackground(UiKit.m1404a(UiKit.f1355g, m1004a(16.0f)));
        m1411a.setPadding(m1004a(12.0f), m1004a(10.0f), m1004a(12.0f), m1004a(10.0f));
        TextView m1413a = UiKit.m1413a(this, 11.0f, UiKit.f1347c, RailCodec.f930m);
        m1413a.setText(str);
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 15.0f, UiKit.f1345b, 700);
        m1413a2.setPadding(0, m1004a(4.0f), 0, 0);
        m1411a.addView(m1413a2);
        LinearLayout.LayoutParams m1428b = UiKit.m1428b();
        m1428b.leftMargin = m1004a(f);
        linearLayout.addView(m1411a, m1428b);
        return m1413a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1064b(DialogInterface dialogInterface, int i) {
        m995R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1063b(DialogInterface dialogInterface) {
        m995R();
    }

    /* renamed from: c */
    private void m1083c(Diagnostics.a aVar) {
        this.f979F0.setText(aVar.f1713b);
        this.f979F0.setTextColor(m1005a(aVar.f1714c, UiKit.f1345b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1070b(Future future, DialogInterface dialogInterface) {
        future.cancel(true);
        if (isDestroyed()) {
            return;
        }
        m995R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m1143l(int i) {
        ConfigStore c0113o = this.f1049p;
        if (c0113o == null) {
            return;
        }
        if (!c0113o.m1789b(i)) {
            Toast.makeText(this, "全局默认保存失败", 0).show();
            return;
        }
        m997T();
        m1159o();
        Toast.makeText(this, "已设为 " + i + "px，App 下次打开时生效", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1068b(ConfigStore c0113o) {
        final String str;
        try {
            try {
                m1168r();
                try {
                    str = c0113o.m1855r(true) ? "已开启帐篷钟面和锁屏显示权限" : "帐篷钟面保存失败";
                } catch (IllegalStateException e) {
                    Log.e("DuoStandby", "Clock switch state unconfirmed", e);
                    str = e.getMessage();
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                Log.e("DuoStandby", "Lockscreen permission request interrupted", e2);
                str = "开启已中断，请重试";
            }
        } catch (IOException | RuntimeException e3) {
            Log.e("DuoStandby", "Lockscreen permission request failed", e3);
            str = "未能开启帐篷钟面，请检查 Root 授权或锁屏显示权限";
        }
        this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1105f(str);
            }
        });
    }

    /* renamed from: l */
    private void m1146l(boolean z) {
        if (this.f1049p == null || f962f) {
            return;
        }
        if (!this.f1049p.m1834k(z)) {
            Toast.makeText(this, "电量百分比位置保存失败", 0).show();
        }
        m997T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1033a(CompoundButton compoundButton, boolean z) {
        if (this.f1023b1 || this.f1049p == null || f962f) {
            return;
        }
        m1048a((List<C0064g>) new ArrayList(this.f1045n), z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1032a(AdapterView adapterView, View view, int i, long j) {
        C0064g c0064g = (C0064g) adapterView.getItemAtPosition(i);
        if (c0064g == null) {
            return;
        }
        if (this.f1057t) {
            this.f1061v = c0064g.f1082a;
            this.f1063w = c0064g.f1083b;
            m996S();
            return;
        }
        startActivity(new Intent(this, (Class<?>) DetailActivity.class).putExtra("pkg", c0064g.f1082a).putExtra("label", c0064g.f1083b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1035a(LinearLayout linearLayout, ImageView imageView, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* renamed from: a */
    private View m1008a(int i, String str) {
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        LinearLayout m1430c = UiKit.m1430c(this);
        TextView m1413a = UiKit.m1413a(this, 13.0f, UiKit.f1347c, 600);
        m1413a.setText(str);
        m1430c.addView(m1413a, UiKit.m1428b());
        TextView m1413a2 = UiKit.m1413a(this, 13.0f, UiKit.f1349d, 500);
        m1430c.addView(m1413a2);
        m1411a.addView(m1430c);
        SeekBar seekBar = new SeekBar(this);
        UiKit.m1420a(seekBar);
        seekBar.setMax(120);
        seekBar.setEnabled(false);
        m1411a.addView(seekBar, UiKit.m1410a(UiKit.m1408a(), this, 4.0f));
        this.f1032g0[i] = seekBar;
        this.f1034h0[i] = m1413a2;
        seekBar.setOnSeekBarChangeListener(new C0061d(m1413a2, i));
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1069b(Diagnostics.a aVar) {
        if (isDestroyed()) {
            return;
        }
        m1083c(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1062b(Dialog dialog, View view) {
        dialog.dismiss();
        m1127i(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean m1072b(String str) {
        return this.f1049p.m1803d(str) || this.f1049p.m1792b(str, "inner") || this.f1049p.m1792b(str, "outer") || this.f1049p.m1848p(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1039a(C0065h c0065h, View view) {
        ((ClipboardManager) getSystemService(ClipboardManager.class)).setPrimaryClip(ClipData.newPlainText("MiDuo 授权码", c0065h.f1090d));
        this.f1007T0 = true;
        m988K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ int m1007a(Collator collator, C0064g c0064g, C0064g c0064g2) {
        return collator.compare(c0064g.f1083b, c0064g2.f1083b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1041a(C0066i c0066i, ConfigStore c0113o, List list) {
        if (isDestroyed()) {
            return;
        }
        m1040a(c0066i);
        if (f962f) {
            m1056a0();
        }
        if (c0113o == null || f962f) {
            return;
        }
        if (c0113o.m1775a() || c0113o.m1801d()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                C0064g c0064g = (C0064g) it.next();
                if (!c0064g.f1085d && !ConfigKeys.f1175k.contains(c0064g.f1082a) && c0113o.m1839m(c0064g.f1082a)) {
                    arrayList.add(c0064g);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            m1048a((List<C0064g>) arrayList, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1088d(int i) {
        this.f995N0 = i;
        this.f993M0.m1441a(i);
        m1159o();
    }

    /* renamed from: a */
    private void m1040a(C0066i c0066i) {
        this.f1029e1 = c0066i;
        this.f1045n.clear();
        this.f1045n.addAll(c0066i.f1094a);
        this.f1049p = c0066i.f1095b;
        this.f1011V0 = c0066i.f1099f;
        this.f1021a1 = c0066i.f1101h;
        this.f1017Y0 = c0066i.f1097d;
        this.f1019Z0 = c0066i.f1098e;
        this.f1013W0 = c0066i.f1100g;
        String[] strArr = c0066i.f1102i;
        this.f1015X0 = strArr;
        this.f971B0.setText(strArr[0]);
        boolean equals = f964h.equals(this.f1015X0[1]);
        boolean equals2 = "未安装".equals(this.f1015X0[2]);
        this.f973C0.setText(equals ? this.f1015X0[1] : this.f1015X0[1] + " · 需 " + f964h);
        this.f973C0.setTextColor(equals ? UiKit.f1345b : -2543579);
        this.f975D0.setText(this.f1015X0[2]);
        this.f975D0.setTextColor(equals2 ? -2543579 : UiKit.f1345b);
        this.f981G0.setText("小米桌面的版本与 MiDuo 适配的版本不同，桌面相关功能可能出错。请用下方 Bug 抓取导出报告，再到“授权”页联系作者。");
        this.f981G0.setVisibility(equals ? 8 : 0);
        this.f977E0.setText(this.f1015X0[3]);
        m1083c(c0066i.f1103j);
        C0065h c0065h = c0066i.f1096c;
        if (c0065h != null) {
            m1038a(c0065h);
        }
        m997T();
        m995R();
        m1159o();
        m987J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1089d(View view) {
        ColorConfigActivity.m828a((Activity) this, (String) null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1091d(String str) {
        Toast.makeText(this, str, 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1092d(boolean z) {
        final Diagnostics.a m1896a = Diagnostics.m1896a(z);
        this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1069b(m1896a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1043a(final ConfigStore c0113o) {
        try {
            final C0065h m1075c = m1075c(c0113o);
            this.f1041l.set(false);
            this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m1045a(c0113o, m1075c);
                }
            });
        } catch (Throwable th) {
            this.f1041l.set(false);
            final C0065h c0065h = null;
            this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m1045a(c0113o, c0065h);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1045a(ConfigStore c0113o, C0065h c0065h) {
        if (isDestroyed()) {
            return;
        }
        if (this.f1049p == c0113o && c0065h != null) {
            m1038a(c0065h);
            m995R();
        }
        if (this.f1039j1 || this.f1049p != c0113o) {
            this.f1039j1 = false;
            m987J();
        }
    }

    /* renamed from: a */
    private static String m1019a(PackageManager packageManager, String str) {
        try {
            String str2 = packageManager.getPackageInfo(str, 0).versionName;
            Matcher matcher = Pattern.compile("\\d+(\\.\\d+){2,}").matcher(str2 == null ? "" : str2);
            return matcher.find() ? matcher.group() : String.valueOf(str2);
        } catch (PackageManager.NameNotFoundException e) {
            return "未安装";
        }
    }

    /* renamed from: a */
    private void m1038a(C0065h c0065h) {
        MainActivity mainActivity;
        String str;
        this.f1005S0 = c0065h;
        this.f1009U0 = c0065h == null || c0065h.f1089c;
        this.f1067y.removeAllViews();
        if (c0065h == null) {
            mainActivity = this;
        } else if (!c0065h.f1088b) {
            mainActivity = this;
        } else {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(UiKit.f1369n);
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setBackground(gradientDrawable);
            mainActivity = this;
            frameLayout.addView(UiKit.m1407a(this, UiKit.m1403a(mainActivity, 6, UiKit.f1371o, 3.0f, false, 12.0f)), new FrameLayout.LayoutParams(m1004a(12.0f), m1004a(12.0f), 17));
            LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 18.0f, 18.0f);
            m1409a.rightMargin = m1004a(6.0f);
            mainActivity.f1067y.addView(frameLayout, m1409a);
        }
        TextView m1413a = UiKit.m1413a(this, 13.0f, UiKit.f1345b, 600);
        if (c0065h == null || c0065h.f1087a) {
            str = "授权";
        } else if (c0065h.f1088b) {
            str = "已买断";
        } else {
            str = c0065h.f1089c ? "试用 " + c0065h.f1091e + " 分钟" : "试用已结束";
        }
        m1413a.setText(str);
        if (c0065h == null || !c0065h.f1088b) {
            m1413a.setPadding(m1004a(5.0f), 0, 0, 0);
        }
        mainActivity.f1067y.addView(m1413a);
        m988K();
    }

    /* renamed from: a */
    private void m1036a(final TextView textView) {
        final ConfigStore c0113o = this.f1049p;
        if (c0113o == null) {
            return;
        }
        textView.setEnabled(false);
        f958b.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1044a(c0113o, textView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1044a(ConfigStore c0113o, final TextView textView) {
        final String str;
        final String str2 = null;
        try {
            String m772a = LicenseClient.m772a();
            JSONObject m775a = LicenseClient.m775a(m772a);
            if (m775a.has("license")) {
                LicenseClient.m782a(c0113o.f1684a, m772a, m775a.getJSONObject("license"));
                str = "这台手机已经买过，授权已恢复";
            } else if (m775a.has("error")) {
                str = "下单失败：" + m775a.optString("message", m775a.getString("error"));
            } else {
                getSharedPreferences("billing", 0).edit().putString("order", m775a.getString("order_id")).apply();
                str2 = m775a.getString("pay_url");
                str = "已打开付款页面，付款后回到 MiDuo 即可";
            }
        } catch (Throwable th) {
            str = "连不上授权服务器：" + th.getMessage();
        }
        this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1037a(textView, str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1037a(TextView textView, String str, String str2) {
        textView.setEnabled(true);
        Toast.makeText(this, str, 1).show();
        if (str2 != null) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)));
        } else {
            f957a.execute(new MainActivity$$ExternalSyntheticLambda13(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1034a(EditText editText, DialogInterface dialogInterface, int i) {
        m1133j(editText.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1047a(String str, ConfigStore c0113o) {
        final String str2;
        try {
            String m772a = LicenseClient.m772a();
            JSONObject m785b = LicenseClient.m785b(m772a, str);
            String optString = m785b.optString("error", "");
            if (optString.isEmpty()) {
                LicenseClient.m782a(c0113o.f1684a, m772a, m785b.getJSONObject("license"));
                str2 = "授权已恢复";
            } else if ("license_not_found".equals(optString)) {
                str2 = "授权码不对，请检查后再试";
            } else if ("license_revoked".equals(optString)) {
                str2 = "这个授权码已失效";
            } else if ("rate_limited".equals(optString)) {
                str2 = "尝试次数太多，请一小时后再试";
            } else {
                str2 = "恢复失败：" + m785b.optString("message", optString);
            }
        } catch (Throwable th) {
            str2 = "连不上授权服务器：" + th.getMessage();
        }
        this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1091d(str2);
            }
        });
        m1185z();
    }

    /* renamed from: a */
    private void m1050a(boolean z) {
        if (z) {
            this.f1023b1 = true;
            this.f972C.setChecked(false);
            this.f1023b1 = false;
            m1142l();
            return;
        }
        new AlertDialog.Builder(this).setTitle("关闭 MiDuo？").setMessage("关闭后变回小米原装：桌面会自动重开一次并换成原装布局（你的 4×6 布局另存，打开时原样回来）；已打开的 App 需要重开；状态栏在开合或转屏一次后恢复。在 LSPosed 里停用 MiDuo 之前，请先关闭此开关。").setPositiveButton("关闭", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda53
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.m1029a(dialogInterface, i);
            }
        }).setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda54
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.m1064b(dialogInterface, i);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda55
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MainActivity.this.m1063b(dialogInterface);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1029a(DialogInterface dialogInterface, int i) {
        m1112g(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1052a(boolean z, String str, int i, long j, Set set, String str2, final Dialog dialog, final LinearLayout linearLayout, final TextView textView, final TextView textView2) {
        final List<AppInventory.a> m821a = AppInventory.m821a(this, z, str, i, j, set, str2);
        this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1026a(dialog, m821a, linearLayout, textView, textView2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1026a(Dialog dialog, List list, LinearLayout linearLayout, TextView textView, TextView textView2) {
        if (isDestroyed() || !dialog.isShowing()) {
            return;
        }
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            AppInventory.a aVar = (AppInventory.a) it.next();
            if (aVar.f811c == 2) {
                i++;
            }
            if (linearLayout.getChildCount() > 0) {
                View view = new View(this);
                view.setBackgroundColor(UiKit.f1357h);
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, m1004a(0.5f))));
            }
            linearLayout.addView(m1009a(aVar));
        }
        linearLayout.setVisibility(0);
        if (i > 0) {
            textView.setText("有 " + i + " 项没通过，没有打开。按红字处理好后再点一次开关。");
            textView.setTextColor(-2543579);
            textView2.setText("知道了");
            UiKit.m1423a(textView2, true);
            return;
        }
        Iterator it2 = list.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            if (((AppInventory.a) it2.next()).f811c == 1) {
                i2++;
            }
        }
        textView.setText(i2 == 0 ? "全部通过，正在打开。" : "必需项全部通过，正在打开；黄色的 " + i2 + " 项只影响对应功能。");
        m1112g(true);
        if (i2 > 0) {
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda40
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    MainActivity.this.m1028a(dialogInterface);
                }
            });
            textView2.setText("知道了");
            UiKit.m1423a(textView2, true);
        } else {
            textView2.setEnabled(false);
            dialog.setOnDismissListener(null);
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1028a(DialogInterface dialogInterface) {
        if (isDestroyed()) {
            return;
        }
        m995R();
    }

    /* renamed from: a */
    private View m1009a(AppInventory.a aVar) {
        int i = aVar.f811c;
        boolean z = i == 2;
        boolean z2 = i == 1;
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setGravity(48);
        m1430c.setPadding(0, m1004a(12.0f), 0, m1004a(12.0f));
        View view = new View(this);
        view.setBackground(m1058b(z ? -2543579 : z2 ? -878336 : -13326253));
        LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 7.0f, 7.0f);
        m1409a.topMargin = m1004a(5.0f);
        m1409a.rightMargin = m1004a(12.0f);
        m1430c.addView(view, m1409a);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 14.0f, z ? -2543579 : UiKit.f1345b, 500);
        m1413a.setText(aVar.f809a);
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, z ? -2543579 : UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText(aVar.f810b);
        m1413a2.setLineSpacing(m1004a(2.0f), 1.0f);
        m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), this, 4.0f));
        m1430c.addView(m1411a, UiKit.m1428b());
        return m1430c;
    }

    /* renamed from: a */
    private void m1048a(final List<C0064g> list, final boolean z, final boolean z2) {
        if (f962f || this.f1049p == null) {
            return;
        }
        f962f = true;
        f963g = "正在" + (z ? "开启" : "关闭") + " 0/" + list.size();
        m995R();
        m1056a0();
        final ConfigStore c0113o = this.f1049p;
        f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1051a(z2, c0113o, z, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1051a(boolean z, ConfigStore c0113o, final boolean z2, List list) {
        if (z) {
            try {
                if (!c0113o.m1794b(z2)) {
                    throw new IllegalStateException("总开关保存失败");
                }
            } catch (Throwable th) {
                try {
                    f963g = "批量操作失败：" + th.getMessage();
                    return;
                } finally {
                    f962f = false;
                    this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda25
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainActivity.this.m1099e(z2);
                        }
                    });
                }
            }
        }
        String str = "";
        String str2 = "";
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < list.size()) {
            C0064g c0064g = (C0064g) list.get(i);
            i++;
            f963g = "正在" + (z2 ? "开启" : "关闭") + " " + i + "/" + list.size() + " · " + c0064g.f1083b;
            try {
            } catch (Throwable th2) {
                i3++;
                if (str2.isEmpty()) {
                    str2 = c0064g.f1083b + "：" + th2.getMessage();
                }
            }
            if (!c0113o.m1805d(c0064g.f1082a, z2)) {
                throw new IllegalStateException("启用状态保存失败");
            }
            i2++;
        }
        StringBuilder append = new StringBuilder().append("已").append(z2 ? "开启 " : "关闭 ").append(i2).append(" 个 · 跳过 ").append(this.f1021a1).append(" 个组件 · ").append(i3).append(" 个应用失败");
        if (!str2.isEmpty()) {
            str = "\n" + str2;
        }
        f963g = append.append(str).toString();
        f963g += "\n现有窗口由系统服务自动刷新；顶部留白在应用进程下次启动时生效";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1046a(ConfigStore c0113o, boolean z, boolean z2, Set set, String str, String str2, final Dialog dialog, final LinearLayout linearLayout, final boolean z3, final TextView textView, final TextView textView2, final LinearLayout linearLayout2) {
        final List<Diagnostics.a> m1899a = Diagnostics.m1899a(this, c0113o, z, z2, set, str, str2);
        this.f1043m.post(new Runnable() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1027a(dialog, m1899a, linearLayout, z3, textView, textView2, linearLayout2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1027a(final Dialog dialog, List list, LinearLayout linearLayout, boolean z, TextView textView, TextView textView2, LinearLayout linearLayout2) {
        String str;
        if (isDestroyed() || !dialog.isShowing()) {
            return;
        }
        Iterator it = list.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            Diagnostics.a aVar = (Diagnostics.a) it.next();
            int i3 = aVar.f1714c;
            if (i3 == 2) {
                i++;
            }
            if (i3 == 1) {
                i2++;
            }
            if (linearLayout.getChildCount() > 0) {
                View view = new View(this);
                view.setBackgroundColor(UiKit.f1357h);
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, m1004a(0.5f))));
            }
            linearLayout.addView(m1010a(aVar));
        }
        linearLayout.setVisibility(0);
        if (!z) {
            textView.setText("MiDuo 总开关没有运行，暂时不能打开开合动画。");
            textView2.setText("知道了");
            UiKit.m1423a(textView2, true);
            return;
        }
        if (i > 0) {
            str = "有 " + i + " 项没通过。仍可打开，但开合动画可能无法正常运行；打开后系统下次启动时用上。";
        } else if (i2 > 0) {
            str = "可以打开，有 " + i2 + " 项需要留意。打开后系统下次启动时用上。";
        } else {
            str = "全部通过。打开后系统下次启动时用上。";
        }
        textView.setText(str);
        View m1415a = UiKit.m1415a((Context) this, (i > 0 || i2 > 0) ? "仍然打开" : "打开", true, 38.0f);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.MainActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MainActivity.this.m1062b(dialog, view2);
            }
        });
        LinearLayout.LayoutParams m1429c = UiKit.m1429c();
        m1429c.leftMargin = m1004a(10.0f);
        linearLayout2.addView(m1415a, m1429c);
    }

    /* renamed from: a */
    private View m1010a(Diagnostics.a aVar) {
        LinearLayout m1430c = UiKit.m1430c(this);
        m1430c.setGravity(48);
        m1430c.setPadding(0, m1004a(12.0f), 0, m1004a(12.0f));
        View view = new View(this);
        view.setBackground(m1058b(m1005a(aVar.f1714c, -13326253)));
        LinearLayout.LayoutParams m1409a = UiKit.m1409a(this, 7.0f, 7.0f);
        m1409a.topMargin = m1004a(5.0f);
        m1409a.rightMargin = m1004a(12.0f);
        m1430c.addView(view, m1409a);
        LinearLayout m1411a = UiKit.m1411a((Context) this);
        TextView m1413a = UiKit.m1413a(this, 14.0f, UiKit.f1345b, 500);
        m1413a.setText(aVar.f1712a);
        m1411a.addView(m1413a);
        TextView m1413a2 = UiKit.m1413a(this, 12.0f, aVar.f1714c == 2 ? -2543579 : UiKit.f1349d, RailCodec.f930m);
        m1413a2.setText(aVar.f1713b);
        m1413a2.setLineSpacing(m1004a(2.0f), 1.0f);
        m1411a.addView(m1413a2, UiKit.m1410a(UiKit.m1408a(), this, 4.0f));
        m1430c.addView(m1411a, UiKit.m1428b());
        return m1430c;
    }

    /* renamed from: a */
    private void m1053a(boolean z, boolean z2) {
        if (this.f1049p == null || f962f) {
            return;
        }
        if (!this.f1049p.m1787a(z, z2)) {
            Toast.makeText(this, "旋转按钮位置保存失败", 0).show();
        }
        m997T();
    }
}
