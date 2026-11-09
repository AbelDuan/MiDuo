package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class AlbumWidgetConfigureActivity extends android.app.Activity {
    private static final int a = 1;

    private int a() {
        int intExtra = getIntent().getIntExtra("appWidgetId", 0);
        android.net.Uri data = getIntent().getData();
        if (intExtra == 0 && data != null && data.isHierarchical() && "miduo".equals(data.getScheme()) && "widget".equals(data.getHost()) && "/album/edit".equals(data.getPath())) {
            try {
                intExtra = java.lang.Integer.parseInt(data.getQueryParameter("miuiWidgetId"));
            } catch (java.lang.NumberFormatException e) {
                return 0;
            }
        }
        if (dev.duo.hookprobe.AlbumWidgetProvider.a(this, intExtra)) {
            return intExtra;
        }
        return 0;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, android.content.Intent intent) {
        int a2 = a();
        if (a2 != 0 && i2 == -1 && intent != null && intent.getData() != null) {
            startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.AlbumCropActivity.class).setData(intent.getData()).putExtra("appWidgetId", a2).addFlags(1));
        } else if (i2 == -1) {
            android.util.Log.w("MiDuoAlbum", "pick returned no image");
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        int a2 = a();
        setResult(a2 == 0 ? 0 : -1, new android.content.Intent().putExtra("appWidgetId", a2));
        if (a2 == 0) {
            finish();
        } else {
            if (bundle != null) {
                return;
            }
            startActivityForResult(new android.content.Intent("android.intent.action.PICK").setType("image/*").setPackage("com.miui.gallery"), 1);
        }
    }
}
