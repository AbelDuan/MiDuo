package dev.duo.fold;

/* loaded from: classes.dex */
final class g implements java.lang.AutoCloseable {
    static final int o = 13640817;
    static final int p = 13640818;
    static final int q = 13640819;
    static final int r = 13640820;
    static final int s = 13640821;
    static final int t = 2364;
    static final int u = 1672;
    static final int v = 1168;
    static final int w = 1712;
    static final float x = 157.2002f;
    static final float y = 111.2002f;
    private android.opengl.EGLConfig d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private boolean n;
    private android.opengl.EGLDisplay a = android.opengl.EGL14.EGL_NO_DISPLAY;
    private android.opengl.EGLContext b = android.opengl.EGL14.EGL_NO_CONTEXT;
    private android.opengl.EGLSurface c = android.opengl.EGL14.EGL_NO_SURFACE;
    private final java.util.Map<java.lang.String, java.lang.Integer> k = new java.util.HashMap();
    private final java.util.List<dev.duo.fold.g.a> l = new java.util.ArrayList();
    private final java.util.List<dev.duo.fold.g.b> m = new java.util.ArrayList();

    g() {
    }

    @Override // java.lang.AutoCloseable
    public void close() throws java.lang.Exception {
        if (this.b != android.opengl.EGL14.EGL_NO_CONTEXT) {
            try {
                a(this.c);
                android.opengl.GLES30.glFinish();
            } catch (java.lang.Exception e) {
                e = e;
            }
        }
        e = null;
        java.util.Iterator<dev.duo.fold.g.b> it = this.m.iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (java.lang.Exception e2) {
                e = b(e, e2);
            }
        }
        java.util.Iterator<dev.duo.fold.g.a> it2 = this.l.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().close();
            } catch (java.lang.Exception e3) {
                e = b(e, e3);
            }
        }
        if (this.b != android.opengl.EGL14.EGL_NO_CONTEXT) {
            android.opengl.GLES30.glDeleteProgram(this.f);
            android.opengl.GLES30.glDeleteProgram(this.e);
            android.opengl.GLES30.glDeleteBuffers(1, new int[]{this.h}, 0);
            android.opengl.GLES30.glDeleteVertexArrays(1, new int[]{this.g}, 0);
        }
        android.opengl.EGLDisplay eGLDisplay = this.a;
        if (eGLDisplay != android.opengl.EGL14.EGL_NO_DISPLAY) {
            android.opengl.EGLSurface eGLSurface = android.opengl.EGL14.EGL_NO_SURFACE;
            android.opengl.EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, android.opengl.EGL14.EGL_NO_CONTEXT);
            android.opengl.EGLSurface eGLSurface2 = this.c;
            if (eGLSurface2 != android.opengl.EGL14.EGL_NO_SURFACE) {
                android.opengl.EGL14.eglDestroySurface(this.a, eGLSurface2);
            }
            android.opengl.EGLContext eGLContext = this.b;
            if (eGLContext != android.opengl.EGL14.EGL_NO_CONTEXT) {
                android.opengl.EGL14.eglDestroyContext(this.a, eGLContext);
            }
            android.opengl.EGL14.eglTerminate(this.a);
            android.opengl.EGL14.eglReleaseThread();
        }
        if (e != null) {
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.Exception b(java.lang.Exception exc, java.lang.Exception exc2) {
        if (exc == null) {
            return exc2;
        }
        exc.addSuppressed(exc2);
        return exc;
    }

    private int c(java.lang.String str) {
        java.lang.Integer num = this.k.get(str);
        if (num == null) {
            num = java.lang.Integer.valueOf(android.opengl.GLES30.glGetUniformLocation(this.f, str));
            this.k.put(str, num);
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(boolean z, java.lang.String str) {
        if (!z) {
            throw new java.lang.IllegalStateException(str + " EGL=" + android.opengl.EGL14.eglGetError());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(java.lang.String str) {
        int glGetError = android.opengl.GLES30.glGetError();
        if (glGetError != 0) {
            throw new java.lang.IllegalStateException(str + " GL=" + glGetError);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005c  */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3, types: [int] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int b(java.lang.String r5, java.lang.String r6) {
        /*
            int r0 = android.opengl.GLES30.glCreateProgram()
            r1 = 0
            r2 = 35633(0x8b31, float:4.9932E-41)
            int r5 = a(r2, r5)     // Catch: java.lang.Throwable -> L48 java.lang.RuntimeException -> L4b
            r2 = 35632(0x8b30, float:4.9931E-41)
            int r6 = a(r2, r6)     // Catch: java.lang.Throwable -> L40 java.lang.RuntimeException -> L43
            android.opengl.GLES30.glAttachShader(r0, r5)     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            android.opengl.GLES30.glAttachShader(r0, r6)     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            android.opengl.GLES30.glLinkProgram(r0)     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            r2 = 1
            int[] r2 = new int[r2]     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            r3 = 35714(0x8b82, float:5.0046E-41)
            android.opengl.GLES30.glGetProgramiv(r0, r3, r2, r1)     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            r1 = r2[r1]     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            if (r1 == 0) goto L34
            if (r5 == 0) goto L2e
            android.opengl.GLES30.glDeleteShader(r5)
        L2e:
            if (r6 == 0) goto L33
            android.opengl.GLES30.glDeleteShader(r6)
        L33:
            return r0
        L34:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            java.lang.String r2 = android.opengl.GLES30.glGetProgramInfoLog(r0)     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            r1.<init>(r2)     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
            throw r1     // Catch: java.lang.RuntimeException -> L3e java.lang.Throwable -> L53
        L3e:
            r1 = move-exception
            goto L4f
        L40:
            r0 = move-exception
            r6 = r1
            goto L54
        L43:
            r6 = move-exception
            r4 = r1
            r1 = r6
            r6 = r4
            goto L4f
        L48:
            r0 = move-exception
            r6 = r1
            goto L55
        L4b:
            r5 = move-exception
            r6 = r1
            r1 = r5
            r5 = r6
        L4f:
            android.opengl.GLES30.glDeleteProgram(r0)     // Catch: java.lang.Throwable -> L53
            throw r1     // Catch: java.lang.Throwable -> L53
        L53:
            r0 = move-exception
        L54:
            r1 = r5
        L55:
            if (r1 == 0) goto L5a
            android.opengl.GLES30.glDeleteShader(r1)
        L5a:
            if (r6 == 0) goto L5f
            android.opengl.GLES30.glDeleteShader(r6)
        L5f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.fold.g.b(java.lang.String, java.lang.String):int");
    }

    static java.lang.String a(java.lang.String str, java.lang.String str2) throws java.lang.Exception {
        java.util.zip.ZipFile zipFile = new java.util.zip.ZipFile(str);
        try {
            java.io.InputStream inputStream = zipFile.getInputStream(zipFile.getEntry("assets/fold/" + str2));
            try {
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[dev.duo.taskcore.h.A];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read < 0) {
                            java.lang.String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                            byteArrayOutputStream.close();
                            inputStream.close();
                            zipFile.close();
                            return byteArrayOutputStream2;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                } finally {
                }
            } finally {
            }
        } catch (java.lang.Throwable th) {
            try {
                zipFile.close();
            } catch (java.lang.Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    final class a implements java.lang.AutoCloseable {
        final int a;
        final int b;
        final int c;
        int d;
        int e;
        int f;
        int g;
        android.graphics.SurfaceTexture h;
        android.view.Surface i;
        boolean j;
        boolean k;
        boolean l;
        float[] m;
        private final float[] n = new float[16];

        a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        void a(android.os.Handler handler, final java.lang.Runnable runnable) {
            dev.duo.fold.g gVar = dev.duo.fold.g.this;
            gVar.a(gVar.c);
            this.d = dev.duo.fold.g.b(36197);
            android.graphics.SurfaceTexture surfaceTexture = new android.graphics.SurfaceTexture(this.d);
            this.h = surfaceTexture;
            surfaceTexture.setDefaultBufferSize(this.a, this.c);
            this.h.setOnFrameAvailableListener(new android.graphics.SurfaceTexture.OnFrameAvailableListener() { // from class: dev.duo.fold.g$a$$ExternalSyntheticLambda0
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public final void onFrameAvailable(android.graphics.SurfaceTexture surfaceTexture2) {
                    dev.duo.fold.g.a.this.a(runnable, surfaceTexture2);
                }
            }, handler);
            this.i = new android.view.Surface(this.h);
            this.e = dev.duo.fold.g.b(3553);
            int i = this.c;
            int i2 = this.b;
            android.opengl.GLES30.glTexStorage2D(3553, i == i2 ? 32 - java.lang.Integer.numberOfLeadingZeros(java.lang.Math.max(this.a, i2)) : 1, 32856, this.a, this.c);
            int[] iArr = new int[1];
            android.opengl.GLES30.glGenFramebuffers(1, iArr, 0);
            int i3 = iArr[0];
            this.f = i3;
            android.opengl.GLES30.glBindFramebuffer(36160, i3);
            android.opengl.GLES30.glFramebufferTexture2D(36160, 36064, 3553, this.e, 0);
            if (android.opengl.GLES30.glCheckFramebufferStatus(36160) != 36053) {
                throw new java.lang.IllegalStateException("输入 FBO 不完整");
            }
            android.opengl.GLES30.glBindFramebuffer(36160, 0);
            dev.duo.fold.g.b("输入队列");
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            android.graphics.SurfaceTexture surfaceTexture = this.h;
            if (surfaceTexture != null) {
                surfaceTexture.setOnFrameAvailableListener(null);
            }
            android.view.Surface surface = this.i;
            if (surface != null) {
                surface.release();
            }
            android.graphics.SurfaceTexture surfaceTexture2 = this.h;
            if (surfaceTexture2 != null) {
                surfaceTexture2.release();
            }
            android.opengl.GLES30.glDeleteFramebuffers(1, new int[]{this.f}, 0);
            android.opengl.GLES30.glDeleteTextures(2, new int[]{this.d, this.e}, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(java.lang.Runnable runnable, android.graphics.SurfaceTexture surfaceTexture) {
            this.j = true;
            runnable.run();
        }

        boolean a() {
            if (!this.j) {
                return false;
            }
            dev.duo.fold.g gVar = dev.duo.fold.g.this;
            gVar.a(gVar.c);
            this.j = false;
            this.h.updateTexImage();
            this.h.getTransformMatrix(this.n);
            if (this.h.getTimestamp() > 0) {
                android.opengl.GLES30.glBindFramebuffer(36160, this.f);
                android.opengl.GLES30.glViewport(0, 0, this.a, this.c);
                android.opengl.GLES30.glUseProgram(dev.duo.fold.g.this.e);
                android.opengl.GLES30.glBindVertexArray(dev.duo.fold.g.this.g);
                android.opengl.GLES30.glActiveTexture(33984);
                android.opengl.GLES30.glBindTexture(36197, this.d);
                android.opengl.GLES30.glUniform1i(dev.duo.fold.g.this.i, 0);
                android.opengl.GLES30.glUniformMatrix4fv(dev.duo.fold.g.this.j, 1, false, this.n, 0);
                android.opengl.GLES30.glDrawArrays(5, 0, 4);
                android.opengl.GLES30.glBindFramebuffer(36160, 0);
                if (this.c == this.b) {
                    android.opengl.GLES30.glBindTexture(3553, this.e);
                    android.opengl.GLES30.glGenerateMipmap(3553);
                    android.opengl.GLES30.glTexParameteri(3553, 10241, 9987);
                }
                dev.duo.fold.g.b("消费实时帧");
                this.k = true;
                return true;
            }
            throw new java.lang.IllegalStateException("实时流没有有效帧时间");
        }
    }

    void a(java.lang.String str, boolean z) throws java.lang.Exception {
        boolean z2;
        boolean z3;
        boolean z4;
        this.n = z;
        android.opengl.EGLDisplay eglGetDisplay = android.opengl.EGL14.eglGetDisplay(0);
        this.a = eglGetDisplay;
        int[] iArr = new int[1];
        int[] iArr2 = new int[2];
        b(android.opengl.EGL14.eglInitialize(eglGetDisplay, iArr2, 0, iArr2, 1), "eglInitialize");
        android.opengl.EGLConfig[] eGLConfigArr = new android.opengl.EGLConfig[1];
        if (!android.opengl.EGL14.eglChooseConfig(this.a, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 64, 12339, 5, 12344}, 0, eGLConfigArr, 0, 1, iArr, 0) || iArr[0] != 1) {
            z2 = false;
        } else {
            z2 = true;
        }
        b(z2, "eglChooseConfig");
        android.opengl.EGLConfig eGLConfig = eGLConfigArr[0];
        this.d = eGLConfig;
        android.opengl.EGLContext eglCreateContext = android.opengl.EGL14.eglCreateContext(this.a, eGLConfig, android.opengl.EGL14.EGL_NO_CONTEXT, new int[]{12440, 3, 12344}, 0);
        this.b = eglCreateContext;
        if (eglCreateContext == android.opengl.EGL14.EGL_NO_CONTEXT) {
            z3 = false;
        } else {
            z3 = true;
        }
        b(z3, "eglCreateContext");
        android.opengl.EGLSurface eglCreatePbufferSurface = android.opengl.EGL14.eglCreatePbufferSurface(this.a, this.d, new int[]{12375, 1, 12374, 1, 12344}, 0);
        this.c = eglCreatePbufferSurface;
        if (eglCreatePbufferSurface == android.opengl.EGL14.EGL_NO_SURFACE) {
            z4 = false;
        } else {
            z4 = true;
        }
        b(z4, "eglCreatePbufferSurface");
        a(this.c);
        this.f = b(a(str, "duo.vert"), a(str, "duo.frag"));
        int b2 = b("#version 300 es\nlayout(location=0) in vec2 p;out vec2 uv;uniform mat4 transform;void main(){uv=(transform*vec4((p+1.0)*0.5,0.0,1.0)).xy;gl_Position=vec4(p,0.0,1.0);}", "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision highp float;in vec2 uv;uniform samplerExternalOES stream;out vec4 color;void main(){color=texture(stream,uv);}");
        this.e = b2;
        this.i = android.opengl.GLES30.glGetUniformLocation(b2, "stream");
        this.j = android.opengl.GLES30.glGetUniformLocation(this.e, "transform");
        int[] iArr3 = new int[1];
        android.opengl.GLES30.glGenVertexArrays(1, iArr3, 0);
        int i = iArr3[0];
        this.g = i;
        android.opengl.GLES30.glBindVertexArray(i);
        android.opengl.GLES30.glGenBuffers(1, iArr3, 0);
        int i2 = iArr3[0];
        this.h = i2;
        android.opengl.GLES30.glBindBuffer(34962, i2);
        java.nio.FloatBuffer asFloatBuffer = java.nio.ByteBuffer.allocateDirect(32).order(java.nio.ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f}).position(0);
        android.opengl.GLES30.glBufferData(34962, 32, asFloatBuffer, 35044);
        android.opengl.GLES30.glEnableVertexAttribArray(0);
        android.opengl.GLES30.glVertexAttribPointer(0, 2, 5126, false, 0, 0);
        b("初始化");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i) {
        int[] iArr = new int[1];
        android.opengl.GLES30.glGenTextures(1, iArr, 0);
        android.opengl.GLES30.glBindTexture(i, iArr[0]);
        android.opengl.GLES30.glTexParameteri(i, 10241, 9729);
        android.opengl.GLES30.glTexParameteri(i, 10240, 9729);
        android.opengl.GLES30.glTexParameteri(i, 10242, 33071);
        android.opengl.GLES30.glTexParameteri(i, 10243, 33071);
        return iArr[0];
    }

    final class b implements java.lang.AutoCloseable {
        final int a;
        final int b;
        final int c;
        int d;
        int e;
        volatile boolean f;
        private android.os.Handler g;
        private java.lang.Runnable h;
        android.view.SurfaceControl i;
        java.lang.Object j;
        android.view.Surface k;
        android.opengl.EGLSurface l = android.opengl.EGL14.EGL_NO_SURFACE;

        b(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        void a(final android.os.Handler handler, final java.lang.Runnable runnable) throws java.lang.Exception {
            this.g = handler;
            this.h = runnable;
            java.lang.String str = "MiDuoFold-" + (this.a == 0 ? "inner" : "outer");
            android.view.SurfaceControl.Builder name = new android.view.SurfaceControl.Builder().setName(str);
            android.view.SurfaceControl.Builder.class.getDeclaredMethod("setBLASTLayer", null).invoke(name, null);
            if (dev.duo.fold.g.this.n) {
                android.view.SurfaceControl.Builder.class.getDeclaredMethod("setSecure", java.lang.Boolean.TYPE).invoke(name, java.lang.Boolean.TRUE);
            }
            this.i = name.setBufferSize(this.b, this.c).setFormat(1).setOpaque(true).setHidden(true).build();
            java.lang.Class<?> cls = java.lang.Class.forName("android.graphics.BLASTBufferQueue");
            java.lang.Class cls2 = java.lang.Integer.TYPE;
            this.j = cls.getDeclaredConstructor(java.lang.String.class, android.view.SurfaceControl.class, cls2, cls2, cls2, java.lang.Float.TYPE).newInstance(str, this.i, java.lang.Integer.valueOf(this.b), java.lang.Integer.valueOf(this.c), 1, java.lang.Float.valueOf(1.0f));
            this.k = (android.view.Surface) cls.getDeclaredMethod("createSurface", null).invoke(this.j, null);
            if (!((java.lang.Boolean) cls.getDeclaredMethod("syncNextTransaction", java.util.function.Consumer.class).invoke(this.j, new java.util.function.Consumer() { // from class: dev.duo.fold.g$b$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(java.lang.Object obj) {
                    dev.duo.fold.g.b.this.a(handler, runnable, (android.view.SurfaceControl.Transaction) obj);
                }
            })).booleanValue()) {
                throw new java.lang.IllegalStateException("首帧锁存监听被拒绝");
            }
            android.opengl.EGLSurface eglCreateWindowSurface = android.opengl.EGL14.eglCreateWindowSurface(dev.duo.fold.g.this.a, dev.duo.fold.g.this.d, this.k, new int[]{12344}, 0);
            this.l = eglCreateWindowSurface;
            dev.duo.fold.g.b(eglCreateWindowSurface != android.opengl.EGL14.EGL_NO_SURFACE, "eglCreateWindowSurface");
            dev.duo.fold.g.this.a(this.l);
            dev.duo.fold.g.b(android.opengl.EGL14.eglSwapInterval(dev.duo.fold.g.this.a, 0), "eglSwapInterval");
            this.d = dev.duo.fold.g.b(3553);
            android.opengl.GLES30.glTexStorage2D(3553, 32 - java.lang.Integer.numberOfLeadingZeros(java.lang.Math.max(this.b, this.c)), 32856, this.b, this.c);
            android.opengl.GLES30.glTexParameteri(3553, 10241, 9987);
            int[] iArr = new int[1];
            android.opengl.GLES30.glGenFramebuffers(1, iArr, 0);
            int i = iArr[0];
            this.e = i;
            android.opengl.GLES30.glBindFramebuffer(36160, i);
            android.opengl.GLES30.glFramebufferTexture2D(36160, 36064, 3553, this.d, 0);
            if (android.opengl.GLES30.glCheckFramebufferStatus(36160) != 36053) {
                throw new java.lang.IllegalStateException("材质 FBO 不完整");
            }
            android.opengl.GLES30.glBindFramebuffer(36160, 0);
            dev.duo.fold.g.b("材质缓冲");
            android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
            try {
                dev.duo.fold.Surfaces.a(transaction, this.i, this.a == 0 ? dev.duo.fold.g.o : dev.duo.fold.g.p);
                transaction.setLayer(this.i, 1);
                dev.duo.fold.Surfaces.b(transaction, this.i);
                transaction.apply();
                transaction.close();
            } finally {
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() throws java.lang.Exception {
            java.lang.Exception b;
            android.opengl.GLES30.glDeleteFramebuffers(1, new int[]{this.e}, 0);
            android.opengl.GLES30.glDeleteTextures(1, new int[]{this.d}, 0);
            if (this.i != null) {
                try {
                    android.view.SurfaceControl.Transaction transaction = new android.view.SurfaceControl.Transaction();
                    try {
                        transaction.reparent(this.i, null);
                        dev.duo.fold.Surfaces.a(transaction, this.i);
                        transaction.apply();
                        transaction.close();
                        b = null;
                    } finally {
                    }
                } catch (java.lang.Exception e) {
                    b = dev.duo.fold.g.b((java.lang.Exception) null, e);
                }
                this.i.release();
            } else {
                b = null;
            }
            try {
                if (this.l != android.opengl.EGL14.EGL_NO_SURFACE) {
                    dev.duo.fold.g.b(android.opengl.EGL14.eglDestroySurface(dev.duo.fold.g.this.a, this.l), "eglDestroySurface");
                }
            } catch (java.lang.Exception e2) {
                b = dev.duo.fold.g.b(b, e2);
            }
            android.view.Surface surface = this.k;
            if (surface != null) {
                surface.release();
            }
            try {
                java.lang.Object obj = this.j;
                if (obj != null) {
                    obj.getClass().getDeclaredMethod("destroy", null).invoke(this.j, null);
                }
            } catch (java.lang.Exception e3) {
                b = dev.duo.fold.g.b(b, e3);
            }
            if (b != null) {
                throw b;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(java.lang.Runnable runnable) {
            this.f = true;
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.os.Handler handler, final java.lang.Runnable runnable, android.view.SurfaceControl.Transaction transaction) {
            try {
                java.util.Objects.requireNonNull(handler);
                transaction.addTransactionCommittedListener(new dev.duo.fold.g$b$$ExternalSyntheticLambda1(handler), new android.view.SurfaceControl.TransactionCommittedListener() { // from class: dev.duo.fold.g$b$$ExternalSyntheticLambda2
                    @Override // android.view.SurfaceControl.TransactionCommittedListener
                    public final void onTransactionCommitted() {
                        dev.duo.fold.g.b.this.a(runnable);
                    }
                });
                transaction.apply();
                transaction.close();
            } catch (java.lang.Throwable th) {
                if (transaction != null) {
                    try {
                        transaction.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.opengl.EGLSurface eGLSurface) {
        b(android.opengl.EGL14.eglMakeCurrent(this.a, eGLSurface, eGLSurface, this.b), "eglMakeCurrent");
    }

    private static int a(int i, java.lang.String str) {
        int glCreateShader = android.opengl.GLES30.glCreateShader(i);
        android.opengl.GLES30.glShaderSource(glCreateShader, str);
        android.opengl.GLES30.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        android.opengl.GLES30.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        java.lang.String glGetShaderInfoLog = android.opengl.GLES30.glGetShaderInfoLog(glCreateShader);
        android.opengl.GLES30.glDeleteShader(glCreateShader);
        throw new java.lang.IllegalStateException(glGetShaderInfoLog);
    }

    dev.duo.fold.g.a a(int i, int i2, android.os.Handler handler, java.lang.Runnable runnable, boolean z) {
        dev.duo.fold.g.a aVar = new dev.duo.fold.g.a(i, i2, z ? i2 * 2 : i2);
        this.l.add(aVar);
        aVar.a(handler, runnable);
        return aVar;
    }

    dev.duo.fold.g.a a(android.graphics.Bitmap bitmap) {
        dev.duo.fold.g.a aVar = new dev.duo.fold.g.a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getHeight());
        this.l.add(aVar);
        a(this.c);
        aVar.e = b(3553);
        android.opengl.GLES30.glTexStorage2D(3553, 1, 32856, aVar.a, aVar.b);
        android.opengl.GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
        b("上传原始壁纸");
        aVar.k = true;
        return aVar;
    }

    dev.duo.fold.g.b a(int i, android.os.Handler handler, java.lang.Runnable runnable) throws java.lang.Exception {
        dev.duo.fold.g.b bVar = new dev.duo.fold.g.b(i, i == 0 ? t : v, i == 0 ? u : w);
        this.m.add(bVar);
        bVar.a(handler, runnable);
        return bVar;
    }

    private void a(java.lang.String str, float f) {
        android.opengl.GLES30.glUniform1f(c(str), f);
    }

    private void a(java.lang.String str, int i) {
        android.opengl.GLES30.glUniform1i(c(str), i);
    }

    private void a(java.lang.String str, dev.duo.fold.g.a aVar, int i) {
        android.opengl.GLES30.glActiveTexture(33984 + i);
        android.opengl.GLES30.glBindTexture(3553, aVar.e);
        a(str, i);
        android.opengl.GLES30.glUniform2f(c(str + "Size"), aVar.a, aVar.b);
    }

    void a(dev.duo.fold.g.a aVar) {
        a(this.c);
        android.opengl.GLES30.glFinish();
        aVar.close();
        this.l.remove(aVar);
    }

    void a(dev.duo.fold.g.b bVar, dev.duo.fold.g.a aVar, dev.duo.fold.g.a aVar2, dev.duo.fold.g.a aVar3, dev.duo.fold.d dVar, float f, float f2, float f3) {
        dev.duo.fold.g.a aVar4 = aVar != null ? aVar : aVar2;
        if (aVar4 != null && aVar4.k && aVar3.k) {
            a(bVar.l);
            android.opengl.GLES30.glBindFramebuffer(36160, bVar.e);
            android.opengl.GLES30.glViewport(0, 0, bVar.b, bVar.c);
            android.opengl.GLES30.glUseProgram(this.f);
            android.opengl.GLES30.glBindVertexArray(this.g);
            a("uCover", aVar != null ? aVar : aVar4, 0);
            if (aVar2 != null) {
                aVar4 = aVar2;
            }
            a("uInner", aVar4, 1);
            android.opengl.GLES30.glActiveTexture(33986);
            android.opengl.GLES30.glBindTexture(3553, aVar3.e);
            a("uWall", 2);
            float[] fArr = aVar != null ? aVar.m : aVar2.m;
            float[] fArr2 = aVar2 != null ? aVar2.m : aVar.m;
            int i = ((aVar == null || !aVar.l) && (aVar2 == null || !aVar2.l)) ? 0 : 1;
            int i2 = (dVar == null || i != 0) ? 0 : 1;
            if (i2 != 0) {
                fArr = dVar.c;
                fArr2 = dVar.d;
            }
            if (aVar2 != null && aVar2.g != 0) {
                fArr2 = fArr;
            }
            a("uInnerRotation", aVar2 != null ? aVar2.g : 0);
            a("uWallRotation", aVar3.g);
            a("uDesktop", (this.n || i != 0) ? 0 : 1);
            a("uWallBitmap", (i == 0 || dVar == null) ? 0 : 1);
            a("uApp", i);
            a("uLayered", i2);
            if (dVar != null) {
                android.opengl.GLES30.glUniform4fv(c("uCoverWallCrop"), 1, dVar.a, 0);
                android.opengl.GLES30.glUniform4fv(c("uInnerWallCrop"), 1, dVar.b, 0);
            }
            if (i2 != 0) {
                android.opengl.GLES30.glUniform4fv(c("uCoverSideRects[0]"), 3, dVar.e, 0);
                android.opengl.GLES30.glUniform4fv(c("uInnerSideRects[0]"), 3, dVar.f, 0);
            }
            android.opengl.GLES30.glUniform4fv(c("uCoverGeometry"), 1, fArr, 0);
            android.opengl.GLES30.glUniform4fv(c("uInnerGeometry"), 1, fArr2, 0);
            a("uPanel", bVar.a);
            a("uCoverReady", aVar != null ? 1 : 0);
            a("uInnerReady", aVar2 != null ? 1 : 0);
            a("uInnerMix", f2);
            a("uCoverMix", f3);
            a("uAngle", f);
            a("uEyeDistance", 3.8167892f);
            float max = java.lang.Math.max(0.0f, java.lang.Math.min(1.0f, (f - 170.0f) / 8.0f));
            a("uProjection", bVar.a == 0 ? 1.0f - ((max * max) * (3.0f - (max * 2.0f))) : 1.0f);
            a("uInnerStretch", 1.8f);
            a("uCoverStretch", 4.0f);
            android.opengl.GLES30.glUniform2f(c("uPanelSize"), x, y);
            android.opengl.GLES30.glUniform2f(c("uCoverRatios"), 0.9796434f, 1.0152861f);
            android.opengl.GLES30.glActiveTexture(33987);
            android.opengl.GLES30.glBindTexture(3553, 0);
            a("uComposed", 3);
            a("uOpticsPass", 0);
            android.opengl.GLES30.glDrawArrays(5, 0, 4);
            b("合成本帧内容");
            android.opengl.GLES30.glBindFramebuffer(36160, 0);
            android.opengl.GLES30.glBindTexture(3553, bVar.d);
            android.opengl.GLES30.glGenerateMipmap(3553);
            android.opengl.GLES30.glUniform2f(c("uComposedSize"), bVar.b, bVar.c);
            a("uOpticsPass", 1);
            android.opengl.GLES30.glDrawArrays(5, 0, 4);
            b("输出材质画面");
            b(android.opengl.EGL14.eglSwapBuffers(this.a, bVar.l), "eglSwapBuffers");
            return;
        }
        throw new java.lang.IllegalStateException("禁止使用无效帧");
    }
}
