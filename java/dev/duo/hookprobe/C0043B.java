package dev.duo.hookprobe;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import dev.duo.taskcore.WorkspaceProtocol;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Iterator;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: dev.duo.hookprobe.B */
/* loaded from: classes.dex */
final class C0043B {

    /* renamed from: a */
    private static final String f783a = "MiDuoLicense";

    /* renamed from: b */
    private static SSLSocketFactory f784b;

    private C0043B() {
    }

    /* renamed from: a */
    static String m772a() {
        try {
            Process start = new ProcessBuilder("getprop", C0049F.f828d).start();
            byte[] bArr = new byte[128];
            int read = start.getInputStream().read(bArr);
            start.waitFor();
            String trim = read > 0 ? new String(bArr, 0, read, StandardCharsets.US_ASCII).trim() : "";
            return trim.matches("[0-9a-f]{64}") ? trim : "";
        } catch (IOException | InterruptedException e) {
            return "";
        }
    }

    /* renamed from: b */
    static JSONObject m785b(String str, String str2) throws IOException, JSONException {
        return m779a("/v1/license/restore", new JSONObject().put("device_id", str).put("license_key", str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m787c(String str, String str2) {
        if (!str2.matches("[0-9a-f]{64}")) {
            Log.w(f783a, "page colours not shared: no device id yet");
            return;
        }
        try {
            JSONObject put = new JSONObject(str).put("device_id", str2);
            m779a("/v1/tones", put);
            Log.i(f783a, "page colours shared: " + put.getString("package") + " x" + put.getJSONArray("entries").length());
        } catch (IOException | JSONException e) {
            Log.w(f783a, "page colours not shared: " + e);
        }
    }

    /* renamed from: b */
    static void m786b(final int i) {
        new Thread(new Runnable() { // from class: dev.duo.hookprobe.B$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0043B.m780a(i);
            }
        }, "MiDuoTrialReport").start();
    }

    /* renamed from: a */
    static JSONObject m773a(SharedPreferences sharedPreferences, String str) throws IOException, JSONException {
        int i;
        JSONObject m779a = m779a("/v1/device/hello", new JSONObject().put("device_id", str));
        int i2 = m779a.getJSONObject("trial").getInt("used_sec");
        synchronized (C0043B.class) {
            i = sharedPreferences.getInt("_global/trialUsedSec", 0);
            if (i2 > i) {
                m781a(sharedPreferences.edit().putInt("_global/trialUsedSec", i2));
            }
        }
        if (i > i2) {
            m783a(str, i);
        }
        m782a(sharedPreferences, str, m779a.getJSONObject("license"));
        return m779a;
    }

    /* renamed from: b */
    private static synchronized SSLSocketFactory m784b() throws IOException {
        synchronized (C0043B.class) {
            SSLSocketFactory sSLSocketFactory = f784b;
            if (sSLSocketFactory != null) {
                return sSLSocketFactory;
            }
            try {
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null, null);
                keyStore.setCertificateEntry("miduo-billing", CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(Base64.getDecoder().decode("MIIBxjCCAWygAwIBAgIUXkBQAhbGD4LEN36jOK1TTmkyyEUwCgYIKoZIzj0EAwIwJzElMCMGA1UEAwwcTWlEdW8gYmlsbGluZyAxMTcuNzIuMTc1LjE4MDAeFw0yNjEwMTcxMjA0MTdaFw0zNjEwMTQxMjA0MTdaMCcxJTAjBgNVBAMMHE1pRHVvIGJpbGxpbmcgMTE3LjcyLjE3NS4xODAwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQoDbjdPYUoLN3MVHDuzQTU0IdNC3JFRKgQwRU9H4HhvxsG0x8iA30kfmKnW0In3GnALukp6vT0HBr8Nox8xXNzo3YwdDAdBgNVHQ4EFgQU0SbUVo4GFqSahSLoaw7+scA2ucMwHwYDVR0jBBgwFoAU0SbUVo4GFqSahSLoaw7+scA2ucMwDwYDVR0RBAgwBocEdUivtDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMBMAoGCCqGSM49BAMCA0gAMEUCIHIlLI4lD3Pdo6bFcEdEf1O71OyqM4HA52YTeO/rZ0nJAiEAtKX7ayd8Y79XEyJPqTA7Aflmm5kRQLvxYlPDQiA8Mxs="))));
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
                SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
                f784b = socketFactory;
                return socketFactory;
            } catch (GeneralSecurityException e) {
                throw new IOException("pinned TLS setup failed", e);
            }
        }
    }

    /* renamed from: a */
    static void m782a(SharedPreferences sharedPreferences, String str, JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString("state");
        String string2 = sharedPreferences.getString("_global/licenseToken", null);
        if ("active".equals(string)) {
            String string3 = jSONObject.getString("token");
            if (C0107i.m1705a(string3, str)) {
                if (C0107i.m1705a(string2, str)) {
                    return;
                }
                m781a(sharedPreferences.edit().putString("_global/licenseToken", string3));
                return;
            }
            throw new JSONException("server token does not verify");
        }
        if (("revoked".equals(string) || "unbound".equals(string)) && string2 != null) {
            m781a(sharedPreferences.edit().remove("_global/licenseToken"));
        }
    }

    /* renamed from: a */
    static JSONObject m775a(String str) throws IOException, JSONException {
        return m779a("/v1/orders", new JSONObject().put("device_id", str));
    }

    /* renamed from: a */
    static JSONObject m777a(String str, String str2) throws IOException, JSONException {
        return m778a("GET", "/v1/orders/" + str + "?device_id=" + str2, (JSONObject) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m780a(int i) {
        String m772a = m772a();
        if (m772a.isEmpty()) {
            return;
        }
        try {
            m783a(m772a, i);
        } catch (IOException | JSONException e) {
            Log.w(f783a, "trial report not sent: " + e);
        }
    }

    /* renamed from: a */
    static JSONObject m774a(C0113o c0113o, String str, String str2) throws JSONException {
        int i;
        Bundle m1851q = c0113o.m1851q(str);
        Bundle bundle = m1851q.getBundle("colors");
        Bundle bundle2 = m1851q.getBundle("edges");
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = bundle.keySet().iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            int lastIndexOf = next.lastIndexOf(35);
            if (lastIndexOf > 0) {
                jSONArray.put(m776a(next.substring(0, lastIndexOf), bundle2.getInt(next, 0), bundle.getInt(next)));
            }
        }
        ArrayList<String> stringArrayList = m1851q.getStringArrayList("bases");
        int size = stringArrayList.size();
        int i2 = 0;
        while (i2 < size) {
            String str3 = stringArrayList.get(i2);
            i2++;
            String str4 = str3;
            Integer m1774a = c0113o.m1774a(str, str4.startsWith("dark/"));
            int i3 = bundle2.getInt(str4, i);
            int i4 = i;
            for (String str5 : bundle.keySet()) {
                if (str5.startsWith(str4 + "#")) {
                    i = 0;
                    if (C0049F.m855a(bundle2.getInt(str5, 0), i3)) {
                        i4 = 1;
                    }
                } else {
                    i = 0;
                }
            }
            if (m1774a != null && i4 == 0) {
                jSONArray.put(m776a(str4, i3, m1774a.intValue()));
            }
        }
        return new JSONObject().put("package", str).put("app_version", str2).put("entries", jSONArray);
    }

    /* renamed from: a */
    private static JSONObject m776a(String str, int i, int i2) throws JSONException {
        int indexOf = str.indexOf(47);
        return new JSONObject().put("mode", str.substring(0, indexOf)).put("activity", str.substring(indexOf + 1, str.length() - 1)).put("edge", i == 0 ? "" : String.format(Locale.ROOT, "%06X", Integer.valueOf(i & 16777215))).put("color", String.format(Locale.ROOT, "%06X", Integer.valueOf(i2 & 16777215)));
    }

    /* renamed from: a */
    private static void m783a(String str, int i) throws IOException, JSONException {
        m779a("/v1/trial/report", new JSONObject().put("device_id", str).put("used_sec", i));
    }

    /* renamed from: a */
    private static void m781a(SharedPreferences.Editor editor) {
        if (!editor.commit()) {
            throw new IllegalStateException("config commit failed");
        }
    }

    /* renamed from: a */
    private static JSONObject m779a(String str, JSONObject jSONObject) throws IOException, JSONException {
        return m778a("POST", str, jSONObject);
    }

    /* renamed from: a */
    private static JSONObject m778a(String str, String str2, JSONObject jSONObject) throws IOException, JSONException {
        InputStream inputStream;
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL("https://117.72.175.180:18790" + str2).openConnection();
        httpsURLConnection.setSSLSocketFactory(m784b());
        try {
            httpsURLConnection.setConnectTimeout(8000);
            httpsURLConnection.setReadTimeout(15000);
            httpsURLConnection.setRequestMethod(str);
            if (jSONObject != null) {
                httpsURLConnection.setDoOutput(true);
                httpsURLConnection.setRequestProperty("content-type", "application/json");
                OutputStream outputStream = httpsURLConnection.getOutputStream();
                try {
                    outputStream.write(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
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
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[WorkspaceProtocol.MAX_PAYLOAD];
                while (inputStream != null) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                JSONObject jSONObject2 = new JSONObject(byteArrayOutputStream.size() == 0 ? "{}" : byteArrayOutputStream.toString("UTF-8"));
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
