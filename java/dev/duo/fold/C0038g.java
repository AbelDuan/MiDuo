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
import dev.duo.fold.C0038g;
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

/* renamed from: dev.duo.fold.g */
/* loaded from: classes.dex */
final class C0038g implements AutoCloseable {

    /* renamed from: o */
    static final int f691o = 13640817;

    /* renamed from: p */
    static final int f692p = 13640818;

    /* renamed from: q */
    static final int f693q = 13640819;

    /* renamed from: r */
    static final int f694r = 13640820;

    /* renamed from: s */
    static final int f695s = 13640821;

    /* renamed from: t */
    static final int f696t = 2364;

    /* renamed from: u */
    static final int f697u = 1672;

    /* renamed from: v */
    static final int f698v = 1168;

    /* renamed from: w */
    static final int f699w = 1712;

    /* renamed from: x */
    static final float f700x = 157.2002f;

    /* renamed from: y */
    static final float f701y = 111.2002f;

    /* renamed from: d */
    private EGLConfig f705d;

    /* renamed from: e */
    private int f706e;

    /* renamed from: f */
    private int f707f;

    /* renamed from: g */
    private int f708g;

    /* renamed from: h */
    private int f709h;

    /* renamed from: i */
    private int f710i;

    /* renamed from: j */
    private int f711j;

    /* renamed from: n */
    private boolean f715n;

    /* renamed from: a */
    private EGLDisplay f702a = EGL14.EGL_NO_DISPLAY;

    /* renamed from: b */
    private EGLContext f703b = EGL14.EGL_NO_CONTEXT;

    /* renamed from: c */
    private EGLSurface f704c = EGL14.EGL_NO_SURFACE;

    /* renamed from: k */
    private final Map<String, Integer> f712k = new HashMap();

    /* renamed from: l */
    private final List<a> f713l = new ArrayList();

    /* renamed from: m */
    private final List<b> f714m = new ArrayList();

    C0038g() {
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        if (this.f703b != EGL14.EGL_NO_CONTEXT) {
            try {
                m701a(this.f704c);
                GLES30.glFinish();
            } catch (Exception e) {
                e = e;
            }
        }
        e = null;
        Iterator<b> it = this.f714m.iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (Exception e2) {
                e = m711b(e, e2);
            }
        }
        Iterator<a> it2 = this.f713l.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().close();
            } catch (Exception e3) {
                e = m711b(e, e3);
            }
        }
        if (this.f703b != EGL14.EGL_NO_CONTEXT) {
            GLES30.glDeleteProgram(this.f707f);
            GLES30.glDeleteProgram(this.f706e);
            GLES30.glDeleteBuffers(1, new int[]{this.f709h}, 0);
            GLES30.glDeleteVertexArrays(1, new int[]{this.f708g}, 0);
        }
        EGLDisplay eGLDisplay = this.f702a;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGLSurface eGLSurface2 = this.f704c;
            if (eGLSurface2 != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(this.f702a, eGLSurface2);
            }
            EGLContext eGLContext = this.f703b;
            if (eGLContext != EGL14.EGL_NO_CONTEXT) {
                EGL14.eglDestroyContext(this.f702a, eGLContext);
            }
            EGL14.eglTerminate(this.f702a);
            EGL14.eglReleaseThread();
        }
        if (e != null) {
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static Exception m711b(Exception exc, Exception exc2) {
        if (exc == null) {
            return exc2;
        }
        exc.addSuppressed(exc2);
        return exc;
    }

    /* renamed from: c */
    private int m715c(String str) {
        Integer num = this.f712k.get(str);
        if (num == null) {
            num = Integer.valueOf(GLES30.glGetUniformLocation(this.f707f, str));
            this.f712k.put(str, num);
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m713b(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str + " EGL=" + EGL14.eglGetError());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m712b(String str) {
        int glGetError = GLES30.glGetError();
        if (glGetError != 0) {
            throw new IllegalStateException(str + " GL=" + glGetError);
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
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int m709b(String str, String str2) {
        int r6;
        RuntimeException e;
        int glCreateProgram = GLES30.glCreateProgram();
        int i = 0;
        try {
            try {
                str = m697a(35633, (String) str);
            } catch (Throwable th) {
                th = th;
            }
            try {
                int m697a = m697a(35632, str2);
                try {
                    GLES30.glAttachShader(glCreateProgram, str);
                    GLES30.glAttachShader(glCreateProgram, m697a);
                    GLES30.glLinkProgram(glCreateProgram);
                    int[] iArr = new int[1];
                    GLES30.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
                    if (iArr[0] == 0) {
                        throw new IllegalStateException(GLES30.glGetProgramInfoLog(glCreateProgram));
                    }
                    if (str != 0) {
                        GLES30.glDeleteShader(str);
                    }
                    if (m697a != 0) {
                        GLES30.glDeleteShader(m697a);
                    }
                    return glCreateProgram;
                } catch (RuntimeException e2) {
                    e = e2;
                    GLES30.glDeleteProgram(glCreateProgram);
                    throw e;
                }
            } catch (RuntimeException e3) {
                e = e3;
            } catch (Throwable th2) {
                th = th2;
                str2 = null;
                i = str;
                r6 = str2;
                if (i != 0) {
                    GLES30.glDeleteShader(i);
                }
                if (r6 != 0) {
                    GLES30.glDeleteShader(r6);
                }
                throw th;
            }
        } catch (RuntimeException e4) {
            e = e4;
        } catch (Throwable th3) {
            th = th3;
            r6 = 0;
            if (i != 0) {
            }
            if (r6 != 0) {
            }
            throw th;
        }
    }

    /* renamed from: a */
    static String m700a(String str, String str2) throws Exception {
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

    /* renamed from: dev.duo.fold.g$a */
    final class a implements AutoCloseable {

        /* renamed from: a */
        final int f716a;

        /* renamed from: b */
        final int f717b;

        /* renamed from: c */
        final int f718c;

        /* renamed from: d */
        int f719d;

        /* renamed from: e */
        int f720e;

        /* renamed from: f */
        int f721f;

        /* renamed from: g */
        int f722g;

        /* renamed from: h */
        SurfaceTexture f723h;

        /* renamed from: i */
        Surface f724i;

        /* renamed from: j */
        boolean f725j;

        /* renamed from: k */
        boolean f726k;

        /* renamed from: l */
        boolean f727l;

        /* renamed from: m */
        float[] f728m;

        /* renamed from: n */
        private final float[] f729n = new float[16];

        a(int i, int i2, int i3) {
            this.f716a = i;
            this.f717b = i2;
            this.f718c = i3;
        }

        /* renamed from: a */
        void m728a(Handler handler, final Runnable runnable) {
            C0038g c0038g = C0038g.this;
            c0038g.m701a(c0038g.f704c);
            this.f719d = C0038g.m708b(36197);
            SurfaceTexture surfaceTexture = new SurfaceTexture(this.f719d);
            this.f723h = surfaceTexture;
            surfaceTexture.setDefaultBufferSize(this.f716a, this.f718c);
            this.f723h.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: dev.duo.fold.g$a$$ExternalSyntheticLambda0
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                    C0038g.a.this.m727a(runnable, surfaceTexture2);
                }
            }, handler);
            this.f724i = new Surface(this.f723h);
            this.f720e = C0038g.m708b(3553);
            int i = this.f718c;
            int i2 = this.f717b;
            GLES30.glTexStorage2D(3553, i == i2 ? 32 - Integer.numberOfLeadingZeros(Math.max(this.f716a, i2)) : 1, 32856, this.f716a, this.f718c);
            int[] iArr = new int[1];
            GLES30.glGenFramebuffers(1, iArr, 0);
            int i3 = iArr[0];
            this.f721f = i3;
            GLES30.glBindFramebuffer(36160, i3);
            GLES30.glFramebufferTexture2D(36160, 36064, 3553, this.f720e, 0);
            if (GLES30.glCheckFramebufferStatus(36160) != 36053) {
                throw new IllegalStateException("输入 FBO 不完整");
            }
            GLES30.glBindFramebuffer(36160, 0);
            C0038g.m712b("输入队列");
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            SurfaceTexture surfaceTexture = this.f723h;
            if (surfaceTexture != null) {
                surfaceTexture.setOnFrameAvailableListener(null);
            }
            Surface surface = this.f724i;
            if (surface != null) {
                surface.release();
            }
            SurfaceTexture surfaceTexture2 = this.f723h;
            if (surfaceTexture2 != null) {
                surfaceTexture2.release();
            }
            GLES30.glDeleteFramebuffers(1, new int[]{this.f721f}, 0);
            GLES30.glDeleteTextures(2, new int[]{this.f719d, this.f720e}, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m727a(Runnable runnable, SurfaceTexture surfaceTexture) {
            this.f725j = true;
            runnable.run();
        }

        /* renamed from: a */
        boolean m729a() {
            if (!this.f725j) {
                return false;
            }
            C0038g c0038g = C0038g.this;
            c0038g.m701a(c0038g.f704c);
            this.f725j = false;
            this.f723h.updateTexImage();
            this.f723h.getTransformMatrix(this.f729n);
            if (this.f723h.getTimestamp() > 0) {
                GLES30.glBindFramebuffer(36160, this.f721f);
                GLES30.glViewport(0, 0, this.f716a, this.f718c);
                GLES30.glUseProgram(C0038g.this.f706e);
                GLES30.glBindVertexArray(C0038g.this.f708g);
                GLES30.glActiveTexture(33984);
                GLES30.glBindTexture(36197, this.f719d);
                GLES30.glUniform1i(C0038g.this.f710i, 0);
                GLES30.glUniformMatrix4fv(C0038g.this.f711j, 1, false, this.f729n, 0);
                GLES30.glDrawArrays(5, 0, 4);
                GLES30.glBindFramebuffer(36160, 0);
                if (this.f718c == this.f717b) {
                    GLES30.glBindTexture(3553, this.f720e);
                    GLES30.glGenerateMipmap(3553);
                    GLES30.glTexParameteri(3553, 10241, 9987);
                }
                C0038g.m712b("消费实时帧");
                this.f726k = true;
                return true;
            }
            throw new IllegalStateException("实时流没有有效帧时间");
        }
    }

    /* renamed from: a */
    void m726a(String str, boolean z) throws Exception {
        boolean z2;
        boolean z3;
        boolean z4;
        this.f715n = z;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        this.f702a = eglGetDisplay;
        int[] iArr = new int[1];
        int[] iArr2 = new int[2];
        m713b(EGL14.eglInitialize(eglGetDisplay, iArr2, 0, iArr2, 1), "eglInitialize");
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(this.f702a, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 64, 12339, 5, 12344}, 0, eGLConfigArr, 0, 1, iArr, 0) || iArr[0] != 1) {
            z2 = false;
        } else {
            z2 = true;
        }
        m713b(z2, "eglChooseConfig");
        EGLConfig eGLConfig = eGLConfigArr[0];
        this.f705d = eGLConfig;
        EGLContext eglCreateContext = EGL14.eglCreateContext(this.f702a, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 3, 12344}, 0);
        this.f703b = eglCreateContext;
        if (eglCreateContext == EGL14.EGL_NO_CONTEXT) {
            z3 = false;
        } else {
            z3 = true;
        }
        m713b(z3, "eglCreateContext");
        EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(this.f702a, this.f705d, new int[]{12375, 1, 12374, 1, 12344}, 0);
        this.f704c = eglCreatePbufferSurface;
        if (eglCreatePbufferSurface == EGL14.EGL_NO_SURFACE) {
            z4 = false;
        } else {
            z4 = true;
        }
        m713b(z4, "eglCreatePbufferSurface");
        m701a(this.f704c);
        this.f707f = m709b(m700a(str, "duo.vert"), m700a(str, "duo.frag"));
        int m709b = m709b("#version 300 es\nlayout(location=0) in vec2 p;out vec2 uv;uniform mat4 transform;void main(){uv=(transform*vec4((p+1.0)*0.5,0.0,1.0)).xy;gl_Position=vec4(p,0.0,1.0);}", "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision highp float;in vec2 uv;uniform samplerExternalOES stream;out vec4 color;void main(){color=texture(stream,uv);}");
        this.f706e = m709b;
        this.f710i = GLES30.glGetUniformLocation(m709b, "stream");
        this.f711j = GLES30.glGetUniformLocation(this.f706e, "transform");
        int[] iArr3 = new int[1];
        GLES30.glGenVertexArrays(1, iArr3, 0);
        int i = iArr3[0];
        this.f708g = i;
        GLES30.glBindVertexArray(i);
        GLES30.glGenBuffers(1, iArr3, 0);
        int i2 = iArr3[0];
        this.f709h = i2;
        GLES30.glBindBuffer(34962, i2);
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f}).position(0);
        GLES30.glBufferData(34962, 32, asFloatBuffer, 35044);
        GLES30.glEnableVertexAttribArray(0);
        GLES30.glVertexAttribPointer(0, 2, 5126, false, 0, 0);
        m712b("初始化");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static int m708b(int i) {
        int[] iArr = new int[1];
        GLES30.glGenTextures(1, iArr, 0);
        GLES30.glBindTexture(i, iArr[0]);
        GLES30.glTexParameteri(i, 10241, 9729);
        GLES30.glTexParameteri(i, 10240, 9729);
        GLES30.glTexParameteri(i, 10242, 33071);
        GLES30.glTexParameteri(i, 10243, 33071);
        return iArr[0];
    }

    /* renamed from: dev.duo.fold.g$b */
    final class b implements AutoCloseable {

        /* renamed from: a */
        final int f731a;

        /* renamed from: b */
        final int f732b;

        /* renamed from: c */
        final int f733c;

        /* renamed from: d */
        int f734d;

        /* renamed from: e */
        int f735e;

        /* renamed from: f */
        volatile boolean f736f;

        /* renamed from: g */
        private Handler f737g;

        /* renamed from: h */
        private Runnable f738h;

        /* renamed from: i */
        SurfaceControl f739i;

        /* renamed from: j */
        Object f740j;

        /* renamed from: k */
        Surface f741k;

        /* renamed from: l */
        EGLSurface f742l = EGL14.EGL_NO_SURFACE;

        b(int i, int i2, int i3) {
            this.f731a = i;
            this.f732b = i2;
            this.f733c = i3;
        }

        /* renamed from: a */
        void m732a(final Handler handler, final Runnable runnable) throws Exception {
            this.f737g = handler;
            this.f738h = runnable;
            String str = "MiDuoFold-" + (this.f731a == 0 ? "inner" : "outer");
            SurfaceControl.Builder name = new SurfaceControl.Builder().setName(str);
            SurfaceControl.Builder.class.getDeclaredMethod("setBLASTLayer", null).invoke(name, null);
            if (C0038g.this.f715n) {
                SurfaceControl.Builder.class.getDeclaredMethod("setSecure", Boolean.TYPE).invoke(name, Boolean.TRUE);
            }
            this.f739i = name.setBufferSize(this.f732b, this.f733c).setFormat(1).setOpaque(true).setHidden(true).build();
            Class<?> cls = Class.forName("android.graphics.BLASTBufferQueue");
            Class cls2 = Integer.TYPE;
            this.f740j = cls.getDeclaredConstructor(String.class, SurfaceControl.class, cls2, cls2, cls2, Float.TYPE).newInstance(str, this.f739i, Integer.valueOf(this.f732b), Integer.valueOf(this.f733c), 1, Float.valueOf(1.0f));
            this.f741k = (Surface) cls.getDeclaredMethod("createSurface", null).invoke(this.f740j, null);
            if (!((Boolean) cls.getDeclaredMethod("syncNextTransaction", Consumer.class).invoke(this.f740j, new Consumer() { // from class: dev.duo.fold.g$b$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    C0038g.b.this.m730a(handler, runnable, (SurfaceControl.Transaction) obj);
                }
            })).booleanValue()) {
                throw new IllegalStateException("首帧锁存监听被拒绝");
            }
            EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(C0038g.this.f702a, C0038g.this.f705d, this.f741k, new int[]{12344}, 0);
            this.f742l = eglCreateWindowSurface;
            C0038g.m713b(eglCreateWindowSurface != EGL14.EGL_NO_SURFACE, "eglCreateWindowSurface");
            C0038g.this.m701a(this.f742l);
            C0038g.m713b(EGL14.eglSwapInterval(C0038g.this.f702a, 0), "eglSwapInterval");
            this.f734d = C0038g.m708b(3553);
            GLES30.glTexStorage2D(3553, 32 - Integer.numberOfLeadingZeros(Math.max(this.f732b, this.f733c)), 32856, this.f732b, this.f733c);
            GLES30.glTexParameteri(3553, 10241, 9987);
            int[] iArr = new int[1];
            GLES30.glGenFramebuffers(1, iArr, 0);
            int i = iArr[0];
            this.f735e = i;
            GLES30.glBindFramebuffer(36160, i);
            GLES30.glFramebufferTexture2D(36160, 36064, 3553, this.f734d, 0);
            if (GLES30.glCheckFramebufferStatus(36160) != 36053) {
                throw new IllegalStateException("材质 FBO 不完整");
            }
            GLES30.glBindFramebuffer(36160, 0);
            C0038g.m712b("材质缓冲");
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                Surfaces.m639a(transaction, this.f739i, this.f731a == 0 ? C0038g.f691o : C0038g.f692p);
                transaction.setLayer(this.f739i, 1);
                Surfaces.m640b(transaction, this.f739i);
                transaction.apply();
                transaction.close();
            } finally {
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() throws Exception {
            Exception m711b;
            GLES30.glDeleteFramebuffers(1, new int[]{this.f735e}, 0);
            GLES30.glDeleteTextures(1, new int[]{this.f734d}, 0);
            if (this.f739i != null) {
                try {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    try {
                        transaction.reparent(this.f739i, null);
                        Surfaces.m637a(transaction, this.f739i);
                        transaction.apply();
                        transaction.close();
                        m711b = null;
                    } finally {
                    }
                } catch (Exception e) {
                    m711b = C0038g.m711b((Exception) null, e);
                }
                this.f739i.release();
            } else {
                m711b = null;
            }
            try {
                if (this.f742l != EGL14.EGL_NO_SURFACE) {
                    C0038g.m713b(EGL14.eglDestroySurface(C0038g.this.f702a, this.f742l), "eglDestroySurface");
                }
            } catch (Exception e2) {
                m711b = C0038g.m711b(m711b, e2);
            }
            Surface surface = this.f741k;
            if (surface != null) {
                surface.release();
            }
            try {
                Object obj = this.f740j;
                if (obj != null) {
                    obj.getClass().getDeclaredMethod("destroy", null).invoke(this.f740j, null);
                }
            } catch (Exception e3) {
                m711b = C0038g.m711b(m711b, e3);
            }
            if (m711b != null) {
                throw m711b;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m731a(Runnable runnable) {
            this.f736f = true;
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m730a(Handler handler, final Runnable runnable, SurfaceControl.Transaction transaction) {
            try {
                Objects.requireNonNull(handler);
                transaction.addTransactionCommittedListener(new g$b$$ExternalSyntheticLambda1(handler), new SurfaceControl.TransactionCommittedListener() { // from class: dev.duo.fold.g$b$$ExternalSyntheticLambda2
                    @Override // android.view.SurfaceControl.TransactionCommittedListener
                    public final void onTransactionCommitted() {
                        C0038g.b.this.m731a(runnable);
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
    /* renamed from: a */
    public void m701a(EGLSurface eGLSurface) {
        m713b(EGL14.eglMakeCurrent(this.f702a, eGLSurface, eGLSurface, this.f703b), "eglMakeCurrent");
    }

    /* renamed from: a */
    private static int m697a(int i, String str) {
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

    /* renamed from: a */
    a m721a(int i, int i2, Handler handler, Runnable runnable, boolean z) {
        a aVar = new a(i, i2, z ? i2 * 2 : i2);
        this.f713l.add(aVar);
        aVar.m728a(handler, runnable);
        return aVar;
    }

    /* renamed from: a */
    a m722a(Bitmap bitmap) {
        a aVar = new a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getHeight());
        this.f713l.add(aVar);
        m701a(this.f704c);
        aVar.f720e = m708b(3553);
        GLES30.glTexStorage2D(3553, 1, 32856, aVar.f716a, aVar.f717b);
        GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
        m712b("上传原始壁纸");
        aVar.f726k = true;
        return aVar;
    }

    /* renamed from: a */
    b m723a(int i, Handler handler, Runnable runnable) throws Exception {
        b bVar = new b(i, i == 0 ? f696t : f698v, i == 0 ? f697u : f699w);
        this.f714m.add(bVar);
        bVar.m732a(handler, runnable);
        return bVar;
    }

    /* renamed from: a */
    private void m704a(String str, float f) {
        GLES30.glUniform1f(m715c(str), f);
    }

    /* renamed from: a */
    private void m705a(String str, int i) {
        GLES30.glUniform1i(m715c(str), i);
    }

    /* renamed from: a */
    private void m706a(String str, a aVar, int i) {
        GLES30.glActiveTexture(33984 + i);
        GLES30.glBindTexture(3553, aVar.f720e);
        m705a(str, i);
        GLES30.glUniform2f(m715c(str + "Size"), aVar.f716a, aVar.f717b);
    }

    /* renamed from: a */
    void m724a(a aVar) {
        m701a(this.f704c);
        GLES30.glFinish();
        aVar.close();
        this.f713l.remove(aVar);
    }

    /* renamed from: a */
    void m725a(b bVar, a aVar, a aVar2, a aVar3, C0035d c0035d, float f, float f2, float f3) {
        a aVar4 = aVar != null ? aVar : aVar2;
        if (aVar4 != null && aVar4.f726k && aVar3.f726k) {
            m701a(bVar.f742l);
            GLES30.glBindFramebuffer(36160, bVar.f735e);
            GLES30.glViewport(0, 0, bVar.f732b, bVar.f733c);
            GLES30.glUseProgram(this.f707f);
            GLES30.glBindVertexArray(this.f708g);
            m706a("uCover", aVar != null ? aVar : aVar4, 0);
            if (aVar2 != null) {
                aVar4 = aVar2;
            }
            m706a("uInner", aVar4, 1);
            GLES30.glActiveTexture(33986);
            GLES30.glBindTexture(3553, aVar3.f720e);
            m705a("uWall", 2);
            float[] fArr = aVar != null ? aVar.f728m : aVar2.f728m;
            float[] fArr2 = aVar2 != null ? aVar2.f728m : aVar.f728m;
            int i = ((aVar == null || !aVar.f727l) && (aVar2 == null || !aVar2.f727l)) ? 0 : 1;
            int i2 = (c0035d == null || i != 0) ? 0 : 1;
            if (i2 != 0) {
                fArr = c0035d.f663c;
                fArr2 = c0035d.f664d;
            }
            if (aVar2 != null && aVar2.f722g != 0) {
                fArr2 = fArr;
            }
            m705a("uInnerRotation", aVar2 != null ? aVar2.f722g : 0);
            m705a("uWallRotation", aVar3.f722g);
            m705a("uDesktop", (this.f715n || i != 0) ? 0 : 1);
            m705a("uWallBitmap", (i == 0 || c0035d == null) ? 0 : 1);
            m705a("uApp", i);
            m705a("uLayered", i2);
            if (c0035d != null) {
                GLES30.glUniform4fv(m715c("uCoverWallCrop"), 1, c0035d.f661a, 0);
                GLES30.glUniform4fv(m715c("uInnerWallCrop"), 1, c0035d.f662b, 0);
            }
            if (i2 != 0) {
                GLES30.glUniform4fv(m715c("uCoverSideRects[0]"), 3, c0035d.f665e, 0);
                GLES30.glUniform4fv(m715c("uInnerSideRects[0]"), 3, c0035d.f666f, 0);
            }
            GLES30.glUniform4fv(m715c("uCoverGeometry"), 1, fArr, 0);
            GLES30.glUniform4fv(m715c("uInnerGeometry"), 1, fArr2, 0);
            m705a("uPanel", bVar.f731a);
            m705a("uCoverReady", aVar != null ? 1 : 0);
            m705a("uInnerReady", aVar2 != null ? 1 : 0);
            m704a("uInnerMix", f2);
            m704a("uCoverMix", f3);
            m704a("uAngle", f);
            m704a("uEyeDistance", 3.8167892f);
            float max = Math.max(0.0f, Math.min(1.0f, (f - 170.0f) / 8.0f));
            m704a("uProjection", bVar.f731a == 0 ? 1.0f - ((max * max) * (3.0f - (max * 2.0f))) : 1.0f);
            m704a("uInnerStretch", 1.8f);
            m704a("uCoverStretch", 4.0f);
            GLES30.glUniform2f(m715c("uPanelSize"), f700x, f701y);
            GLES30.glUniform2f(m715c("uCoverRatios"), 0.9796434f, 1.0152861f);
            GLES30.glActiveTexture(33987);
            GLES30.glBindTexture(3553, 0);
            m705a("uComposed", 3);
            m705a("uOpticsPass", 0);
            GLES30.glDrawArrays(5, 0, 4);
            m712b("合成本帧内容");
            GLES30.glBindFramebuffer(36160, 0);
            GLES30.glBindTexture(3553, bVar.f734d);
            GLES30.glGenerateMipmap(3553);
            GLES30.glUniform2f(m715c("uComposedSize"), bVar.f732b, bVar.f733c);
            m705a("uOpticsPass", 1);
            GLES30.glDrawArrays(5, 0, 4);
            m712b("输出材质画面");
            m713b(EGL14.eglSwapBuffers(this.f702a, bVar.f742l), "eglSwapBuffers");
            return;
        }
        throw new IllegalStateException("禁止使用无效帧");
    }
}
