package dev.duo.icons;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class e {
    public static final long a_v = 1073741824;
    public static final long b_v = 134217728;
    private static final long c_v = 134217728;
    private static final long d = 536870912;
    private static final int e_v = 2097152;
    private static final String f = "res/drawable-xxhdpi/";

    static final class a implements Closeable {
        final List<c> a = new ArrayList();
        private final RandomAccessFile b;

        /* renamed from: dev.duo.icons.e$a$a, reason: collision with other inner class name */
        class C0004a extends InputStream {
            long a;
            boolean b;
            final /* synthetic */ long c;
            final /* synthetic */ c d;

            C0004a(long j, c cVar) {
                this.c = j;
                this.d = cVar;
                this.a = j;
                this.b = cVar.b == 8;
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                byte[] bArr = new byte[1];
                if (read(bArr, 0, 1) < 0) {
                    return -1;
                }
                return bArr[0] & 255;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                long j = (this.c + this.d.d) - this.a;
                if (i2 == 0) {
                    return 0;
                }
                if (j <= 0) {
                    if (!this.b) {
                        return -1;
                    }
                    this.b = false;
                    bArr[i] = 0;
                    return 1;
                }
                dev.duo.icons.a.this.b.seek(this.a);
                int read = dev.duo.icons.a.this.b.read(bArr, i, (int) Math.min(i2, j));
                if (read < 0) {
                    throw new EOFException();
                }
                this.a += read;
                return read;
            }
        }

        class b extends InflaterInputStream {
            final /* synthetic */ Inflater a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(InputStream inputStream, Inflater inflater, int i, Inflater inflater2) {
                super(inputStream, inflater, i);
                this.a = inflater2;
            }

            @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                super.close();
                this.a.end();
            }
        }

        static final class c {
            final String a;
            final int b;
            final int c;
            final long d;
            final long e;
            final long f;

            c(String str, int i, int i2, long j, long j2, long j3) {
                this.a = str;
                this.b = i;
                this.c = i2;
                this.d = j;
                this.e = j2;
                this.f = j3;
            }
        }

        a(File file, String str) throws IOException {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            this.b = randomAccessFile;
            try {
                long length = randomAccessFile.length();
                int min = (int) Math.min(length, 65557L);
                byte[] bArr = new byte[min];
                randomAccessFile.seek(length - min);
                randomAccessFile.readFully(bArr);
                int i = -1;
                for (int i2 = min - 22; i2 >= 0 && i < 0; i2--) {
                    if (e.b(bArr, i2) == 101010256) {
                        i = i2;
                    }
                }
                if (i < 0) {
                    throw new IOException(str);
                }
                long a = e.a(bArr, i + 10);
                long b2 = e.b(bArr, i + 12);
                long b3 = e.b(bArr, i + 16);
                int i3 = 0;
                long j = 4294967295L;
                if ((a == 65535 || b2 == 4294967295L || b3 == 4294967295L) && i >= 20 && e.b(bArr, i - 20) == 117853008) {
                    byte[] bArr2 = new byte[56];
                    this.b.seek(e.c(bArr, i - 12));
                    this.b.readFully(bArr2);
                    if (e.b(bArr2, 0) != 101075792) {
                        throw new IOException(str);
                    }
                    a = e.c(bArr2, 32);
                    b2 = e.c(bArr2, 40);
                    b3 = e.c(bArr2, 48);
                }
                if (b3 < 0 || b2 < 0 || b2 > 67108864 || b3 + b2 > length) {
                    throw new IOException(str);
                }
                byte[] bArr3 = new byte[(int) b2];
                this.b.seek(b3);
                this.b.readFully(bArr3);
                int i4 = 0;
                while (i3 < a) {
                    if (e.b(bArr3, i4) != 33639248) {
                        throw new IOException(str);
                    }
                    int a2 = e.a(bArr3, i4 + 28);
                    int a3 = e.a(bArr3, i4 + 30);
                    int a4 = e.a(bArr3, i4 + 32);
                    long b4 = e.b(bArr3, i4 + 24);
                    long b5 = e.b(bArr3, i4 + 20);
                    long j2 = j;
                    long b6 = e.b(bArr3, i4 + 42);
                    int i5 = i4;
                    int i6 = i5 + 46;
                    int i7 = i6 + a2;
                    long j3 = b4;
                    long j4 = b5;
                    long j5 = b6;
                    int i8 = i7;
                    while (true) {
                        int i9 = i8 + 4;
                        if (i9 <= i7 + a3) {
                            if (e.a(bArr3, i8) == 1) {
                                if (j3 == j2) {
                                    j3 = e.c(bArr3, i9);
                                    i9 = i8 + 12;
                                }
                                if (j4 == j2) {
                                    j4 = e.c(bArr3, i9);
                                    i9 += 8;
                                }
                                if (j5 == j2) {
                                    j5 = e.c(bArr3, i9);
                                }
                            }
                            i8 += e.a(bArr3, i8 + 2) + 4;
                        }
                    }
                    this.a.add(new c(new String(bArr3, i6, a2, StandardCharsets.ISO_8859_1), e.a(bArr3, i5 + 10), e.a(bArr3, i5 + 8), j4, j5, j3));
                    i4 = i5 + a2 + 46 + a3 + a4;
                    i3++;
                    j = j2;
                }
            } catch (IOException | RuntimeException e) {
                this.b.close();
                if (!(e instanceof IOException) || !str.equals(dev.duo.icons.e.getMessage())) {
                    throw new IOException(str, e);
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.b.close();
        }

        c a(String str) {
            for (c cVar : this.a) {
                if (cVar.a.equals(str)) {
                    return cVar;
                }
            }
            return null;
        }

        InputStream a(c cVar) throws IOException {
            if ((cVar.c & 1) == 0) {
                int i = cVar.b;
                if (i != 0 && i != 8) {
                    throw new IOException("不支持的压缩方式");
                }
                byte[] bArr = new byte[30];
                this.b.seek(cVar.e);
                this.b.readFully(bArr);
                long a = cVar.e + 30 + e.a(bArr, 26) + e.a(bArr, 28);
                if (e.b(bArr, 0) == 67324752) {
                    long j = cVar.d;
                    if (j >= 0 && j + a <= this.b.length()) {
                        C0004a c0004a = new C0004a(a, cVar);
                        if (cVar.b == 0) {
                            return c0004a;
                        }
                        Inflater inflater = new Inflater(true);
                        return new b(c0004a, inflater, 16384, inflater);
                    }
                }
                throw new ZipException("bad local header");
            }
            throw new IOException("图标已加密");
        }
    }

    public static final class b {
        public final String a;
        public final String b;
        public final String c;
        public final int d;
        public final int e;

        b(String str, int i, String str2, int i2, String str3) {
            this.a = str;
            this.d = i;
            this.b = str2;
            this.e = i2;
            this.c = str3;
        }
    }

    public interface c {
        void a(byte[] bArr) throws Exception;
    }

    public static byte[] a(InputStream inputStream, long j) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            if (byteArrayOutputStream.size() + read > j) {
                throw new IOException("资源超过安全大小限制");
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    static void b(String str) throws IOException {
        if (str.length() <= 512 && !str.startsWith("/") && str.indexOf(92) < 0 && str.indexOf(58) < 0) {
            if (str.indexOf(0) < 0) {
                for (String str2 : str.split("/", -1)) {
                    if (str2.equals(".") || str2.equals("..")) {
                        throw new IOException("主题包含路径跳转");
                    }
                }
                return;
            }
        }
        throw new IOException("主题包含不安全路径");
    }

    static long c(byte[] bArr, int i) {
        return (b(bArr, i + 4) << 32) | b(bArr, i);
    }

    static int d(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static void a(InputStream inputStream, File file, long j) throws IOException {
        byte[] bArr = new byte[16384];
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        long j2 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.getFD().sync();
                    fileOutputStream.close();
                    return;
                } else {
                    j2 += read;
                    if (j2 > j) {
                        throw new IOException("文件过大");
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    static long b(byte[] bArr, int i) {
        return (a(bArr, i + 2) << 16) | a(bArr, i);
    }

    public static String a(File file) throws Exception {
        int i;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[32768];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            fileInputStream.close();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : messageDigest.digest()) {
                sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b2 & 255)));
            }
            return sb.toString();
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static int b(File file) throws Exception {
        return a(file, (c) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static String a(byte[] bArr, String str) {
        String str2;
        String str3 = "";
        if (bArr != null) {
            String str4 = new String(bArr, StandardCharsets.UTF_8);
            Matcher matcher = Pattern.compile("<title(?:\\s[^>]*)?>(.*?)</title>", 32).matcher(str4);
            if (!str4.contains("<!DOCTYPE") && !str4.contains("<!ENTITY") && matcher.find()) {
                String trim = matcher.group(1).trim();
                str2 = ((trim.startsWith("<![CDATA[") && trim.endsWith("]]>")) ? trim.substring(9, trim.length() - 3) : trim.replace("&lt;", "<").replace("&gt;", ">").replace("&quot;", "\"").replace("&apos;", "'").replace("&amp;", "&")).replaceAll("[\\p{Cntrl}]", "").trim();
                if (str2 == null && !str2.isEmpty()) {
                    str3 = str2;
                } else if (str != null) {
                    str3 = str.replaceAll("[\\p{Cntrl}]", "").trim();
                }
                if (str3.isEmpty()) {
                    str3 = "主题";
                }
                return str3.substring(0, Math.min(str3.length(), 120));
            }
        }
        str2 = null;
        if (str2 == null) {
        }
        if (str != null) {
        }
        if (str3.isEmpty()) {
        }
        return str3.substring(0, Math.min(str3.length(), 120));
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0083, code lost:
    
        throw new java.io.IOException("PNG 缺少图像头");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c0, code lost:
    
        if (r1 == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c2, code lost:
    
        if (r3 == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c4, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00cc, code lost:
    
        throw new java.io.IOException("PNG 缺少图像数据");
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b7, code lost:
    
        throw new java.io.IOException("PNG 长度错误");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static int a(byte[] bArr) throws IOException {
        int i = 8;
        byte[] bArr2 = {-119, 80, 78, 71, 13, 10, 26, 10};
        if (bArr.length < 45 || !Arrays.equals(Arrays.copyOf(bArr, 8), bArr2)) {
            throw new IOException("图标不是有效 PNG");
        }
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        while (true) {
            if (i >= bArr.length) {
                break;
            }
            int i3 = i + 12;
            if (i3 <= bArr.length) {
                int d2 = d(bArr, i);
                if (d2 < 0 || d2 > (bArr.length - i) - 12) {
                    break;
                }
                int i4 = i + 4;
                String str = new String(bArr, i4, 4, StandardCharsets.US_ASCII);
                CRC32 crc32 = new CRC32();
                crc32.update(bArr, i4, d2 + 4);
                int value = (int) crc32.getValue();
                int i5 = i + 8;
                if (value == d(bArr, i5 + d2)) {
                    int i6 = i2 + 1;
                    if (i2 == 0) {
                        if (!str.equals("IHDR") || d2 != 13) {
                            break;
                        }
                        int d3 = d(bArr, i5);
                        int d4 = d(bArr, i3);
                        if (d3 < 1 || d4 < 1 || d3 > 1024 || d4 > 1024) {
                            break;
                        }
                    }
                    if (str.equals("IDAT")) {
                        z2 = true;
                    }
                    if (!str.equals("IEND")) {
                        i += d2 + 12;
                        i2 = i6;
                    } else {
                        if (d2 != 0) {
                            throw new IOException("PNG 结束错误");
                        }
                        i = i3;
                        z = true;
                    }
                } else {
                    throw new IOException("PNG 校验错误");
                }
            } else {
                throw new IOException("PNG 不完整");
            }
        }
        throw new IOException("图标尺寸过大");
    }

    static String a(String str) {
        String substring = str.substring(str.lastIndexOf(47) + 1);
        if (substring.matches("[A-Za-z][A-Za-z0-9_.#-]{1,240}\\.png") && substring.substring(0, substring.length() - 4).contains(".")) {
            return substring;
        }
        return null;
    }

    static int a(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x01b1, code lost:
    
        throw new java.io.IOException("图标包损坏图标过多，已停止检查");
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01be, code lost:
    
        r11.close();
        r10.keySet().removeAll(r4.keySet());
        r0 = new java.util.TreeMap();
        r1 = r10.values().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01dd, code lost:
    
        if (r1.hasNext() == false) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01df, code lost:
    
        r0.merge((java.lang.String) r1.next(), 1, new dev.duo.icons.e$$ExternalSyntheticLambda0());
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01f2, code lost:
    
        r1 = new java.lang.StringBuilder();
        r0 = r0.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0203, code lost:
    
        if (r0.hasNext() == false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0205, code lost:
    
        r2 = (java.util.Map.Entry) r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x020f, code lost:
    
        if (r1.length() != 0) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0211, code lost:
    
        r5 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0216, code lost:
    
        r1.append(r5).append((java.lang.String) r2.getKey()).append(" ").append(r2.getValue()).append(" 个");
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0214, code lost:
    
        r5 = "、";
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x023d, code lost:
    
        if (r4.isEmpty() == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0245, code lost:
    
        if (r10.isEmpty() == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0247, code lost:
    
        r1 = "主题没有可用的静态应用图标";
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0267, code lost:
    
        throw new java.io.IOException(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x024a, code lost:
    
        r1 = "主题没有可用的静态应用图标（跳过：" + ((java.lang.Object) r1) + "）";
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0268, code lost:
    
        r2 = new java.io.File(r25.getPath() + ".new");
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0284, code lost:
    
        r5 = new java.io.FileOutputStream(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0289, code lost:
    
        r7 = new java.util.zip.ZipOutputStream(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x028e, code lost:
    
        r0 = r4.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x029a, code lost:
    
        if (r0.hasNext() == false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x029c, code lost:
    
        r9 = (java.util.Map.Entry) r0.next();
        r11 = new java.util.zip.ZipEntry(dev.duo.icons.e.f + ((java.lang.String) r9.getKey()));
        r11.setTime(0);
        r7.putNextEntry(r11);
        r7.write((byte[]) r9.getValue());
        r7.closeEntry();
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02d3, code lost:
    
        r7.finish();
        r5.getFD().sync();
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02dd, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02e0, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02e9, code lost:
    
        if (r2.length() > r20) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x02eb, code lost:
    
        r12 = a(r8, r26);
        java.nio.file.Files.move(r2.toPath(), r25.toPath(), java.nio.file.StandardCopyOption.REPLACE_EXISTING, java.nio.file.StandardCopyOption.ATOMIC_MOVE);
        r11 = new dev.duo.icons.e.b(r12, r4.size(), a(r25), r10.size(), r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x031c, code lost:
    
        r3.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x031f, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0320, code lost:
    
        r2.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x032a, code lost:
    
        throw new java.io.IOException("纯图标包过大");
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x032b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0336, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0341, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0342, code lost:
    
        r2.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0345, code lost:
    
        throw r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0186 A[Catch: all -> 0x0346, TRY_ENTER, TryCatch #0 {all -> 0x0346, blocks: (B:35:0x009d, B:36:0x00a8, B:39:0x00b2, B:41:0x00ce, B:43:0x00da, B:46:0x00ee, B:48:0x00f4, B:57:0x0114, B:99:0x0120, B:62:0x0123, B:81:0x012d, B:82:0x0130, B:85:0x0147, B:87:0x014f, B:92:0x015e, B:93:0x0165, B:95:0x0166, B:96:0x016d, B:97:0x0146, B:66:0x0186, B:67:0x0188, B:69:0x018d, B:71:0x0191, B:74:0x0198, B:75:0x019f, B:104:0x017c, B:114:0x0179, B:119:0x01aa, B:120:0x01b1, B:127:0x00e2), top: B:34:0x009d, outer: #13 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static b a(File file, File file2, String str, c cVar) throws Exception {
        byte[] bArr;
        Iterator<a.c> it;
        Iterator<a.c> it2;
        byte[] bArr2;
        String str2;
        if (file.length() >= 4 && file.length() <= a) {
            File file3 = new File(file2.getPath() + ".icons");
            try {
                a aVar = new a(file, "所选文件不是 MTZ/ZIP 主题包");
                try {
                    a.c a2 = aVar.a("icons");
                    if (a2 != null) {
                        try {
                            InputStream a3 = aVar.a(a2);
                            long j = 134217728;
                            try {
                                a(a3, file3, 134217728L);
                                if (a3 != null) {
                                    a3.close();
                                }
                                a.c a4 = aVar.a("description.xml");
                                if (a4 == null || a4.f > 131072) {
                                    bArr = null;
                                } else {
                                    try {
                                        a3 = aVar.a(a4);
                                        try {
                                            byte[] a5 = a(a3, 131072L);
                                            if (a3 != null) {
                                                a3.close();
                                            }
                                            bArr = a5;
                                        } finally {
                                        }
                                    } catch (IOException e2) {
                                        bArr = null;
                                    }
                                }
                                aVar.close();
                                TreeMap treeMap = new TreeMap();
                                HashMap hashMap = new HashMap();
                                HashMap hashMap2 = new HashMap();
                                aVar = new a(file3, "主题包的 icons 资源已损坏");
                                try {
                                    Iterator<a.c> it3 = aVar.a.iterator();
                                    int i = 0;
                                    long j2 = 0;
                                    long j3 = 0;
                                    while (true) {
                                        long j4 = j;
                                        if (!it3.hasNext()) {
                                            break;
                                        }
                                        a.c next = it3.next();
                                        String replace = next.a.replace('\\', '/');
                                        String a6 = a(replace);
                                        if (a6 == null) {
                                            it = it3;
                                        } else if (replace.matches("res/drawable(?:-[A-Za-z0-9-]+)?/[^/]+")) {
                                            int i2 = replace.startsWith(f) ? 3 : replace.contains("xhdpi/") ? 2 : 1;
                                            if (!hashMap.containsKey(a6) || i2 > ((Integer) hashMap.get(a6)).intValue()) {
                                                int i3 = i + 1;
                                                if (i3 > 20000 || j2 > d) {
                                                    break;
                                                }
                                                long j5 = 2097152;
                                                try {
                                                    InputStream a7 = aVar.a(next);
                                                    it2 = it3;
                                                    try {
                                                        bArr2 = a(a7, 2097152L);
                                                        if (a7 != null) {
                                                            try {
                                                                a7.close();
                                                            } catch (IOException e3) {
                                                                e = e3;
                                                                if (bArr2 != null) {
                                                                    j5 = bArr2.length;
                                                                }
                                                                j2 += j5;
                                                                if (!(e instanceof ZipException) && !(e instanceof EOFException) && dev.duo.icons.e.getMessage() != null) {
                                                                    str2 = dev.duo.icons.e.getMessage();
                                                                    hashMap2.put(a6, str2);
                                                                    i = i3;
                                                                    j = j4;
                                                                    it3 = it2;
                                                                }
                                                                str2 = "压缩数据损坏";
                                                                hashMap2.put(a6, str2);
                                                                i = i3;
                                                                j = j4;
                                                                it3 = it2;
                                                            }
                                                        }
                                                        bArr2 = Arrays.copyOf(bArr2, a(bArr2));
                                                        if (cVar != null) {
                                                            cVar.a(bArr2);
                                                        }
                                                        j2 += bArr2.length;
                                                        byte[] bArr3 = (byte[]) treeMap.put(a6, bArr2);
                                                        hashMap.put(a6, Integer.valueOf(i2));
                                                        j3 += bArr2.length - (bArr3 == null ? 0 : bArr3.length);
                                                    } catch (Throwable th) {
                                                        if (a7 != null) {
                                                            try {
                                                                a7.close();
                                                            } catch (Throwable th2) {
                                                                try {
                                                                    th.addSuppressed(th2);
                                                                } catch (IOException e4) {
                                                                    e = e4;
                                                                    bArr2 = null;
                                                                    if (bArr2 != null) {
                                                                    }
                                                                    j2 += j5;
                                                                    if (!(e instanceof ZipException)) {
                                                                        str2 = dev.duo.icons.e.getMessage();
                                                                        hashMap2.put(a6, str2);
                                                                        i = i3;
                                                                        j = j4;
                                                                        it3 = it2;
                                                                    }
                                                                    str2 = "压缩数据损坏";
                                                                    hashMap2.put(a6, str2);
                                                                    i = i3;
                                                                    j = j4;
                                                                    it3 = it2;
                                                                }
                                                            }
                                                        }
                                                        throw th;
                                                    }
                                                } catch (IOException e5) {
                                                    e = e5;
                                                    it2 = it3;
                                                }
                                                if (j3 <= j4) {
                                                    if (treeMap.size() > 6000) {
                                                        throw new IOException("图标数量过多");
                                                    }
                                                    i = i3;
                                                    j = j4;
                                                    it3 = it2;
                                                } else {
                                                    throw new IOException("图标展开过大");
                                                }
                                            } else {
                                                it = it3;
                                            }
                                        } else {
                                            it = it3;
                                        }
                                        j = j4;
                                        it3 = it;
                                    }
                                } finally {
                                }
                            } finally {
                            }
                        } catch (EOFException | ZipException e6) {
                            throw new IOException("主题包的 icons 资源已损坏", e6);
                        }
                    } else {
                        throw new IOException("主题包没有独立 icons 资源");
                    }
                } finally {
                }
            } catch (Throwable th3) {
                file3.delete();
                throw th3;
            }
        } else {
            throw new IOException("主题包大小无效");
        }
    }

    public static int a(File file, c cVar) throws Exception {
        if (file.length() <= 134217728) {
            HashSet hashSet = new HashSet();
            ZipFile zipFile = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                long j = 0;
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    b(nextElement.getName());
                    String a2 = a(nextElement.getName());
                    if (a2 != null && nextElement.getName().equals(f + a2) && !nextElement.isDirectory() && hashSet.add(a2) && hashSet.size() <= 6000) {
                        InputStream inputStream = zipFile.getInputStream(nextElement);
                        try {
                            byte[] a3 = a(inputStream, 2097152L);
                            j += a3.length;
                            if (j > 134217728) {
                                throw new IOException("图标展开过大");
                            }
                            if (a(a3) != a3.length) {
                                throw new IOException("PNG 结束错误");
                            }
                            if (cVar != null) {
                                cVar.a(a3);
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } finally {
                        }
                    } else {
                        throw new IOException("只接受过滤后的应用 PNG");
                    }
                }
                zipFile.close();
                if (hashSet.isEmpty()) {
                    throw new IOException("图标包为空");
                }
                return hashSet.size();
            } catch (Throwable th) {
                try {
                    zipFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        throw new IOException("图标包过大");
    }
}
