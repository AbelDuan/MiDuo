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

/* renamed from: dev.duo.hookprobe.c, reason: case insensitive filesystem */
/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class c {
    private static final String a = "MiDuoAlbum";
    private static final int b = 2;

    private c() {
    }

    private static File a(Context context) {
        return new File(context.getFilesDir(), "album");
    }

    private static File b(Context context) {
        return new File(a(context), "latest.jpg");
    }

    static Bitmap c(Context context, int i) {
        File d = d(context, i);
        if (!dev.duo.hookprobe.d.exists()) {
            if (!b(context).exists()) {
                return null;
            }
            try {
                a(b(context), d);
            } catch (IOException e) {
                Log.w(a, "adopt latest failed for widget " + i, e);
                return null;
            }
        }
        return BitmapFactory.decodeFile(dev.duo.hookprobe.d.getPath());
    }

    private static File d(Context context, int i) {
        return new File(a(context), i + ".jpg");
    }

    static Bitmap e(Context context, int i) {
        File d = d(context, i).exists() ? d(context, i) : b(context);
        if (!dev.duo.hookprobe.d.exists()) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 2;
        return BitmapFactory.decodeFile(dev.duo.hookprobe.d.getPath(), options);
    }

    private static void a(File file, File file2) throws IOException {
        File file3 = new File(file2.getPath() + ".tmp");
        Files.copy(file.toPath(), file3.toPath(), StandardCopyOption.REPLACE_EXISTING);
        try {
            Files.move(file3.toPath(), file2.toPath(), new CopyOption[0]);
        } catch (FileAlreadyExistsException e) {
            Log.i(a, "widget photo already saved");
        } finally {
            file3.delete();
        }
    }

    private static void b(File file, File file2) throws IOException {
        File file3 = new File(file2.getPath() + ".tmp");
        Path path = file.toPath();
        Path path2 = file3.toPath();
        StandardCopyOption standardCopyOption = StandardCopyOption.REPLACE_EXISTING;
        Files.copy(path, path2, standardCopyOption);
        Files.move(file3.toPath(), file2.toPath(), StandardCopyOption.ATOMIC_MOVE, standardCopyOption);
    }

    static boolean b(Context context, int i) {
        return d(context, i).exists() || b(context).exists();
    }

    static boolean a(Context context, int i, Bitmap bitmap) {
        File d = d(context, i);
        File file = new File(a(context), i + ".tmp");
        a(context).mkdirs();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                if (!bitmap.compress(Bitmap.CompressFormat.JPEG, 92, fileOutputStream)) {
                    fileOutputStream.close();
                    return false;
                }
                fileOutputStream.close();
                if (!file.renameTo(d)) {
                    return false;
                }
                try {
                    b(d, b(context));
                    return true;
                } catch (IOException e) {
                    Log.w(a, "keep latest failed; widget " + i + " is saved", e);
                    return true;
                }
            } finally {
            }
        } catch (IOException e2) {
            Log.w(a, "save failed", e2);
            return false;
        }
    }

    static void a(Context context, int i) {
        d(context, i).delete();
    }
}
