package dev.duo.fold;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES30;
import android.opengl.GLUtils;
import android.os.Handler;
import android.view.Surface;
import android.view.SurfaceControl;
import dev.duo.fold.g;
import dev.duo.taskcore.WorkspaceProtocol;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.zip.ZipFile;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class g implements AutoCloseable {
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
    private EGLConfig d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private boolean n;
    private EGLDisplay a = EGL14.EGL_NO_DISPLAY;
    private EGLContext b = EGL14.EGL_NO_CONTEXT;
    private EGLSurface c = EGL14.EGL_NO_SURFACE;
    private final Map<String, Integer> k = new HashMap();
    private final List<a> l = new ArrayList();
    private final List<b> m = new ArrayList();

    g() {
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        Exception e = null;
        if (this.b != EGL14.EGL_NO_CONTEXT) {
            try {
                a(this.c);
                GLES30.glFinish();
            } catch (Exception e2) {
                e = e2;
            }
        }
        e = null;
        Iterator<b> it = this.m.iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (Exception e2) {
                e = b(e, e2);
            }
        }
        Iterator<a> it2 = this.l.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().close();
            } catch (Exception e3) {
                e = b(e, e3);
            }
        }
        if (this.b != EGL14.EGL_NO_CONTEXT) {
            GLES30.glDeleteProgram(this.f);
            GLES30.glDeleteProgram(this.e);
            GLES30.glDeleteBuffers(1, new int[]{this.h}, 0);
            GLES30.glDeleteVertexArrays(1, new int[]{this.g}, 0);
        }
        EGLDisplay eGLDisplay = this.a;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGLSurface eGLSurface2 = this.c;
            if (eGLSurface2 != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(this.a, eGLSurface2);
            }
            EGLContext eGLContext = this.b;
            if (eGLContext != EGL14.EGL_NO_CONTEXT) {
                EGL14.eglDestroyContext(this.a, eGLContext);
            }
            EGL14.eglTerminate(this.a);
            EGL14.eglReleaseThread();
        }
        if (e != null) {
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Exception b(Exception exc, Exception exc2) {
        if (exc == null) {
            return exc2;
        }
        exc.addSuppressed(exc2);
        return exc;
    }

    private int c(String str) {
        Integer num = this.k.get(str);
        if (num == null) {
            num = Integer.valueOf(GLES30.glGetUniformLocation(this.f, str));
            this.k.put(str, num);
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str + " EGL=" + EGL14.eglGetError());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str) {
        int glGetError = GLES30.glGetError();
        if (glGetError != 0) {
            throw new IllegalStateException(str + " GL=" + glGetError);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int b(String str, String str2) {
        int program = GLES30.glCreateProgram();
        int vert = 0;
        int frag = 0;
        try {
            vert = a(35633, str);
            frag = a(35632, str2);
            GLES30.glAttachShader(program, vert);
            GLES30.glAttachShader(program, frag);
            GLES30.glLinkProgram(program);
            int[] linked = new int[1];
            GLES30.glGetProgramiv(program, 35714, linked, 0);
            if (linked[0] == 0) {
                throw new IllegalStateException(GLES30.glGetProgramInfoLog(program));
            }
            if (vert != 0) {
                GLES30.glDeleteShader(vert);
            }
            if (frag != 0) {
                GLES30.glDeleteShader(frag);
            }
            return program;
        } catch (RuntimeException e) {
            GLES30.glDeleteProgram(program);
            throw e;
        } catch (Throwable th) {
            if (vert != 0) {
                GLES30.glDeleteShader(vert);
            }
            if (frag != 0) {
                GLES30.glDeleteShader(frag);
            }
            throw th;
        }
    }

    static String a(String str, String str2) throws Exception {
        ZipFile zipFile = new ZipFile(str);
        try {
            InputStream inputStream = zipFile.getInputStream(zipFile.getEntry("assets/fold/" + str2));
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[WorkspaceProtocol.MAX_PAYLOAD];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read < 0) {
                            String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
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
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    final class a implements AutoCloseable {
        final int a;
        final int b;
        final int c;
        int d;
        int e;
        int f;
        int g;
        SurfaceTexture h;
        Surface i;
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

        void a(Handler handler, final Runnable runnable) {
            g gVar = dev.duo.fold.g.this;
            gVar.a(gVar.c);
            this.d = dev.duo.fold.g.b(36197);
            SurfaceTexture surfaceTexture = new SurfaceTexture(this.d);
            this.h = surfaceTexture;
            surfaceTexture.setDefaultBufferSize(this.a, this.c);
            this.h.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: dev.duo.fold.g$a$$ExternalSyntheticLambda0
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                    g.a.this.a(runnable, surfaceTexture2);
                }
            }, handler);
            this.i = new Surface(this.h);
            this.e = dev.duo.fold.g.b(3553);
            int i = this.c;
            int i2 = this.b;
            GLES30.glTexStorage2D(3553, i == i2 ? 32 - Integer.numberOfLeadingZeros(Math.max(this.a, i2)) : 1, 32856, this.a, this.c);
            int[] iArr = new int[1];
            GLES30.glGenFramebuffers(1, iArr, 0);
            int i3 = iArr[0];
            this.f = i3;
            GLES30.glBindFramebuffer(36160, i3);
            GLES30.glFramebufferTexture2D(36160, 36064, 3553, this.e, 0);
            if (GLES30.glCheckFramebufferStatus(36160) != 36053) {
                throw new IllegalStateException("输入 FBO 不完整");
            }
            GLES30.glBindFramebuffer(36160, 0);
            dev.duo.fold.g.b("输入队列");
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            SurfaceTexture surfaceTexture = this.h;
            if (surfaceTexture != null) {
                surfaceTexture.setOnFrameAvailableListener(null);
            }
            Surface surface = this.i;
            if (surface != null) {
                surface.release();
            }
            SurfaceTexture surfaceTexture2 = this.h;
            if (surfaceTexture2 != null) {
                surfaceTexture2.release();
            }
            GLES30.glDeleteFramebuffers(1, new int[]{this.f}, 0);
            GLES30.glDeleteTextures(2, new int[]{this.d, this.e}, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Runnable runnable, SurfaceTexture surfaceTexture) {
            this.j = true;
            runnable.run();
        }

        boolean a() {
            if (!this.j) {
                return false;
            }
            g gVar = dev.duo.fold.g.this;
            gVar.a(gVar.c);
            this.j = false;
            this.h.updateTexImage();
            this.h.getTransformMatrix(this.n);
            if (this.h.getTimestamp() > 0) {
                GLES30.glBindFramebuffer(36160, this.f);
                GLES30.glViewport(0, 0, this.a, this.c);
                GLES30.glUseProgram(dev.duo.fold.g.this.e);
                GLES30.glBindVertexArray(dev.duo.fold.g.this.g);
                GLES30.glActiveTexture(33984);
                GLES30.glBindTexture(36197, this.d);
                GLES30.glUniform1i(dev.duo.fold.g.this.i, 0);
                GLES30.glUniformMatrix4fv(dev.duo.fold.g.this.j, 1, false, this.n, 0);
                GLES30.glDrawArrays(5, 0, 4);
                GLES30.glBindFramebuffer(36160, 0);
                if (this.c == this.b) {
                    GLES30.glBindTexture(3553, this.e);
                    GLES30.glGenerateMipmap(3553);
                    GLES30.glTexParameteri(3553, 10241, 9987);
                }
                dev.duo.fold.g.b("消费实时帧");
                this.k = true;
                return true;
            }
            throw new IllegalStateException("实时流没有有效帧时间");
        }
    }

    void a(String str, boolean z) throws Exception {
        boolean z2;
        boolean z3;
        boolean z4;
        this.n = z;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        this.a = eglGetDisplay;
        int[] iArr = new int[1];
        int[] iArr2 = new int[2];
        b(EGL14.eglInitialize(eglGetDisplay, iArr2, 0, iArr2, 1), "eglInitialize");
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(this.a, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 64, 12339, 5, 12344}, 0, eGLConfigArr, 0, 1, iArr, 0) || iArr[0] != 1) {
            z2 = false;
        } else {
            z2 = true;
        }
        b(z2, "eglChooseConfig");
        EGLConfig eGLConfig = eGLConfigArr[0];
        this.d = eGLConfig;
        EGLContext eglCreateContext = EGL14.eglCreateContext(this.a, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 3, 12344}, 0);
        this.b = eglCreateContext;
        if (eglCreateContext == EGL14.EGL_NO_CONTEXT) {
            z3 = false;
        } else {
            z3 = true;
        }
        b(z3, "eglCreateContext");
        EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(this.a, this.d, new int[]{12375, 1, 12374, 1, 12344}, 0);
        this.c = eglCreatePbufferSurface;
        if (eglCreatePbufferSurface == EGL14.EGL_NO_SURFACE) {
            z4 = false;
        } else {
            z4 = true;
        }
        b(z4, "eglCreatePbufferSurface");
        a(this.c);
        this.f = b(a(str, "duo.vert"), a(str, "duo.frag"));
        int b2 = b("#version 300 es\nlayout(location=0) in vec2 p;out vec2 uv;uniform mat4 transform;void main(){uv=(transform*vec4((p+1.0)*0.5,0.0,1.0)).xy;gl_Position=vec4(p,0.0,1.0);}", "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision highp float;in vec2 uv;uniform samplerExternalOES stream;out vec4 color;void main(){color=texture(stream,uv);}");
        this.e = b2;
        this.i = GLES30.glGetUniformLocation(b2, "stream");
        this.j = GLES30.glGetUniformLocation(this.e, "transform");
        int[] iArr3 = new int[1];
        GLES30.glGenVertexArrays(1, iArr3, 0);
        int i = iArr3[0];
        this.g = i;
        GLES30.glBindVertexArray(i);
        GLES30.glGenBuffers(1, iArr3, 0);
        int i2 = iArr3[0];
        this.h = i2;
        GLES30.glBindBuffer(34962, i2);
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f}).position(0);
        GLES30.glBufferData(34962, 32, asFloatBuffer, 35044);
        GLES30.glEnableVertexAttribArray(0);
        GLES30.glVertexAttribPointer(0, 2, 5126, false, 0, 0);
        b("初始化");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i) {
        int[] iArr = new int[1];
        GLES30.glGenTextures(1, iArr, 0);
        GLES30.glBindTexture(i, iArr[0]);
        GLES30.glTexParameteri(i, 10241, 9729);
        GLES30.glTexParameteri(i, 10240, 9729);
        GLES30.glTexParameteri(i, 10242, 33071);
        GLES30.glTexParameteri(i, 10243, 33071);
        return iArr[0];
    }

    final class b implements AutoCloseable {
        final int a;
        final int b;
        final int c;
        int d;
        int e;
        volatile boolean f;
        private Handler g;
        private Runnable h;
        SurfaceControl i;
        Object j;
        Surface k;
        EGLSurface l = EGL14.EGL_NO_SURFACE;

        b(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        void a(final Handler handler, final Runnable runnable) throws Exception {
            this.g = handler;
            this.h = runnable;
            String str = "MiDuoFold-" + (this.a == 0 ? "inner" : "outer");
            SurfaceControl.Builder name = new SurfaceControl.Builder().setName(str);
            SurfaceControl.Builder.class.getDeclaredMethod("setBLASTLayer", null).invoke(name, null);
            if (dev.duo.fold.g.this.n) {
                SurfaceControl.Builder.class.getDeclaredMethod("setSecure", Boolean.TYPE).invoke(name, Boolean.TRUE);
            }
            this.i = name.setBufferSize(this.b, this.c).setFormat(1).setOpaque(true).setHidden(true).build();
            Class<?> cls = Class.forName("android.graphics.BLASTBufferQueue");
            Class cls2 = Integer.TYPE;
            this.j = cls.getDeclaredConstructor(String.class, SurfaceControl.class, cls2, cls2, cls2, Float.TYPE).newInstance(str, this.i, Integer.valueOf(this.b), Integer.valueOf(this.c), 1, Float.valueOf(1.0f));
            this.k = (Surface) cls.getDeclaredMethod("createSurface", null).invoke(this.j, null);
            if (!((Boolean) cls.getDeclaredMethod("syncNextTransaction", Consumer.class).invoke(this.j, new Consumer() { // from class: dev.duo.fold.g$b$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    g.b.this.a(handler, runnable, (SurfaceControl.Transaction) obj);
                }
            })).booleanValue()) {
                throw new IllegalStateException("首帧锁存监听被拒绝");
            }
            EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(dev.duo.fold.g.this.a, dev.duo.fold.g.this.d, this.k, new int[]{12344}, 0);
            this.l = eglCreateWindowSurface;
            dev.duo.fold.g.b(eglCreateWindowSurface != EGL14.EGL_NO_SURFACE, "eglCreateWindowSurface");
            dev.duo.fold.g.this.a(this.l);
            dev.duo.fold.g.b(EGL14.eglSwapInterval(dev.duo.fold.g.this.a, 0), "eglSwapInterval");
            this.d = dev.duo.fold.g.b(3553);
            GLES30.glTexStorage2D(3553, 32 - Integer.numberOfLeadingZeros(Math.max(this.b, this.c)), 32856, this.b, this.c);
            GLES30.glTexParameteri(3553, 10241, 9987);
            int[] iArr = new int[1];
            GLES30.glGenFramebuffers(1, iArr, 0);
            int i = iArr[0];
            this.e = i;
            GLES30.glBindFramebuffer(36160, i);
            GLES30.glFramebufferTexture2D(36160, 36064, 3553, this.d, 0);
            if (GLES30.glCheckFramebufferStatus(36160) != 36053) {
                throw new IllegalStateException("材质 FBO 不完整");
            }
            GLES30.glBindFramebuffer(36160, 0);
            dev.duo.fold.g.b("材质缓冲");
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                Surfaces.a(transaction, this.i, this.a == 0 ? dev.duo.fold.g.o : dev.duo.fold.g.p);
                transaction.setLayer(this.i, 1);
                Surfaces.b(transaction, this.i);
                transaction.apply();
                transaction.close();
            } finally {
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() throws Exception {
            Exception b;
            GLES30.glDeleteFramebuffers(1, new int[]{this.e}, 0);
            GLES30.glDeleteTextures(1, new int[]{this.d}, 0);
            if (this.i != null) {
                try {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        transaction.reparent(this.i, null);
                        Surfaces.a(transaction, this.i);
                        transaction.apply();
                        transaction.close();
                        b = null;
                    } finally {
                    }
                } catch (Exception e) {
                    b = dev.duo.fold.g.b((Exception) null, e);
                }
                this.i.release();
            } else {
                b = null;
            }
            try {
                if (this.l != EGL14.EGL_NO_SURFACE) {
                    dev.duo.fold.g.b(EGL14.eglDestroySurface(dev.duo.fold.g.this.a, this.l), "eglDestroySurface");
                }
            } catch (Exception e2) {
                b = dev.duo.fold.g.b(b, e2);
            }
            Surface surface = this.k;
            if (surface != null) {
                surface.release();
            }
            try {
                Object obj = this.j;
                if (obj != null) {
                    obj.getClass().getDeclaredMethod("destroy", null).invoke(this.j, null);
                }
            } catch (Exception e3) {
                b = dev.duo.fold.g.b(b, e3);
            }
            if (b != null) {
                throw b;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Runnable runnable) {
            this.f = true;
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Handler handler, final Runnable runnable, SurfaceControl.Transaction transaction) {
            try {
                Objects.requireNonNull(handler);
                transaction.addTransactionCommittedListener(new java.util.concurrent.Executor() { public void execute(Runnable r) { handler.post(r); } }, new SurfaceControl.TransactionCommittedListener() { // from class: dev.duo.fold.g$b$$ExternalSyntheticLambda2
                    @Override // android.view.SurfaceControl.TransactionCommittedListener
                    public final void onTransactionCommitted() {
                        g.b.this.a(runnable);
                    }
                });
                transaction.apply();
                transaction.close();
            } catch (Throwable th) {
                if (transaction != null) {
                    try {
                        transaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EGLSurface eGLSurface) {
        b(EGL14.eglMakeCurrent(this.a, eGLSurface, eGLSurface, this.b), "eglMakeCurrent");
    }

    private static int a(int i, String str) {
        int glCreateShader = GLES30.glCreateShader(i);
        GLES30.glShaderSource(glCreateShader, str);
        GLES30.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES30.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        String glGetShaderInfoLog = GLES30.glGetShaderInfoLog(glCreateShader);
        GLES30.glDeleteShader(glCreateShader);
        throw new IllegalStateException(glGetShaderInfoLog);
    }

    a a(int i, int i2, Handler handler, Runnable runnable, boolean z) {
        a aVar = new a(i, i2, z ? i2 * 2 : i2);
        this.l.add(aVar);
        aVar.a(handler, runnable);
        return aVar;
    }

    a a(Bitmap bitmap) {
        a aVar = new a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getHeight());
        this.l.add(aVar);
        a(this.c);
        aVar.e = b(3553);
        GLES30.glTexStorage2D(3553, 1, 32856, aVar.a, aVar.b);
        GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
        b("上传原始壁纸");
        aVar.k = true;
        return aVar;
    }

    b a(int i, Handler handler, Runnable runnable) throws Exception {
        b bVar = new b(i, i == 0 ? t : v, i == 0 ? u : w);
        this.m.add(bVar);
        bVar.a(handler, runnable);
        return bVar;
    }

    private void a(String str, float f) {
        GLES30.glUniform1f(c(str), f);
    }

    private void a(String str, int i) {
        GLES30.glUniform1i(c(str), i);
    }

    private void a(String str, a aVar, int i) {
        GLES30.glActiveTexture(33984 + i);
        GLES30.glBindTexture(3553, aVar.e);
        a(str, i);
        GLES30.glUniform2f(c(str + "Size"), aVar.a, aVar.b);
    }

    void a(a aVar) {
        a(this.c);
        GLES30.glFinish();
        aVar.close();
        this.l.remove(aVar);
    }

    void a(b bVar, a aVar, a aVar2, a aVar3, d dVar, float f, float f2, float f3) {
        a aVar4 = aVar != null ? aVar : aVar2;
        if (aVar4 != null && aVar4.k && aVar3.k) {
            a(bVar.l);
            GLES30.glBindFramebuffer(36160, bVar.e);
            GLES30.glViewport(0, 0, bVar.b, bVar.c);
            GLES30.glUseProgram(this.f);
            GLES30.glBindVertexArray(this.g);
            a("uCover", aVar != null ? aVar : aVar4, 0);
            if (aVar2 != null) {
                aVar4 = aVar2;
            }
            a("uInner", aVar4, 1);
            GLES30.glActiveTexture(33986);
            GLES30.glBindTexture(3553, aVar3.e);
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
                GLES30.glUniform4fv(c("uCoverWallCrop"), 1, dVar.a, 0);
                GLES30.glUniform4fv(c("uInnerWallCrop"), 1, dVar.b, 0);
            }
            if (i2 != 0) {
                GLES30.glUniform4fv(c("uCoverSideRects[0]"), 3, dVar.e, 0);
                GLES30.glUniform4fv(c("uInnerSideRects[0]"), 3, dVar.f, 0);
            }
            GLES30.glUniform4fv(c("uCoverGeometry"), 1, fArr, 0);
            GLES30.glUniform4fv(c("uInnerGeometry"), 1, fArr2, 0);
            a("uPanel", bVar.a);
            a("uCoverReady", aVar != null ? 1 : 0);
            a("uInnerReady", aVar2 != null ? 1 : 0);
            a("uInnerMix", f2);
            a("uCoverMix", f3);
            a("uAngle", f);
            a("uEyeDistance", 3.8167892f);
            float max = Math.max(0.0f, Math.min(1.0f, (f - 170.0f) / 8.0f));
            a("uProjection", bVar.a == 0 ? 1.0f - ((max * max) * (3.0f - (max * 2.0f))) : 1.0f);
            a("uInnerStretch", 1.8f);
            a("uCoverStretch", 4.0f);
            GLES30.glUniform2f(c("uPanelSize"), x, y);
            GLES30.glUniform2f(c("uCoverRatios"), 0.9796434f, 1.0152861f);
            GLES30.glActiveTexture(33987);
            GLES30.glBindTexture(3553, 0);
            a("uComposed", 3);
            a("uOpticsPass", 0);
            GLES30.glDrawArrays(5, 0, 4);
            b("合成本帧内容");
            GLES30.glBindFramebuffer(36160, 0);
            GLES30.glBindTexture(3553, bVar.d);
            GLES30.glGenerateMipmap(3553);
            GLES30.glUniform2f(c("uComposedSize"), bVar.b, bVar.c);
            a("uOpticsPass", 1);
            GLES30.glDrawArrays(5, 0, 4);
            b("输出材质画面");
            b(EGL14.eglSwapBuffers(this.a, bVar.l), "eglSwapBuffers");
            return;
        }
        throw new IllegalStateException("禁止使用无效帧");
    }
}
