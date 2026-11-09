package dev.duo.fold;

/* loaded from: classes.dex */
public final class Preflight {
    private static final int a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 33171101;
    private static final java.lang.String[] e = {"关键接口", "铰链数据", "Hall 数据", "距离数据"};

    class a implements android.hardware.SensorEventListener {
        final /* synthetic */ java.lang.Object a;
        final /* synthetic */ boolean[] b;
        final /* synthetic */ android.hardware.Sensor[] c;
        final /* synthetic */ long[] d;
        final /* synthetic */ boolean[] e;
        final /* synthetic */ int[] f;
        final /* synthetic */ java.util.concurrent.CountDownLatch g;

        a(java.lang.Object obj, boolean[] zArr, android.hardware.Sensor[] sensorArr, long[] jArr, boolean[] zArr2, int[] iArr, java.util.concurrent.CountDownLatch countDownLatch) {
            this.a = obj;
            this.b = zArr;
            this.c = sensorArr;
            this.d = jArr;
            this.e = zArr2;
            this.f = iArr;
            this.g = countDownLatch;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x005b, code lost:
        
            if (r8 <= 180.0f) goto L34;
         */
        @Override // android.hardware.SensorEventListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSensorChanged(android.hardware.SensorEvent r14) {
            /*
                r13 = this;
                java.lang.Object r0 = r13.a
                monitor-enter(r0)
                boolean[] r1 = r13.b     // Catch: java.lang.Throwable -> Lae
                r2 = 0
                boolean r1 = r1[r2]     // Catch: java.lang.Throwable -> Lae
                if (r1 != 0) goto Lc
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
                return
            Lc:
                r1 = r2
            Ld:
                r3 = 2
                r4 = 3
                r5 = 1
                if (r1 >= r4) goto L84
                android.hardware.Sensor r6 = r14.sensor     // Catch: java.lang.Throwable -> Lae
                android.hardware.Sensor[] r7 = r13.c     // Catch: java.lang.Throwable -> Lae
                r7 = r7[r1]     // Catch: java.lang.Throwable -> Lae
                if (r6 != r7) goto L81
                long r6 = r14.timestamp     // Catch: java.lang.Throwable -> Lae
                r8 = 1000000(0xf4240, double:4.940656E-318)
                long r6 = r6 / r8
                long r8 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> Lae
                long[] r10 = r13.d     // Catch: java.lang.Throwable -> Lae
                r11 = r10[r1]     // Catch: java.lang.Throwable -> Lae
                int r11 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r11 <= 0) goto L7f
                int r11 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r11 > 0) goto L7f
                long r8 = r8 - r6
                r11 = 1000(0x3e8, double:4.94E-321)
                int r8 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
                if (r8 < 0) goto L38
                goto L7f
            L38:
                r10[r1] = r6     // Catch: java.lang.Throwable -> Lae
                if (r1 != r5) goto L3e
                r6 = r4
                goto L3f
            L3e:
                r6 = r2
            L3f:
                float[] r7 = r14.values     // Catch: java.lang.Throwable -> Lae
                int r8 = r7.length     // Catch: java.lang.Throwable -> Lae
                if (r8 <= r6) goto L7a
                r7 = r7[r6]     // Catch: java.lang.Throwable -> Lae
                boolean r7 = java.lang.Float.isFinite(r7)     // Catch: java.lang.Throwable -> Lae
                if (r7 == 0) goto L7a
                r7 = 0
                if (r1 != 0) goto L5d
                float[] r8 = r14.values     // Catch: java.lang.Throwable -> Lae
                r8 = r8[r6]     // Catch: java.lang.Throwable -> Lae
                int r9 = (r8 > r7 ? 1 : (r8 == r7 ? 0 : -1))
                if (r9 < 0) goto L7a
                r9 = 1127481344(0x43340000, float:180.0)
                int r8 = (r8 > r9 ? 1 : (r8 == r9 ? 0 : -1))
                if (r8 > 0) goto L7a
            L5d:
                if (r1 != r3) goto L72
                float[] r8 = r14.values     // Catch: java.lang.Throwable -> Lae
                r6 = r8[r6]     // Catch: java.lang.Throwable -> Lae
                int r7 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
                if (r7 < 0) goto L7a
                android.hardware.Sensor r14 = r14.sensor     // Catch: java.lang.Throwable -> Lae
                float r14 = r14.getMaximumRange()     // Catch: java.lang.Throwable -> Lae
                int r14 = (r6 > r14 ? 1 : (r6 == r14 ? 0 : -1))
                if (r14 <= 0) goto L72
                goto L7a
            L72:
                int[] r14 = r13.f     // Catch: java.lang.Throwable -> Lae
                r6 = r14[r1]     // Catch: java.lang.Throwable -> Lae
                int r6 = r6 + r5
                r14[r1] = r6     // Catch: java.lang.Throwable -> Lae
                goto L84
            L7a:
                boolean[] r14 = r13.e     // Catch: java.lang.Throwable -> Lae
                r14[r1] = r5     // Catch: java.lang.Throwable -> Lae
                goto L84
            L7f:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
                return
            L81:
                int r1 = r1 + 1
                goto Ld
            L84:
            L85:
                if (r2 >= r4) goto La7
                android.hardware.Sensor[] r14 = r13.c     // Catch: java.lang.Throwable -> Lae
                r14 = r14[r2]     // Catch: java.lang.Throwable -> Lae
                if (r14 == 0) goto La4
                boolean[] r1 = r13.e     // Catch: java.lang.Throwable -> Lae
                boolean r1 = r1[r2]     // Catch: java.lang.Throwable -> Lae
                if (r1 != 0) goto La4
                int[] r1 = r13.f     // Catch: java.lang.Throwable -> Lae
                r1 = r1[r2]     // Catch: java.lang.Throwable -> Lae
                int r14 = r14.getReportingMode()     // Catch: java.lang.Throwable -> Lae
                if (r14 != 0) goto L9f
                r14 = r3
                goto La0
            L9f:
                r14 = r5
            La0:
                if (r1 >= r14) goto La4
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
                return
            La4:
                int r2 = r2 + 1
                goto L85
            La7:
                java.util.concurrent.CountDownLatch r14 = r13.g     // Catch: java.lang.Throwable -> Lae
                r14.countDown()     // Catch: java.lang.Throwable -> Lae
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
                return
            Lae:
                r14 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
                throw r14
            */
            throw new UnsupportedOperationException("Method not decompiled: dev.duo.fold.Preflight.a.onSensorChanged(android.hardware.SensorEvent):void");
        }
    }

    private static org.json.JSONArray a(java.lang.String str, int i, java.lang.String str2) {
        return new org.json.JSONArray().put(str).put(i).put(str2);
    }

    public static void main(java.lang.String[] strArr) {
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        try {
        } catch (java.lang.Exception | java.lang.LinkageError e2) {
            org.json.JSONArray jSONArray2 = new org.json.JSONArray();
            for (java.lang.String str : e) {
                jSONArray2.put(a(str, 2, "检查未完成：" + e2));
            }
            jSONArray = jSONArray2;
        }
        if (android.os.Process.myUid() != 0) {
            throw new java.lang.SecurityException("需要Root检测环境");
        }
        android.os.Looper.prepareMainLooper();
        java.lang.Class<?> cls = java.lang.Class.forName("android.app.ActivityThread");
        android.content.Context context = (android.content.Context) cls.getMethod("getSystemContext", null).invoke(cls.getMethod("systemMain", null).invoke(null, null), null);
        jSONArray.put(a());
        for (org.json.JSONArray jSONArray3 : a((android.hardware.SensorManager) context.getSystemService(android.hardware.SensorManager.class))) {
            jSONArray.put(jSONArray3);
        }
        java.lang.System.out.println("MiDuoFoldCheck:" + jSONArray);
        java.lang.System.exit(0);
    }

    static org.json.JSONArray a() {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.os.ServiceManager");
            java.lang.String[] strArr = {"display", "device_state", "window", "activity_task"};
            for (int i = 0; i < 4; i++) {
                java.lang.String str = strArr[i];
                android.os.IBinder iBinder = (android.os.IBinder) cls.getMethod("getService", java.lang.String.class).invoke(null, str);
                if (iBinder == null || !iBinder.pingBinder()) {
                    throw new java.lang.IllegalStateException(str + " 服务不可用");
                }
            }
            java.lang.String[] strArr2 = {"android.hardware.display.IDisplayManager", "android.hardware.devicestate.IDeviceStateManager", dev.duo.taskcore.h.b, "android.app.IActivityTaskManager"};
            for (int i2 = 0; i2 < 4; i2++) {
                java.lang.Class.forName(strArr2[i2] + "$Stub").getMethod("asInterface", android.os.IBinder.class);
            }
            java.lang.Class<?> returnType = java.lang.Class.forName("android.hardware.display.IDisplayManager").getMethod("getDisplayInfo", java.lang.Integer.TYPE).getReturnType();
            java.lang.String[] strArr3 = {"uniqueId", "logicalWidth", "logicalHeight", "rotation"};
            for (int i3 = 0; i3 < 4; i3++) {
                returnType.getField(strArr3[i3]);
            }
            java.lang.Class<?> returnType2 = java.lang.Class.forName("android.hardware.devicestate.IDeviceStateManager").getMethod("getDeviceStateInfo", null).getReturnType();
            java.lang.String[] strArr4 = {"baseState", "currentState"};
            for (int i4 = 0; i4 < 2; i4++) {
                returnType2.getField(strArr4[i4]).getType().getMethod("getIdentifier", null);
            }
            java.lang.Class<?> cls2 = java.lang.Class.forName("android.hardware.devicestate.DeviceStateManagerGlobal");
            java.lang.Class<?> cls3 = java.lang.Class.forName("android.hardware.devicestate.DeviceStateRequest");
            cls2.getMethod("getInstance", null);
            cls2.getMethod("cancelStateRequest", null);
            cls2.getMethod("requestState", cls3, java.util.concurrent.Executor.class, java.lang.Class.forName("android.hardware.devicestate.DeviceStateRequest$Callback"));
            java.lang.Class cls4 = java.lang.Integer.TYPE;
            cls3.getMethod("newBuilder", cls4).getReturnType().getMethod("build", null);
            java.lang.Class<?> cls5 = java.lang.Class.forName(dev.duo.taskcore.h.b);
            cls5.getMethod("isKeyguardLocked", null);
            cls5.getMethod("mirrorWallpaperSurface", cls4);
            cls5.getMethod("mirrorDisplay", cls4, android.view.SurfaceControl.class);
            java.lang.Class<?> cls6 = java.lang.Class.forName("android.app.IActivityTaskManager");
            java.lang.Class cls7 = java.lang.Boolean.TYPE;
            cls6.getMethod("getTasks", cls4, cls7, cls7, cls4);
            java.lang.Class<?> cls8 = java.lang.Class.forName("android.app.ITaskStackListener");
            cls6.getMethod("registerTaskStackListener", cls8);
            cls6.getMethod("unregisterTaskStackListener", cls8);
            java.lang.Class<?> type = android.app.ActivityManager.RunningTaskInfo.class.getField("configuration").getType().getField("windowConfiguration").getType();
            type.getMethod("getWindowingMode", null);
            type.getMethod("getActivityType", null);
            android.app.ActivityManager.class.getMethod("getCurrentUser", null);
            java.lang.Class.forName("android.app.IWallpaperManager").getMethod("getWallpaperIdForUser", cls4, cls4);
            java.lang.Class.forName("dev.duo.fold.Surfaces", true, dev.duo.fold.Preflight.class.getClassLoader());
            android.view.SurfaceControl.Builder.class.getDeclaredMethod("setBLASTLayer", null);
            android.view.SurfaceControl.Builder.class.getDeclaredMethod("setSecure", cls7);
            android.view.SurfaceControl.Transaction.class.getMethod("addTransactionCommittedListener", java.util.concurrent.Executor.class, java.lang.Class.forName("android.view.SurfaceControl$TransactionCommittedListener"));
            java.lang.Class<?> cls9 = java.lang.Class.forName("android.graphics.BLASTBufferQueue");
            cls9.getDeclaredConstructor(java.lang.String.class, android.view.SurfaceControl.class, cls4, cls4, cls4, java.lang.Float.TYPE);
            cls9.getDeclaredMethod("createSurface", null);
            cls9.getDeclaredMethod("syncNextTransaction", java.util.function.Consumer.class);
            cls9.getDeclaredMethod("destroy", null);
            return a(e[0], 0, "关键接口存在，系统服务可访问；未启动动画或切换屏幕");
        } catch (java.lang.Exception | java.lang.LinkageError e2) {
            e = e2;
            if (e.getCause() != null) {
                e = e.getCause();
            }
            return a(e[0], 2, "关键接口不可用：" + e);
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
        To view partially-correct add '--show-bad-code' argument
    */
    static org.json.JSONArray[] a(android.hardware.SensorManager r17) throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.fold.Preflight.a(android.hardware.SensorManager):org.json.JSONArray[]");
    }
}
