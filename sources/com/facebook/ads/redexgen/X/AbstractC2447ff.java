package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.LinkedHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2447ff {
    public static byte[] A00;
    public static final LinkedHashMap<String, C2445fd> A01;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 109);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-14, 3, 41, 43, 40, 38, 40, 24, 28, 40, 29, 30, 59, 61, 58, 56, 58, 42, 46, 58, 47, 48, 42, 55, 44, 45, 48, 55, 42, 62, 64, 45, 63, 52, 63, 55, 48, 3, 5, 2, 0, 2, -14, -10, 2, -9, -8, -14, -1, -12, -11, -8, -1, -14, 7, -4, 7, -1, -8};
    }

    static {
        A02();
        A01 = new C2446fe(10, 0.75f, true);
    }

    public static C2445fd A00(String str) {
        C2445fd c2445fd;
        if (str == null) {
            return null;
        }
        synchronized (A01) {
            c2445fd = A01.get(str);
        }
        return c2445fd;
    }

    public static void A03(String str, C2445fd c2445fd) {
        if (str.isEmpty()) {
            return;
        }
        synchronized (A01) {
            A01.put(str, c2445fd);
        }
    }

    public static void A04(JSONObject jSONObject, C2441fZ c2441fZ) {
        String brandName = jSONObject.optString(A01(2, 10, 76));
        if (brandName.isEmpty()) {
            return;
        }
        String code = A01(37, 22, 38);
        String brandIconUrl = jSONObject.optString(code);
        String code2 = A01(12, 25, 94);
        String strOptString = jSONObject.optString(code2);
        String labelTitle = null;
        String labelSubtitle = c2441fZ != null ? c2441fZ.A02() : null;
        String strA01 = c2441fZ != null ? c2441fZ.A01() : null;
        String code3 = A01(0, 2, 34);
        String strOptString2 = jSONObject.optString(code3);
        if (brandIconUrl.isEmpty()) {
            brandIconUrl = null;
        }
        if (!strOptString.isEmpty()) {
            labelTitle = strOptString;
        }
        A03(strOptString2, new C2445fd(brandName, brandIconUrl, labelTitle, labelSubtitle, strA01));
    }
}
