package dev.duo.icons;

/* loaded from: classes.dex */
public final class e {
    public static final long a = 1073741824;
    public static final long b = 134217728;
    private static final long c = 134217728;
    private static final long d = 536870912;
    private static final int e = 2097152;
    private static final java.lang.String f = "res/drawable-xxhdpi/";

    static final class a implements java.io.Closeable {
        final java.util.List<dev.duo.icons.e.a.c> a = new java.util.ArrayList();
        private final java.io.RandomAccessFile b;

        /* renamed from: dev.duo.icons.e$a$a, reason: collision with other inner class name */
        class C0004a extends java.io.InputStream {
            long a;
            boolean b;
            final /* synthetic */ long c;
            final /* synthetic */ dev.duo.icons.e.a.c d;

            C0004a(long j, dev.duo.icons.e.a.c cVar) {
                this.c = j;
                this.d = cVar;
                this.a = j;
                this.b = cVar.b == 8;
            }

            @Override // java.io.InputStream
            public int read() throws java.io.IOException {
                byte[] bArr = new byte[1];
                if (read(bArr, 0, 1) < 0) {
                    return -1;
                }
                return bArr[0] & 255;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws java.io.IOException {
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
                dev.duo.icons.e.a.this.b.seek(this.a);
                int read = dev.duo.icons.e.a.this.b.read(bArr, i, (int) java.lang.Math.min(i2, j));
                if (read < 0) {
                    throw new java.io.EOFException();
                }
                this.a += read;
                return read;
            }
        }

        class b extends java.util.zip.InflaterInputStream {
            final /* synthetic */ java.util.zip.Inflater a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(java.io.InputStream inputStream, java.util.zip.Inflater inflater, int i, java.util.zip.Inflater inflater2) {
                super(inputStream, inflater, i);
                this.a = inflater2;
            }

            @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws java.io.IOException {
                super.close();
                this.a.end();
            }
        }

        static final class c {
            final java.lang.String a;
            final int b;
            final int c;
            final long d;
            final long e;
            final long f;

            c(java.lang.String str, int i, int i2, long j, long j2, long j3) {
                this.a = str;
                this.b = i;
                this.c = i2;
                this.d = j;
                this.e = j2;
                this.f = j3;
            }
        }

        a(java.io.File file, java.lang.String str) throws java.io.IOException {
            java.io.RandomAccessFile randomAccessFile = new java.io.RandomAccessFile(file, "r");
            this.b = randomAccessFile;
            try {
                long length = randomAccessFile.length();
                int min = (int) java.lang.Math.min(length, 65557L);
                byte[] bArr = new byte[min];
                randomAccessFile.seek(length - min);
                randomAccessFile.readFully(bArr);
                int i = -1;
                for (int i2 = min - 22; i2 >= 0 && i < 0; i2--) {
                    if (dev.duo.icons.e.b(bArr, i2) == 101010256) {
                        i = i2;
                    }
                }
                if (i < 0) {
                    throw new java.io.IOException(str);
                }
                long a = dev.duo.icons.e.a(bArr, i + 10);
                long b2 = dev.duo.icons.e.b(bArr, i + 12);
                long b3 = dev.duo.icons.e.b(bArr, i + 16);
                int i3 = 0;
                long j = 4294967295L;
                if ((a == 65535 || b2 == 4294967295L || b3 == 4294967295L) && i >= 20 && dev.duo.icons.e.b(bArr, i - 20) == 117853008) {
                    byte[] bArr2 = new byte[56];
                    this.b.seek(dev.duo.icons.e.c(bArr, i - 12));
                    this.b.readFully(bArr2);
                    if (dev.duo.icons.e.b(bArr2, 0) != 101075792) {
                        throw new java.io.IOException(str);
                    }
                    a = dev.duo.icons.e.c(bArr2, 32);
                    b2 = dev.duo.icons.e.c(bArr2, 40);
                    b3 = dev.duo.icons.e.c(bArr2, 48);
                }
                if (b3 < 0 || b2 < 0 || b2 > 67108864 || b3 + b2 > length) {
                    throw new java.io.IOException(str);
                }
                byte[] bArr3 = new byte[(int) b2];
                this.b.seek(b3);
                this.b.readFully(bArr3);
                int i4 = 0;
                while (i3 < a) {
                    if (dev.duo.icons.e.b(bArr3, i4) != 33639248) {
                        throw new java.io.IOException(str);
                    }
                    int a2 = dev.duo.icons.e.a(bArr3, i4 + 28);
                    int a3 = dev.duo.icons.e.a(bArr3, i4 + 30);
                    int a4 = dev.duo.icons.e.a(bArr3, i4 + 32);
                    long b4 = dev.duo.icons.e.b(bArr3, i4 + 24);
                    long b5 = dev.duo.icons.e.b(bArr3, i4 + 20);
                    long j2 = j;
                    long b6 = dev.duo.icons.e.b(bArr3, i4 + 42);
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
                            if (dev.duo.icons.e.a(bArr3, i8) == 1) {
                                if (j3 == j2) {
                                    j3 = dev.duo.icons.e.c(bArr3, i9);
                                    i9 = i8 + 12;
                                }
                                if (j4 == j2) {
                                    j4 = dev.duo.icons.e.c(bArr3, i9);
                                    i9 += 8;
                                }
                                if (j5 == j2) {
                                    j5 = dev.duo.icons.e.c(bArr3, i9);
                                }
                            }
                            i8 += dev.duo.icons.e.a(bArr3, i8 + 2) + 4;
                        }
                    }
                    this.a.add(new dev.duo.icons.e.a.c(new java.lang.String(bArr3, i6, a2, java.nio.charset.StandardCharsets.ISO_8859_1), dev.duo.icons.e.a(bArr3, i5 + 10), dev.duo.icons.e.a(bArr3, i5 + 8), j4, j5, j3));
                    i4 = i5 + a2 + 46 + a3 + a4;
                    i3++;
                    j = j2;
                }
            } catch (java.io.IOException | java.lang.RuntimeException e) {
                this.b.close();
                if (!(e instanceof java.io.IOException) || !str.equals(e.getMessage())) {
                    throw new java.io.IOException(str, e);
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            this.b.close();
        }

        dev.duo.icons.e.a.c a(java.lang.String str) {
            for (dev.duo.icons.e.a.c cVar : this.a) {
                if (cVar.a.equals(str)) {
                    return cVar;
                }
            }
            return null;
        }

        java.io.InputStream a(dev.duo.icons.e.a.c cVar) throws java.io.IOException {
            if ((cVar.c & 1) == 0) {
                int i = cVar.b;
                if (i != 0 && i != 8) {
                    throw new java.io.IOException("不支持的压缩方式");
                }
                byte[] bArr = new byte[30];
                this.b.seek(cVar.e);
                this.b.readFully(bArr);
                long a = cVar.e + 30 + dev.duo.icons.e.a(bArr, 26) + dev.duo.icons.e.a(bArr, 28);
                if (dev.duo.icons.e.b(bArr, 0) == 67324752) {
                    long j = cVar.d;
                    if (j >= 0 && j + a <= this.b.length()) {
                        dev.duo.icons.e.a.C0004a c0004a = new dev.duo.icons.e.a.C0004a(a, cVar);
                        if (cVar.b == 0) {
                            return c0004a;
                        }
                        java.util.zip.Inflater inflater = new java.util.zip.Inflater(true);
                        return new dev.duo.icons.e.a.b(c0004a, inflater, 16384, inflater);
                    }
                }
                throw new java.util.zip.ZipException("bad local header");
            }
            throw new java.io.IOException("图标已加密");
        }
    }

    public static final class b {
        public final java.lang.String a;
        public final java.lang.String b;
        public final java.lang.String c;
        public final int d;
        public final int e;

        b(java.lang.String str, int i, java.lang.String str2, int i2, java.lang.String str3) {
            this.a = str;
            this.d = i;
            this.b = str2;
            this.e = i2;
            this.c = str3;
        }
    }

    public interface c {
        void a(byte[] bArr) throws java.lang.Exception;
    }

    public static byte[] a(java.io.InputStream inputStream, long j) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            if (byteArrayOutputStream.size() + read > j) {
                throw new java.io.IOException("资源超过安全大小限制");
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    static void b(java.lang.String str) throws java.io.IOException {
        if (str.length() <= 512 && !str.startsWith("/") && str.indexOf(92) < 0 && str.indexOf(58) < 0) {
            if (str.indexOf(0) < 0) {
                for (java.lang.String str2 : str.split("/", -1)) {
                    if (str2.equals(".") || str2.equals("..")) {
                        throw new java.io.IOException("主题包含路径跳转");
                    }
                }
                return;
            }
        }
        throw new java.io.IOException("主题包含不安全路径");
    }

    static long c(byte[] bArr, int i) {
        return (b(bArr, i + 4) << 32) | b(bArr, i);
    }

    static int d(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static void a(java.io.InputStream inputStream, java.io.File file, long j) throws java.io.IOException {
        byte[] bArr = new byte[16384];
        java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(file);
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
                        throw new java.io.IOException("文件过大");
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (java.lang.Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (java.lang.Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    static long b(byte[] bArr, int i) {
        return (a(bArr, i + 2) << 16) | a(bArr, i);
    }

    public static java.lang.String a(java.io.File file) throws java.lang.Exception {
        int i;
        java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("SHA-256");
        java.io.FileInputStream fileInputStream = new java.io.FileInputStream(file);
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
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            for (byte b2 : messageDigest.digest()) {
                sb.append(java.lang.String.format(java.util.Locale.ROOT, "%02x", java.lang.Integer.valueOf(b2 & 255)));
            }
            return sb.toString();
        } catch (java.lang.Throwable th) {
            try {
                fileInputStream.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static int b(java.io.File file) throws java.lang.Exception {
        return a(file, (dev.duo.icons.e.c) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String a(byte[] r4, java.lang.String r5) {
        /*
            java.lang.String r0 = "[\\p{Cntrl}]"
            java.lang.String r1 = ""
            if (r4 == 0) goto L86
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8
            r2.<init>(r4, r3)
            java.lang.String r4 = "<title(?:\\s[^>]*)?>(.*?)</title>"
            r3 = 32
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4, r3)
            java.util.regex.Matcher r4 = r4.matcher(r2)
            java.lang.String r3 = "<!DOCTYPE"
            boolean r3 = r2.contains(r3)
            if (r3 != 0) goto L86
            java.lang.String r3 = "<!ENTITY"
            boolean r2 = r2.contains(r3)
            if (r2 != 0) goto L86
            boolean r2 = r4.find()
            if (r2 == 0) goto L86
            r2 = 1
            java.lang.String r4 = r4.group(r2)
            java.lang.String r4 = r4.trim()
            java.lang.String r2 = "<![CDATA["
            boolean r2 = r4.startsWith(r2)
            if (r2 == 0) goto L55
            java.lang.String r2 = "]]>"
            boolean r2 = r4.endsWith(r2)
            if (r2 == 0) goto L55
            int r2 = r4.length()
            int r2 = r2 + (-3)
            r3 = 9
            java.lang.String r4 = r4.substring(r3, r2)
            goto L7d
        L55:
            java.lang.String r2 = "&lt;"
            java.lang.String r3 = "<"
            java.lang.String r4 = r4.replace(r2, r3)
            java.lang.String r2 = "&gt;"
            java.lang.String r3 = ">"
            java.lang.String r4 = r4.replace(r2, r3)
            java.lang.String r2 = "&quot;"
            java.lang.String r3 = "\""
            java.lang.String r4 = r4.replace(r2, r3)
            java.lang.String r2 = "&apos;"
            java.lang.String r3 = "'"
            java.lang.String r4 = r4.replace(r2, r3)
            java.lang.String r2 = "&amp;"
            java.lang.String r3 = "&"
            java.lang.String r4 = r4.replace(r2, r3)
        L7d:
            java.lang.String r4 = r4.replaceAll(r0, r1)
            java.lang.String r4 = r4.trim()
            goto L87
        L86:
            r4 = 0
        L87:
            if (r4 == 0) goto L92
            boolean r2 = r4.isEmpty()
            if (r2 == 0) goto L90
            goto L92
        L90:
            r1 = r4
            goto L9d
        L92:
            if (r5 != 0) goto L95
            goto L9d
        L95:
            java.lang.String r4 = r5.replaceAll(r0, r1)
            java.lang.String r1 = r4.trim()
        L9d:
            boolean r4 = r1.isEmpty()
            if (r4 == 0) goto La5
            java.lang.String r1 = "主题"
        La5:
            int r4 = r1.length()
            r5 = 120(0x78, float:1.68E-43)
            int r4 = java.lang.Math.min(r4, r5)
            r5 = 0
            java.lang.String r4 = r1.substring(r5, r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.icons.e.a(byte[], java.lang.String):java.lang.String");
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
        To view partially-correct add '--show-bad-code' argument
    */
    static int a(byte[] r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.icons.e.a(byte[]):int");
    }

    static java.lang.String a(java.lang.String str) {
        java.lang.String substring = str.substring(str.lastIndexOf(47) + 1);
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
        To view partially-correct add '--show-bad-code' argument
    */
    public static dev.duo.icons.e.b a(java.io.File r24, java.io.File r25, java.lang.String r26, dev.duo.icons.e.c r27) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.icons.e.a(java.io.File, java.io.File, java.lang.String, dev.duo.icons.e$c):dev.duo.icons.e$b");
    }

    public static int a(java.io.File file, dev.duo.icons.e.c cVar) throws java.lang.Exception {
        if (file.length() <= 134217728) {
            java.util.HashSet hashSet = new java.util.HashSet();
            java.util.zip.ZipFile zipFile = new java.util.zip.ZipFile(file);
            try {
                java.util.Enumeration<? extends java.util.zip.ZipEntry> entries = zipFile.entries();
                long j = 0;
                while (entries.hasMoreElements()) {
                    java.util.zip.ZipEntry nextElement = entries.nextElement();
                    b(nextElement.getName());
                    java.lang.String a2 = a(nextElement.getName());
                    if (a2 != null && nextElement.getName().equals(f + a2) && !nextElement.isDirectory() && hashSet.add(a2) && hashSet.size() <= 6000) {
                        java.io.InputStream inputStream = zipFile.getInputStream(nextElement);
                        try {
                            byte[] a3 = a(inputStream, 2097152L);
                            j += a3.length;
                            if (j > 134217728) {
                                throw new java.io.IOException("图标展开过大");
                            }
                            if (a(a3) != a3.length) {
                                throw new java.io.IOException("PNG 结束错误");
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
                        throw new java.io.IOException("只接受过滤后的应用 PNG");
                    }
                }
                zipFile.close();
                if (hashSet.isEmpty()) {
                    throw new java.io.IOException("图标包为空");
                }
                return hashSet.size();
            } catch (java.lang.Throwable th) {
                try {
                    zipFile.close();
                } catch (java.lang.Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        throw new java.io.IOException("图标包过大");
    }
}
