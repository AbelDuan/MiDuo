package dev.duo.hookprobe;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import dev.duo.hookprobe.C0087T;
import dev.duo.hookprobe.C0104f;
import io.github.libxposed.service.XposedService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.function.IntConsumer;

/* renamed from: dev.duo.hookprobe.f */
/* loaded from: classes.dex */
final class C0104f {

    /* renamed from: A */
    private C0087T.e f1558A;

    /* renamed from: B */
    private C0087T.e f1559B;

    /* renamed from: C */
    private TextView f1560C;

    /* renamed from: D */
    private TextView f1561D;

    /* renamed from: E */
    private TextView f1562E;

    /* renamed from: F */
    private TextView f1563F;

    /* renamed from: G */
    private TextView f1564G;

    /* renamed from: a */
    private final Activity f1565a;

    /* renamed from: b */
    private final Handler f1566b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private final String f1567c;

    /* renamed from: d */
    private final Runnable f1568d;

    /* renamed from: e */
    final ScrollView f1569e;

    /* renamed from: f */
    private C0113o f1570f;

    /* renamed from: g */
    private Switch f1571g;

    /* renamed from: h */
    private e f1572h;

    /* renamed from: i */
    private e f1573i;

    /* renamed from: j */
    private d f1574j;

    /* renamed from: k */
    private LinearLayout f1575k;

    /* renamed from: l */
    private TextView f1576l;

    /* renamed from: m */
    private C0087T.e f1577m;

    /* renamed from: n */
    private Switch f1578n;

    /* renamed from: o */
    private TextView f1579o;

    /* renamed from: p */
    private LinearLayout f1580p;

    /* renamed from: q */
    private LinearLayout f1581q;

    /* renamed from: r */
    private LinearLayout f1582r;

    /* renamed from: s */
    private ImageView f1583s;

    /* renamed from: t */
    private TextView f1584t;

    /* renamed from: u */
    private TextView f1585u;

    /* renamed from: v */
    private TextView f1586v;

    /* renamed from: w */
    private TextView f1587w;

    /* renamed from: x */
    private boolean f1588x;

    /* renamed from: y */
    private C0087T.e f1589y;

    /* renamed from: z */
    private C0087T.e f1590z;

    /* renamed from: dev.duo.hookprobe.f$a */
    class a implements TextWatcher {

        /* renamed from: a */
        final /* synthetic */ int[] f1591a;

        /* renamed from: b */
        final /* synthetic */ TextView f1592b;

        /* renamed from: c */
        final /* synthetic */ SeekBar[] f1593c;

        a(int[] iArr, TextView textView, SeekBar[] seekBarArr) {
            this.f1591a = iArr;
            this.f1592b = textView;
            this.f1593c = seekBarArr;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String trim = charSequence.toString().trim();
            if (trim.matches("#?[0-9a-fA-F]{6}")) {
                this.f1591a[0] = C0071P.m1257p(trim).intValue();
                this.f1592b.setBackground(C0087T.m1404a(this.f1591a[0], C0104f.this.m1595a(14.0f)));
                this.f1592b.setTextColor(Color.luminance(this.f1591a[0]) > 0.45f ? -13618632 : -1);
                for (int i4 = 0; i4 < 3; i4++) {
                    this.f1593c[i4].setProgress((this.f1591a[0] >> (16 - (i4 * 8))) & 255);
                }
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.f$b */
    class b implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: a */
        final /* synthetic */ EditText f1595a;

        /* renamed from: b */
        final /* synthetic */ int[] f1596b;

        /* renamed from: c */
        final /* synthetic */ int f1597c;

        b(EditText editText, int[] iArr, int i) {
            this.f1595a = editText;
            this.f1596b = iArr;
            this.f1597c = i;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                EditText editText = this.f1595a;
                int i2 = this.f1596b[0];
                int i3 = this.f1597c;
                editText.setText(C0104f.m1638b((i << i3) | (i2 & (~(255 << i3)))));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* renamed from: dev.duo.hookprobe.f$c */
    class c implements XposedService.OnScopeEventListener {

        /* renamed from: a */
        final /* synthetic */ XposedService f1599a;

        c(XposedService xposedService) {
            this.f1599a = xposedService;
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestApproved(List<String> list) {
            C0104f.this.m1673h("LSPosed 已批准作用域，该 App 下次打开时生效");
            C0104f c0104f = C0104f.this;
            c0104f.m1624a(this.f1599a, c0104f.f1570f);
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestFailed(String str) {
            C0104f.this.m1651c("LSPosed 作用域请求失败：" + str);
        }
    }

    /* renamed from: dev.duo.hookprobe.f$d */
    private final class d extends f {
        d(LinearLayout linearLayout, boolean z) {
            super(linearLayout, "com.tencent.mm".equals(C0104f.this.f1567c) ? "内屏和外屏" : "外屏（合上时）", "%", 12, 60, 100, false, z);
        }

        /* renamed from: j */
        private String m1678j() {
            return "com.tencent.mm".equals(C0104f.this.f1567c) ? "微信" : "外屏";
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: a */
        void mo1679a(int i) {
            if (!C0104f.this.f1570f.m1791b(C0104f.this.f1567c, i)) {
                C0104f.this.m1651c("保存失败");
            } else {
                mo1687h();
                C0104f.this.m1673h(m1678j() + "缩放已设为 " + C0071P.m1222b(i) + "%");
            }
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: b */
        boolean mo1680b() {
            return C0104f.this.f1570f.m1819g(C0104f.this.f1567c);
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: c */
        int mo1681c() {
            return C0104f.this.f1570f.m1844o(C0104f.this.f1567c);
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: d */
        boolean mo1682d() {
            return C0104f.this.f1570f.m1810e(C0104f.this.f1567c);
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: e */
        String mo1683e() {
            return C0104f.this.f1570f.m1827i(C0104f.this.f1567c) ? "跟随全局 " + C0104f.this.f1570f.m1847p() + "%" : "原始大小 100%";
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: f */
        void mo1684f() {
            mo1687h();
            C0104f.this.m1673h(m1678j() + "缩放已恢复：" + mo1683e());
        }
    }

    /* renamed from: dev.duo.hookprobe.f$e */
    private final class e extends f {

        /* renamed from: i */
        final String f1602i;

        e(LinearLayout linearLayout, String str, String str2, int i, boolean z, boolean z2) {
            super(linearLayout, str, "px", i, 1, 126, !z, z2);
            this.f1602i = str2;
        }

        /* renamed from: j */
        private int m1685j() {
            return (!"outer".equals(this.f1602i) || C0104f.this.f1570f.m1827i(C0104f.this.f1567c)) ? C0104f.this.f1570f.m1830j(this.f1602i) : C0104f.this.f1570f.m1850q();
        }

        /* renamed from: k */
        private String m1686k() {
            return "inner".equals(this.f1602i) ? "内屏" : "外屏";
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: a */
        void mo1679a(int i) {
            try {
                int m1772a = C0104f.this.f1570f.m1772a(C0104f.this.f1567c, this.f1602i, i);
                mo1687h();
                C0104f.this.m1627a(m1686k() + "已设为 " + m1772a + "px", this.f1602i);
            } catch (Throwable th) {
                C0104f.this.m1651c("保存失败：" + th);
            }
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: b */
        boolean mo1680b() {
            return C0104f.this.f1570f.m1799c(C0104f.this.f1567c, this.f1602i);
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: c */
        int mo1681c() {
            return (!"outer".equals(this.f1602i) || C0104f.this.f1570f.m1827i(C0104f.this.f1567c)) ? C0104f.this.f1570f.m1808e(C0104f.this.f1567c, this.f1602i) : C0071P.m1240e(C0104f.this.f1570f.f1684a, C0104f.this.f1567c);
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: d */
        boolean mo1682d() {
            return C0104f.this.f1570f.m1792b(C0104f.this.f1567c, this.f1602i);
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: e */
        String mo1683e() {
            return "跟随全局 " + m1685j() + "px";
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: f */
        void mo1684f() {
            C0104f.this.f1572h.mo1687h();
            C0104f.this.f1573i.mo1687h();
            C0104f.this.m1627a(m1686k() + "已跟随全局 " + m1685j() + "px", this.f1602i);
        }

        @Override // dev.duo.hookprobe.C0104f.f
        /* renamed from: h */
        void mo1687h() {
            super.mo1687h();
            boolean z = !"outer".equals(this.f1602i) || C0104f.this.f1570f.m1827i(C0104f.this.f1567c) ? !(!("com.ss.android.ugc.aweme".equals(C0104f.this.f1567c) && !C0104f.this.f1570f.m1827i(C0104f.this.f1567c) && "inner".equals(this.f1602i)) ? "inner".equals(this.f1602i) && C0104f.this.f1570f.m1833k(C0104f.this.f1567c) : !C0104f.this.f1570f.m1790b("inner")) : !C0104f.this.f1570f.m1842n(C0104f.this.f1567c);
            this.f1609f.setEnabled(!z);
            this.f1609f.setAlpha(z ? 0.45f : 1.0f);
            if (z) {
                this.f1605b.setEnabled(false);
                C0087T.m1421a(this.f1605b, C0087T.f1380x);
                this.f1606c.setTextColor(C0087T.f1351e);
                this.f1607d.setText("已用原生顶栏");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.hookprobe.f$f */
    abstract class f {

        /* renamed from: a */
        final int f1604a;

        /* renamed from: b */
        final SeekBar f1605b;

        /* renamed from: c */
        final TextView f1606c;

        /* renamed from: d */
        final TextView f1607d;

        /* renamed from: e */
        final ImageView f1608e;

        /* renamed from: f */
        final LinearLayout f1609f;

        /* renamed from: g */
        final LinearLayout f1610g;

        /* renamed from: dev.duo.hookprobe.f$f$a */
        class a implements SeekBar.OnSeekBarChangeListener {
            a() {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    f fVar = f.this;
                    fVar.f1606c.setText(String.valueOf(i + fVar.f1604a));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                f.this.mo1679a(seekBar.getProgress() + f.this.f1604a);
            }
        }

        f(LinearLayout linearLayout, String str, String str2, int i, int i2, int i3, boolean z, boolean z2) {
            this.f1604a = i2;
            LinearLayout m1411a = C0087T.m1411a((Context) C0104f.this.f1565a);
            this.f1610g = m1411a;
            if (!z2) {
                m1411a.setPadding(0, C0104f.this.m1595a(14.0f), 0, C0104f.this.m1595a(14.0f));
            }
            if (z) {
                View view = new View(C0104f.this.f1565a);
                view.setBackgroundColor(C0087T.f1357h);
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, C0104f.this.m1595a(0.5f))));
            }
            LinearLayout m1430c = C0087T.m1430c(C0104f.this.f1565a);
            m1430c.addView(C0087T.m1407a(C0104f.this.f1565a, C0087T.m1403a(C0104f.this.f1565a, i, C0087T.f1349d, 1.8f, false, 20.0f)), C0087T.m1409a(C0104f.this.f1565a, 20.0f, 20.0f));
            TextView m1413a = C0087T.m1413a(C0104f.this.f1565a, z2 ? 14.0f : 15.0f, C0087T.f1345b, 600);
            m1413a.setText(str);
            m1413a.setPadding(C0104f.this.m1595a(z2 ? 12.0f : 10.0f), 0, 0, 0);
            m1430c.addView(m1413a, C0087T.m1428b());
            TextView m1413a2 = C0087T.m1413a(C0104f.this.f1565a, 22.0f, C0087T.f1345b, 800);
            this.f1606c = m1413a2;
            m1413a2.setFontFeatureSettings("tnum");
            m1430c.addView(m1413a2);
            TextView m1413a3 = C0087T.m1413a(C0104f.this.f1565a, 13.0f, C0087T.f1349d, 600);
            m1413a3.setText(str2);
            m1413a3.setPadding(C0104f.this.m1595a(2.0f), C0104f.this.m1595a(6.0f), 0, 0);
            m1430c.addView(m1413a3);
            m1411a.addView(m1430c);
            SeekBar seekBar = new SeekBar(C0104f.this.f1565a);
            this.f1605b = seekBar;
            C0087T.m1420a(seekBar);
            seekBar.setMax(i3 - i2);
            seekBar.setEnabled(false);
            seekBar.setContentDescription(str);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, C0104f.this.m1595a(44.0f));
            layoutParams.leftMargin = -C0104f.this.m1595a(17.0f);
            layoutParams.rightMargin = -C0104f.this.m1595a(17.0f);
            m1411a.addView(seekBar, layoutParams);
            LinearLayout m1430c2 = C0087T.m1430c(C0104f.this.f1565a);
            this.f1609f = m1430c2;
            m1430c2.setPadding(C0104f.this.m1595a(7.0f), 0, C0104f.this.m1595a(12.0f), 0);
            FrameLayout frameLayout = new FrameLayout(C0104f.this.f1565a);
            ImageView m1407a = C0087T.m1407a(C0104f.this.f1565a, C0087T.m1403a(C0104f.this.f1565a, 6, C0087T.f1343a ? -13882322 : C0087T.f1345b, 4.0f, false, 10.0f));
            this.f1608e = m1407a;
            frameLayout.addView(m1407a, new FrameLayout.LayoutParams(C0104f.this.m1595a(10.0f), C0104f.this.m1595a(10.0f), 17));
            m1430c2.addView(frameLayout, C0087T.m1409a(C0104f.this.f1565a, 16.0f, 16.0f));
            TextView m1413a4 = C0087T.m1413a(C0104f.this.f1565a, 12.0f, C0087T.f1347c, 600);
            this.f1607d = m1413a4;
            m1413a4.setPadding(C0104f.this.m1595a(6.0f), 0, 0, 0);
            m1430c2.addView(m1413a4);
            m1430c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$f$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C0104f.f.this.m1688a(view2);
                }
            });
            m1411a.addView(m1430c2, new LinearLayout.LayoutParams(-2, C0104f.this.m1595a(32.0f)));
            linearLayout.addView(m1411a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m1688a(View view) {
            m1691i();
        }

        /* renamed from: a */
        abstract void mo1679a(int i);

        /* renamed from: b */
        abstract boolean mo1680b();

        /* renamed from: c */
        abstract int mo1681c();

        /* renamed from: d */
        abstract boolean mo1682d();

        /* renamed from: e */
        abstract String mo1683e();

        /* renamed from: f */
        abstract void mo1684f();

        /* renamed from: g */
        boolean m1690g() {
            return !mo1682d();
        }

        /* renamed from: h */
        void mo1687h() {
            boolean m1690g = m1690g();
            this.f1605b.setProgress(mo1681c() - this.f1604a);
            this.f1605b.setEnabled(!m1690g);
            C0087T.m1421a(this.f1605b, m1690g ? C0087T.f1380x : C0087T.f1363k);
            this.f1606c.setText(String.valueOf(mo1681c()));
            this.f1606c.setTextColor(m1690g ? C0087T.f1351e : C0087T.f1345b);
            this.f1607d.setText(mo1683e());
            this.f1607d.setTextColor(m1690g ? C0087T.f1371o : C0087T.f1347c);
            GradientDrawable m1404a = C0087T.m1404a(m1690g ? C0087T.f1369n : 0, C0104f.this.m1595a(16.0f));
            if (!m1690g) {
                m1404a.setStroke(Math.max(1, C0104f.this.m1595a(1.0f)), 1299609216);
            }
            this.f1609f.setBackground(m1404a);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(m1690g ? C0087T.f1371o : 0);
            if (!m1690g) {
                gradientDrawable.setStroke(Math.max(1, C0104f.this.m1595a(1.5f)), 1937143424);
            }
            ((View) this.f1608e.getParent()).setBackground(gradientDrawable);
            this.f1608e.setVisibility(m1690g ? 0 : 4);
            C0104f.this.m1677l();
        }

        /* renamed from: i */
        void m1691i() {
            if (C0104f.this.f1570f == null) {
                return;
            }
            if (m1690g()) {
                mo1679a(mo1681c());
            } else if (mo1680b()) {
                mo1684f();
            } else {
                C0104f.this.m1651c("写入失败");
            }
        }

        /* renamed from: a */
        void m1689a() {
            mo1687h();
            this.f1605b.setOnSeekBarChangeListener(new a());
        }
    }

    C0104f(Activity activity, String str, String str2, Runnable runnable, boolean z, int i, int i2, int i3, int i4, Runnable runnable2) {
        this.f1565a = activity;
        this.f1567c = str;
        this.f1568d = runnable2;
        ScrollView scrollView = new ScrollView(activity);
        this.f1569e = scrollView;
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        LinearLayout m1411a = C0087T.m1411a((Context) activity);
        m1411a.setPadding(i, i2, i, i4);
        scrollView.addView(m1411a);
        Switch r0 = new Switch(activity);
        this.f1571g = r0;
        C0087T.m1422a(r0);
        this.f1571g.setContentDescription("Duo 适配");
        this.f1571g.setEnabled(false);
        TextView m1413a = C0087T.m1413a(activity, z ? 13.0f : 14.0f, C0087T.f1345b, 600);
        m1413a.setText("恢复默认");
        m1413a.setGravity(17);
        m1413a.setPadding(m1595a(z ? 14.0f : 16.0f), 0, m1595a(z ? 14.0f : 16.0f), 0);
        m1413a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1661e(view);
            }
        });
        ImageView imageView = new ImageView(activity);
        try {
            imageView.setImageDrawable(activity.getPackageManager().getApplicationIcon(str));
        } catch (Exception e2) {
        }
        String str3 = str2 == null ? str : str2;
        if (z) {
            m1618a(m1411a, imageView, str3, m1413a);
        } else {
            m1619a(m1411a, imageView, str3, m1413a, runnable, i3);
        }
        if ("com.ss.android.ugc.aweme".equals(str)) {
            m1411a.addView(m1600a(z), C0087T.m1410a(C0087T.m1408a(), activity, 12.0f));
        }
        LinearLayout m1411a2 = C0087T.m1411a((Context) activity);
        m1411a2.setPadding(m1595a(10.0f), m1595a(14.0f), m1595a(10.0f), 0);
        LinearLayout m1430c = C0087T.m1430c(activity);
        m1430c.setMinimumHeight(m1595a(40.0f));
        TextView m1413a2 = C0087T.m1413a(activity, 12.0f, C0087T.f1347c, 600);
        m1413a2.setText("技术信息");
        m1430c.addView(m1413a2);
        final ImageView m1407a = C0087T.m1407a(activity, C0087T.m1403a(activity, 5, C0087T.f1351e, 3.0f, false, 11.0f));
        LinearLayout.LayoutParams m1409a = C0087T.m1409a(activity, 11.0f, 11.0f);
        m1409a.leftMargin = m1595a(4.0f);
        m1430c.addView(m1407a, m1409a);
        m1411a2.addView(m1430c);
        TextView m1413a3 = C0087T.m1413a(activity, 12.0f, C0087T.f1349d, C0054J.f930m);
        this.f1560C = m1413a3;
        m1413a3.setLineSpacing(0.0f, 1.4f);
        this.f1560C.setVisibility(8);
        m1411a2.addView(this.f1560C);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1615a(m1407a, view);
            }
        });
        m1411a.addView(m1411a2);
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                C0104f.this.m1655d();
            }
        });
    }

    /* renamed from: g */
    private View m1669g() {
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        this.f1580p = m1411a;
        C0087T.m1418a(m1411a, 24.0f);
        m1411a.setPadding(m1595a(16.0f), m1595a(14.0f), m1595a(16.0f), m1595a(14.0f));
        LinearLayout m1430c = C0087T.m1430c(this.f1565a);
        TextView m1413a = C0087T.m1413a(this.f1565a, 14.0f, C0087T.f1345b, 600);
        m1413a.setText("隐藏外屏原生状态栏");
        m1430c.addView(m1413a, C0087T.m1428b());
        Switch r2 = new Switch(this.f1565a);
        this.f1578n = r2;
        C0087T.m1422a(r2);
        this.f1578n.setContentDescription("隐藏外屏原生状态栏");
        this.f1578n.setEnabled(false);
        this.f1578n.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                C0104f.this.m1642b(compoundButton, z);
            }
        });
        m1430c.addView(this.f1578n);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1666f(view);
            }
        });
        m1411a.addView(m1430c);
        TextView m1413a2 = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, C0054J.f930m);
        this.f1579o = m1413a2;
        m1413a2.setPadding(0, m1595a(8.0f), 0, m1595a(4.0f));
        this.f1579o.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1671g(view);
            }
        });
        m1411a.addView(this.f1579o);
        return m1411a;
    }

    /* renamed from: h */
    private void m1672h() {
        C0113o c0113o;
        if (this.f1575k == null || (c0113o = this.f1570f) == null) {
            return;
        }
        boolean m1827i = c0113o.m1827i(this.f1567c);
        this.f1575k.setVisibility(m1827i ? 8 : 0);
        this.f1590z.f1407a.setVisibility(m1827i ? 0 : 8);
        this.f1576l.setText(m1827i ? "内屏原生顶栏" : "抖音内屏顶栏");
        this.f1577m.m1441a(this.f1570f.m1790b("inner") ? 1 : 0);
        this.f1577m.m1442a(!m1827i);
    }

    /* renamed from: i */
    private void m1674i() {
        String str;
        C0113o c0113o = this.f1570f;
        if (c0113o == null) {
            return;
        }
        boolean m1827i = c0113o.m1827i(this.f1567c);
        LinearLayout linearLayout = this.f1580p;
        if (linearLayout != null) {
            linearLayout.setVisibility(m1827i ? 8 : 0);
        }
        e eVar = this.f1573i;
        if (eVar != null) {
            eVar.f1610g.setVisibility((m1827i || this.f1570f.m1842n(this.f1567c)) ? 0 : 8);
            LinearLayout linearLayout2 = this.f1581q;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(this.f1573i.f1610g.getVisibility());
            }
        }
        boolean z = true;
        this.f1588x = true;
        Switch r2 = this.f1578n;
        if (!m1827i && !this.f1570f.m1842n(this.f1567c)) {
            z = false;
        }
        r2.setChecked(z);
        this.f1588x = false;
        this.f1578n.setEnabled(!m1827i);
        TextView textView = this.f1579o;
        if (m1827i) {
            str = "Duo 已隐藏外屏顶栏，关闭 Duo 后可单独设置";
        } else if (this.f1570f.m1803d(this.f1567c)) {
            str = "已单独设置 · 点此恢复跟随全局";
        } else {
            str = "跟随全局 · 当前" + (this.f1570f.m1842n(this.f1567c) ? "隐藏" : "原生显示");
        }
        textView.setText(str);
        this.f1579o.setTextColor((m1827i || !this.f1570f.m1803d(this.f1567c)) ? C0087T.f1349d : C0087T.f1345b);
    }

    /* renamed from: j */
    private void m1675j() {
        int i = 0;
        while (i < 2) {
            boolean z = i == 1;
            TextView textView = z ? this.f1563F : this.f1562E;
            Integer m1774a = this.f1570f.m1774a(this.f1567c, z);
            int m1225b = C0071P.m1225b(this.f1570f.f1684a, this.f1567c, z);
            textView.setText((z ? "深色模式  " : "浅色模式  ") + m1638b(m1225b) + (m1774a == null ? " · 默认" : " · 自定义"));
            GradientDrawable m1404a = C0087T.m1404a(m1225b, m1595a(6.0f));
            m1404a.setStroke(Math.max(1, m1595a(1.0f)), C0087T.f1357h);
            m1404a.setBounds(0, 0, m1595a(22.0f), m1595a(22.0f));
            textView.setCompoundDrawables(m1404a, null, null, null);
            textView.setCompoundDrawablePadding(m1595a(10.0f));
            textView.setEnabled(true);
            i++;
        }
        this.f1564G.setEnabled(true);
        boolean m1217a = C0071P.m1217a(this.f1565a);
        this.f1561D.setText("当前系统：" + (m1217a ? "深色" : "浅色") + "；" + (this.f1570f.m1774a(this.f1567c, m1217a) == null ? "当前沿用原白黑设置。" : "当前自定义优先，原白黑设置暂不生效。") + ((this.f1570f.m1827i(this.f1567c) && this.f1570f.m1838m()) ? "" : " Duo 开启后生效。") + " 仅调整应用右侧栏背景，字色按背景明暗适配；相同深浅配色共用数据，单独修改互不影响。");
        m1677l();
    }

    /* renamed from: k */
    private void m1676k() {
        C0113o c0113o = this.f1570f;
        if (c0113o == null) {
            return;
        }
        if (this.f1558A != null && (!c0113o.m1811e("outer", true) || !this.f1570f.m1811e("inner", true))) {
            m1651c("写入失败");
            return;
        }
        if ("com.ss.android.ugc.aweme".equals(this.f1567c) && !this.f1570f.m1816f("inner", false)) {
            m1651c("写入失败");
            return;
        }
        if (!this.f1570f.m1814f(this.f1567c) || !this.f1570f.m1779a(this.f1567c, 0) || !this.f1570f.m1799c(this.f1567c, "inner") || !this.f1570f.m1799c(this.f1567c, "outer") || !this.f1570f.m1819g(this.f1567c) || !this.f1570f.m1815f(this.f1567c, "follow") || !this.f1570f.m1780a(this.f1567c, (Integer) null, (Integer) null)) {
            m1651c("写入失败");
            return;
        }
        this.f1572h.mo1687h();
        this.f1573i.mo1687h();
        this.f1574j.mo1687h();
        this.f1590z.m1441a(0);
        m1672h();
        m1674i();
        C0087T.e eVar = this.f1558A;
        if (eVar != null) {
            eVar.m1441a(this.f1570f.m1778a("outer") ? 1 : 0);
            this.f1559B.m1441a(this.f1570f.m1778a("inner") ? 1 : 0);
        }
        this.f1589y.m1441a(0);
        m1675j();
        if (this.f1558A != null) {
            m1673h("已恢复默认：外屏顶栏跟随全局，内屏顶栏原生显示；顶部高度和侧栏颜色跟随全局，缩放恢复默认，内外屏竖视频完整显示");
        } else {
            m1658d("已恢复默认：顶栏、高度、缩放和侧栏颜色都跟随全局");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m1677l() {
        TextView textView;
        String m1670g;
        if (this.f1570f == null || (textView = this.f1584t) == null) {
            return;
        }
        textView.setText("内 " + this.f1572h.mo1681c() + " · 外 " + this.f1573i.mo1681c());
        this.f1585u.setText(this.f1574j.mo1681c() + "%");
        String m1848p = this.f1570f.m1848p(this.f1567c);
        boolean z = (this.f1570f.m1774a(this.f1567c, false) == null && this.f1570f.m1774a(this.f1567c, true) == null) ? false : true;
        TextView textView2 = this.f1586v;
        if (z) {
            m1670g = "已自定义";
        } else {
            if (m1848p == null) {
                m1848p = "follow";
            }
            m1670g = m1670g(m1848p);
        }
        textView2.setText(m1670g);
    }

    /* renamed from: c */
    private View m1647c() {
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        C0087T.m1418a(m1411a, 24.0f);
        m1411a.setPadding(m1595a(16.0f), m1595a(14.0f), m1595a(16.0f), m1595a(14.0f));
        TextView m1413a = C0087T.m1413a(this.f1565a, 14.0f, C0087T.f1345b, 600);
        m1413a.setText("内屏原生顶栏");
        this.f1576l = m1413a;
        m1411a.addView(m1413a);
        C0087T.e eVar = new C0087T.e(this.f1565a, new String[]{"跟随全局", "显示原生顶栏", "隐藏"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda36
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                C0104f.this.m1649c(i);
            }
        });
        this.f1590z = eVar;
        eVar.m1442a(false);
        m1411a.addView(this.f1590z.f1407a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 10.0f));
        if ("com.ss.android.ugc.aweme".equals(this.f1567c)) {
            this.f1575k = C0087T.m1411a((Context) this.f1565a);
            TextView m1413a2 = C0087T.m1413a(this.f1565a, 13.0f, C0087T.f1347c, 600);
            m1413a2.setText("内屏");
            this.f1575k.addView(m1413a2, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
            C0087T.e m1637b = m1637b("inner");
            this.f1577m = m1637b;
            this.f1575k.addView(m1637b.f1407a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
            TextView m1413a3 = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1347c, C0054J.f930m);
            m1413a3.setText("未开启 Duo 时生效：内屏横竖屏共用显隐和顶部空隙设置；隐藏后可调下方高度，修改后需重新打开抖音。顶部三个点保留。");
            this.f1575k.addView(m1413a3, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 10.0f));
            m1411a.addView(this.f1575k, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 10.0f));
            this.f1590z.f1407a.setVisibility(8);
            m1413a.setText("抖音内屏顶栏");
        }
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m1657d(View view) {
        ColorConfigActivity.m828a(this.f1565a, this.f1567c, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1661e(View view) {
        m1676k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m1666f(View view) {
        if (this.f1578n.isEnabled()) {
            this.f1578n.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1642b(CompoundButton compoundButton, boolean z) {
        C0113o c0113o;
        if (this.f1588x || (c0113o = this.f1570f) == null) {
            return;
        }
        if (c0113o.m1824h(this.f1567c, z)) {
            m1673h("已保存，切回 App 后生效；个别 App 要重新打开");
            if (z && !this.f1570f.m1827i(this.f1567c)) {
                m1665f();
            }
        } else {
            m1651c("保存失败");
        }
        m1674i();
        this.f1573i.mo1687h();
    }

    /* renamed from: d */
    private TextView m1653d(final boolean z) {
        TextView m1415a = C0087T.m1415a((Context) this.f1565a, "", false, 56.0f);
        m1415a.setGravity(8388627);
        m1415a.setEnabled(false);
        m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1635a(z, view);
            }
        });
        return m1415a;
    }

    /* renamed from: e */
    private void m1660e() {
        C0113o c0113o = this.f1570f;
        if (c0113o == null) {
            return;
        }
        final Bundle m1851q = c0113o.m1851q(this.f1567c);
        final Bundle bundle = m1851q.getBundle("groups");
        final Bundle bundle2 = m1851q.getBundle("colors");
        final ArrayList arrayList = new ArrayList(bundle.keySet());
        Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            m1673h("还没有保存的页面颜色：在小功能里打开取色按钮，再到 App 侧栏点它取色");
            return;
        }
        String[] strArr = new String[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            String str = (String) arrayList.get(i);
            int i2 = bundle.getInt(str);
            boolean startsWith = str.startsWith("dark/");
            int i3 = 0;
            for (String str2 : bundle2.keySet()) {
                if (str2.startsWith(startsWith ? "dark/" : "light/") && bundle2.getInt(str2) == i2) {
                    i3++;
                }
            }
            Integer m1774a = this.f1570f.m1774a(this.f1567c, startsWith);
            strArr[i] = (startsWith ? "深色  " : "浅色  ") + m1638b(i2) + " · " + i3 + " 个页面" + ((m1774a == null || m1774a.intValue() != i2) ? i3 == 0 ? " · 暂未绑定页面" : "" : " · App 默认色");
        }
        C0087T.m1417a(C0087T.m1401a(this.f1565a, "已保存的页面颜色", strArr, new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                C0104f.this.m1630a(arrayList, bundle, bundle2, m1851q, dialogInterface, i4);
            }
        }).setNeutralButton("清除全部页面记录", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                C0104f.this.m1640b(dialogInterface, i4);
            }
        }).setNegativeButton("关闭", (DialogInterface.OnClickListener) null).create());
    }

    /* renamed from: f */
    private void m1665f() {
        LinearLayout linearLayout = this.f1582r;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(0);
        ImageView imageView = this.f1583s;
        if (imageView != null) {
            imageView.setRotation(180.0f);
        }
    }

    /* renamed from: f */
    private void m1668f(final boolean z) {
        if (!this.f1570f.m1820g(this.f1567c, z)) {
            m1651c("写入失败");
            return;
        }
        m1672h();
        m1674i();
        this.f1572h.mo1687h();
        this.f1573i.mo1687h();
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                C0104f.this.m1652c(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m1595a(float f2) {
        return C0087T.m1399a(this.f1565a, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m1656d(int i) {
        C0113o c0113o = this.f1570f;
        if (c0113o == null) {
            return;
        }
        String str = C0071P.f1134F[i];
        if (c0113o.m1815f(this.f1567c, str)) {
            this.f1589y.m1441a(i);
            m1675j();
            m1673h("原白黑设置已设为" + m1670g(str) + "；未自定义的模式生效");
            return;
        }
        m1651c("写入失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1615a(ImageView imageView, View view) {
        boolean z = this.f1560C.getVisibility() != 0;
        this.f1560C.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m1673h(final String str) {
        this.f1566b.post(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                C0104f.this.m1667f(str);
            }
        });
    }

    /* renamed from: a */
    private void m1619a(LinearLayout linearLayout, ImageView imageView, String str, TextView textView, final Runnable runnable, int i) {
        LinearLayout m1430c = C0087T.m1430c(this.f1565a);
        m1430c.setPadding(0, 0, i, 0);
        if (runnable != null) {
            FrameLayout frameLayout = new FrameLayout(this.f1565a);
            C0087T.m1418a(frameLayout, 21.0f);
            frameLayout.setContentDescription("返回");
            Activity activity = this.f1565a;
            frameLayout.addView(C0087T.m1407a(activity, C0087T.m1403a(activity, 3, C0087T.f1345b, 2.6f, false, 18.0f)), new FrameLayout.LayoutParams(m1595a(18.0f), m1595a(18.0f), 17));
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
            m1430c.addView(frameLayout, C0087T.m1409a(this.f1565a, 42.0f, 42.0f));
        }
        m1430c.addView(new View(this.f1565a), C0087T.m1428b());
        C0087T.m1418a(textView, 21.0f);
        m1430c.addView(textView, new LinearLayout.LayoutParams(-2, m1595a(42.0f)));
        linearLayout.addView(m1430c);
        LinearLayout.LayoutParams m1410a = C0087T.m1410a(C0087T.m1409a(this.f1565a, 80.0f, 80.0f), this.f1565a, 6.0f);
        m1410a.gravity = 1;
        linearLayout.addView(imageView, m1410a);
        TextView m1413a = C0087T.m1413a(this.f1565a, 24.0f, C0087T.f1345b, 800);
        m1413a.setText(str);
        m1413a.setGravity(17);
        linearLayout.addView(m1413a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        LinearLayout m1601a = m1601a(linearLayout, 24.0f);
        m1601a.setPadding(m1595a(18.0f), 0, m1595a(14.0f), 0);
        LinearLayout m1430c2 = C0087T.m1430c(this.f1565a);
        m1430c2.setMinimumHeight(m1595a(58.0f));
        TextView m1413a2 = C0087T.m1413a(this.f1565a, 16.0f, C0087T.f1345b, 600);
        m1413a2.setText("Duo 适配");
        m1430c2.addView(m1413a2, C0087T.m1428b());
        m1430c2.addView(this.f1571g);
        m1601a.addView(m1430c2);
        m1616a(m1601a);
        ((LinearLayout.LayoutParams) m1601a.getLayoutParams()).topMargin = m1595a(22.0f);
        linearLayout.addView(m1669g(), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        linearLayout.addView(m1647c(), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        this.f1584t = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, 500);
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        this.f1582r = m1411a;
        m1411a.setPadding(0, 0, 0, m1595a(8.0f));
        this.f1572h = new e(this.f1582r, "内屏（展开时）", "inner", 11, true, false);
        this.f1573i = new e(this.f1582r, "外屏（合上时）", "outer", 12, true, false);
        linearLayout.addView(m1602a("顶部避让高度", this.f1584t, this.f1582r, true), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        this.f1585u = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, 500);
        LinearLayout m1411a2 = C0087T.m1411a((Context) this.f1565a);
        m1411a2.setPadding(m1595a(2.0f), 0, m1595a(2.0f), m1595a(8.0f));
        this.f1574j = new d(m1411a2, false);
        linearLayout.addView(m1602a("外屏页面缩放", this.f1585u, (View) m1411a2, false), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        this.f1586v = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, 500);
        LinearLayout m1411a3 = C0087T.m1411a((Context) this.f1565a);
        m1411a3.setPadding(0, 0, 0, m1595a(12.0f));
        m1411a3.addView(m1598a(), C0087T.m1408a());
        linearLayout.addView(m1602a("外屏侧栏颜色", this.f1586v, (View) m1411a3, false), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
    }

    /* renamed from: b */
    private C0087T.e m1637b(final String str) {
        C0087T.e eVar = new C0087T.e(this.f1565a, new String[]{"原生显示", "隐藏"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda31
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                C0104f.this.m1645b(str, i);
            }
        });
        eVar.m1442a(false);
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m1655d() {
        XposedService m970a = C0056L.m970a(8000L);
        final C0113o c0113o = m970a == null ? null : new C0113o(m970a);
        this.f1566b.post(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                C0104f.this.m1623a(c0113o);
            }
        });
        m1624a(m970a, c0113o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m1667f(String str) {
        if (this.f1565a.isDestroyed()) {
            return;
        }
        Toast.makeText(this.f1565a, str, 0).show();
        Runnable runnable = this.f1568d;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1645b(String str, int i) {
        C0113o c0113o = this.f1570f;
        if (c0113o == null) {
            return;
        }
        if (!c0113o.m1816f(str, i == 1)) {
            m1651c("保存失败");
            m1672h();
        } else {
            m1672h();
            this.f1572h.mo1687h();
            this.f1573i.mo1687h();
            m1673h("已保存，重新打开抖音后生效");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1641b(View view) {
        C0113o c0113o = this.f1570f;
        if (c0113o != null) {
            m1663e(c0113o.m1780a(this.f1567c, (Integer) null, (Integer) null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m1640b(DialogInterface dialogInterface, int i) {
        C0087T.m1417a(C0087T.m1400a(this.f1565a, "清除页面记录？").setMessage("只清除这个 App 保存的页面颜色和关联，保留 App 默认色。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda20
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                C0104f.this.m1607a(dialogInterface2, i2);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1649c(int i) {
        C0113o c0113o = this.f1570f;
        if (c0113o == null) {
            return;
        }
        if (!c0113o.m1779a(this.f1567c, i)) {
            this.f1590z.m1441a(this.f1570f.m1835l(this.f1567c));
            m1651c("写入失败");
        } else {
            this.f1590z.m1441a(i);
            this.f1572h.mo1687h();
            m1673h("已保存，切回 App 或开合一下即生效；个别 App 要重新打开");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m1671g(View view) {
        C0113o c0113o = this.f1570f;
        if (c0113o == null || c0113o.m1827i(this.f1567c) || !this.f1570f.m1803d(this.f1567c)) {
            return;
        }
        if (this.f1570f.m1814f(this.f1567c)) {
            m1673h("已恢复跟随全局");
        } else {
            m1651c("保存失败");
        }
        m1674i();
        this.f1573i.mo1687h();
    }

    /* renamed from: g */
    private static String m1670g(String str) {
        return "follow".equals(str) ? "跟随全局" : "black".equals(str) ? "黑色" : "白色";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static String m1638b(int i) {
        return String.format(Locale.ROOT, "#%06X", Integer.valueOf(i & 16777215));
    }

    /* renamed from: b */
    private void m1646b(final boolean z) {
        float f2;
        float f3;
        int[] iArr;
        if (this.f1570f == null) {
            return;
        }
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        m1411a.setPadding(m1595a(20.0f), m1595a(8.0f), m1595a(20.0f), m1595a(4.0f));
        int i = 600;
        TextView m1413a = C0087T.m1413a(this.f1565a, 15.0f, C0087T.f1345b, 600);
        m1413a.setGravity(17);
        m1413a.setText("背景预览  ·  时间 / 搜索");
        int i2 = -1;
        m1411a.addView(m1413a, new LinearLayout.LayoutParams(-1, m1595a(96.0f)));
        final EditText editText = new EditText(this.f1565a);
        C0087T.m1419a(editText);
        int i3 = 1;
        editText.setSingleLine(true);
        editText.setHint("#RRGGBB，例如 #F3F3F3");
        editText.setTextColor(C0087T.f1345b);
        editText.setTextSize(16.0f);
        editText.setInputType(4097);
        m1411a.addView(editText, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
        int[] iArr2 = {C0071P.m1225b(this.f1570f.f1684a, this.f1567c, z)};
        int i4 = 3;
        SeekBar[] seekBarArr = new SeekBar[3];
        int i5 = 0;
        int i6 = 0;
        while (true) {
            f2 = 12.0f;
            f3 = 1.0f;
            if (i6 >= i4) {
                break;
            }
            int i7 = i2;
            LinearLayout m1430c = C0087T.m1430c(this.f1565a);
            TextView m1413a2 = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1347c, i);
            m1413a2.setText(new String[]{"R", "G", "B"}[i6]);
            m1430c.addView(m1413a2, C0087T.m1409a(this.f1565a, 22.0f, 40.0f));
            SeekBar seekBar = new SeekBar(this.f1565a);
            seekBarArr[i6] = seekBar;
            C0087T.m1420a(seekBar);
            seekBarArr[i6].setMax(255);
            seekBarArr[i6].setContentDescription(new String[]{"红色", "绿色", "蓝色"}[i6]);
            m1430c.addView(seekBarArr[i6], new LinearLayout.LayoutParams(0, m1595a(40.0f), 1.0f));
            m1411a.addView(m1430c, C0087T.m1408a());
            i6++;
            i2 = i7;
            i3 = i3;
            i = 600;
            i4 = 3;
        }
        int i8 = i3;
        int i9 = i2;
        editText.addTextChangedListener(new a(iArr2, m1413a, seekBarArr));
        for (int i10 = 0; i10 < 3; i10++) {
            seekBarArr[i10].setOnSeekBarChangeListener(new b(editText, iArr2, 16 - (i10 * 8)));
        }
        if (z) {
            iArr = new int[6];
            iArr[0] = -16777216;
            iArr[i8] = -14869217;
            iArr[2] = -14668742;
            iArr[3] = -14404821;
            iArr[4] = -13292996;
            iArr[5] = -12964827;
        } else {
            iArr = new int[6];
            iArr[0] = -789517;
            iArr[i8] = i9;
            iArr[2] = -1511432;
            iArr[3] = -1445144;
            iArr[4] = -857355;
            iArr[5] = -594465;
        }
        LinearLayout m1430c2 = C0087T.m1430c(this.f1565a);
        int length = iArr.length;
        int i11 = 0;
        while (i11 < length) {
            final int i12 = iArr[i11];
            TextView m1413a3 = C0087T.m1413a(this.f1565a, f2, C0087T.f1345b, 600);
            m1413a3.setContentDescription(m1638b(i12));
            GradientDrawable m1404a = C0087T.m1404a(i12, m1595a(10.0f));
            m1404a.setStroke(Math.max(i8, m1595a(f3)), C0087T.f1357h);
            m1413a3.setBackground(m1404a);
            m1413a3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C0104f.m1611a(editText, i12, view);
                }
            });
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i5, m1595a(38.0f), f3);
            layoutParams.setMargins(m1595a(3.0f), m1595a(8.0f), m1595a(3.0f), m1595a(8.0f));
            m1430c2.addView(m1413a3, layoutParams);
            i11++;
            i5 = i5;
            f2 = 12.0f;
            f3 = 1.0f;
            i8 = 1;
        }
        m1411a.addView(m1430c2, C0087T.m1408a());
        editText.setText(m1638b(iArr2[i5]));
        final AlertDialog create = C0087T.m1400a(this.f1565a, (z ? "深色" : "浅色") + "模式背景").setView(m1411a).setNegativeButton("取消", (DialogInterface.OnClickListener) null).setNeutralButton("此模式恢复默认", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda33
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i13) {
                C0104f.this.m1634a(z, dialogInterface, i13);
            }
        }).setPositiveButton("保存", (DialogInterface.OnClickListener) null).create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda34
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                C0104f.this.m1605a(create, editText, z, dialogInterface);
            }
        });
        C0087T.m1417a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1650c(View view) {
        m1660e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m1652c(boolean z) {
        XposedService m975c = C0056L.m975c();
        StringBuilder sb = new StringBuilder(z ? "Duo 适配已开启" : "Duo 适配已关闭");
        if (z && m975c != null && C0071P.f1186q.contains(this.f1567c) && !m975c.getScope().contains(this.f1567c)) {
            m975c.requestScope(Collections.singletonList(this.f1567c), new c(m975c));
            sb.append("，请在通知栏点「批准」作用域");
        }
        m1673h(sb.toString());
        m1624a(m975c, this.f1570f);
    }

    /* renamed from: e */
    private void m1663e(boolean z) {
        if (!z) {
            m1651c("配色保存失败");
        } else {
            m1675j();
            m1673h("侧栏背景配色已保存，按系统深浅模式生效");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m1662e(String str) {
        if (this.f1565a.isDestroyed()) {
            return;
        }
        Toast.makeText(this.f1565a, str, 1).show();
    }

    /* renamed from: d */
    private void m1658d(String str) {
        m1627a(str, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m1651c(final String str) {
        this.f1566b.post(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                C0104f.this.m1662e(str);
            }
        });
    }

    /* renamed from: a */
    private void m1618a(LinearLayout linearLayout, ImageView imageView, String str, TextView textView) {
        LinearLayout m1430c = C0087T.m1430c(this.f1565a);
        C0087T.m1418a(m1430c, 26.0f);
        m1430c.setPadding(m1595a(18.0f), m1595a(16.0f), m1595a(18.0f), m1595a(16.0f));
        m1430c.addView(imageView, C0087T.m1409a(this.f1565a, 52.0f, 52.0f));
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        m1411a.setPadding(m1595a(14.0f), 0, m1595a(14.0f), 0);
        TextView m1413a = C0087T.m1413a(this.f1565a, 20.0f, C0087T.f1345b, 800);
        m1413a.setText(str);
        m1413a.setSingleLine(true);
        m1413a.setEllipsize(TextUtils.TruncateAt.END);
        m1411a.addView(m1413a);
        TextView m1413a2 = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, C0054J.f930m);
        m1413a2.setText("Duo 适配");
        m1413a2.setPadding(0, m1595a(4.0f), 0, 0);
        m1411a.addView(m1413a2);
        m1430c.addView(m1411a, C0087T.m1428b());
        textView.setBackground(C0087T.m1404a(C0087T.f1353f, m1595a(17.0f)));
        m1430c.addView(textView, new LinearLayout.LayoutParams(-2, m1595a(34.0f)));
        LinearLayout.LayoutParams m1429c = C0087T.m1429c();
        m1429c.leftMargin = m1595a(14.0f);
        m1430c.addView(this.f1571g, m1429c);
        m1616a(m1430c);
        linearLayout.addView(m1430c, C0087T.m1408a());
        linearLayout.addView(m1669g(), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        linearLayout.addView(m1647c(), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        this.f1584t = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, 500);
        LinearLayout m1430c2 = C0087T.m1430c(this.f1565a);
        m1430c2.setBaselineAligned(false);
        LinearLayout m1411a2 = C0087T.m1411a((Context) this.f1565a);
        LinearLayout m1411a3 = C0087T.m1411a((Context) this.f1565a);
        this.f1581q = m1411a3;
        LinearLayout[] linearLayoutArr = {m1411a2, m1411a3};
        for (int i = 0; i < 2; i++) {
            LinearLayout linearLayout2 = linearLayoutArr[i];
            C0087T.m1418a(linearLayout2, 24.0f);
            linearLayout2.setPadding(m1595a(16.0f), m1595a(16.0f), m1595a(16.0f), m1595a(16.0f));
        }
        this.f1572h = new e(m1411a2, "内屏", "inner", 11, true, true);
        this.f1573i = new e(this.f1581q, "外屏", "outer", 12, true, true);
        m1430c2.addView(m1411a2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.leftMargin = m1595a(12.0f);
        m1430c2.addView(this.f1581q, layoutParams);
        this.f1582r = m1430c2;
        linearLayout.addView(m1602a("顶部避让高度", this.f1584t, (View) m1430c2, true), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        this.f1585u = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, 500);
        LinearLayout m1411a4 = C0087T.m1411a((Context) this.f1565a);
        C0087T.m1418a(m1411a4, 24.0f);
        m1411a4.setPadding(m1595a(16.0f), m1595a(16.0f), m1595a(16.0f), m1595a(16.0f));
        this.f1574j = new d(m1411a4, true);
        linearLayout.addView(m1602a("外屏页面缩放", this.f1585u, (View) m1411a4, false), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        this.f1586v = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, 500);
        LinearLayout m1411a5 = C0087T.m1411a((Context) this.f1565a);
        m1411a5.setPadding(0, m1595a(4.0f), 0, m1595a(8.0f));
        TextView m1413a3 = C0087T.m1413a(this.f1565a, 14.0f, C0087T.f1345b, 600);
        m1413a3.setText("配色");
        m1411a5.addView(m1413a3);
        m1411a5.addView(m1598a(), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 10.0f));
        linearLayout.addView(m1602a("外屏侧栏颜色", this.f1586v, (View) m1411a5, false), C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
    }

    /* renamed from: a */
    private View m1600a(boolean z) {
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        C0087T.m1418a(m1411a, z ? 26.0f : 28.0f);
        m1411a.setPadding(m1595a(18.0f), m1595a(6.0f), m1595a(18.0f), m1595a(6.0f));
        LinearLayout m1430c = C0087T.m1430c(this.f1565a);
        m1430c.setMinimumHeight(m1595a(58.0f));
        TextView m1413a = C0087T.m1413a(this.f1565a, 15.0f, C0087T.f1345b, 600);
        m1413a.setText("画幅切换");
        m1430c.addView(m1413a, C0087T.m1428b());
        Activity activity = this.f1565a;
        final ImageView m1407a = C0087T.m1407a(activity, C0087T.m1403a(activity, 5, C0087T.f1349d, 3.0f, false, 12.0f));
        m1430c.addView(m1407a, C0087T.m1409a(this.f1565a, 12.0f, 12.0f));
        m1411a.addView(m1430c);
        final LinearLayout m1411a2 = C0087T.m1411a((Context) this.f1565a);
        m1411a2.setPadding(0, 0, 0, m1595a(12.0f));
        TextView m1413a2 = C0087T.m1413a(this.f1565a, 13.0f, C0087T.f1347c, 600);
        m1413a2.setText("外屏");
        m1411a2.addView(m1413a2);
        C0087T.e m1603a = m1603a("outer");
        this.f1558A = m1603a;
        m1411a2.addView(m1603a.f1407a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 10.0f));
        TextView m1413a3 = C0087T.m1413a(this.f1565a, 13.0f, C0087T.f1347c, 600);
        m1413a3.setText("内屏");
        m1411a2.addView(m1413a3, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 16.0f));
        C0087T.e m1603a2 = m1603a("inner");
        this.f1559B = m1603a2;
        m1411a2.addView(m1603a2.f1407a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 10.0f));
        TextView m1413a4 = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1347c, C0054J.f930m);
        m1413a4.setText("仅在竖着拿手机、抖音的 Duo 适配关闭时生效。拉满会裁上下，完整显示会留边；横屏、横视频和直播保持原样。首次需在 LSPosed 的 MiDuo 作用域勾选抖音，再重新打开抖音。");
        m1411a2.addView(m1413a4, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 10.0f));
        m1411a2.setVisibility(8);
        m1411a.addView(m1411a2);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.m1617a(m1411a2, m1407a, view);
            }
        });
        return m1411a;
    }

    /* renamed from: b */
    private void m1639b() {
        String str;
        final ArrayList arrayList = new ArrayList();
        for (String str2 : this.f1570f.f1684a.getAll().keySet()) {
            if (!str2.startsWith("_") && str2.endsWith("/railPalette")) {
                String substring = str2.substring(0, str2.length() - 12);
                if (!substring.equals(this.f1567c)) {
                    arrayList.add(substring);
                }
            }
        }
        Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            m1673h("还没有其它已配色软件");
            return;
        }
        String[] strArr = new String[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            String str3 = (String) arrayList.get(i);
            try {
                str = this.f1565a.getPackageManager().getApplicationLabel(this.f1565a.getPackageManager().getApplicationInfo(str3, 0)).toString();
            } catch (PackageManager.NameNotFoundException e2) {
                str = str3;
            }
            strArr[i] = str + "\n" + str3;
        }
        C0087T.m1417a(C0087T.m1401a(this.f1565a, "复制其他 App 的深浅配色", strArr, new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                C0104f.this.m1629a(arrayList, dialogInterface, i2);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1617a(LinearLayout linearLayout, ImageView imageView, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* renamed from: a */
    private C0087T.e m1603a(final String str) {
        C0087T.e eVar = new C0087T.e(this.f1565a, new String[]{"裁切拉满", "完整显示"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda17
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                C0104f.this.m1626a(str, i);
            }
        });
        eVar.m1442a(false);
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1626a(String str, int i) {
        if (this.f1570f == null) {
            return;
        }
        C0087T.e eVar = "inner".equals(str) ? this.f1559B : this.f1558A;
        if (!this.f1570f.m1811e(str, i == 1)) {
            eVar.m1441a(this.f1570f.m1778a(str) ? 1 : 0);
            m1651c("写入失败");
        } else {
            eVar.m1441a(i);
            m1673h("已保存，切回抖音后生效");
        }
    }

    /* renamed from: a */
    private View m1598a() {
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        this.f1562E = m1653d(false);
        this.f1563F = m1653d(true);
        m1411a.addView(this.f1562E, C0087T.m1408a());
        m1411a.addView(this.f1563F, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
        TextView m1415a = C0087T.m1415a((Context) this.f1565a, "复制其他 App 的深浅配色", false, 48.0f);
        this.f1564G = m1415a;
        m1415a.setEnabled(false);
        this.f1564G.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1608a(view);
            }
        });
        m1411a.addView(this.f1564G, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
        TextView m1415a2 = C0087T.m1415a((Context) this.f1565a, "恢复默认深浅配色", false, 48.0f);
        m1415a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1641b(view);
            }
        });
        m1411a.addView(m1415a2, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
        TextView m1415a3 = C0087T.m1415a((Context) this.f1565a, "管理已保存的页面颜色", false, 48.0f);
        m1415a3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1650c(view);
            }
        });
        m1411a.addView(m1415a3, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
        TextView m1415a4 = C0087T.m1415a((Context) this.f1565a, "导出这个 App 的颜色配置", false, 48.0f);
        m1415a4.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1657d(view);
            }
        });
        m1411a.addView(m1415a4, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
        TextView m1413a = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, C0054J.f930m);
        m1413a.setText("原白黑设置（仅未自定义的模式生效）");
        m1411a.addView(m1413a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 4.0f));
        C0087T.e eVar = new C0087T.e(this.f1565a, new String[]{"跟随全局", "白色", "黑色"}, new int[]{-5329230, -1, -14869217}, new IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda25
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                C0104f.this.m1656d(i);
            }
        });
        this.f1589y = eVar;
        eVar.m1442a(false);
        m1411a.addView(this.f1589y.f1407a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
        TextView m1413a2 = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, C0054J.f930m);
        this.f1561D = m1413a2;
        m1413a2.setLineSpacing(0.0f, 1.3f);
        m1411a.addView(this.f1561D, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 10.0f));
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1608a(View view) {
        m1639b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1630a(ArrayList arrayList, Bundle bundle, Bundle bundle2, Bundle bundle3, DialogInterface dialogInterface, int i) {
        String str = (String) arrayList.get(i);
        final boolean startsWith = str.startsWith("dark/");
        final int i2 = bundle.getInt(str);
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : bundle2.keySet()) {
            if (str2.startsWith(startsWith ? "dark/" : "light/") && bundle2.getInt(str2) == i2) {
                arrayList2.add(str2);
            }
        }
        Collections.sort(arrayList2);
        StringBuilder sb = new StringBuilder("修改会同时影响这组颜色关联的 " + arrayList2.size() + " 个页面，仅影响本 App 的" + (startsWith ? "深色" : "浅色") + "模式。");
        int i3 = 0;
        int i4 = 0;
        while (i4 < arrayList2.size()) {
            StringBuilder append = sb.append("\n");
            Bundle bundle4 = bundle3.getBundle("labels");
            String str3 = (String) arrayList2.get(i4);
            i4++;
            append.append(bundle4.getString(str3, "页面 " + i4));
        }
        Integer m1774a = this.f1570f.m1774a(this.f1567c, startsWith);
        final boolean z = m1774a != null && m1774a.intValue() == i2;
        if (z) {
            sb.append("\n这也是 App 默认色，修改后默认色一起改变；删除仅移除页面关联，保留默认色。");
        }
        int size = arrayList2.size();
        String[] strArr = new String[size];
        while (i3 < size) {
            int i5 = i3 + 1;
            strArr[i3] = bundle3.getBundle("labels").getString((String) arrayList2.get(i3), "页面 " + i5);
            i3 = i5;
        }
        C0087T.m1417a(C0087T.m1400a(this.f1565a, m1638b(i2)).setMessage(sb.toString()).setView(m1599a(arrayList2, strArr)).setPositiveButton("修改颜色", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i6) {
                C0104f.this.m1633a(startsWith, i2, z, dialogInterface2, i6);
            }
        }).setNeutralButton("删除这组记录", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i6) {
                C0104f.this.m1631a(startsWith, i2, dialogInterface2, i6);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1633a(boolean z, int i, boolean z2, DialogInterface dialogInterface, int i2) {
        m1632a(z, i, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1631a(boolean z, int i, DialogInterface dialogInterface, int i2) {
        if (this.f1570f.m1782a(this.f1567c, z, i, null)) {
            m1673h("记录已删除，这些页面恢复使用 App 默认色");
        } else {
            m1651c("删除失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1607a(DialogInterface dialogInterface, int i) {
        if (this.f1570f.m1857s(this.f1567c)) {
            m1673h("已清除页面记录，App 默认色保留");
        } else {
            m1651c("清除失败");
        }
    }

    /* renamed from: a */
    private View m1599a(List<String> list, String[] strArr) {
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        m1411a.setPadding(m1595a(20.0f), 0, m1595a(20.0f), 0);
        final int i = 0;
        while (i < strArr.length) {
            final TextView m1415a = C0087T.m1415a((Context) this.f1565a, strArr[i] + " · 修改备注", false, 44.0f);
            m1415a.setSingleLine(false);
            final List<String> list2 = list;
            final String[] strArr2 = strArr;
            m1415a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda27
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C0104f.this.m1636a(strArr2, i, list2, m1415a, view);
                }
            });
            m1411a.addView(m1415a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 8.0f));
            i++;
            strArr = strArr2;
            list = list2;
        }
        ScrollView scrollView = new ScrollView(this.f1565a);
        scrollView.addView(m1411a);
        return scrollView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1636a(final String[] strArr, final int i, final List list, final TextView textView, View view) {
        final EditText editText = new EditText(this.f1565a);
        C0087T.m1419a(editText);
        editText.setText(strArr[i]);
        C0087T.m1417a(C0087T.m1400a(this.f1565a, "给页面加备注").setView(C0087T.m1427b(editText)).setPositiveButton("保存", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                C0104f.this.m1612a(editText, list, i, strArr, textView, dialogInterface, i2);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1612a(EditText editText, List list, int i, String[] strArr, TextView textView, DialogInterface dialogInterface, int i2) {
        String trim = editText.getText().toString().trim();
        if (trim.isEmpty()) {
            return;
        }
        if (!this.f1570f.f1684a.edit().putString(this.f1567c + "/pageColors/_label/" + ((String) list.get(i)), trim).commit()) {
            m1651c("备注保存失败");
        } else {
            strArr[i] = trim;
            textView.setText(trim + " · 修改备注");
        }
    }

    /* renamed from: a */
    private void m1632a(final boolean z, final int i, final boolean z2) {
        final EditText editText = new EditText(this.f1565a);
        C0087T.m1419a(editText);
        editText.setSingleLine(true);
        editText.setText(m1638b(i));
        editText.setSelectAllOnFocus(true);
        editText.setInputType(4097);
        final AlertDialog create = C0087T.m1400a(this.f1565a, "修改这组页面的颜色").setMessage("输入六位颜色，例如 #F3F3F3。相同颜色会合并使用。").setView(C0087T.m1427b(editText)).setPositiveButton("保存", (DialogInterface.OnClickListener) null).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                C0104f.this.m1606a(create, editText, z2, z, i, dialogInterface);
            }
        });
        C0087T.m1417a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1606a(final AlertDialog alertDialog, final EditText editText, final boolean z, final boolean z2, final int i, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1614a(editText, z, z2, i, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1614a(EditText editText, boolean z, boolean z2, int i, AlertDialog alertDialog, View view) {
        try {
            Integer m1257p = C0071P.m1257p(editText.getText().toString().trim());
            if (m1257p == null) {
                editText.setError("请输入六位颜色");
                return;
            }
            if (z) {
                Integer m1774a = this.f1570f.m1774a(this.f1567c, false);
                Integer m1774a2 = this.f1570f.m1774a(this.f1567c, true);
                C0113o c0113o = this.f1570f;
                String str = this.f1567c;
                if (!z2) {
                    m1774a = m1257p;
                }
                if (z2) {
                    m1774a2 = m1257p;
                }
                if (!c0113o.m1780a(str, m1774a, m1774a2)) {
                    m1651c("默认色保存失败");
                    return;
                }
            }
            if (!this.f1570f.m1782a(this.f1567c, z2, i, m1257p)) {
                m1651c("页面颜色保存失败");
                return;
            }
            m1675j();
            m1673h("这一组页面颜色已修改");
            alertDialog.dismiss();
        } catch (IllegalArgumentException e2) {
            editText.setError("请输入六位颜色");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1635a(boolean z, View view) {
        m1646b(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1611a(EditText editText, int i, View view) {
        editText.setText(m1638b(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1634a(boolean z, DialogInterface dialogInterface, int i) {
        C0113o c0113o = this.f1570f;
        String str = this.f1567c;
        m1663e(c0113o.m1780a(str, z ? c0113o.m1774a(str, false) : null, z ? null : this.f1570f.m1774a(this.f1567c, true)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1605a(final AlertDialog alertDialog, final EditText editText, final boolean z, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0104f.this.m1613a(editText, z, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1613a(EditText editText, boolean z, AlertDialog alertDialog, View view) {
        try {
            String trim = editText.getText().toString().trim();
            if (trim.matches("#?[0-9a-fA-F]{6}")) {
                Integer m1257p = C0071P.m1257p(trim);
                C0113o c0113o = this.f1570f;
                String str = this.f1567c;
                Integer m1774a = z ? c0113o.m1774a(str, false) : m1257p;
                if (!z) {
                    m1257p = this.f1570f.m1774a(this.f1567c, true);
                }
                boolean m1780a = c0113o.m1780a(str, m1774a, m1257p);
                m1663e(m1780a);
                if (m1780a) {
                    alertDialog.dismiss();
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("请输入六位 HEX");
        } catch (IllegalArgumentException e2) {
            editText.setError(e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1629a(ArrayList arrayList, DialogInterface dialogInterface, int i) {
        m1663e(this.f1570f.m1781a(this.f1567c, (String) arrayList.get(i)));
    }

    /* renamed from: a */
    private LinearLayout m1601a(LinearLayout linearLayout, float f2) {
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        C0087T.m1418a(m1411a, f2);
        linearLayout.addView(m1411a, C0087T.m1410a(C0087T.m1408a(), this.f1565a, 12.0f));
        return m1411a;
    }

    /* renamed from: a */
    private void m1616a(LinearLayout linearLayout) {
        TextView m1413a = C0087T.m1413a(this.f1565a, 12.0f, C0087T.f1349d, C0054J.f930m);
        this.f1587w = m1413a;
        m1413a.setPadding(m1595a(18.0f), 0, m1595a(14.0f), m1595a(12.0f));
        this.f1587w.setVisibility(8);
        linearLayout.addView(this.f1587w);
    }

    /* renamed from: a */
    private LinearLayout m1602a(String str, TextView textView, final View view, boolean z) {
        LinearLayout m1411a = C0087T.m1411a((Context) this.f1565a);
        C0087T.m1418a(m1411a, 24.0f);
        m1411a.setPadding(m1595a(16.0f), 0, m1595a(14.0f), 0);
        LinearLayout m1430c = C0087T.m1430c(this.f1565a);
        m1430c.setGravity(16);
        m1430c.setMinimumHeight(m1595a(58.0f));
        TextView m1413a = C0087T.m1413a(this.f1565a, 15.0f, C0087T.f1345b, 600);
        m1413a.setText(str);
        m1430c.addView(m1413a);
        textView.setGravity(8388613);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        m1430c.addView(textView, C0087T.m1428b());
        Activity activity = this.f1565a;
        final ImageView m1407a = C0087T.m1407a(activity, C0087T.m1403a(activity, 5, C0087T.f1349d, 3.0f, false, 12.0f));
        m1430c.addView(m1407a, C0087T.m1409a(this.f1565a, 12.0f, 12.0f));
        if (z) {
            this.f1583s = m1407a;
        }
        m1411a.addView(m1430c);
        view.setVisibility(8);
        m1411a.addView(view);
        m1430c.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C0104f.m1609a(view, m1407a, view2);
            }
        });
        return m1411a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m1609a(View view, ImageView imageView, View view2) {
        boolean z = view.getVisibility() != 0;
        view.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1623a(C0113o c0113o) {
        if (this.f1565a.isDestroyed()) {
            return;
        }
        this.f1570f = c0113o;
        if (c0113o == null) {
            m1651c("未连接 LSPosed，无法读写配置。请确认模块已在 LSPosed 中启用。");
            return;
        }
        boolean contains = C0071P.f1171i.contains(this.f1567c);
        this.f1571g.setChecked(this.f1570f.m1827i(this.f1567c));
        this.f1571g.setEnabled(!contains);
        TextView textView = this.f1587w;
        if (textView != null) {
            textView.setVisibility(contains ? 0 : 8);
            if (contains) {
                this.f1587w.setText(MainActivity.m1116h(this.f1567c));
            }
        }
        this.f1571g.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda14
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                C0104f.this.m1610a(compoundButton, z);
            }
        });
        this.f1590z.m1441a(this.f1570f.m1835l(this.f1567c));
        this.f1590z.m1442a(true);
        C0087T.e eVar = this.f1558A;
        if (eVar != null) {
            eVar.m1441a(this.f1570f.m1778a("outer") ? 1 : 0);
            this.f1558A.m1442a(true);
            this.f1559B.m1441a(this.f1570f.m1778a("inner") ? 1 : 0);
            this.f1559B.m1442a(true);
        }
        m1672h();
        m1674i();
        this.f1572h.m1689a();
        this.f1573i.m1689a();
        this.f1574j.m1689a();
        String m1848p = this.f1570f.m1848p(this.f1567c);
        this.f1589y.m1441a(m1848p != null ? "black".equals(m1848p) ? 2 : 1 : 0);
        this.f1589y.m1442a(true);
        m1675j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1610a(CompoundButton compoundButton, boolean z) {
        m1668f(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1627a(String str, String str2) {
        String str3;
        if (this.f1570f.m1827i(this.f1567c)) {
            str3 = "，该 App 下次打开时生效";
        } else if ("outer".equals(str2)) {
            str3 = this.f1570f.m1842n(this.f1567c) ? "；外屏隐藏顶栏时使用，切回 App 后生效，个别 App 要重新打开" : "；Duo 适配开启后生效";
        } else if ("inner".equals(str2)) {
            str3 = "com.ss.android.ugc.aweme".equals(this.f1567c) ? "；隐藏抖音内屏顶栏时使用，重新打开抖音后生效" : "；内屏不受此项影响，需开启 Duo 后生效";
        } else if (this.f1570f.m1842n(this.f1567c)) {
            str3 = "；外屏隐藏顶栏时使用，切回 App 后生效，个别 App 要重新打开";
        } else if ("com.ss.android.ugc.aweme".equals(this.f1567c)) {
            str3 = "；隐藏顶栏时使用，重新打开抖音后生效";
        } else {
            str3 = "；Duo 适配开启后生效";
        }
        m1673h(str + str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1624a(XposedService xposedService, C0113o c0113o) {
        String str;
        final StringBuilder sb = new StringBuilder();
        if (xposedService != null) {
            try {
                StringBuilder append = sb.append("LSPosed 作用域：");
                if (xposedService.getScope().contains(this.f1567c)) {
                    str = "已包含";
                } else if (C0071P.f1186q.contains(this.f1567c)) {
                    str = "未包含（开启 Duo 时会自动申请）";
                } else {
                    str = "无需单独勾选";
                }
                append.append(str).append('\n');
            } catch (Throwable th) {
                sb.append("LSPosed 作用域：读取失败 ").append(th).append('\n');
            }
        }
        if (c0113o != null) {
            sb.append("9:16 比例：").append(c0113o.m1827i(this.f1567c) ? "开启（MiDuo 运行时判断，不写入系统）" : "关闭（原生比例）").append('\n');
        }
        sb.append("包名：").append(this.f1567c);
        this.f1566b.post(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                C0104f.this.m1628a(sb);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m1628a(StringBuilder sb) {
        this.f1560C.setText(sb);
    }
}
