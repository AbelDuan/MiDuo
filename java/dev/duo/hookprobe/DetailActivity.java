package dev.duo.hookprobe;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import dev.duo.hookprobe.C0087T;
import java.util.function.IntConsumer;

/* loaded from: classes.dex */
public final class DetailActivity extends Activity {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m848a(int i) {
        m849a(i, null, null);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("pkg");
        String stringExtra2 = getIntent().getStringExtra("label");
        if (stringExtra != null && stringExtra.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+") && !MainActivity.f960d.contains(stringExtra)) {
            C0087T.d dVar = new C0087T.d(this);
            if (dVar.f1396c >= 840) {
                m849a(1, stringExtra, stringExtra2);
                return;
            }
            dVar.f1395b.addView(new C0104f(this, stringExtra, stringExtra2, new Runnable() { // from class: dev.duo.hookprobe.DetailActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DetailActivity.this.finish();
                }
            }, false, dVar.m1432a(dVar.m1439e()), dVar.m1438d(), dVar.m1437c(), dVar.m1436b(), null).f1569e, new FrameLayout.LayoutParams(-1, -1));
            dVar.m1434a(1, new IntConsumer() { // from class: dev.duo.hookprobe.DetailActivity$$ExternalSyntheticLambda1
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    DetailActivity.this.m848a(i);
                }
            });
            setContentView(dVar.f1394a);
            dVar.m1433a();
            return;
        }
        finish();
    }

    /* renamed from: a */
    private void m849a(int i, String str, String str2) {
        if (i != 1 || str != null) {
            startActivity(new Intent(this, (Class<?>) MainActivity.class).putExtra("tab", i).putExtra("pkg", str).putExtra("label", str2).addFlags(603979776));
        }
        finish();
    }
}
