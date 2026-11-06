package dev.duo.hookprobe;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class AlbumWidgetConfigureActivity extends Activity {
    private static final int a = 1;

    private int a() {
        int intExtra = getIntent().getIntExtra("appWidgetId", 0);
        Uri data = getIntent().getData();
        if (intExtra == 0 && data != null && data.isHierarchical() && "miduo".equals(data.getScheme()) && "widget".equals(data.getHost()) && "/album/edit".equals(data.getPath())) {
            try {
                intExtra = Integer.parseInt(data.getQueryParameter("miuiWidgetId"));
            } catch (NumberFormatException e) {
                return 0;
            }
        }
        if (AlbumWidgetProvider.a(this, intExtra)) {
            return intExtra;
        }
        return 0;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        int a2 = a();
        if (a2 != 0 && i2 == -1 && intent != null && intent.getData() != null) {
            startActivity(new Intent(this, (Class<?>) dev.duo.hookprobe.AlbumCropActivity.class).setData(intent.getData()).putExtra("appWidgetId", a2).addFlags(1));
        } else if (i2 == -1) {
            Log.w("MiDuoAlbum", "pick returned no image");
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int a2 = a();
        setResult(a2 == 0 ? 0 : -1, new Intent().putExtra("appWidgetId", a2));
        if (a2 == 0) {
            finish();
        } else {
            if (bundle != null) {
                return;
            }
            startActivityForResult(new Intent("android.intent.action.PICK").setType("image/*").setPackage("com.miui.gallery"), 1);
        }
    }
}
