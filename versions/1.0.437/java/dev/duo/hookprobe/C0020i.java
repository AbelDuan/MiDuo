package dev.duo.hookprobe;

/* renamed from: dev.duo.hookprobe.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
final class C0020i {
    static final java.lang.String a = "https://117.72.175.180:18790";
    static final java.lang.String b = "MIIBxjCCAWygAwIBAgIUXkBQAhbGD4LEN36jOK1TTmkyyEUwCgYIKoZIzj0EAwIwJzElMCMGA1UEAwwcTWlEdW8gYmlsbGluZyAxMTcuNzIuMTc1LjE4MDAeFw0yNjEwMTcxMjA0MTdaFw0zNjEwMTQxMjA0MTdaMCcxJTAjBgNVBAMMHE1pRHVvIGJpbGxpbmcgMTE3LjcyLjE3NS4xODAwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQoDbjdPYUoLN3MVHDuzQTU0IdNC3JFRKgQwRU9H4HhvxsG0x8iA30kfmKnW0In3GnALukp6vT0HBr8Nox8xXNzo3YwdDAdBgNVHQ4EFgQU0SbUVo4GFqSahSLoaw7+scA2ucMwHwYDVR0jBBgwFoAU0SbUVo4GFqSahSLoaw7+scA2ucMwDwYDVR0RBAgwBocEdUivtDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMBMAoGCCqGSM49BAMCA0gAMEUCIHIlLI4lD3Pdo6bFcEdEf1O71OyqM4HA52YTeO/rZ0nJAiEAtKX7ayd8Y79XEyJPqTA7Aflmm5kRQLvxYlPDQiA8Mxs=";
    static final int c = 1800;
    static final java.lang.String d = "_global/licenseToken";
    static final java.lang.String e = "_global/trialUsedSec";
    static final java.lang.String f = "debug.duo.device";
    static final java.lang.String g = "dev.duo.hookprobe.config";
    private static final java.lang.String h = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEFiI4gpZLgE9JdWZjYZaMVBX3PLZfbFUajbzjuqBzMXTWJoBoGVvyrICcpKKeRwoUwI8at8l1AboTvYChWPAHzQ==";
    private static final java.util.regex.Pattern i = java.util.regex.Pattern.compile("\"dev\":\"([0-9a-f]{64})\"");

    private C0020i() {
    }

    static java.lang.String a(java.lang.String str) {
        try {
            byte[] digest = java.security.MessageDigest.getInstance("SHA-256").digest(("miduo-device-v1:" + str).getBytes(java.nio.charset.StandardCharsets.UTF_8));
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            for (byte b2 : digest) {
                sb.append(java.lang.String.format("%02x", java.lang.Integer.valueOf(b2 & 255)));
            }
            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException e2) {
            throw new java.lang.IllegalStateException(e2);
        }
    }

    static boolean a(java.lang.String str, java.lang.String str2) {
        int indexOf;
        if (str != null && str2 != null && (indexOf = str.indexOf(46)) > 0 && indexOf == str.lastIndexOf(46)) {
            try {
                byte[] bytes = str.substring(0, indexOf).getBytes(java.nio.charset.StandardCharsets.US_ASCII);
                java.security.PublicKey generatePublic = java.security.KeyFactory.getInstance("EC").generatePublic(new java.security.spec.X509EncodedKeySpec(java.util.Base64.getDecoder().decode(h)));
                java.security.Signature signature = java.security.Signature.getInstance("SHA256withECDSA");
                signature.initVerify(generatePublic);
                signature.update(bytes);
                if (!signature.verify(java.util.Base64.getUrlDecoder().decode(str.substring(indexOf + 1)))) {
                    return false;
                }
                java.lang.String str3 = new java.lang.String(java.util.Base64.getUrlDecoder().decode(bytes), java.nio.charset.StandardCharsets.UTF_8);
                java.util.regex.Matcher matcher = i.matcher(str3);
                if (str3.contains("\"typ\":\"license\"") && matcher.find()) {
                    if (matcher.group(1).equals(str2)) {
                        return true;
                    }
                }
                return false;
            } catch (java.lang.IllegalArgumentException | java.security.GeneralSecurityException e2) {
            }
        }
        return false;
    }
}
