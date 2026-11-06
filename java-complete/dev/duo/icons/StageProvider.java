package dev.duo.icons;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class StageProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "application/zip";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        if (!str.equals("r")) {
            throw new SecurityException("只接受读取图标包");
        }
        if (Binder.getCallingUid() != 6101 && Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("调用者不匹配");
        }
        List<String> pathSegments = uri.getPathSegments();
        SharedPreferences sharedPreferences = getContext().getSharedPreferences("state", 0);
        if (g.c.equals(uri.getAuthority()) && pathSegments.size() == 2 && pathSegments.get(0).equals("stage") && uri.getQuery() == null && uri.getFragment() == null && pathSegments.get(1).equals(sharedPreferences.getString("nonce", "")) && System.currentTimeMillis() - sharedPreferences.getLong("nonceAt", 0L) <= 120000) {
            return ParcelFileDescriptor.open(new File(getContext().getFilesDir(), "selected.zip"), 268435456);
        }
        throw new SecurityException("图标包授权已过期");
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
