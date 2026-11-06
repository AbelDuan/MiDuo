package dev.duo.hookprobe;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

/* renamed from: dev.duo.hookprobe.c */
/* loaded from: classes.dex */
final class C0101c {

    /* renamed from: a */
    private static final String f1547a = "MiDuoAlbum";

    /* renamed from: b */
    private static final int f1548b = 2;

    private C0101c() {
    }

    /* renamed from: a */
    private static File m1578a(Context context) {
        return new File(context.getFilesDir(), "album");
    }

    /* renamed from: b */
    private static File m1582b(Context context) {
        return new File(m1578a(context), "latest.jpg");
    }

    /* renamed from: c */
    static Bitmap m1585c(Context context, int i) {
        File m1586d = m1586d(context, i);
        if (!m1586d.exists()) {
            if (!m1582b(context).exists()) {
                return null;
            }
            try {
                m1580a(m1582b(context), m1586d);
            } catch (IOException e) {
                Log.w(f1547a, "adopt latest failed for widget " + i, e);
                return null;
            }
        }
        return BitmapFactory.decodeFile(m1586d.getPath());
    }

    /* renamed from: d */
    private static File m1586d(Context context, int i) {
        return new File(m1578a(context), i + ".jpg");
    }

    /* renamed from: e */
    static Bitmap m1587e(Context context, int i) {
        File m1586d = m1586d(context, i).exists() ? m1586d(context, i) : m1582b(context);
        if (!m1586d.exists()) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 2;
        return BitmapFactory.decodeFile(m1586d.getPath(), options);
    }

    /* renamed from: a */
    private static void m1580a(File file, File file2) throws IOException {
        File file3 = new File(file2.getPath() + ".tmp");
        Files.copy(file.toPath(), file3.toPath(), StandardCopyOption.REPLACE_EXISTING);
        try {
            Files.move(file3.toPath(), file2.toPath(), new CopyOption[0]);
        } catch (FileAlreadyExistsException e) {
            Log.i(f1547a, "widget photo already saved");
        } finally {
            file3.delete();
        }
    }

    /* renamed from: b */
    private static void m1583b(File file, File file2) throws IOException {
        File file3 = new File(file2.getPath() + ".tmp");
        Path path = file.toPath();
        Path path2 = file3.toPath();
        StandardCopyOption standardCopyOption = StandardCopyOption.REPLACE_EXISTING;
        Files.copy(path, path2, standardCopyOption);
        Files.move(file3.toPath(), file2.toPath(), StandardCopyOption.ATOMIC_MOVE, standardCopyOption);
    }

    /* renamed from: b */
    static boolean m1584b(Context context, int i) {
        return m1586d(context, i).exists() || m1582b(context).exists();
    }

    /* renamed from: a */
    static boolean m1581a(Context context, int i, Bitmap bitmap) {
        File m1586d = m1586d(context, i);
        File file = new File(m1578a(context), i + ".tmp");
        m1578a(context).mkdirs();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                if (!bitmap.compress(Bitmap.CompressFormat.JPEG, 92, fileOutputStream)) {
                    fileOutputStream.close();
                    return false;
                }
                fileOutputStream.close();
                if (!file.renameTo(m1586d)) {
                    return false;
                }
                try {
                    m1583b(m1586d, m1582b(context));
                    return true;
                } catch (IOException e) {
                    Log.w(f1547a, "keep latest failed; widget " + i + " is saved", e);
                    return true;
                }
            } finally {
            }
        } catch (IOException e2) {
            Log.w(f1547a, "save failed", e2);
            return false;
        }
    }

    /* renamed from: a */
    static void m1579a(Context context, int i) {
        m1586d(context, i).delete();
    }
}
