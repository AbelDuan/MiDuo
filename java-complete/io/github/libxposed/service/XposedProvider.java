package io.github.libxposed.service;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.util.Objects;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class XposedProvider extends ContentProvider {
    private static final String TAG = "XposedProvider";

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        int targetSdk = ((Context) Objects.requireNonNull(getContext())).getApplicationInfo().targetSdkVersion;
        if (targetSdk >= 30) {
            io.github.libxposed.service.RemotePreferences.shouldNotifyCleared = true;
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        return null;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String method, String arg, Bundle extras) {
        if (method.equals(io.github.libxposed.service.IXposedService.SEND_BINDER) && extras != null) {
            IBinder binder = extras.getBinder("binder");
            if (binder != null) {
                Log.d(TAG, "binder received: " + binder);
                io.github.libxposed.service.XposedServiceHelper.onBinderReceived(binder);
            }
            return new Bundle();
        }
        return null;
    }
}
