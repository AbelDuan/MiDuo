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
import dev.duo.hookprobe.f;
import dev.duo.hookprobe.T;
import io.github.libxposed.service.XposedService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.function.IntConsumer;

/* renamed from: dev.duo.hookprobe.f, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class f {
    private T.e A;
    private T.e B;
    private TextView C;
    private TextView D;
    private TextView E;
    private TextView F;
    private TextView G;
    private final Activity a;
    private final Handler b = new Handler(Looper.getMainLooper());
    private final String c;
    private final Runnable d;
    final ScrollView e;
    private o f;
    private Switch g;
    private e h;
    private e i;
    private d j;
    private LinearLayout k;
    private TextView l;
    private T.e m;
    private Switch n;
    private TextView o;
    private LinearLayout p;
    private LinearLayout q;
    private LinearLayout r;
    private ImageView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private boolean x;
    private T.e y;
    private T.e z;

    /* renamed from: dev.duo.hookprobe.f$a */
    class a implements TextWatcher {
        final /* synthetic */ int[] a;
        final /* synthetic */ TextView b;
        final /* synthetic */ SeekBar[] c;

        a(int[] iArr, TextView textView, SeekBar[] seekBarArr) {
            this.a = iArr;
            this.b = textView;
            this.c = seekBarArr;
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
                this.a[0] = dev.duo.hookprobe.P.p(trim).intValue();
                this.b.setBackground(T.a(this.a[0], f.this.a(14.0f)));
                this.b.setTextColor(Color.luminance(this.a[0]) > 0.45f ? -13618632 : -1);
                for (int i4 = 0; i4 < 3; i4++) {
                    this.c[i4].setProgress((this.a[0] >> (16 - (i4 * 8))) & 255);
                }
            }
        }
    }

    /* renamed from: dev.duo.hookprobe.f$b */
    class b implements SeekBar.OnSeekBarChangeListener {
        final /* synthetic */ EditText a;
        final /* synthetic */ int[] b;
        final /* synthetic */ int c;

        b(EditText editText, int[] iArr, int i) {
            this.a = editText;
            this.b = iArr;
            this.c = i;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                EditText editText = this.a;
                int i2 = this.b[0];
                int i3 = this.c;
                editText.setText(f.b((i << i3) | (i2 & (~(255 << i3)))));
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
        final /* synthetic */ XposedService a;

        c(XposedService xposedService) {
            this.a = xposedService;
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestApproved(List<String> list) {
            f.this.h("LSPosed 已批准作用域，该 App 下次打开时生效");
            f c0012f = f.this;
            c0012f.a(this.a, c0012f.f);
        }

        @Override // io.github.libxposed.service.XposedService.OnScopeEventListener
        public void onScopeRequestFailed(String str) {
            f.this.c("LSPosed 作用域请求失败：" + str);
        }
    }

    /* renamed from: dev.duo.hookprobe.f$d */
    private final class d extends AbstractC0002f {
        d(LinearLayout linearLayout, boolean z) {
            super(linearLayout, "com.tencent.mm".equals(f.this.c) ? "内屏和外屏" : "外屏（合上时）", "%", 12, 60, 100, false, z);
        }

        private String j() {
            return "com.tencent.mm".equals(f.this.c) ? "微信" : "外屏";
        }

        @Override // f.AbstractC0002f
        void a(int i) {
            if (!f.this.f.b(f.this.c, i)) {
                f.this.c("保存失败");
            } else {
                h();
                f.this.h(j() + "缩放已设为 " + P.b(i) + "%");
            }
        }

        @Override // f.AbstractC0002f
        boolean b() {
            return f.this.f.g(f.this.c);
        }

        @Override // f.AbstractC0002f
        int c() {
            return f.this.f.o(f.this.c);
        }

        @Override // f.AbstractC0002f
        boolean d() {
            return f.this.f.e(f.this.c);
        }

        @Override // f.AbstractC0002f
        String e() {
            return f.this.f.i(f.this.c) ? "跟随全局 " + f.this.f.p() + "%" : "原始大小 100%";
        }

        @Override // f.AbstractC0002f
        void f() {
            h();
            f.this.h(j() + "缩放已恢复：" + e());
        }
    }

    /* renamed from: dev.duo.hookprobe.f$e */
    private final class e extends AbstractC0002f {
        final String i;

        e(LinearLayout linearLayout, String str, String str2, int i, boolean z, boolean z2) {
            super(linearLayout, str, "px", i, 1, 126, !z, z2);
            this.i = str2;
        }

        private int j() {
            return (!"outer".equals(this.i) || f.this.f.i(f.this.c)) ? f.this.f.j(this.i) : f.this.f.q();
        }

        private String k() {
            return "inner".equals(this.i) ? "内屏" : "外屏";
        }

        @Override // f.AbstractC0002f
        void a(int i) {
            try {
                int a = f.this.f.a(f.this.c, this.i, i);
                h();
                f.this.a(k() + "已设为 " + a + "px", this.i);
            } catch (Throwable th) {
                f.this.c("保存失败：" + th);
            }
        }

        @Override // f.AbstractC0002f
        boolean b() {
            return f.this.f.c(f.this.c, this.i);
        }

        @Override // f.AbstractC0002f
        int c() {
            return (!"outer".equals(this.i) || f.this.f.i(f.this.c)) ? f.this.f.e(f.this.c, this.i) : P.e(f.this.f.a, f.this.c);
        }

        @Override // f.AbstractC0002f
        boolean d() {
            return f.this.f.b(f.this.c, this.i);
        }

        @Override // f.AbstractC0002f
        String e() {
            return "跟随全局 " + j() + "px";
        }

        @Override // f.AbstractC0002f
        void f() {
            f.this.h.h();
            f.this.i.h();
            f.this.a(k() + "已跟随全局 " + j() + "px", this.i);
        }

        @Override // f.AbstractC0002f
        void h() {
            super.h();
            boolean z = !"outer".equals(this.i) || f.this.f.i(f.this.c) ? !(!("com.ss.android.ugc.aweme".equals(f.this.c) && !f.this.f.i(f.this.c) && "inner".equals(this.i)) ? "inner".equals(this.i) && f.this.f.k(f.this.c) : !f.this.f.b("inner")) : !f.this.f.n(f.this.c);
            this.f.setEnabled(!z);
            this.f.setAlpha(z ? 0.45f : 1.0f);
            if (z) {
                this.b.setEnabled(false);
                T.a(this.b, T.x);
                this.c.setTextColor(T.e);
                this.d.setText("已用原生顶栏");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dev.duo.hookprobe.f$f, reason: collision with other inner class name */
    abstract class AbstractC0002f {
        final int a;
        final SeekBar b;
        final TextView c;
        final TextView d;
        final ImageView e;
        final LinearLayout f;
        final LinearLayout g;

        /* renamed from: dev.duo.hookprobe.f$f$a */
        class a implements SeekBar.OnSeekBarChangeListener {
            a() {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    AbstractC0002f abstractC0002f = AbstractC0002f.this;
                    abstractC0002f.c.setText(String.valueOf(i + abstractC0002f.a));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                AbstractC0002f.this.a(seekBar.getProgress() + AbstractC0002f.this.a);
            }
        }

        AbstractC0002f(LinearLayout linearLayout, String str, String str2, int i, int i2, int i3, boolean z, boolean z2) {
            this.a = i2;
            LinearLayout a2 = T.a((Context) f.this.a);
            this.g = a2;
            if (!z2) {
                a2.setPadding(0, f.this.a(14.0f), 0, f.this.a(14.0f));
            }
            if (z) {
                View view = new View(f.this.a);
                view.setBackgroundColor(T.h);
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, f.this.a(0.5f))));
            }
            LinearLayout c = T.c(f.this.a);
            c.addView(T.a(f.this.a, T.a(f.this.a, i, T.d, 1.8f, false, 20.0f)), T.a(f.this.a, 20.0f, 20.0f));
            TextView a3 = T.a(f.this.a, z2 ? 14.0f : 15.0f, T.b_v, 600);
            a3.setText(str);
            a3.setPadding(f.this.a(z2 ? 12.0f : 10.0f), 0, 0, 0);
            c.addView(a3, T.b());
            TextView a4 = T.a(f.this.a, 22.0f, T.b_v, 800);
            this.c = a4;
            a4.setFontFeatureSettings("tnum");
            c.addView(a4);
            TextView a5 = T.a(f.this.a, 13.0f, T.d, 600);
            a5.setText(str2);
            a5.setPadding(f.this.a(2.0f), f.this.a(6.0f), 0, 0);
            c.addView(a5);
            a2.addView(c);
            SeekBar seekBar = new SeekBar(f.this.a);
            this.b = seekBar;
            T.a(seekBar);
            seekBar.setMax(i3 - i2);
            seekBar.setEnabled(false);
            seekBar.setContentDescription(str);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, f.this.a(44.0f));
            layoutParams.leftMargin = -f.this.a(17.0f);
            layoutParams.rightMargin = -f.this.a(17.0f);
            a2.addView(seekBar, layoutParams);
            LinearLayout c2 = T.c(f.this.a);
            this.f = c2;
            c2.setPadding(f.this.a(7.0f), 0, f.this.a(12.0f), 0);
            FrameLayout frameLayout = new FrameLayout(f.this.a);
            ImageView a6 = T.a(f.this.a, T.a(f.this.a, 6, T.a ? -13882322 : T.b_v, 4.0f, false, 10.0f));
            this.e = a6;
            frameLayout.addView(a6, new FrameLayout.LayoutParams(f.this.a(10.0f), f.this.a(10.0f), 17));
            c2.addView(frameLayout, T.a(f.this.a, 16.0f, 16.0f));
            TextView a7 = T.a(f.this.a, 12.0f, T.c, 600);
            this.d = a7;
            a7.setPadding(f.this.a(6.0f), 0, 0, 0);
            c2.addView(a7);
            c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$f$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    f.AbstractC0002f.this.a(view2);
                }
            });
            a2.addView(c2, new LinearLayout.LayoutParams(-2, f.this.a(32.0f)));
            linearLayout.addView(a2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            i();
        }

        abstract void a(int i);

        abstract boolean b();

        abstract int c();

        abstract boolean d();

        abstract String e();

        abstract void f();

        boolean g() {
            return !d();
        }

        void h() {
            boolean g = g();
            this.b.setProgress(c() - this.a);
            this.b.setEnabled(!g);
            T.a(this.b, g ? T.x : T.k);
            this.c.setText(String.valueOf(c()));
            this.c.setTextColor(g ? T.e : T.b_v);
            this.d.setText(e());
            this.d.setTextColor(g ? T.o : T.c);
            GradientDrawable a2 = T.a(g ? T.n : 0, f.this.a(16.0f));
            if (!g) {
                a2.setStroke(Math.max(1, f.this.a(1.0f)), 1299609216);
            }
            this.f.setBackground(a2);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(g ? T.o : 0);
            if (!g) {
                gradientDrawable.setStroke(Math.max(1, f.this.a(1.5f)), 1937143424);
            }
            ((View) this.e.getParent()).setBackground(gradientDrawable);
            this.e.setVisibility(g ? 0 : 4);
            f.this.l();
        }

        void i() {
            if (f.this.f == null) {
                return;
            }
            if (g()) {
                a(c());
            } else if (b()) {
                f();
            } else {
                f.this.c("写入失败");
            }
        }

        void a() {
            h();
            this.b.setOnSeekBarChangeListener(new a());
        }
    }

    f(Activity activity, String str, String str2, Runnable runnable, boolean z, int i, int i2, int i3, int i4, Runnable runnable2) {
        this.a = activity;
        this.c = str;
        this.d = runnable2;
        ScrollView scrollView = new ScrollView(activity);
        this.e = scrollView;
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        LinearLayout a2 = T.a((Context) activity);
        a2.setPadding(i, i2, i, i4);
        scrollView.addView(a2);
        Switch r0 = new Switch(activity);
        this.g = r0;
        T.a(r0);
        this.g.setContentDescription("Duo 适配");
        this.g.setEnabled(false);
        TextView a3 = T.a(activity, z ? 13.0f : 14.0f, T.b_v, 600);
        a3.setText("恢复默认");
        a3.setGravity(17);
        a3.setPadding(a(z ? 14.0f : 16.0f), 0, a(z ? 14.0f : 16.0f), 0);
        a3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.e(view);
            }
        });
        ImageView imageView = new ImageView(activity);
        try {
            imageView.setImageDrawable(activity.getPackageManager().getApplicationIcon(str));
        } catch (Exception e2) {
        }
        String str3 = str2 == null ? str : str2;
        if (z) {
            a(a2, imageView, str3, a3);
        } else {
            a(a2, imageView, str3, a3, runnable, i3);
        }
        if ("com.ss.android.ugc.aweme".equals(str)) {
            a2.addView(a(z), T.a(T.a(), activity, 12.0f));
        }
        LinearLayout a4 = T.a((Context) activity);
        a4.setPadding(a(10.0f), a(14.0f), a(10.0f), 0);
        LinearLayout c2 = T.c(activity);
        c2.setMinimumHeight(a(40.0f));
        TextView a5 = T.a(activity, 12.0f, T.c, 600);
        a5.setText("技术信息");
        c2.addView(a5);
        final ImageView a6 = T.a(activity, T.a(activity, 5, T.e, 3.0f, false, 11.0f));
        LinearLayout.LayoutParams a7 = T.a(activity, 11.0f, 11.0f);
        a7.leftMargin = a(4.0f);
        c2.addView(a6, a7);
        a4.addView(c2);
        TextView a8 = T.a(activity, 12.0f, T.d, J.m);
        this.C = a8;
        a8.setLineSpacing(0.0f, 1.4f);
        this.C.setVisibility(8);
        a4.addView(this.C);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.a(a6, view);
            }
        });
        a2.addView(a4);
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                f.this.d();
            }
        });
    }

    private View g() {
        LinearLayout a2 = T.a((Context) this.a);
        this.p = a2;
        T.a(a2, 24.0f);
        a2.setPadding(a(16.0f), a(14.0f), a(16.0f), a(14.0f));
        LinearLayout c2 = T.c(this.a);
        TextView a3 = T.a(this.a, 14.0f, T.b_v, 600);
        a3.setText("隐藏外屏原生状态栏");
        c2.addView(a3, T.b());
        Switch r2 = new Switch(this.a);
        this.n = r2;
        T.a(r2);
        this.n.setContentDescription("隐藏外屏原生状态栏");
        this.n.setEnabled(false);
        this.n.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                f.this.b(compoundButton, z);
            }
        });
        c2.addView(this.n);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.f(view);
            }
        });
        a2.addView(c2);
        TextView a4 = T.a(this.a, 12.0f, T.d, J.m);
        this.o = a4;
        a4.setPadding(0, a(8.0f), 0, a(4.0f));
        this.o.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.g(view);
            }
        });
        a2.addView(this.o);
        return a2;
    }

    private void h() {
        o c0021o;
        if (this.k == null || (c0021o = this.f) == null) {
            return;
        }
        boolean i = c0021o.i(this.c);
        this.k.setVisibility(i ? 8 : 0);
        this.z.a.setVisibility(i ? 0 : 8);
        this.l.setText(i ? "内屏原生顶栏" : "抖音内屏顶栏");
        this.m.a(this.f.b("inner") ? 1 : 0);
        this.m.a(!i);
    }

    private void i() {
        String str;
        o c0021o = this.f;
        if (c0021o == null) {
            return;
        }
        boolean i = c0021o.i(this.c);
        LinearLayout linearLayout = this.p;
        if (linearLayout != null) {
            linearLayout.setVisibility(i ? 8 : 0);
        }
        e eVar = this.i;
        if (eVar != null) {
            eVar.g.setVisibility((i || this.f.n(this.c)) ? 0 : 8);
            LinearLayout linearLayout2 = this.q;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(this.i.g.getVisibility());
            }
        }
        boolean z = true;
        this.x = true;
        Switch r2 = this.n;
        if (!i && !this.f.n(this.c)) {
            z = false;
        }
        r2.setChecked(z);
        this.x = false;
        this.n.setEnabled(!i);
        TextView textView = this.o;
        if (i) {
            str = "Duo 已隐藏外屏顶栏，关闭 Duo 后可单独设置";
        } else if (this.f.d(this.c)) {
            str = "已单独设置 · 点此恢复跟随全局";
        } else {
            str = "跟随全局 · 当前" + (this.f.n(this.c) ? "隐藏" : "原生显示");
        }
        textView.setText(str);
        this.o.setTextColor((i || !this.f.d(this.c)) ? T.d : T.b_v);
    }

    private void j() {
        int i = 0;
        while (i < 2) {
            boolean z = i == 1;
            TextView textView = z ? this.F : this.E;
            Integer a2 = this.f.a(this.c, z);
            int b2 = P.b(this.f.a, this.c, z);
            textView.setText((z ? "深色模式  " : "浅色模式  ") + b(b2) + (a2 == null ? " · 默认" : " · 自定义"));
            GradientDrawable a3 = T.a(b2, a(6.0f));
            a3.setStroke(Math.max(1, a(1.0f)), T.h);
            a3.setBounds(0, 0, a(22.0f), a(22.0f));
            textView.setCompoundDrawables(a3, null, null, null);
            textView.setCompoundDrawablePadding(a(10.0f));
            textView.setEnabled(true);
            i++;
        }
        this.G.setEnabled(true);
        boolean a4 = P.a(this.a);
        this.D.setText("当前系统：" + (a4 ? "深色" : "浅色") + "；" + (this.f.a(this.c, a4) == null ? "当前沿用原白黑设置。" : "当前自定义优先，原白黑设置暂不生效。") + ((this.f.i(this.c) && this.f.m()) ? "" : " Duo 开启后生效。") + " 仅调整应用右侧栏背景，字色按背景明暗适配；相同深浅配色共用数据，单独修改互不影响。");
        l();
    }

    private void k() {
        o c0021o = this.f;
        if (c0021o == null) {
            return;
        }
        if (this.A != null && (!c0021o.e("outer", true) || !this.f.e("inner", true))) {
            c("写入失败");
            return;
        }
        if ("com.ss.android.ugc.aweme".equals(this.c) && !this.f.f("inner", false)) {
            c("写入失败");
            return;
        }
        if (!this.f.f(this.c) || !this.f.a(this.c, 0) || !this.f.c(this.c, "inner") || !this.f.c(this.c, "outer") || !this.f.g(this.c) || !this.f.f(this.c, "follow") || !this.f.a(this.c, (Integer) null, (Integer) null)) {
            c("写入失败");
            return;
        }
        this.h.h();
        this.i.h();
        this.j.h();
        this.z.a(0);
        h();
        i();
        T.e eVar = this.A;
        if (eVar != null) {
            eVar.a(this.f.a("outer") ? 1 : 0);
            this.B.a(this.f.a("inner") ? 1 : 0);
        }
        this.y.a(0);
        j();
        if (this.A != null) {
            h("已恢复默认：外屏顶栏跟随全局，内屏顶栏原生显示；顶部高度和侧栏颜色跟随全局，缩放恢复默认，内外屏竖视频完整显示");
        } else {
            d("已恢复默认：顶栏、高度、缩放和侧栏颜色都跟随全局");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        TextView textView;
        String g;
        if (this.f == null || (textView = this.t) == null) {
            return;
        }
        textView.setText("内 " + this.h.c() + " · 外 " + this.i.c());
        this.u.setText(this.j.c() + "%");
        String p = this.f.p(this.c);
        boolean z = (this.f.a(this.c, false) == null && this.f.a(this.c, true) == null) ? false : true;
        TextView textView2 = this.v;
        if (z) {
            g = "已自定义";
        } else {
            if (p == null) {
                p = "follow";
            }
            g = g(p);
        }
        textView2.setText(g);
    }

    private View c() {
        LinearLayout a2 = T.a((Context) this.a);
        T.a(a2, 24.0f);
        a2.setPadding(a(16.0f), a(14.0f), a(16.0f), a(14.0f));
        TextView a3 = T.a(this.a, 14.0f, T.b_v, 600);
        a3.setText("内屏原生顶栏");
        this.l = a3;
        a2.addView(a3);
        T.e eVar = new T.e(this.a, new String[]{"跟随全局", "显示原生顶栏", "隐藏"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda36
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                f.this.c(i);
            }
        });
        this.z = eVar;
        eVar.a(false);
        a2.addView(this.z.a, T.a(T.a(), this.a, 10.0f));
        if ("com.ss.android.ugc.aweme".equals(this.c)) {
            this.k = T.a((Context) this.a);
            TextView a4 = T.a(this.a, 13.0f, T.c, 600);
            a4.setText("内屏");
            this.k.addView(a4, T.a(T.a(), this.a, 12.0f));
            T.e b2 = b("inner");
            this.m = b2;
            this.k.addView(b2.a, T.a(T.a(), this.a, 8.0f));
            TextView a5 = T.a(this.a, 12.0f, T.c, J.m);
            a5.setText("未开启 Duo 时生效：内屏横竖屏共用显隐和顶部空隙设置；隐藏后可调下方高度，修改后需重新打开抖音。顶部三个点保留。");
            this.k.addView(a5, T.a(T.a(), this.a, 10.0f));
            a2.addView(this.k, T.a(T.a(), this.a, 10.0f));
            this.z.a.setVisibility(8);
            a3.setText("抖音内屏顶栏");
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        ColorConfigActivity.a(this.a, this.c, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        if (this.n.isEnabled()) {
            this.n.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(CompoundButton compoundButton, boolean z) {
        o c0021o;
        if (this.x || (c0021o = this.f) == null) {
            return;
        }
        if (c0021o.h(this.c, z)) {
            h("已保存，切回 App 后生效；个别 App 要重新打开");
            if (z && !this.f.i(this.c)) {
                f();
            }
        } else {
            c("保存失败");
        }
        i();
        this.i.h();
    }

    private TextView d(final boolean z) {
        TextView a2 = T.a((Context) this.a, "", false, 56.0f);
        a2.setGravity(8388627);
        a2.setEnabled(false);
        a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.a(z, view);
            }
        });
        return a2;
    }

    private void e() {
        o c0021o = this.f;
        if (c0021o == null) {
            return;
        }
        final Bundle q = c0021o.q(this.c);
        final Bundle bundle = q.getBundle("groups");
        final Bundle bundle2 = q.getBundle("colors");
        final ArrayList arrayList = new ArrayList(bundle.keySet());
        Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            h("还没有保存的页面颜色：在小功能里打开取色按钮，再到 App 侧栏点它取色");
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
            Integer a2 = this.f.a(this.c, startsWith);
            strArr[i] = (startsWith ? "深色  " : "浅色  ") + b(i2) + " · " + i3 + " 个页面" + ((a2 == null || a2.intValue() != i2) ? i3 == 0 ? " · 暂未绑定页面" : "" : " · App 默认色");
        }
        T.a(T.a(this.a, "已保存的页面颜色", strArr, new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                f.this.a(arrayList, bundle, bundle2, q, dialogInterface, i4);
            }
        }).setNeutralButton("清除全部页面记录", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                f.this.b(dialogInterface, i4);
            }
        }).setNegativeButton("关闭", (DialogInterface.OnClickListener) null).create());
    }

    private void f() {
        LinearLayout linearLayout = this.r;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(0);
        ImageView imageView = this.s;
        if (imageView != null) {
            imageView.setRotation(180.0f);
        }
    }

    private void f(final boolean z) {
        if (!this.f.g(this.c, z)) {
            c("写入失败");
            return;
        }
        h();
        i();
        this.h.h();
        this.i.h();
        MainActivity.a.execute(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                f.this.c(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(float f) {
        return T.a(this.a, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        o c0021o = this.f;
        if (c0021o == null) {
            return;
        }
        String str = P.F[i];
        if (c0021o.f(this.c, str)) {
            this.y.a(i);
            j();
            h("原白黑设置已设为" + g(str) + "；未自定义的模式生效");
            return;
        }
        c("写入失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ImageView imageView, View view) {
        boolean z = this.C.getVisibility() != 0;
        this.C.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(final String str) {
        this.b.post(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                f.this.f(str);
            }
        });
    }

    private void a(LinearLayout linearLayout, ImageView imageView, String str, TextView textView, final Runnable runnable, int i) {
        LinearLayout c2 = T.c(this.a);
        c2.setPadding(0, 0, i, 0);
        if (runnable != null) {
            FrameLayout frameLayout = new FrameLayout(this.a);
            T.a(frameLayout, 21.0f);
            frameLayout.setContentDescription("返回");
            Activity activity = this.a;
            frameLayout.addView(T.a(activity, T.a(activity, 3, T.b_v, 2.6f, false, 18.0f)), new FrameLayout.LayoutParams(a(18.0f), a(18.0f), 17));
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
            c2.addView(frameLayout, T.a(this.a, 42.0f, 42.0f));
        }
        c2.addView(new View(this.a), T.b());
        T.a(textView, 21.0f);
        c2.addView(textView, new LinearLayout.LayoutParams(-2, a(42.0f)));
        linearLayout.addView(c2);
        LinearLayout.LayoutParams a2 = T.a(T.a(this.a, 80.0f, 80.0f), this.a, 6.0f);
        a2.gravity = 1;
        linearLayout.addView(imageView, a2);
        TextView a3 = T.a(this.a, 24.0f, T.b_v, 800);
        a3.setText(str);
        a3.setGravity(17);
        linearLayout.addView(a3, T.a(T.a(), this.a, 12.0f));
        LinearLayout a4 = a(linearLayout, 24.0f);
        a4.setPadding(a(18.0f), 0, a(14.0f), 0);
        LinearLayout c3 = T.c(this.a);
        c3.setMinimumHeight(a(58.0f));
        TextView a5 = T.a(this.a, 16.0f, T.b_v, 600);
        a5.setText("Duo 适配");
        c3.addView(a5, T.b());
        c3.addView(this.g);
        a4.addView(c3);
        a(a4);
        ((LinearLayout.LayoutParams) a4.getLayoutParams()).topMargin = a(22.0f);
        linearLayout.addView(g(), T.a(T.a(), this.a, 12.0f));
        linearLayout.addView(c(), T.a(T.a(), this.a, 12.0f));
        this.t = T.a(this.a, 12.0f, T.d, 500);
        LinearLayout a6 = T.a((Context) this.a);
        this.r = a6;
        a6.setPadding(0, 0, 0, a(8.0f));
        this.h = new e(this.r, "内屏（展开时）", "inner", 11, true, false);
        this.i = new e(this.r, "外屏（合上时）", "outer", 12, true, false);
        linearLayout.addView(a("顶部避让高度", this.t, this.r, true), T.a(T.a(), this.a, 12.0f));
        this.u = T.a(this.a, 12.0f, T.d, 500);
        LinearLayout a7 = T.a((Context) this.a);
        a7.setPadding(a(2.0f), 0, a(2.0f), a(8.0f));
        this.j = new d(a7, false);
        linearLayout.addView(a("外屏页面缩放", this.u, (View) a7, false), T.a(T.a(), this.a, 12.0f));
        this.v = T.a(this.a, 12.0f, T.d, 500);
        LinearLayout a8 = T.a((Context) this.a);
        a8.setPadding(0, 0, 0, a(12.0f));
        a8.addView(a(), T.a());
        linearLayout.addView(a("外屏侧栏颜色", this.v, (View) a8, false), T.a(T.a(), this.a, 12.0f));
    }

    private T.e b(final String str) {
        T.e eVar = new T.e(this.a, new String[]{"原生显示", "隐藏"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda31
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                f.this.b(str, i);
            }
        });
        eVar.a(false);
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        XposedService a2 = L.a(8000L);
        final o c0021o = a2 == null ? null : new o(a2);
        this.b.post(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                f.this.a(c0021o);
            }
        });
        a(a2, c0021o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(String str) {
        if (this.a.isDestroyed()) {
            return;
        }
        Toast.makeText(this.a, str, 0).show();
        Runnable runnable = this.d;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, int i) {
        o c0021o = this.f;
        if (c0021o == null) {
            return;
        }
        if (!c0021o.f(str, i == 1)) {
            c("保存失败");
            h();
        } else {
            h();
            this.h.h();
            this.i.h();
            h("已保存，重新打开抖音后生效");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        o c0021o = this.f;
        if (c0021o != null) {
            e(c0021o.a(this.c, (Integer) null, (Integer) null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        T.a(T.a(this.a, "清除页面记录？").setMessage("只清除这个 App 保存的页面颜色和关联，保留 App 默认色。").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda20
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                f.this.a(dialogInterface2, i2);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i) {
        o c0021o = this.f;
        if (c0021o == null) {
            return;
        }
        if (!c0021o.a(this.c, i)) {
            this.z.a(this.f.l(this.c));
            c("写入失败");
        } else {
            this.z.a(i);
            this.h.h();
            h("已保存，切回 App 或开合一下即生效；个别 App 要重新打开");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        o c0021o = this.f;
        if (c0021o == null || c0021o.i(this.c) || !this.f.d(this.c)) {
            return;
        }
        if (this.f.f(this.c)) {
            h("已恢复跟随全局");
        } else {
            c("保存失败");
        }
        i();
        this.i.h();
    }

    private static String g(String str) {
        return "follow".equals(str) ? "跟随全局" : "black".equals(str) ? "黑色" : "白色";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i) {
        return String.format(Locale.ROOT, "#%06X", Integer.valueOf(i & 16777215));
    }

    private void b(final boolean z) {
        float f;
        float f2;
        int[] iArr;
        if (this.f == null) {
            return;
        }
        LinearLayout a2 = T.a((Context) this.a);
        a2.setPadding(a(20.0f), a(8.0f), a(20.0f), a(4.0f));
        int i = 600;
        TextView a3 = T.a(this.a, 15.0f, T.b_v, 600);
        a3.setGravity(17);
        a3.setText("背景预览  ·  时间 / 搜索");
        int i2 = -1;
        a2.addView(a3, new LinearLayout.LayoutParams(-1, a(96.0f)));
        final EditText editText = new EditText(this.a);
        T.a(editText);
        int i3 = 1;
        editText.setSingleLine(true);
        editText.setHint("#RRGGBB，例如 #F3F3F3");
        editText.setTextColor(T.b_v);
        editText.setTextSize(16.0f);
        editText.setInputType(4097);
        a2.addView(editText, T.a(T.a(), this.a, 8.0f));
        int[] iArr2 = {P.b(this.f.a, this.c, z)};
        int i4 = 3;
        SeekBar[] seekBarArr = new SeekBar[3];
        int i5 = 0;
        int i6 = 0;
        while (true) {
            f = 12.0f;
            f2 = 1.0f;
            if (i6 >= i4) {
                break;
            }
            int i7 = i2;
            LinearLayout c2 = T.c(this.a);
            TextView a4 = T.a(this.a, 12.0f, T.c, i);
            a4.setText(new String[]{"R", "G", "B"}[i6]);
            c2.addView(a4, T.a(this.a, 22.0f, 40.0f));
            SeekBar seekBar = new SeekBar(this.a);
            seekBarArr[i6] = seekBar;
            T.a(seekBar);
            seekBarArr[i6].setMax(255);
            seekBarArr[i6].setContentDescription(new String[]{"红色", "绿色", "蓝色"}[i6]);
            c2.addView(seekBarArr[i6], new LinearLayout.LayoutParams(0, a(40.0f), 1.0f));
            a2.addView(c2, T.a());
            i6++;
            i2 = i7;
            i3 = i3;
            i = 600;
            i4 = 3;
        }
        int i8 = i3;
        int i9 = i2;
        editText.addTextChangedListener(new a(iArr2, a3, seekBarArr));
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
        LinearLayout c3 = T.c(this.a);
        int length = iArr.length;
        int i11 = 0;
        while (i11 < length) {
            final int i12 = iArr[i11];
            TextView a5 = T.a(this.a, f, T.b_v, 600);
            a5.setContentDescription(b(i12));
            GradientDrawable a6 = T.a(i12, a(10.0f));
            a6.setStroke(Math.max(i8, a(f2)), T.h);
            a5.setBackground(a6);
            a5.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f.a(editText, i12, view);
                }
            });
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i5, a(38.0f), f2);
            layoutParams.setMargins(a(3.0f), a(8.0f), a(3.0f), a(8.0f));
            c3.addView(a5, layoutParams);
            i11++;
            i5 = i5;
            f = 12.0f;
            f2 = 1.0f;
            i8 = 1;
        }
        a2.addView(c3, T.a());
        editText.setText(b(iArr2[i5]));
        final AlertDialog create = T.a(this.a, (z ? "深色" : "浅色") + "模式背景").setView(a2).setNegativeButton("取消", (DialogInterface.OnClickListener) null).setNeutralButton("此模式恢复默认", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda33
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i13) {
                f.this.a(z, dialogInterface, i13);
            }
        }).setPositiveButton("保存", (DialogInterface.OnClickListener) null).create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda34
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                f.this.a(create, editText, z, dialogInterface);
            }
        });
        T.a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z) {
        XposedService c2 = L.c();
        StringBuilder sb = new StringBuilder(z ? "Duo 适配已开启" : "Duo 适配已关闭");
        if (z && c2 != null && P.q.contains(this.c) && !c2.getScope().contains(this.c)) {
            c2.requestScope(Collections.singletonList(this.c), new c(c2));
            sb.append("，请在通知栏点「批准」作用域");
        }
        h(sb.toString());
        a(c2, this.f);
    }

    private void e(boolean z) {
        if (!z) {
            c("配色保存失败");
        } else {
            j();
            h("侧栏背景配色已保存，按系统深浅模式生效");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(String str) {
        if (this.a.isDestroyed()) {
            return;
        }
        Toast.makeText(this.a, str, 1).show();
    }

    private void d(String str) {
        a(str, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str) {
        this.b.post(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                f.this.e(str);
            }
        });
    }

    private void a(LinearLayout linearLayout, ImageView imageView, String str, TextView textView) {
        LinearLayout c2 = T.c(this.a);
        T.a(c2, 26.0f);
        c2.setPadding(a(18.0f), a(16.0f), a(18.0f), a(16.0f));
        c2.addView(imageView, T.a(this.a, 52.0f, 52.0f));
        LinearLayout a2 = T.a((Context) this.a);
        a2.setPadding(a(14.0f), 0, a(14.0f), 0);
        TextView a3 = T.a(this.a, 20.0f, T.b_v, 800);
        a3.setText(str);
        a3.setSingleLine(true);
        a3.setEllipsize(TextUtils.TruncateAt.END);
        a2.addView(a3);
        TextView a4 = T.a(this.a, 12.0f, T.d, J.m);
        a4.setText("Duo 适配");
        a4.setPadding(0, a(4.0f), 0, 0);
        a2.addView(a4);
        c2.addView(a2, T.b());
        textView.setBackground(T.a(T.f_v, a(17.0f)));
        c2.addView(textView, new LinearLayout.LayoutParams(-2, a(34.0f)));
        LinearLayout.LayoutParams c3 = T.c();
        c3.leftMargin = a(14.0f);
        c2.addView(this.g, c3);
        a(c2);
        linearLayout.addView(c2, T.a());
        linearLayout.addView(g(), T.a(T.a(), this.a, 12.0f));
        linearLayout.addView(c(), T.a(T.a(), this.a, 12.0f));
        this.t = T.a(this.a, 12.0f, T.d, 500);
        LinearLayout c4 = T.c(this.a);
        c4.setBaselineAligned(false);
        LinearLayout a5 = T.a((Context) this.a);
        LinearLayout a6 = T.a((Context) this.a);
        this.q = a6;
        LinearLayout[] linearLayoutArr = {a5, a6};
        for (int i = 0; i < 2; i++) {
            LinearLayout linearLayout2 = linearLayoutArr[i];
            T.a(linearLayout2, 24.0f);
            linearLayout2.setPadding(a(16.0f), a(16.0f), a(16.0f), a(16.0f));
        }
        this.h = new e(a5, "内屏", "inner", 11, true, true);
        this.i = new e(this.q, "外屏", "outer", 12, true, true);
        c4.addView(a5, new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.leftMargin = a(12.0f);
        c4.addView(this.q, layoutParams);
        this.r = c4;
        linearLayout.addView(a("顶部避让高度", this.t, (View) c4, true), T.a(T.a(), this.a, 12.0f));
        this.u = T.a(this.a, 12.0f, T.d, 500);
        LinearLayout a7 = T.a((Context) this.a);
        T.a(a7, 24.0f);
        a7.setPadding(a(16.0f), a(16.0f), a(16.0f), a(16.0f));
        this.j = new d(a7, true);
        linearLayout.addView(a("外屏页面缩放", this.u, (View) a7, false), T.a(T.a(), this.a, 12.0f));
        this.v = T.a(this.a, 12.0f, T.d, 500);
        LinearLayout a8 = T.a((Context) this.a);
        a8.setPadding(0, a(4.0f), 0, a(8.0f));
        TextView a9 = T.a(this.a, 14.0f, T.b_v, 600);
        a9.setText("配色");
        a8.addView(a9);
        a8.addView(a(), T.a(T.a(), this.a, 10.0f));
        linearLayout.addView(a("外屏侧栏颜色", this.v, (View) a8, false), T.a(T.a(), this.a, 12.0f));
    }

    private View a(boolean z) {
        LinearLayout a2 = T.a((Context) this.a);
        T.a(a2, z ? 26.0f : 28.0f);
        a2.setPadding(a(18.0f), a(6.0f), a(18.0f), a(6.0f));
        LinearLayout c2 = T.c(this.a);
        c2.setMinimumHeight(a(58.0f));
        TextView a3 = T.a(this.a, 15.0f, T.b_v, 600);
        a3.setText("画幅切换");
        c2.addView(a3, T.b());
        Activity activity = this.a;
        final ImageView a4 = T.a(activity, T.a(activity, 5, T.d, 3.0f, false, 12.0f));
        c2.addView(a4, T.a(this.a, 12.0f, 12.0f));
        a2.addView(c2);
        final LinearLayout a5 = T.a((Context) this.a);
        a5.setPadding(0, 0, 0, a(12.0f));
        TextView a6 = T.a(this.a, 13.0f, T.c, 600);
        a6.setText("外屏");
        a5.addView(a6);
        T.e a7 = a("outer");
        this.A = a7;
        a5.addView(a7.a, T.a(T.a(), this.a, 10.0f));
        TextView a8 = T.a(this.a, 13.0f, T.c, 600);
        a8.setText("内屏");
        a5.addView(a8, T.a(T.a(), this.a, 16.0f));
        T.e a9 = a("inner");
        this.B = a9;
        a5.addView(a9.a, T.a(T.a(), this.a, 10.0f));
        TextView a10 = T.a(this.a, 12.0f, T.c, J.m);
        a10.setText("仅在竖着拿手机、抖音的 Duo 适配关闭时生效。拉满会裁上下，完整显示会留边；横屏、横视频和直播保持原样。首次需在 LSPosed 的 MiDuo 作用域勾选抖音，再重新打开抖音。");
        a5.addView(a10, T.a(T.a(), this.a, 10.0f));
        a5.setVisibility(8);
        a2.addView(a5);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.a(a5, a4, view);
            }
        });
        return a2;
    }

    private void b() {
        String str;
        final ArrayList arrayList = new ArrayList();
        for (String str2 : this.f.a.getAll().keySet()) {
            if (!str2.startsWith("_") && str2.endsWith("/railPalette")) {
                String substring = str2.substring(0, str2.length() - 12);
                if (!substring.equals(this.c)) {
                    arrayList.add(substring);
                }
            }
        }
        Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            h("还没有其它已配色软件");
            return;
        }
        String[] strArr = new String[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            String str3 = (String) arrayList.get(i);
            try {
                str = this.a.getPackageManager().getApplicationLabel(this.a.getPackageManager().getApplicationInfo(str3, 0)).toString();
            } catch (PackageManager.NameNotFoundException e2) {
                str = str3;
            }
            strArr[i] = str + "\n" + str3;
        }
        T.a(T.a(this.a, "复制其他 App 的深浅配色", strArr, new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                f.this.a(arrayList, dialogInterface, i2);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(LinearLayout linearLayout, ImageView imageView, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    private T.e a(final String str) {
        T.e eVar = new T.e(this.a, new String[]{"裁切拉满", "完整显示"}, null, new IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda17
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                f.this.a(str, i);
            }
        });
        eVar.a(false);
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, int i) {
        if (this.f == null) {
            return;
        }
        T.e eVar = "inner".equals(str) ? this.B : this.A;
        if (!this.f.e(str, i == 1)) {
            eVar.a(this.f.a(str) ? 1 : 0);
            c("写入失败");
        } else {
            eVar.a(i);
            h("已保存，切回抖音后生效");
        }
    }

    private View a() {
        LinearLayout a2 = T.a((Context) this.a);
        this.E = d(false);
        this.F = d(true);
        a2.addView(this.E, T.a());
        a2.addView(this.F, T.a(T.a(), this.a, 8.0f));
        TextView a3 = T.a((Context) this.a, "复制其他 App 的深浅配色", false, 48.0f);
        this.G = a3;
        a3.setEnabled(false);
        this.G.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.a(view);
            }
        });
        a2.addView(this.G, T.a(T.a(), this.a, 8.0f));
        TextView a4 = T.a((Context) this.a, "恢复默认深浅配色", false, 48.0f);
        a4.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.b(view);
            }
        });
        a2.addView(a4, T.a(T.a(), this.a, 8.0f));
        TextView a5 = T.a((Context) this.a, "管理已保存的页面颜色", false, 48.0f);
        a5.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.c(view);
            }
        });
        a2.addView(a5, T.a(T.a(), this.a, 8.0f));
        TextView a6 = T.a((Context) this.a, "导出这个 App 的颜色配置", false, 48.0f);
        a6.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.d(view);
            }
        });
        a2.addView(a6, T.a(T.a(), this.a, 8.0f));
        TextView a7 = T.a(this.a, 12.0f, T.d, J.m);
        a7.setText("原白黑设置（仅未自定义的模式生效）");
        a2.addView(a7, T.a(T.a(), this.a, 4.0f));
        T.e eVar = new T.e(this.a, new String[]{"跟随全局", "白色", "黑色"}, new int[]{-5329230, -1, -14869217}, new IntConsumer() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda25
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                f.this.d(i);
            }
        });
        this.y = eVar;
        eVar.a(false);
        a2.addView(this.y.a, T.a(T.a(), this.a, 8.0f));
        TextView a8 = T.a(this.a, 12.0f, T.d, J.m);
        this.D = a8;
        a8.setLineSpacing(0.0f, 1.3f);
        a2.addView(this.D, T.a(T.a(), this.a, 10.0f));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ArrayList arrayList, Bundle bundle, Bundle bundle2, Bundle bundle3, DialogInterface dialogInterface, int i) {
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
        Integer a2 = this.f.a(this.c, startsWith);
        final boolean z = a2 != null && a2.intValue() == i2;
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
        T.a(T.a(this.a, b(i2)).setMessage(sb.toString()).setView(a(arrayList2, strArr)).setPositiveButton("修改颜色", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i6) {
                f.this.a(startsWith, i2, z, dialogInterface2, i6);
            }
        }).setNeutralButton("删除这组记录", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i6) {
                f.this.a(startsWith, i2, dialogInterface2, i6);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, int i, boolean z2, DialogInterface dialogInterface, int i2) {
        a(z, i, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, int i, DialogInterface dialogInterface, int i2) {
        if (this.f.a(this.c, z, i, null)) {
            h("记录已删除，这些页面恢复使用 App 默认色");
        } else {
            c("删除失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        if (this.f.s(this.c)) {
            h("已清除页面记录，App 默认色保留");
        } else {
            c("清除失败");
        }
    }

    private View a(List<String> list, String[] strArr) {
        LinearLayout a2 = T.a((Context) this.a);
        a2.setPadding(a(20.0f), 0, a(20.0f), 0);
        final int i = 0;
        while (i < strArr.length) {
            final TextView a3 = T.a((Context) this.a, strArr[i] + " · 修改备注", false, 44.0f);
            a3.setSingleLine(false);
            final List<String> list2 = list;
            final String[] strArr2 = strArr;
            a3.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda27
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f.this.a(strArr2, i, list2, a3, view);
                }
            });
            a2.addView(a3, T.a(T.a(), this.a, 8.0f));
            i++;
            strArr = strArr2;
            list = list2;
        }
        ScrollView scrollView = new ScrollView(this.a);
        scrollView.addView(a2);
        return scrollView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final String[] strArr, final int i, final List list, final TextView textView, View view) {
        final EditText editText = new EditText(this.a);
        T.a(editText);
        editText.setText(strArr[i]);
        T.a(T.a(this.a, "给页面加备注").setView(T.b(editText)).setPositiveButton("保存", new DialogInterface.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                f.this.a(editText, list, i, strArr, textView, dialogInterface, i2);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(EditText editText, List list, int i, String[] strArr, TextView textView, DialogInterface dialogInterface, int i2) {
        String trim = editText.getText().toString().trim();
        if (trim.isEmpty()) {
            return;
        }
        if (!this.f.a.edit().putString(this.c + "/pageColors/_label/" + ((String) list.get(i)), trim).commit()) {
            c("备注保存失败");
        } else {
            strArr[i] = trim;
            textView.setText(trim + " · 修改备注");
        }
    }

    private void a(final boolean z, final int i, final boolean z2) {
        final EditText editText = new EditText(this.a);
        T.a(editText);
        editText.setSingleLine(true);
        editText.setText(b(i));
        editText.setSelectAllOnFocus(true);
        editText.setInputType(4097);
        final AlertDialog create = T.a(this.a, "修改这组页面的颜色").setMessage("输入六位颜色，例如 #F3F3F3。相同颜色会合并使用。").setView(T.b(editText)).setPositiveButton("保存", (DialogInterface.OnClickListener) null).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                f.this.a(create, editText, z2, z, i, dialogInterface);
            }
        });
        T.a(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final AlertDialog alertDialog, final EditText editText, final boolean z, final boolean z2, final int i, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.a(editText, z, z2, i, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(EditText editText, boolean z, boolean z2, int i, AlertDialog alertDialog, View view) {
        try {
            Integer p = dev.duo.hookprobe.P.p(editText.getText().toString().trim());
            if (p == null) {
                editText.setError("请输入六位颜色");
                return;
            }
            if (z) {
                Integer a2 = this.f.a(this.c, false);
                Integer a3 = this.f.a(this.c, true);
                o c0021o = this.f;
                String str = this.c;
                if (!z2) {
                    a2 = p;
                }
                if (z2) {
                    a3 = p;
                }
                if (!c0021o.a(str, a2, a3)) {
                    c("默认色保存失败");
                    return;
                }
            }
            if (!this.f.a(this.c, z2, i, p)) {
                c("页面颜色保存失败");
                return;
            }
            j();
            h("这一组页面颜色已修改");
            alertDialog.dismiss();
        } catch (IllegalArgumentException e2) {
            editText.setError("请输入六位颜色");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, View view) {
        b(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(EditText editText, int i, View view) {
        editText.setText(b(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, DialogInterface dialogInterface, int i) {
        o c0021o = this.f;
        String str = this.c;
        e(c0021o.a(str, z ? c0021o.a(str, false) : null, z ? null : this.f.a(this.c, true)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final AlertDialog alertDialog, final EditText editText, final boolean z, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.a(editText, z, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(EditText editText, boolean z, AlertDialog alertDialog, View view) {
        try {
            String trim = editText.getText().toString().trim();
            if (trim.matches("#?[0-9a-fA-F]{6}")) {
                Integer p = dev.duo.hookprobe.P.p(trim);
                o c0021o = this.f;
                String str = this.c;
                Integer a2 = z ? c0021o.a(str, false) : p;
                if (!z) {
                    p = this.f.a(this.c, true);
                }
                boolean a3 = c0021o.a(str, a2, p);
                e(a3);
                if (a3) {
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
    public /* synthetic */ void a(ArrayList arrayList, DialogInterface dialogInterface, int i) {
        e(this.f.a(this.c, (String) arrayList.get(i)));
    }

    private LinearLayout a(LinearLayout linearLayout, float f) {
        LinearLayout a2 = T.a((Context) this.a);
        T.a(a2, f);
        linearLayout.addView(a2, T.a(T.a(), this.a, 12.0f));
        return a2;
    }

    private void a(LinearLayout linearLayout) {
        TextView a2 = T.a(this.a, 12.0f, T.d, J.m);
        this.w = a2;
        a2.setPadding(a(18.0f), 0, a(14.0f), a(12.0f));
        this.w.setVisibility(8);
        linearLayout.addView(this.w);
    }

    private LinearLayout a(String str, TextView textView, final View view, boolean z) {
        LinearLayout a2 = T.a((Context) this.a);
        T.a(a2, 24.0f);
        a2.setPadding(a(16.0f), 0, a(14.0f), 0);
        LinearLayout c2 = T.c(this.a);
        c2.setGravity(16);
        c2.setMinimumHeight(a(58.0f));
        TextView a3 = T.a(this.a, 15.0f, T.b_v, 600);
        a3.setText(str);
        c2.addView(a3);
        textView.setGravity(8388613);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        c2.addView(textView, T.b());
        Activity activity = this.a;
        final ImageView a4 = T.a(activity, T.a(activity, 5, T.d, 3.0f, false, 12.0f));
        c2.addView(a4, T.a(this.a, 12.0f, 12.0f));
        if (z) {
            this.s = a4;
        }
        a2.addView(c2);
        view.setVisibility(8);
        a2.addView(view);
        c2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.a(view, a4, view2);
            }
        });
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(View view, ImageView imageView, View view2) {
        boolean z = view.getVisibility() != 0;
        view.setVisibility(z ? 0 : 8);
        imageView.setRotation(z ? 180.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(o c0021o) {
        if (this.a.isDestroyed()) {
            return;
        }
        this.f = c0021o;
        if (c0021o == null) {
            c("未连接 LSPosed，无法读写配置。请确认模块已在 LSPosed 中启用。");
            return;
        }
        boolean contains = dev.duo.hookprobe.P.i.contains(this.c);
        this.g.setChecked(this.f.i(this.c));
        this.g.setEnabled(!contains);
        TextView textView = this.w;
        if (textView != null) {
            textView.setVisibility(contains ? 0 : 8);
            if (contains) {
                this.w.setText(MainActivity.h(this.c));
            }
        }
        this.g.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda14
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                f.this.a(compoundButton, z);
            }
        });
        this.z.a(this.f.l(this.c));
        this.z.a(true);
        T.e eVar = this.A;
        if (eVar != null) {
            eVar.a(this.f.a("outer") ? 1 : 0);
            this.A.a(true);
            this.B.a(this.f.a("inner") ? 1 : 0);
            this.B.a(true);
        }
        h();
        i();
        this.h.a();
        this.i.a();
        this.j.a();
        String p = this.f.p(this.c);
        this.y.a(p != null ? "black".equals(p) ? 2 : 1 : 0);
        this.y.a(true);
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        f(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        String str3;
        if (this.f.i(this.c)) {
            str3 = "，该 App 下次打开时生效";
        } else if ("outer".equals(str2)) {
            str3 = this.f.n(this.c) ? "；外屏隐藏顶栏时使用，切回 App 后生效，个别 App 要重新打开" : "；Duo 适配开启后生效";
        } else if ("inner".equals(str2)) {
            str3 = "com.ss.android.ugc.aweme".equals(this.c) ? "；隐藏抖音内屏顶栏时使用，重新打开抖音后生效" : "；内屏不受此项影响，需开启 Duo 后生效";
        } else if (this.f.n(this.c)) {
            str3 = "；外屏隐藏顶栏时使用，切回 App 后生效，个别 App 要重新打开";
        } else if ("com.ss.android.ugc.aweme".equals(this.c)) {
            str3 = "；隐藏顶栏时使用，重新打开抖音后生效";
        } else {
            str3 = "；Duo 适配开启后生效";
        }
        h(str + str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(XposedService xposedService, o c0021o) {
        String str;
        final StringBuilder sb = new StringBuilder();
        if (xposedService != null) {
            try {
                StringBuilder append = sb.append("LSPosed 作用域：");
                if (xposedService.getScope().contains(this.c)) {
                    str = "已包含";
                } else if (P.q.contains(this.c)) {
                    str = "未包含（开启 Duo 时会自动申请）";
                } else {
                    str = "无需单独勾选";
                }
                append.append(str).append('\n');
            } catch (Throwable th) {
                sb.append("LSPosed 作用域：读取失败 ").append(th).append('\n');
            }
        }
        if (c0021o != null) {
            sb.append("9:16 比例：").append(c0021o.i(this.c) ? "开启（MiDuo 运行时判断，不写入系统）" : "关闭（原生比例）").append('\n');
        }
        sb.append("包名：").append(this.c);
        this.b.post(new Runnable() { // from class: dev.duo.hookprobe.f$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                f.this.a(sb);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(StringBuilder sb) {
        this.C.setText(sb);
    }
}
