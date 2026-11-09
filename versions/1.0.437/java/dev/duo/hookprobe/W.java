package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class W {
    W() {
    }

    static android.os.Bundle a(android.content.Context context) throws java.lang.InterruptedException {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putString("systemUi", a(dev.duo.hookprobe.InfoWidgetProvider.a(context, "probe")));
        return bundle;
    }

    private static java.lang.String a(java.lang.Object obj) {
        if (obj instanceof android.os.Bundle) {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            android.os.Bundle bundle = (android.os.Bundle) obj;
            for (java.lang.String str : bundle.keySet()) {
                try {
                    jSONObject.put(str, new org.json.JSONTokener(a(bundle.get(str))).nextValue());
                } catch (org.json.JSONException e) {
                    throw new java.lang.IllegalStateException(e);
                }
            }
            return jSONObject.toString();
        }
        if (obj instanceof java.util.List) {
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            java.util.Iterator it = ((java.util.List) obj).iterator();
            while (it.hasNext()) {
                try {
                    jSONArray.put(new org.json.JSONTokener(a(it.next())).nextValue());
                } catch (org.json.JSONException e2) {
                    throw new java.lang.IllegalStateException(e2);
                }
            }
            return jSONArray.toString();
        }
        if (obj instanceof java.lang.String[]) {
            return new org.json.JSONArray((java.util.Collection) java.util.Arrays.asList((java.lang.String[]) obj)).toString();
        }
        if (obj == null) {
            return "null";
        }
        if (!(obj instanceof java.lang.Number) && !(obj instanceof java.lang.Boolean)) {
            return org.json.JSONObject.quote(obj.toString());
        }
        return obj.toString();
    }
}
