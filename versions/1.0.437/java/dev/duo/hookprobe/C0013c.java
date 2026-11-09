package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0013c {
    private static final java.lang.String a = "MiDuoAlbum";
    private static final int b = 2;

    private C0013c() {
    }

    private static java.io.File a(android.content.Context context) {
        return new java.io.File(context.getFilesDir(), "album");
    }

    private static java.io.File b(android.content.Context context) {
        return new java.io.File(a(context), "latest.jpg");
    }

    static android.graphics.Bitmap c(android.content.Context context, int i) {
        java.io.File d = d(context, i);
        if (!d.exists()) {
            if (!b(context).exists()) {
                return null;
            }
            try {
                a(b(context), d);
            } catch (java.io.IOException e) {
                android.util.Log.w(a, "adopt latest failed for widget " + i, e);
                return null;
            }
        }
        return android.graphics.BitmapFactory.decodeFile(d.getPath());
    }

    private static java.io.File d(android.content.Context context, int i) {
        return new java.io.File(a(context), i + ".jpg");
    }

    static android.graphics.Bitmap e(android.content.Context context, int i) {
        java.io.File d = d(context, i).exists() ? d(context, i) : b(context);
        if (!d.exists()) {
            return null;
        }
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inSampleSize = 2;
        return android.graphics.BitmapFactory.decodeFile(d.getPath(), options);
    }

    private static void a(java.io.File file, java.io.File file2) throws java.io.IOException {
        java.io.File file3 = new java.io.File(file2.getPath() + ".tmp");
        java.nio.file.Files.copy(file.toPath(), file3.toPath(), java.nio.file.StandardCopyOption.REPLACE_EXISTING);
        try {
            java.nio.file.Files.move(file3.toPath(), file2.toPath(), new java.nio.file.CopyOption[0]);
        } catch (java.nio.file.FileAlreadyExistsException e) {
            android.util.Log.i(a, "widget photo already saved");
        } finally {
            file3.delete();
        }
    }

    private static void b(java.io.File file, java.io.File file2) throws java.io.IOException {
        java.io.File file3 = new java.io.File(file2.getPath() + ".tmp");
        java.nio.file.Path path = file.toPath();
        java.nio.file.Path path2 = file3.toPath();
        java.nio.file.StandardCopyOption standardCopyOption = java.nio.file.StandardCopyOption.REPLACE_EXISTING;
        java.nio.file.Files.copy(path, path2, standardCopyOption);
        java.nio.file.Files.move(file3.toPath(), file2.toPath(), java.nio.file.StandardCopyOption.ATOMIC_MOVE, standardCopyOption);
    }

    static boolean b(android.content.Context context, int i) {
        return d(context, i).exists() || b(context).exists();
    }

    static boolean a(android.content.Context context, int i, android.graphics.Bitmap bitmap) {
        java.io.File d = d(context, i);
        java.io.File file = new java.io.File(a(context), i + ".tmp");
        a(context).mkdirs();
        try {
            java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(file);
            try {
                if (!bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 92, fileOutputStream)) {
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
                } catch (java.io.IOException e) {
                    android.util.Log.w(a, "keep latest failed; widget " + i + " is saved", e);
                    return true;
                }
            } finally {
            }
        } catch (java.io.IOException e2) {
            android.util.Log.w(a, "save failed", e2);
            return false;
        }
    }

    static void a(android.content.Context context, int i) {
        d(context, i).delete();
    }
}
