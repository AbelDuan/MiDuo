package dev.duo.fold;

import android.app.ActivityManager;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.view.SurfaceControl;
import dev.duo.taskcore.WorkspaceProtocol;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import org.json.JSONArray;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class Preflight {
    private static final int a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 33171101;
    private static final String[] e = {"关键接口", "铰链数据", "Hall 数据", "距离数据"};

    static class SensorProbe implements SensorEventListener {
        final /* synthetic */ Object a;
        final /* synthetic */ boolean[] b;
        final /* synthetic */ Sensor[] c;
        final /* synthetic */ long[] d;
        final /* synthetic */ boolean[] e;
        final /* synthetic */ int[] f;
        final /* synthetic */ CountDownLatch g;

        SensorProbe(Object obj, boolean[] zArr, Sensor[] sensorArr, long[] jArr, boolean[] zArr2, int[] iArr, CountDownLatch countDownLatch) {
            this.a = obj;
            this.b = zArr;
            this.c = sensorArr;
            this.d = jArr;
            this.e = zArr2;
            this.f = iArr;
            this.g = countDownLatch;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x005b, code lost:
        
            if (r8 <= 180.0f) goto L34;
         */
        @Override // android.hardware.SensorEventListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onSensorChanged(SensorEvent sensorEvent) {
            synchronized (this.a) {
                if (this.b[0]) {
                    int i = 0;
                    while (true) {
                        if (i >= 3) {
                            break;
                        }
                        if (sensorEvent.sensor == this.c[i]) {
                            long j = sensorEvent.timestamp / 1000000;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            long[] jArr = this.d;
                            if (j > jArr[i] && j <= elapsedRealtime && elapsedRealtime - j < 1000) {
                                jArr[i] = j;
                                int i2 = i == 1 ? 3 : 0;
                                float[] fArr = sensorEvent.values;
                                if (fArr.length > i2 && Float.isFinite(fArr[i2])) {
                                    if (i == 0) {
                                        float f = sensorEvent.values[i2];
                                        if (f >= 0.0f) {
                                        }
                                    }
                                    if (i == 2) {
                                        float f2 = sensorEvent.values[i2];
                                        if (f2 >= 0.0f) {
                                            if (f2 > sensorEvent.sensor.getMaximumRange()) {
                                            }
                                        }
                                    }
                                    int[] iArr = this.f;
                                    iArr[i] = iArr[i] + 1;
                                }
                                this.e[i] = true;
                            }
                            return;
                        }
                        i++;
                    }
                    for (int i3 = 0; i3 < 3; i3++) {
                        Sensor sensor = this.c[i3];
                        if (sensor != null && !this.e[i3]) {
                            if (this.f[i3] < (sensor.getReportingMode() == 0 ? 2 : 1)) {
                                return;
                            }
                        }
                    }
                    this.g.countDown();
                }
            }
        }
    }

    private static JSONArray a(String str, int i, String str2) {
        return new JSONArray().put(str).put(i).put(str2);
    }

    public static void main(String[] strArr) throws Exception {
        JSONArray jSONArray = new JSONArray();
        try {
        } catch (Exception | LinkageError e2) {
            JSONArray jSONArray2 = new JSONArray();
            for (String str : e) {
                jSONArray2.put(a(str, 2, "检查未完成：" + e2));
            }
            jSONArray = jSONArray2;
        }
        if (Process.myUid() != 0) {
            throw new SecurityException("需要Root检测环境");
        }
        Looper.prepareMainLooper();
        Class<?> cls = Class.forName("android.app.ActivityThread");
        Context context = (Context) cls.getMethod("getSystemContext", null).invoke(cls.getMethod("systemMain", null).invoke(null, null), null);
        jSONArray.put(a());
        for (JSONArray jSONArray3 : a((SensorManager) context.getSystemService(SensorManager.class))) {
            jSONArray.put(jSONArray3);
        }
        System.out.println("MiDuoFoldCheck:" + jSONArray);
        System.exit(0);
    }

    static JSONArray a() {
        Throwable cause = null;
        try {
            Class<?> cls = Class.forName("android.os.ServiceManager");
            String[] strArr = {"display", "device_state", "window", "activity_task"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                IBinder iBinder = (IBinder) cls.getMethod("getService", String.class).invoke(null, str);
                if (iBinder == null || !iBinder.pingBinder()) {
                    throw new IllegalStateException(str + " 服务不可用");
                }
            }
            String[] strArr2 = {"android.hardware.display.IDisplayManager", "android.hardware.devicestate.IDeviceStateManager", WorkspaceProtocol.INTERFACE, "android.app.IActivityTaskManager"};
            for (int i2 = 0; i2 < 4; i2++) {
                Class.forName(strArr2[i2] + "$Stub").getMethod("asInterface", IBinder.class);
            }
            Class<?> returnType = Class.forName("android.hardware.display.IDisplayManager").getMethod("getDisplayInfo", Integer.TYPE).getReturnType();
            String[] strArr3 = {"uniqueId", "logicalWidth", "logicalHeight", "rotation"};
            for (int i3 = 0; i3 < 4; i3++) {
                returnType.getField(strArr3[i3]);
            }
            Class<?> returnType2 = Class.forName("android.hardware.devicestate.IDeviceStateManager").getMethod("getDeviceStateInfo", null).getReturnType();
            String[] strArr4 = {"baseState", "currentState"};
            for (int i4 = 0; i4 < 2; i4++) {
                returnType2.getField(strArr4[i4]).getType().getMethod("getIdentifier", null);
            }
            Class<?> cls2 = Class.forName("android.hardware.devicestate.DeviceStateManagerGlobal");
            Class<?> cls3 = Class.forName("android.hardware.devicestate.DeviceStateRequest");
            cls2.getMethod("getInstance", null);
            cls2.getMethod("cancelStateRequest", null);
            cls2.getMethod("requestState", cls3, Executor.class, Class.forName("android.hardware.devicestate.DeviceStateRequest$Callback"));
            Class cls4 = Integer.TYPE;
            cls3.getMethod("newBuilder", cls4).getReturnType().getMethod("build", null);
            Class<?> cls5 = Class.forName(WorkspaceProtocol.INTERFACE);
            cls5.getMethod("isKeyguardLocked", null);
            cls5.getMethod("mirrorWallpaperSurface", cls4);
            cls5.getMethod("mirrorDisplay", cls4, SurfaceControl.class);
            Class<?> cls6 = Class.forName("android.app.IActivityTaskManager");
            Class cls7 = Boolean.TYPE;
            cls6.getMethod("getTasks", cls4, cls7, cls7, cls4);
            Class<?> cls8 = Class.forName("android.app.ITaskStackListener");
            cls6.getMethod("registerTaskStackListener", cls8);
            cls6.getMethod("unregisterTaskStackListener", cls8);
            Class<?> type = ActivityManager.RunningTaskInfo.class.getField("configuration").getType().getField("windowConfiguration").getType();
            type.getMethod("getWindowingMode", null);
            type.getMethod("getActivityType", null);
            ActivityManager.class.getMethod("getCurrentUser", null);
            Class.forName("android.app.IWallpaperManager").getMethod("getWallpaperIdForUser", cls4, cls4);
            Class.forName("dev.duo.fold.Surfaces", true, dev.duo.fold.Preflight.class.getClassLoader());
            SurfaceControl.Builder.class.getDeclaredMethod("setBLASTLayer", null);
            SurfaceControl.Builder.class.getDeclaredMethod("setSecure", cls7);
            SurfaceControl.Transaction.class.getMethod("addTransactionCommittedListener", Executor.class, Class.forName("android.view.SurfaceControl$TransactionCommittedListener"));
            Class<?> cls9 = Class.forName("android.graphics.BLASTBufferQueue");
            cls9.getDeclaredConstructor(String.class, SurfaceControl.class, cls4, cls4, cls4, Float.TYPE);
            cls9.getDeclaredMethod("createSurface", null);
            cls9.getDeclaredMethod("syncNextTransaction", Consumer.class);
            cls9.getDeclaredMethod("destroy", null);
            return a(e[0], 0, "关键接口存在，系统服务可访问；未启动动画或切换屏幕");
        } catch (Exception | LinkageError e2) {
            cause = e2;
            if (cause.getCause() != null) {
                cause = cause.getCause();
            }
            return a(e[1], 2, "关键接口不可用：" + cause);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static JSONArray[] a(SensorManager sensorManager) throws InterruptedException {
        Sensor[] sensors = {
            sensorManager.getDefaultSensor(36),
            sensorManager.getDefaultSensor(0x1fa269d, false),
            sensorManager.getDefaultSensor(8)
        };
        int[] validCounts = new int[3];
        long[] firstTimes = new long[3];
        boolean[] sawInvalid = new boolean[3];
        boolean[] registered = new boolean[3];
        boolean[] aborted = {true};
        Object lock = new Object();
        CountDownLatch latch = new CountDownLatch(1);
        HandlerThread thread = new HandlerThread("MiDuoFoldCheckSensors");
        thread.start();
        Preflight.SensorProbe listener = new Preflight.SensorProbe(lock, aborted, sensors, firstTimes, sawInvalid, validCounts, latch);
        String errorText = null;
        boolean ok = false;
        try {
            Handler handler = new Handler(thread.getLooper());
            for (int idx = 0; idx < 3; idx++) {
                Sensor sensor = sensors[idx];
                if (sensor != null) {
                    boolean bound = sensorManager.registerListener(listener, sensor, 2, handler);
                    registered[idx] = bound;
                    if (!bound) {
                        throw new IllegalStateException(e[idx + 1] + "无法注册监听");
                    }
                }
            }
            latch.await(2, TimeUnit.SECONDS);
            synchronized (lock) {
                aborted[0] = ok;
            }
            sensorManager.unregisterListener(listener);
        } catch (RuntimeException ex) {
            errorText = ex.toString();
            synchronized (lock) {
                aborted[0] = ok;
            }
            sensorManager.unregisterListener(listener);
        } catch (Throwable th) {
            synchronized (lock) {
                aborted[0] = ok;
            }
            sensorManager.unregisterListener(listener);
            thread.quitSafely();
            throw th;
        }
        thread.quitSafely();

        JSONArray[] result = new JSONArray[3];
        for (int idx = 0; idx < 3; idx++) {
            String text;
            int code;
            if (errorText != null) {
                text = "传感器检查未完成：" + errorText;
                code = 2;
            } else {
                Sensor sensor = sensors[idx];
                if (sensor == null) {
                    text = "未找到传感器";
                    code = 2;
                } else if (sawInvalid[idx]) {
                    text = "收到无效数据（格式、数值或范围异常）";
                    code = 2;
                } else {
                    int needed = sensor.getReportingMode() == 0 ? 2 : 1;
                    if (validCounts[idx] >= needed) {
                        text = "已读到有效的新数据，监听已结束";
                        code = ok ? 0 : 1;
                    } else if (sensors[idx].getReportingMode() == 1) {
                        text = "静止时未收到新数据，暂未确认；稍微改变姿态或遮挡距离传感器后重新检查";
                        code = 1;
                    } else {
                        text = "短时检查未收到足够有效的新数据";
                        code = 2;
                    }
                }
            }
            result[idx] = a(e[idx + 1], code, text);
        }
        return result;
    }
}
