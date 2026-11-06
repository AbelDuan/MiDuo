package dev.duo.hookprobe;

import android.content.Context;
import android.os.Bundle;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class V {
    V() {
    }

    static Bundle a(Context context) throws InterruptedException {
        Bundle bundle = new Bundle();
        bundle.putString("systemUi", a(InfoWidgetProvider.a(context, "probe")));
        return bundle;
    }

    private static String a(Object obj) {
        if (obj instanceof Bundle) {
            JSONObject jSONObject = new JSONObject();
            Bundle bundle = (Bundle) obj;
            for (String str : bundle.keySet()) {
                try {
                    jSONObject.put(str, new JSONTokener(a(bundle.get(str))).nextValue());
                } catch (JSONException e) {
                    throw new IllegalStateException(e);
                }
            }
            return jSONObject.toString();
        }
        if (obj instanceof List) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                try {
                    jSONArray.put(new JSONTokener(a(it.next())).nextValue());
                } catch (JSONException e2) {
                    throw new IllegalStateException(e2);
                }
            }
            return jSONArray.toString();
        }
        if (obj instanceof String[]) {
            return new JSONArray((Collection) Arrays.asList((String[]) obj)).toString();
        }
        if (obj == null) {
            return "null";
        }
        if (!(obj instanceof Number) && !(obj instanceof Boolean)) {
            return JSONObject.quote(obj.toString());
        }
        return obj.toString();
    }
}
