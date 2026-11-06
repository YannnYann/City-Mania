package ads_mobile_sdk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.util.Log;
import android.view.WindowManager;
import com.ironsource.C3522b4;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class pe2 {
    public static final ExecutorService a = Executors.newSingleThreadExecutor();
    public static WindowManager b = null;
    public static volatile Point c = null;
    public static oe2 d = null;
    public static final String[] e = {"x", "y", "width", "height"};
    public static float f = Resources.getSystem().getDisplayMetrics().density;

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00aa A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean c(org.json.JSONObject r10, org.json.JSONObject r11) {
        /*
            r0 = 1
            if (r10 != 0) goto L6
            if (r11 != 0) goto L6
            return r0
        L6:
            r1 = 0
            if (r10 == 0) goto Lab
            if (r11 != 0) goto Ld
            goto Lab
        Ld:
            java.lang.String[] r2 = ads_mobile_sdk.pe2.e
            int r3 = r2.length
            r4 = r1
        L11:
            if (r4 >= r3) goto L26
            r5 = r2[r4]
            double r6 = r10.optDouble(r5)
            double r8 = r11.optDouble(r5)
            int r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r5 == 0) goto L23
            goto Lab
        L23:
            int r4 = r4 + 1
            goto L11
        L26:
            java.lang.String r2 = "adSessionId"
            java.lang.String r3 = ""
            java.lang.String r4 = r10.optString(r2, r3)
            java.lang.String r2 = r11.optString(r2, r3)
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto Lab
            java.lang.String r2 = "noOutputDevice"
            boolean r4 = r10.optBoolean(r2)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            boolean r2 = r11.optBoolean(r2)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto Lab
            java.lang.String r2 = "hasWindowFocus"
            boolean r4 = r10.optBoolean(r2)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            boolean r2 = r11.optBoolean(r2)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto Lab
            java.lang.String r2 = "isFriendlyObstructionFor"
            org.json.JSONArray r4 = r10.optJSONArray(r2)
            org.json.JSONArray r2 = r11.optJSONArray(r2)
            if (r4 != 0) goto L77
            if (r2 != 0) goto L77
            goto La4
        L77:
            if (r4 != 0) goto L7c
            if (r2 != 0) goto L7c
            goto L8b
        L7c:
            if (r4 == 0) goto Lab
            if (r2 != 0) goto L81
            goto Lab
        L81:
            int r5 = r4.length()
            int r6 = r2.length()
            if (r5 != r6) goto Lab
        L8b:
            r5 = r1
        L8c:
            int r6 = r4.length()
            if (r5 >= r6) goto La4
            java.lang.String r6 = r4.optString(r5, r3)
            java.lang.String r7 = r2.optString(r5, r3)
            boolean r6 = r6.equals(r7)
            if (r6 != 0) goto La1
            goto Lab
        La1:
            int r5 = r5 + 1
            goto L8c
        La4:
            boolean r10 = b(r10, r11)
            if (r10 == 0) goto Lab
            return r0
        Lab:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pe2.c(org.json.JSONObject, org.json.JSONObject):boolean");
    }

    public static void a(Context context) {
        f = context.getResources().getDisplayMetrics().density;
        b = (WindowManager) context.getSystemService("window");
        c = null;
        a.submit(new ne2());
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            oe2 oe2Var = d;
            if (oe2Var != null) {
                displayManager.unregisterDisplayListener(oe2Var);
                d = null;
            }
            oe2 oe2Var2 = new oe2();
            d = oe2Var2;
            displayManager.registerDisplayListener(oe2Var2, null);
        }
    }

    public static boolean b(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!(jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) && (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray.length() != jSONArrayOptJSONArray2.length())) {
            return false;
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            if (!c(jSONArrayOptJSONArray.optJSONObject(i), jSONArrayOptJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void b(org.json.JSONObject r5) {
        /*
            android.view.WindowManager r0 = ads_mobile_sdk.pe2.b
            if (r0 == 0) goto L1b
            android.graphics.Point r0 = ads_mobile_sdk.pe2.c
            if (r0 != 0) goto Le
            android.graphics.Point r0 = a()
            ads_mobile_sdk.pe2.c = r0
        Le:
            if (r0 == 0) goto L1b
            int r1 = r0.x
            float r1 = (float) r1
            float r2 = ads_mobile_sdk.pe2.f
            float r1 = r1 / r2
            int r0 = r0.y
            float r0 = (float) r0
            float r0 = r0 / r2
            goto L1d
        L1b:
            r1 = 0
            r0 = r1
        L1d:
            java.lang.String r2 = "width"
            double r3 = (double) r1     // Catch: org.json.JSONException -> L2a
            r5.put(r2, r3)     // Catch: org.json.JSONException -> L2a
            java.lang.String r1 = "height"
            double r2 = (double) r0     // Catch: org.json.JSONException -> L2a
            r5.put(r1, r2)     // Catch: org.json.JSONException -> L2a
            return
        L2a:
            r5 = move-exception
            r5.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pe2.b(org.json.JSONObject):void");
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e2) {
            Log.e("OMIDLIB", "JSONException during JSONObject.put for name [" + str + C3522b4.j.e, e2);
        }
    }

    public static HashMap a(JSONObject jSONObject) {
        try {
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    map.put(next, (String) obj);
                }
            }
            return map;
        } catch (Exception e2) {
            throw new RuntimeException("Failed to parse JSON to Map", e2);
        }
    }

    public static JSONObject a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f);
            jSONObject.put("y", i2 / f);
            jSONObject.put("width", i3 / f);
            jSONObject.put("height", i4 / f);
            return jSONObject;
        } catch (JSONException e2) {
            bf2.a("Error with creating viewStateObject", e2);
            return jSONObject;
        }
    }

    public static Point a() {
        if (b == null) {
            return null;
        }
        Point point = new Point(0, 0);
        b.getDefaultDisplay().getRealSize(point);
        return point;
    }
}
