package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2974oL {
    public static byte[] A00;
    public static final C2974oL A01;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{116, 113, 74, 103, 112, 101, 122, 103, 97, 124, 123, 114, 74, 118, 122, 123, 115, 124, 114, 49, 52, 49, 32, 36, 53, 34, 47, 42, 61, 23, 24, 41, 0, 23, 26, 31, 18, 23, 2, 31, 25, 24, 41, 3, 3, 31, 18, 96, 98, 96, 107, 102, 23, 28, 21, 29, 26, 43, 4, 21, 6, 21, 25, 7, 96, 108, 103, 102, 65, 68, 81, 68, 44, 41, 60, 41, 7, 42, 34, 45, 43, 60, 104, 33, 59, 104, 38, 61, 36, 36, 68, 65, 84, 65, 127, 77, 79, 68, 69, 76, 127, 84, 89, 80, 69, 85, 84, 83, 68, 86, 110, 87, 68, 95, 95, 84, 93, 110, 82, 94, 95, 87, 88, 86, 75, 74, 73, 70, 65, 70, 91, 70, 64, 65, 0, 23, 23, 10, 23, 4, 7, 3, 22, 23, 16, 7, 61, 1, 13, 12, 4, 11, 5, 85, 86, 94, 102, 90, 76, 75, 75, 92, 87, 77, 102, 95, 76, 87, 87, 92, 85, 64, 72, 94, 94, 76, 74, 72, 65, 93, 80, 82, 84, 92, 84, 95, 69, 66, 42, 61, 50, 6, 58, 56, 58, 49, 60, 67, 69, 86, 84, 92, 82, 69, 68, 71, 74, 67, 86};
    }

    static {
        A05();
        A01 = new C2974oL();
    }

    public static synchronized C2974oL A00() {
        return A01;
    }

    private GG A01(C1643Hi c1643Hi, JSONObject data, long j) throws JSONException {
        JSONArray placements = data.getJSONArray(A04(178, 10, 70));
        JSONObject jSONObject = placements.getJSONObject(0);
        C2831lz c2831lzA00 = C2831lz.A00(jSONObject.getJSONObject(A04(Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 10, 88)));
        String adReportingConfig = jSONObject.optString(A04(Sdk.SDKError.Reason.TEMPLATE_DOWNLOAD_ERROR_VALUE, 14, 21));
        String strA04 = A04(47, 5, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
        String str = null;
        String sdkManagedCache = jSONObject.has(strA04) ? jSONObject.optString(strA04) : null;
        String strA042 = A04(188, 9, 46);
        C2830ly c2830ly = new C2830ly(c2831lzA00, adReportingConfig, jSONObject.optString(A04(0, 19, 98)), sdkManagedCache, jSONObject.has(strA042) ? jSONObject.optString(strA042) : null, A06(jSONObject));
        String strA043 = A04(26, 3, 57);
        if (jSONObject.has(strA043)) {
            JSONArray jSONArray = jSONObject.getJSONArray(strA043);
            int i = 0;
            while (i < jSONArray.length()) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                AbstractC2919nQ.A06(c1643Hi, jSONObject2, j, str);
                String strOptString = jSONObject2.optString(A04(19, 7, 39));
                String strOptString2 = jSONObject2.optString(A04(90, 15, 87));
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(A04(68, 4, 82));
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(A04(197, 8, 64));
                if (jSONObjectOptJSONObject != null) {
                    c2830ly.A0E(new C2828lw(strOptString, strOptString2, jSONObjectOptJSONObject, jSONArrayOptJSONArray));
                } else {
                    c1643Hi.A0F().A6F(AdErrorType.UNKNOWN_ERROR.getErrorCode(), A04(72, 18, 63));
                }
                i++;
                str = null;
            }
        }
        String strA044 = A04(52, 12, 3);
        if (jSONObject.has(strA044)) {
            c2830ly.A0F(jSONObject.getJSONObject(strA044));
        }
        String anValidationUuid = data.optString(A04(29, 18, 1));
        return new GG(c2830ly, anValidationUuid);
    }

    private GF A02(JSONObject jSONObject) {
        return new GF(jSONObject.optString(A04(171, 7, 90), A04(0, 0, 87)), jSONObject.optInt(A04(64, 4, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE), 0), null);
    }

    private GF A03(JSONObject jSONObject) {
        String strA04 = A04(188, 9, 46);
        String strA042 = A04(47, 5, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
        try {
            JSONObject jSONObject2 = jSONObject.getJSONArray(A04(178, 10, 70)).getJSONObject(0);
            C2831lz placementDefinition = C2831lz.A00(jSONObject2.getJSONObject(A04(Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 10, 88)));
            String featureConfig = jSONObject2.optString(A04(Sdk.SDKError.Reason.TEMPLATE_DOWNLOAD_ERROR_VALUE, 14, 21));
            String cache = jSONObject2.has(strA042) ? jSONObject2.optString(strA042) : null;
            String sdkManagedCache = jSONObject2.has(strA04) ? jSONObject2.optString(strA04) : null;
            String adReportingConfig = jSONObject2.optString(A04(0, 19, 98));
            return new GF(jSONObject.optString(A04(171, 7, 90), A04(0, 0, 87)), jSONObject.optInt(A04(64, 4, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE), 0), new C2830ly(placementDefinition, featureConfig, adReportingConfig, cache, sdkManagedCache, A06(jSONObject2)));
        } catch (JSONException unused) {
            return A02(jSONObject);
        }
    }

    public static boolean A06(JSONObject jSONObject) throws JSONException {
        String strA04 = A04(105, 19, 70);
        if (jSONObject.has(strA04)) {
            return jSONObject.getJSONObject(strA04).optBoolean(A04(153, 18, 78), false);
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.C2976oN A07(com.facebook.ads.redexgen.X.C1643Hi r8, java.lang.String r9, long r10) throws org.json.JSONException {
        /*
            r7 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 != 0) goto L5a
            org.json.JSONObject r4 = new org.json.JSONObject
            r4.<init>(r9)
            r2 = 205(0xcd, float:2.87E-43)
            r1 = 4
            r0 = 68
            java.lang.String r0 = A04(r2, r1, r0)
            java.lang.String r6 = r4.optString(r0)
            int r5 = r6.hashCode()
            r2 = 134(0x86, float:1.88E-43)
            r1 = 5
            r0 = 18
            java.lang.String r3 = A04(r2, r1, r0)
            switch(r5) {
                case 96432: goto L3f;
                case 96784904: goto L37;
                default: goto L28;
            }
        L28:
            r0 = -1
        L29:
            switch(r0) {
                case 0: goto L55;
                case 1: goto L50;
                default: goto L2c;
            }
        L2c:
            org.json.JSONObject r0 = r4.optJSONObject(r3)
            if (r0 == 0) goto L5a
            com.facebook.ads.redexgen.X.GF r0 = r7.A02(r0)
            return r0
        L37:
            boolean r0 = r6.equals(r3)
            if (r0 == 0) goto L28
            r0 = 1
            goto L29
        L3f:
            r2 = 26
            r1 = 3
            r0 = 57
            java.lang.String r0 = A04(r2, r1, r0)
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L28
            r0 = 0
            goto L29
        L50:
            com.facebook.ads.redexgen.X.GF r0 = r7.A03(r4)
            return r0
        L55:
            com.facebook.ads.redexgen.X.GG r0 = r7.A01(r8, r4, r10)
            return r0
        L5a:
            com.facebook.ads.redexgen.X.oM r1 = com.facebook.ads.redexgen.X.EnumC2975oM.A05
            com.facebook.ads.redexgen.X.oN r0 = new com.facebook.ads.redexgen.X.oN
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2974oL.A07(com.facebook.ads.redexgen.X.Hi, java.lang.String, long):com.facebook.ads.redexgen.X.oN");
    }
}
