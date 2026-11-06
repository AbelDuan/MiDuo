package dev.duo.hookprobe;

import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: dev.duo.hookprobe.i */
/* loaded from: classes.dex */
final class C0107i {

    /* renamed from: a */
    static final String f1626a = "https://117.72.175.180:18790";

    /* renamed from: b */
    static final String f1627b = "MIIBxjCCAWygAwIBAgIUXkBQAhbGD4LEN36jOK1TTmkyyEUwCgYIKoZIzj0EAwIwJzElMCMGA1UEAwwcTWlEdW8gYmlsbGluZyAxMTcuNzIuMTc1LjE4MDAeFw0yNjEwMTcxMjA0MTdaFw0zNjEwMTQxMjA0MTdaMCcxJTAjBgNVBAMMHE1pRHVvIGJpbGxpbmcgMTE3LjcyLjE3NS4xODAwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQoDbjdPYUoLN3MVHDuzQTU0IdNC3JFRKgQwRU9H4HhvxsG0x8iA30kfmKnW0In3GnALukp6vT0HBr8Nox8xXNzo3YwdDAdBgNVHQ4EFgQU0SbUVo4GFqSahSLoaw7+scA2ucMwHwYDVR0jBBgwFoAU0SbUVo4GFqSahSLoaw7+scA2ucMwDwYDVR0RBAgwBocEdUivtDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMBMAoGCCqGSM49BAMCA0gAMEUCIHIlLI4lD3Pdo6bFcEdEf1O71OyqM4HA52YTeO/rZ0nJAiEAtKX7ayd8Y79XEyJPqTA7Aflmm5kRQLvxYlPDQiA8Mxs=";

    /* renamed from: c */
    static final int f1628c = 1800;

    /* renamed from: d */
    static final String f1629d = "_global/licenseToken";

    /* renamed from: e */
    static final String f1630e = "_global/trialUsedSec";

    /* renamed from: f */
    static final String f1631f = "debug.duo.device";

    /* renamed from: g */
    static final String f1632g = "dev.duo.hookprobe.config";

    /* renamed from: h */
    private static final String f1633h = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEFiI4gpZLgE9JdWZjYZaMVBX3PLZfbFUajbzjuqBzMXTWJoBoGVvyrICcpKKeRwoUwI8at8l1AboTvYChWPAHzQ==";

    /* renamed from: i */
    private static final Pattern f1634i = Pattern.compile("\"dev\":\"([0-9a-f]{64})\"");

    private C0107i() {
    }

    /* renamed from: a */
    static String m1704a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(("miduo-device-v1:" + str).getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format("%02x", Integer.valueOf(b & 255)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    static boolean m1705a(String str, String str2) {
        int indexOf;
        if (str != null && str2 != null && (indexOf = str.indexOf(46)) > 0 && indexOf == str.lastIndexOf(46)) {
            try {
                byte[] bytes = str.substring(0, indexOf).getBytes(StandardCharsets.US_ASCII);
                PublicKey generatePublic = KeyFactory.getInstance("EC").generatePublic(new X509EncodedKeySpec(Base64.getDecoder().decode(f1633h)));
                Signature signature = Signature.getInstance("SHA256withECDSA");
                signature.initVerify(generatePublic);
                signature.update(bytes);
                if (!signature.verify(Base64.getUrlDecoder().decode(str.substring(indexOf + 1)))) {
                    return false;
                }
                String str3 = new String(Base64.getUrlDecoder().decode(bytes), StandardCharsets.UTF_8);
                Matcher matcher = f1634i.matcher(str3);
                if (str3.contains("\"typ\":\"license\"") && matcher.find()) {
                    if (matcher.group(1).equals(str2)) {
                        return true;
                    }
                }
                return false;
            } catch (IllegalArgumentException | GeneralSecurityException e) {
            }
        }
        return false;
    }
}
