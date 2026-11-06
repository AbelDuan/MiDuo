package dev.duo.hookprobe;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import dev.duo.hookprobe.T;
import java.util.function.IntConsumer;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class DetailActivity extends Activity {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        a(i, null, null);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("pkg");
        String stringExtra2 = getIntent().getStringExtra("label");
        if (stringExtra != null && stringExtra.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+") && !MainActivity.d.contains(stringExtra)) {
            T.d dVar = new T.d(this);
            if (dVar.c >= 840) {
                a(1, stringExtra, stringExtra2);
                return;
            }
            dVar.b.addView(new f(this, stringExtra, stringExtra2, new Runnable() { // from class: dev.duo.hookprobe.DetailActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.DetailActivity.this.finish();
                }
            }, false, dVar.a(dVar.e()), dVar.d(), dVar.c(), dVar.b(), null).e, new FrameLayout.LayoutParams(-1, -1));
            dVar.a(1, new IntConsumer() { // from class: dev.duo.hookprobe.DetailActivity$$ExternalSyntheticLambda1
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    dev.duo.hookprobe.DetailActivity.this.a(i);
                }
            });
            setContentView(dVar.a);
            dVar.a();
            return;
        }
        finish();
    }

    private void a(int i, String str, String str2) {
        if (i != 1 || str != null) {
            startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.MainActivity.class).putExtra("tab", i).putExtra("pkg", str).putExtra("label", str2).addFlags(603979776));
        }
        finish();
    }
}
