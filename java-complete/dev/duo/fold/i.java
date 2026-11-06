package dev.duo.fold;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.SystemClock;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.Arrays;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Element;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class i {
    static volatile String a;
    static volatile String b;
    static volatile a c;

    static final class a {
        int a;
        Bitmap b;
        float[] c;
        float[] d;
        String e;
        String f;
        long g;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(int i) {
        a aVar = new a();
        aVar.a = i;
        try {
            a(aVar, i);
            return aVar;
        } catch (Exception e) {
            a aVar2 = c;
            if (aVar.b != null && (aVar2 == null || aVar2.b != aVar.b)) {
                aVar.b.recycle();
            }
            aVar.b = null;
            aVar.e = "原始壁纸无法读取或解码 " + e;
            return aVar;
        }
    }

    static void a(a aVar, int i) throws Exception {
        float[] fArr;
        long uptimeMillis = SystemClock.uptimeMillis();
        String str = "/data/system/theme_magic/users/" + i + "/wallpaper/data/";
        String a2 = a(new File(str + "small_home.xml"), 4);
        String a3 = a(new File(str + "home.xml"), 1);
        if (a2 != null && a3 != null) {
            File file = new File(a2);
            File file2 = new File(a3);
            if (file.canRead() && file2.canRead()) {
                String str2 = a2 + '|' + file.length() + '|' + file.lastModified() + '|' + a3 + '|' + file2.length() + '|' + file2.lastModified();
                if (!str2.equals(a)) {
                    if (!str2.equals(b) && Arrays.equals(Files.readAllBytes(file.toPath()), Files.readAllBytes(file2.toPath()))) {
                        a = str2;
                    } else {
                        b = str2;
                        aVar.e = "内外屏使用不同壁纸原图";
                        return;
                    }
                }
                a aVar2 = c;
                if (aVar2 != null && aVar2.a == i && str2.equals(aVar2.f)) {
                    aVar.b = aVar2.b;
                    aVar.c = aVar2.c;
                    aVar.d = aVar2.d;
                    aVar.g = SystemClock.uptimeMillis() - uptimeMillis;
                    return;
                }
                final float[][] fArr2 = new float[2][];
                Bitmap decodeBitmap = ImageDecoder.decodeBitmap(ImageDecoder.createSource(file), new ImageDecoder.OnHeaderDecodedListener() { // from class: dev.duo.fold.i$$ExternalSyntheticLambda0
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                        dev.duo.fold.i.a(fArr2, imageDecoder, imageInfo, source);
                    }
                });
                aVar.b = decodeBitmap;
                float[] fArr3 = fArr2[0];
                if (fArr3 != null && (fArr = fArr2[1]) != null) {
                    aVar.c = fArr3;
                    aVar.d = fArr;
                    aVar.g = SystemClock.uptimeMillis() - uptimeMillis;
                    a aVar3 = new a();
                    aVar3.a = i;
                    aVar3.b = aVar.b;
                    aVar3.c = aVar.c;
                    aVar3.d = aVar.d;
                    aVar3.f = str2;
                    c = aVar3;
                    return;
                }
                decodeBitmap.recycle();
                aVar.b = null;
                aVar.e = "原始壁纸尺寸无效";
                return;
            }
            aVar.e = "静态壁纸原图不可读";
            return;
        }
        aVar.e = "壁纸不是无特效的静态单图，或原图记录不可读";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(float[][] fArr, ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        int width = imageInfo.getSize().getWidth();
        int height = imageInfo.getSize().getHeight();
        fArr[0] = a(width, height, 1168, 1712);
        float[] a2 = a(width, height, 2364, 1672);
        fArr[1] = a2;
        if (fArr[0] == null || a2 == null) {
            return;
        }
        float f = height;
        double min = Math.min(1.0d, Math.max(1712.0f / (fArr[0][3] * f), 1672.0f / (a2[3] * f)));
        imageDecoder.setTargetSize(Math.max(1, (int) Math.ceil(width * min)), Math.max(1, (int) Math.ceil(height * min)));
        imageDecoder.setAllocator(1);
    }

    static boolean a(Bundle bundle) {
        int i;
        int i2;
        Bundle bundle2 = bundle.getBundle("wallpaper");
        float[] floatArray = bundle2.getFloatArray("offsets");
        int[] intArray = bundle2.getIntArray("displayOffset");
        Rect rect = (Rect) bundle2.getParcelable("frame");
        return "com.miui.miwallpaper".equals(bundle2.getString("package")) && bundle.getFloat("wallpaperDim") == 0.0f && floatArray[4] == 1.0f && floatArray[0] == 0.5f && floatArray[1] == 0.5f && floatArray[2] <= 0.0f && floatArray[3] <= 0.0f && ((i = intArray[0]) == Integer.MIN_VALUE || i == 0) && (((i2 = intArray[1]) == Integer.MIN_VALUE || i2 == 0) && rect.left == 0 && rect.top == 0 && rect.right == bundle.getInt("width") && rect.bottom == bundle.getInt("height") && Arrays.equals(bundle2.getFloatArray("matrix"), new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}));
    }

    static String a(File file, int i) throws Exception {
        if (!file.canRead()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            String a2 = a(fileInputStream, i);
            fileInputStream.close();
            return a2;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String a(InputStream inputStream, int i) throws Exception {
        Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream).getDocumentElement();
        if ("wallpaper_data".equals(documentElement.getTagName()) && Integer.toString(i).equals(documentElement.getAttribute("which")) && "image".equals(documentElement.getAttribute("type")) && "1".equals(documentElement.getAttribute("pathSize")) && "com.miui.miwallpaper/com.miui.miwallpaper.wallpaperservice.ImageWallpaper".equals(documentElement.getAttribute("component")) && "0".equals(documentElement.getAttribute("effect_id")) && "false".equals(documentElement.getAttribute("enable_blur")) && "false".equals(documentElement.getAttribute("support_dark")) && !documentElement.getAttribute("path0").isEmpty()) {
            return documentElement.getAttribute("path0");
        }
        return null;
    }

    static float[] a(int i, int i2, int i3, int i4) {
        if (i <= 0 || i2 <= 0) {
            return null;
        }
        double d = i;
        double d2 = i3;
        double d3 = i2;
        double d4 = i4;
        double min = Math.min(d / d2, d3 / d4);
        double d5 = (d2 * min) / d;
        double d6 = (d4 * min) / d3;
        return new float[]{(float) ((1.0d - d5) / 2.0d), (float) ((1.0d - d6) / 2.0d), (float) d5, (float) d6};
    }
}
