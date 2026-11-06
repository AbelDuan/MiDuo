package dev.duo.hookprobe;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import btm.p000m.os4.systemuihook.newnotificationcenter.C0015f;
import dev.duo.hookprobe.C0087T;
import io.github.libxposed.service.XposedService;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes.dex */
public final class IosNcActivity extends Activity {

    /* renamed from: a */
    private final Handler f913a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private SharedPreferences f914b;

    /* renamed from: c */
    private boolean f915c;

    /* renamed from: d */
    private LinearLayout f916d;

    /* renamed from: e */
    private TextView f917e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m918a() {
        XposedService m970a = C0056L.m970a(8000L);
        final SharedPreferences remotePreferences = m970a == null ? null : m970a.getRemotePreferences("duo_top");
        this.f913a.post(new Runnable() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                IosNcActivity.this.m920a(remotePreferences);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void m920a(SharedPreferences sharedPreferences) {
        this.f914b = sharedPreferences;
        this.f916d.removeAllViews();
        TextView m1413a = C0087T.m1413a(this, 28.0f, C0087T.f1345b, 800);
        m1413a.setText("iOS 风格通知中心");
        this.f916d.addView(m1413a);
        if (this.f914b == null) {
            TextView m1413a2 = C0087T.m1413a(this, 14.0f, C0087T.f1349d, C0054J.f930m);
            m1413a2.setText("没有连上 LSPosed。先在管理器里启用 MiDuo，再打开这一页。");
            m1413a2.setPadding(0, C0087T.m1399a((Context) this, 12.0f), 0, 0);
            this.f916d.addView(m1413a2);
            return;
        }
        TextView m1413a3 = C0087T.m1413a(this, 13.0f, C0087T.f1349d, C0054J.f930m);
        m1413a3.setText("下拉时展示圆角壁纸面板。改完后下一次拉开就生效。控制中心仍是小米原来的。");
        m1413a3.setPadding(0, C0087T.m1399a((Context) this, 8.0f), 0, C0087T.m1399a((Context) this, 4.0f));
        this.f916d.addView(m1413a3);
        m925a("iOS 风格通知中心", C0015f.f406a, false);
        m927a("壁纸来源", new String[]{"锁屏壁纸", "不显示壁纸"}, this.f914b.getInt(C0015f.f407b, 0) == 2 ? 1 : 0, new IntConsumer() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda2
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                IosNcActivity.this.m919a(i);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ScrollView scrollView = new ScrollView(this);
        LinearLayout m1411a = C0087T.m1411a((Context) this);
        this.f916d = m1411a;
        m1411a.setPadding(C0087T.m1399a((Context) this, 16.0f), C0087T.m1399a((Context) this, 16.0f), C0087T.m1399a((Context) this, 16.0f), C0087T.m1399a((Context) this, 28.0f));
        TextView m1413a = C0087T.m1413a(this, 14.0f, C0087T.f1349d, C0054J.f930m);
        this.f917e = m1413a;
        m1413a.setText("正在连接 LSPosed…");
        this.f916d.addView(this.f917e);
        scrollView.addView(this.f916d);
        setContentView(scrollView);
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                IosNcActivity.this.m918a();
            }
        }, "IosNcLoad").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m919a(int i) {
        m922a(C0015f.f407b, i == 1 ? 2 : 0);
    }

    /* renamed from: a */
    private void m925a(String str, final String str2, boolean z) {
        LinearLayout m1430c = C0087T.m1430c(this);
        C0087T.m1418a(m1430c, 28.0f);
        m1430c.setPadding(C0087T.m1399a((Context) this, 18.0f), 0, C0087T.m1399a((Context) this, 16.0f), 0);
        m1430c.setGravity(16);
        m1430c.setMinimumHeight(C0087T.m1399a((Context) this, 76.0f));
        TextView m1413a = C0087T.m1413a(this, 15.0f, C0087T.f1345b, 600);
        m1413a.setText(str);
        m1430c.addView(m1413a, C0087T.m1428b());
        Switch r6 = new Switch(this);
        C0087T.m1422a(r6);
        this.f915c = true;
        r6.setChecked(this.f914b.getBoolean(str2, z));
        this.f915c = false;
        r6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                IosNcActivity.this.m924a(str2, compoundButton, z2);
            }
        });
        m1430c.addView(r6);
        this.f916d.addView(m1430c, C0087T.m1410a(C0087T.m1408a(), this, 12.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m930b() {
        Toast.makeText(this, "保存失败，请重开本页再试", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m924a(final String str, CompoundButton compoundButton, final boolean z) {
        if (this.f915c) {
            return;
        }
        m928a(new Consumer() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SharedPreferences.Editor) obj).putBoolean(str, z);
            }
        });
    }

    /* renamed from: a */
    private void m927a(String str, String[] strArr, int i, final IntConsumer intConsumer) {
        TextView m1413a = C0087T.m1413a(this, 13.0f, C0087T.f1349d, 500);
        m1413a.setText(str);
        m1413a.setPadding(C0087T.m1399a((Context) this, 6.0f), C0087T.m1399a((Context) this, 10.0f), 0, C0087T.m1399a((Context) this, 4.0f));
        this.f916d.addView(m1413a);
        C0087T.e eVar = new C0087T.e(this, strArr, null, new IntConsumer() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda0
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                IosNcActivity.this.m929a(r2, intConsumer, i2);
            }
        });
        final C0087T.e[] eVarArr = {eVar};
        this.f915c = true;
        eVar.m1441a(i);
        this.f915c = false;
        this.f916d.addView(eVarArr[0].f1407a, C0087T.m1410a(C0087T.m1408a(), this, 0.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m929a(C0087T.e[] eVarArr, IntConsumer intConsumer, int i) {
        eVarArr[0].m1441a(i);
        if (this.f915c) {
            return;
        }
        intConsumer.accept(i);
    }

    /* renamed from: a */
    private void m922a(final String str, final int i) {
        m928a(new Consumer() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SharedPreferences.Editor) obj).putInt(str, i);
            }
        });
    }

    /* renamed from: a */
    private void m928a(final Consumer<SharedPreferences.Editor> consumer) {
        final SharedPreferences sharedPreferences = this.f914b;
        MainActivity.f957a.execute(new Runnable() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                IosNcActivity.this.m921a(sharedPreferences, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m921a(SharedPreferences sharedPreferences, Consumer consumer) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        consumer.accept(edit);
        if (edit.commit()) {
            return;
        }
        this.f913a.post(new Runnable() { // from class: dev.duo.hookprobe.IosNcActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                IosNcActivity.this.m930b();
            }
        });
    }
}
