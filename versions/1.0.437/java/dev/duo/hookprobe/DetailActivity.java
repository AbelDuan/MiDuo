package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class DetailActivity extends android.app.Activity {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        a(i, null, null);
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        java.lang.String stringExtra = getIntent().getStringExtra("pkg");
        java.lang.String stringExtra2 = getIntent().getStringExtra("label");
        if (stringExtra != null && stringExtra.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+") && !dev.duo.hookprobe.MainActivity.d.contains(stringExtra)) {
            dev.duo.hookprobe.U.d dVar = new dev.duo.hookprobe.U.d(this);
            if (dVar.c >= 840) {
                a(1, stringExtra, stringExtra2);
                return;
            }
            dVar.b.addView(new dev.duo.hookprobe.C0016f(this, stringExtra, stringExtra2, new java.lang.Runnable() { // from class: dev.duo.hookprobe.DetailActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.DetailActivity.this.finish();
                }
            }, false, dVar.a(dVar.e()), dVar.d(), dVar.c(), dVar.b(), null).e, new android.widget.FrameLayout.LayoutParams(-1, -1));
            dVar.a(1, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.DetailActivity$$ExternalSyntheticLambda1
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

    private void a(int i, java.lang.String str, java.lang.String str2) {
        if (i != 1 || str != null) {
            startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.MainActivity.class).putExtra("tab", i).putExtra("pkg", str).putExtra("label", str2).addFlags(603979776));
        }
        finish();
    }
}
