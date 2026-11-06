package dev.duo.hookprobe;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public final class AlbumWidgetConfigureActivity extends Activity {

    /* renamed from: a */
    private static final int f774a = 1;

    /* renamed from: a */
    private int m760a() {
        int intExtra = getIntent().getIntExtra("appWidgetId", 0);
        Uri data = getIntent().getData();
        if (intExtra == 0 && data != null && data.isHierarchical() && "miduo".equals(data.getScheme()) && "widget".equals(data.getHost()) && "/album/edit".equals(data.getPath())) {
            try {
                intExtra = Integer.parseInt(data.getQueryParameter("miuiWidgetId"));
            } catch (NumberFormatException e) {
                return 0;
            }
        }
        if (AlbumWidgetProvider.m766a(this, intExtra)) {
            return intExtra;
        }
        return 0;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        int m760a = m760a();
        if (m760a != 0 && i2 == -1 && intent != null && intent.getData() != null) {
            startActivity(new Intent(this, (Class<?>) AlbumCropActivity.class).setData(intent.getData()).putExtra("appWidgetId", m760a).addFlags(1));
        } else if (i2 == -1) {
            Log.w("MiDuoAlbum", "pick returned no image");
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int m760a = m760a();
        setResult(m760a == 0 ? 0 : -1, new Intent().putExtra("appWidgetId", m760a));
        if (m760a == 0) {
            finish();
        } else {
            if (bundle != null) {
                return;
            }
            startActivityForResult(new Intent("android.intent.action.PICK").setType("image/*").setPackage("com.miui.gallery"), 1);
        }
    }
}
