package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class B {
    private static final java.lang.String a = "MiDuoLicense";
    private static javax.net.ssl.SSLSocketFactory b;

    private B() {
    }

    static java.lang.String a() {
        try {
            java.lang.Process start = new java.lang.ProcessBuilder("getprop", dev.duo.hookprobe.F.d).start();
            byte[] bArr = new byte[128];
            int read = start.getInputStream().read(bArr);
            start.waitFor();
            java.lang.String trim = read > 0 ? new java.lang.String(bArr, 0, read, java.nio.charset.StandardCharsets.US_ASCII).trim() : "";
            return trim.matches("[0-9a-f]{64}") ? trim : "";
        } catch (java.io.IOException | java.lang.InterruptedException e) {
            return "";
        }
    }

    static org.json.JSONObject b(java.lang.String str, java.lang.String str2) throws java.io.IOException, org.json.JSONException {
        return a("/v1/license/restore", new org.json.JSONObject().put("device_id", str).put("license_key", str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(java.lang.String str, java.lang.String str2) {
        if (!str2.matches("[0-9a-f]{64}")) {
            android.util.Log.w(a, "page colours not shared: no device id yet");
            return;
        }
        try {
            org.json.JSONObject put = new org.json.JSONObject(str).put("device_id", str2);
            a("/v1/tones", put);
            android.util.Log.i(a, "page colours shared: " + put.getString("package") + " x" + put.getJSONArray("entries").length());
        } catch (java.io.IOException | org.json.JSONException e) {
            android.util.Log.w(a, "page colours not shared: " + e);
        }
    }

    static void b(final int i) {
        new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.B$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.B.a(i);
            }
        }, "MiDuoTrialReport").start();
    }

    static org.json.JSONObject a(android.content.SharedPreferences sharedPreferences, java.lang.String str) throws java.io.IOException, org.json.JSONException {
        int i;
        org.json.JSONObject a2 = a("/v1/device/hello", new org.json.JSONObject().put("device_id", str));
        int i2 = a2.getJSONObject("trial").getInt("used_sec");
        synchronized (dev.duo.hookprobe.B.class) {
            i = sharedPreferences.getInt("_global/trialUsedSec", 0);
            if (i2 > i) {
                a(sharedPreferences.edit().putInt("_global/trialUsedSec", i2));
            }
        }
        if (i > i2) {
            a(str, i);
        }
        a(sharedPreferences, str, a2.getJSONObject("license"));
        return a2;
    }

    private static synchronized javax.net.ssl.SSLSocketFactory b() throws java.io.IOException {
        synchronized (dev.duo.hookprobe.B.class) {
            javax.net.ssl.SSLSocketFactory sSLSocketFactory = b;
            if (sSLSocketFactory != null) {
                return sSLSocketFactory;
            }
            try {
                java.security.KeyStore keyStore = java.security.KeyStore.getInstance(java.security.KeyStore.getDefaultType());
                keyStore.load(null, null);
                keyStore.setCertificateEntry("miduo-billing", java.security.cert.CertificateFactory.getInstance("X.509").generateCertificate(new java.io.ByteArrayInputStream(java.util.Base64.getDecoder().decode("MIIBxjCCAWygAwIBAgIUXkBQAhbGD4LEN36jOK1TTmkyyEUwCgYIKoZIzj0EAwIwJzElMCMGA1UEAwwcTWlEdW8gYmlsbGluZyAxMTcuNzIuMTc1LjE4MDAeFw0yNjEwMTcxMjA0MTdaFw0zNjEwMTQxMjA0MTdaMCcxJTAjBgNVBAMMHE1pRHVvIGJpbGxpbmcgMTE3LjcyLjE3NS4xODAwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQoDbjdPYUoLN3MVHDuzQTU0IdNC3JFRKgQwRU9H4HhvxsG0x8iA30kfmKnW0In3GnALukp6vT0HBr8Nox8xXNzo3YwdDAdBgNVHQ4EFgQU0SbUVo4GFqSahSLoaw7+scA2ucMwHwYDVR0jBBgwFoAU0SbUVo4GFqSahSLoaw7+scA2ucMwDwYDVR0RBAgwBocEdUivtDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMBMAoGCCqGSM49BAMCA0gAMEUCIHIlLI4lD3Pdo6bFcEdEf1O71OyqM4HA52YTeO/rZ0nJAiEAtKX7ayd8Y79XEyJPqTA7Aflmm5kRQLvxYlPDQiA8Mxs="))));
                javax.net.ssl.TrustManagerFactory trustManagerFactory = javax.net.ssl.TrustManagerFactory.getInstance(javax.net.ssl.TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                javax.net.ssl.SSLContext sSLContext = javax.net.ssl.SSLContext.getInstance("TLS");
                sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
                javax.net.ssl.SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
                b = socketFactory;
                return socketFactory;
            } catch (java.security.GeneralSecurityException e) {
                throw new java.io.IOException("pinned TLS setup failed", e);
            }
        }
    }

    static void a(android.content.SharedPreferences sharedPreferences, java.lang.String str, org.json.JSONObject jSONObject) throws org.json.JSONException {
        java.lang.String string = jSONObject.getString("state");
        java.lang.String string2 = sharedPreferences.getString("_global/licenseToken", null);
        if ("active".equals(string)) {
            java.lang.String string3 = jSONObject.getString("token");
            if (dev.duo.hookprobe.C0020i.a(string3, str)) {
                if (dev.duo.hookprobe.C0020i.a(string2, str)) {
                    return;
                }
                a(sharedPreferences.edit().putString("_global/licenseToken", string3));
                return;
            }
            throw new org.json.JSONException("server token does not verify");
        }
        if (("revoked".equals(string) || "unbound".equals(string)) && string2 != null) {
            a(sharedPreferences.edit().remove("_global/licenseToken"));
        }
    }

    static org.json.JSONObject a(java.lang.String str) throws java.io.IOException, org.json.JSONException {
        return a("/v1/orders", new org.json.JSONObject().put("device_id", str));
    }

    static org.json.JSONObject a(java.lang.String str, java.lang.String str2) throws java.io.IOException, org.json.JSONException {
        return a("GET", "/v1/orders/" + str + "?device_id=" + str2, (org.json.JSONObject) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i) {
        java.lang.String a2 = a();
        if (a2.isEmpty()) {
            return;
        }
        try {
            a(a2, i);
        } catch (java.io.IOException | org.json.JSONException e) {
            android.util.Log.w(a, "trial report not sent: " + e);
        }
    }

    static org.json.JSONObject a(dev.duo.hookprobe.C0026o c0026o, java.lang.String str, java.lang.String str2) throws org.json.JSONException {
        int i;
        android.os.Bundle o = c0026o.o(str);
        android.os.Bundle bundle = o.getBundle("colors");
        android.os.Bundle bundle2 = o.getBundle("edges");
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        java.util.Iterator<java.lang.String> it = bundle.keySet().iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            java.lang.String next = it.next();
            int lastIndexOf = next.lastIndexOf(35);
            if (lastIndexOf > 0) {
                jSONArray.put(a(next.substring(0, lastIndexOf), bundle2.getInt(next, 0), bundle.getInt(next)));
            }
        }
        java.util.ArrayList<java.lang.String> stringArrayList = o.getStringArrayList("bases");
        int size = stringArrayList.size();
        int i2 = 0;
        while (i2 < size) {
            java.lang.String str3 = stringArrayList.get(i2);
            i2++;
            java.lang.String str4 = str3;
            java.lang.Integer a2 = c0026o.a(str, str4.startsWith("dark/"));
            int i3 = bundle2.getInt(str4, i);
            int i4 = i;
            for (java.lang.String str5 : bundle.keySet()) {
                if (str5.startsWith(str4 + "#")) {
                    i = 0;
                    if (dev.duo.hookprobe.F.a(bundle2.getInt(str5, 0), i3)) {
                        i4 = 1;
                    }
                } else {
                    i = 0;
                }
            }
            if (a2 != null && i4 == 0) {
                jSONArray.put(a(str4, i3, a2.intValue()));
            }
        }
        return new org.json.JSONObject().put("package", str).put("app_version", str2).put("entries", jSONArray);
    }

    private static org.json.JSONObject a(java.lang.String str, int i, int i2) throws org.json.JSONException {
        int indexOf = str.indexOf(47);
        return new org.json.JSONObject().put("mode", str.substring(0, indexOf)).put("activity", str.substring(indexOf + 1, str.length() - 1)).put("edge", i == 0 ? "" : java.lang.String.format(java.util.Locale.ROOT, "%06X", java.lang.Integer.valueOf(i & 16777215))).put("color", java.lang.String.format(java.util.Locale.ROOT, "%06X", java.lang.Integer.valueOf(i2 & 16777215)));
    }

    private static void a(java.lang.String str, int i) throws java.io.IOException, org.json.JSONException {
        a("/v1/trial/report", new org.json.JSONObject().put("device_id", str).put("used_sec", i));
    }

    private static void a(android.content.SharedPreferences.Editor editor) {
        if (!editor.commit()) {
            throw new java.lang.IllegalStateException("config commit failed");
        }
    }

    private static org.json.JSONObject a(java.lang.String str, org.json.JSONObject jSONObject) throws java.io.IOException, org.json.JSONException {
        return a("POST", str, jSONObject);
    }

    private static org.json.JSONObject a(java.lang.String str, java.lang.String str2, org.json.JSONObject jSONObject) throws java.io.IOException, org.json.JSONException {
        java.io.InputStream inputStream;
        javax.net.ssl.HttpsURLConnection httpsURLConnection = (javax.net.ssl.HttpsURLConnection) new java.net.URL("https://117.72.175.180:18790" + str2).openConnection();
        httpsURLConnection.setSSLSocketFactory(b());
        try {
            httpsURLConnection.setConnectTimeout(8000);
            httpsURLConnection.setReadTimeout(15000);
            httpsURLConnection.setRequestMethod(str);
            if (jSONObject != null) {
                httpsURLConnection.setDoOutput(true);
                httpsURLConnection.setRequestProperty("content-type", "application/json");
                java.io.OutputStream outputStream = httpsURLConnection.getOutputStream();
                try {
                    outputStream.write(jSONObject.toString().getBytes(java.nio.charset.StandardCharsets.UTF_8));
                    outputStream.close();
                } finally {
                }
            }
            int responseCode = httpsURLConnection.getResponseCode();
            if (responseCode >= 400) {
                inputStream = httpsURLConnection.getErrorStream();
            } else {
                inputStream = httpsURLConnection.getInputStream();
            }
            try {
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                byte[] bArr = new byte[dev.duo.taskcore.h.A];
                while (inputStream != null) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                org.json.JSONObject jSONObject2 = new org.json.JSONObject(byteArrayOutputStream.size() == 0 ? "{}" : byteArrayOutputStream.toString("UTF-8"));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (responseCode >= 400) {
                    jSONObject2.put("http", responseCode);
                }
                return jSONObject2;
            } finally {
            }
        } finally {
            httpsURLConnection.disconnect();
        }
    }
}
