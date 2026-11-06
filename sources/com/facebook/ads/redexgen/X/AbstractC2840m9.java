package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.m9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2840m9 {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 9);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{98, 96, 119, 116, 109, 97, 118, 121, 109, 113, 115, 113, 122, 119, 90, 88, 79, 76, 85, 89, 78, 65, 85, 71, 75, 68, 75, 77, 79, 78, 85, 73, 75, 73, 66, 79, 27, 25, 27, 16, 29, 53, 48, 37, 52, 14, 34, 52, 37, 126, 99, 107, 114, 105, 126, 104, 68, 114, 117, 59, 44, 33, 56, 40};
    }

    public static String A01(C1642Hh c1642Hh) {
        return AbstractC2982oU.A00(c1642Hh).getString(A00(0, 14, 59), null);
    }

    public static Map<String, String> A02(C1642Hh c1642Hh) {
        String sdkCache = AbstractC2982oU.A00(c1642Hh).getString(A00(14, 22, 3), null);
        if (sdkCache == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(sdkCache);
            HashSet hashSet = new HashSet();
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                if (jSONObject2.getLong(A00(41, 8, 88)) + ((long) (jSONObject2.getInt(A00(49, 10, 18)) * 1000)) < System.currentTimeMillis()) {
                    hashSet.add(next);
                } else {
                    map.put(next, jSONObject2.getString(A00(59, 5, 68)));
                }
            }
            if (!hashSet.isEmpty()) {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    jSONObject.remove((String) it.next());
                }
                A06(c1642Hh, jSONObject);
            }
            return map;
        } catch (JSONException e) {
            c1642Hh.A08().ABz(A00(36, 5, 113), AbstractC2811lf.A2U, new C2812lg(e));
            return null;
        }
    }

    public static void A04(C1642Hh c1642Hh, String str) {
        AbstractC2982oU.A00(c1642Hh).edit().putString(A00(0, 14, 59), str).apply();
    }

    public static void A05(C1642Hh c1642Hh, String str) {
        if (str == null) {
            return;
        }
        String sdkCache = AbstractC2982oU.A00(c1642Hh).getString(A00(14, 22, 3), null);
        try {
            JSONObject jSONObject = sdkCache == null ? new JSONObject() : new JSONObject(sdkCache);
            JSONObject jSONObject2 = new JSONObject(str);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String key = itKeys.next();
                JSONObject jSONObject3 = jSONObject2.getJSONObject(key);
                jSONObject3.put(A00(41, 8, 88), System.currentTimeMillis());
                jSONObject.put(key, jSONObject3);
            }
            A06(c1642Hh, jSONObject);
        } catch (JSONException e) {
            c1642Hh.A08().ABz(A00(36, 5, 113), AbstractC2811lf.A2V, new C2812lg(e));
        }
    }

    public static void A06(C1642Hh c1642Hh, JSONObject jSONObject) {
        AbstractC2982oU.A00(c1642Hh).edit().putString(A00(14, 22, 3), jSONObject.toString()).apply();
    }
}
