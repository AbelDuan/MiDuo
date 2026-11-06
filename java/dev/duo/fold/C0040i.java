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

/* renamed from: dev.duo.fold.i */
/* loaded from: classes.dex */
public final class C0040i {

    /* renamed from: a */
    static volatile String f749a;

    /* renamed from: b */
    static volatile String f750b;

    /* renamed from: c */
    static volatile a f751c;

    /* renamed from: dev.duo.fold.i$a */
    static final class a {

        /* renamed from: a */
        int f752a;

        /* renamed from: b */
        Bitmap f753b;

        /* renamed from: c */
        float[] f754c;

        /* renamed from: d */
        float[] f755d;

        /* renamed from: e */
        String f756e;

        /* renamed from: f */
        String f757f;

        /* renamed from: g */
        long f758g;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static a m737a(int i) {
        a aVar = new a();
        aVar.f752a = i;
        try {
            m740a(aVar, i);
            return aVar;
        } catch (Exception e) {
            a aVar2 = f751c;
            if (aVar.f753b != null && (aVar2 == null || aVar2.f753b != aVar.f753b)) {
                aVar.f753b.recycle();
            }
            aVar.f753b = null;
            aVar.f756e = "原始壁纸无法读取或解码 " + e;
            return aVar;
        }
    }

    /* renamed from: a */
    static void m740a(a aVar, int i) throws Exception {
        float[] fArr;
        long uptimeMillis = SystemClock.uptimeMillis();
        String str = "/data/system/theme_magic/users/" + i + "/wallpaper/data/";
        String m738a = m738a(new File(str + "small_home.xml"), 4);
        String m738a2 = m738a(new File(str + "home.xml"), 1);
        if (m738a != null && m738a2 != null) {
            File file = new File(m738a);
            File file2 = new File(m738a2);
            if (file.canRead() && file2.canRead()) {
                String str2 = m738a + '|' + file.length() + '|' + file.lastModified() + '|' + m738a2 + '|' + file2.length() + '|' + file2.lastModified();
                if (!str2.equals(f749a)) {
                    if (!str2.equals(f750b) && Arrays.equals(Files.readAllBytes(file.toPath()), Files.readAllBytes(file2.toPath()))) {
                        f749a = str2;
                    } else {
                        f750b = str2;
                        aVar.f756e = "内外屏使用不同壁纸原图";
                        return;
                    }
                }
                a aVar2 = f751c;
                if (aVar2 != null && aVar2.f752a == i && str2.equals(aVar2.f757f)) {
                    aVar.f753b = aVar2.f753b;
                    aVar.f754c = aVar2.f754c;
                    aVar.f755d = aVar2.f755d;
                    aVar.f758g = SystemClock.uptimeMillis() - uptimeMillis;
                    return;
                }
                final float[][] fArr2 = new float[2][];
                Bitmap decodeBitmap = ImageDecoder.decodeBitmap(ImageDecoder.createSource(file), new ImageDecoder.OnHeaderDecodedListener() { // from class: dev.duo.fold.i$$ExternalSyntheticLambda0
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                        C0040i.m741a(fArr2, imageDecoder, imageInfo, source);
                    }
                });
                aVar.f753b = decodeBitmap;
                float[] fArr3 = fArr2[0];
                if (fArr3 != null && (fArr = fArr2[1]) != null) {
                    aVar.f754c = fArr3;
                    aVar.f755d = fArr;
                    aVar.f758g = SystemClock.uptimeMillis() - uptimeMillis;
                    a aVar3 = new a();
                    aVar3.f752a = i;
                    aVar3.f753b = aVar.f753b;
                    aVar3.f754c = aVar.f754c;
                    aVar3.f755d = aVar.f755d;
                    aVar3.f757f = str2;
                    f751c = aVar3;
                    return;
                }
                decodeBitmap.recycle();
                aVar.f753b = null;
                aVar.f756e = "原始壁纸尺寸无效";
                return;
            }
            aVar.f756e = "静态壁纸原图不可读";
            return;
        }
        aVar.f756e = "壁纸不是无特效的静态单图，或原图记录不可读";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m741a(float[][] fArr, ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        int width = imageInfo.getSize().getWidth();
        int height = imageInfo.getSize().getHeight();
        fArr[0] = m743a(width, height, 1168, 1712);
        float[] m743a = m743a(width, height, 2364, 1672);
        fArr[1] = m743a;
        if (fArr[0] == null || m743a == null) {
            return;
        }
        float f = height;
        double min = Math.min(1.0d, Math.max(1712.0f / (r5[3] * f), 1672.0f / (m743a[3] * f)));
        imageDecoder.setTargetSize(Math.max(1, (int) Math.ceil(width * min)), Math.max(1, (int) Math.ceil(height * min)));
        imageDecoder.setAllocator(1);
    }

    /* renamed from: a */
    static boolean m742a(Bundle bundle) {
        int i;
        int i2;
        Bundle bundle2 = bundle.getBundle("wallpaper");
        float[] floatArray = bundle2.getFloatArray("offsets");
        int[] intArray = bundle2.getIntArray("displayOffset");
        Rect rect = (Rect) bundle2.getParcelable("frame");
        return "com.miui.miwallpaper".equals(bundle2.getString("package")) && bundle.getFloat("wallpaperDim") == 0.0f && floatArray[4] == 1.0f && floatArray[0] == 0.5f && floatArray[1] == 0.5f && floatArray[2] <= 0.0f && floatArray[3] <= 0.0f && ((i = intArray[0]) == Integer.MIN_VALUE || i == 0) && (((i2 = intArray[1]) == Integer.MIN_VALUE || i2 == 0) && rect.left == 0 && rect.top == 0 && rect.right == bundle.getInt("width") && rect.bottom == bundle.getInt("height") && Arrays.equals(bundle2.getFloatArray("matrix"), new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}));
    }

    /* renamed from: a */
    static String m738a(File file, int i) throws Exception {
        if (!file.canRead()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            String m739a = m739a(fileInputStream, i);
            fileInputStream.close();
            return m739a;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static String m739a(InputStream inputStream, int i) throws Exception {
        Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream).getDocumentElement();
        if ("wallpaper_data".equals(documentElement.getTagName()) && Integer.toString(i).equals(documentElement.getAttribute("which")) && "image".equals(documentElement.getAttribute("type")) && "1".equals(documentElement.getAttribute("pathSize")) && "com.miui.miwallpaper/com.miui.miwallpaper.wallpaperservice.ImageWallpaper".equals(documentElement.getAttribute("component")) && "0".equals(documentElement.getAttribute("effect_id")) && "false".equals(documentElement.getAttribute("enable_blur")) && "false".equals(documentElement.getAttribute("support_dark")) && !documentElement.getAttribute("path0").isEmpty()) {
            return documentElement.getAttribute("path0");
        }
        return null;
    }

    /* renamed from: a */
    static float[] m743a(int i, int i2, int i3, int i4) {
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
