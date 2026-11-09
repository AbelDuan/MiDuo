package dev.duo.icons;

/* loaded from: classes.dex */
public final class StageProvider extends android.content.ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(android.net.Uri uri, java.lang.String str, java.lang.String[] strArr) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public java.lang.String getType(android.net.Uri uri) {
        return "application/zip";
    }

    @Override // android.content.ContentProvider
    public android.net.Uri insert(android.net.Uri uri, android.content.ContentValues contentValues) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public android.os.ParcelFileDescriptor openFile(android.net.Uri uri, java.lang.String str) throws java.io.FileNotFoundException {
        if (!str.equals("r")) {
            throw new java.lang.SecurityException("只接受读取图标包");
        }
        if (android.os.Binder.getCallingUid() != 6101 && android.os.Binder.getCallingUid() != android.os.Process.myUid()) {
            throw new java.lang.SecurityException("调用者不匹配");
        }
        java.util.List<java.lang.String> pathSegments = uri.getPathSegments();
        android.content.SharedPreferences sharedPreferences = getContext().getSharedPreferences("state", 0);
        if (dev.duo.icons.g.c.equals(uri.getAuthority()) && pathSegments.size() == 2 && pathSegments.get(0).equals("stage") && uri.getQuery() == null && uri.getFragment() == null && pathSegments.get(1).equals(sharedPreferences.getString("nonce", "")) && java.lang.System.currentTimeMillis() - sharedPreferences.getLong("nonceAt", 0L) <= 120000) {
            return android.os.ParcelFileDescriptor.open(new java.io.File(getContext().getFilesDir(), "selected.zip"), 268435456);
        }
        throw new java.lang.SecurityException("图标包授权已过期");
    }

    @Override // android.content.ContentProvider
    public android.database.Cursor query(android.net.Uri uri, java.lang.String[] strArr, java.lang.String str, java.lang.String[] strArr2, java.lang.String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(android.net.Uri uri, android.content.ContentValues contentValues, java.lang.String str, java.lang.String[] strArr) {
        throw new java.lang.UnsupportedOperationException();
    }
}
