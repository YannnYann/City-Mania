package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.util.Pair;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1627Gs implements InterfaceC2907nE {
    public static byte[] A02;
    public static String[] A03 = {"4VJF", "NMiFc9mQHDdEdTYDts8ebbMyjIljV2c0", "gJxI4lQggzgG7l1t48TOLBAVsZm4smpW", "RC", "7emK", "VnvWTQ3PSRLSSOUq71E5D", "jZ42e8scbVg896gjqaujwC7", "gj"};
    public static final String A04;
    public C1642Hh A00;
    public HC A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A03;
            if (strArr[0].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "6iaNxoAqzoeupDn53l2Cm";
            strArr2[6] = "N7vye13Dqewush4C3JTfsv4";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
            i4++;
        }
    }

    public static void A05() {
        A02 = new byte[]{21, 83, 90, 71, 21, 80, 67, 80, 91, 65, 124, 81, 21, 60, 111, 105, 127, 127, 121, 111, 111, 122, 105, 112, 112, 101, 50, 110, 101, 68, 77, 68, 85, 68, 69, 1, 68, 87, 68, 79, 85, 82, 1, 68, 89, 66, 68, 68, 69, 68, 69, 1, 83, 68, 85, 83, 88, 1, 77, 72, 76, 72, 85, 15, 1, 98, 78, 84, 79, 85, 27, 1, 72, 123, 104, 99, 121, 45, 121, 116, 125, 104, 45, 125, 127, 98, 110, 104, 126, 126, 104, 105, 45, 111, 116, 45, 121, 101, 104, 45, 126, 104, 127, 123, 104, 127, 55, 45, 84, 115, 123, 126, 119, 118, 50, 102, 125, 50, 98, 115, 96, 97, 119, 50, 115, 124, 50, 119, 100, 119, 124, 102, 50, 123, 124, 50, 119, 100, 119, 124, 102, 97, 50, 115, 96, 96, 115, 107, 50, 116, 125, 96, 50, 118, 123, 97, 98, 115, 102, 113, 122, 50, 116, 115, 123, 126, 103, 96, 119, 60, 65, 119, 96, 100, 119, 96, 50, 98, 96, 125, 113, 119, 97, 97, 119, 118, 50, 119, 100, 119, 124, 102, 91, 118, 50, 50, 4, 19, 23, 4, 19, 65, 19, 4, 21, 20, 19, 15, 4, 5, 65, 15, 14, 15, 76, 19, 4, 21, 19, 24, 0, 3, 13, 4, 65, 4, 19, 19, 14, 19, 65, 2, 14, 5, 4, 65, 42, 28, 11, 15, 28, 11, 89, 11, 28, 13, 12, 11, 23, 28, 29, 89, 11, 28, 13, 11, 0, 24, 27, 21, 28, 89, 28, 11, 11, 22, 11, 89, 26, 22, 29, 28, 89, 86, 109, 98, 97, 111, 102, 35, 119, 108, 35, 115, 98, 113, 112, 102, 35, 103, 102, 97, 118, 100, 79, 108, 100, 70, 117, 102, 109, 119, 35, 98, 119, 35, 6, 61, 50, 49, 63, 54, 115, 39, 60, 115, 35, 50, 33, 32, 54, 115, 54, 37, 54, 61, 39, 115, 50, 39, 115, 111, 84, 91, 88, 86, 95, 26, 78, 85, 26, 74, 91, 72, 73, 95, 26, 73, 95, 72, 76, 95, 72, 26, 72, 95, 73, 74, 85, 84, 73, 95, 26, 91, 78, 26, 74, 85, 73, 83, 78, 83, 85, 84, 26, 80, 92, 87, 86, 104, 109, 120, 109, 110, 109, 127, 105, 17, 2, 17, 26, 0, 7, 6, 5, 1, 20, 21, 18, 5, 77, 3, 15, 14, 6, 9, 7, 77, 5, 22, 5, 14, 20, 77, 13, 1, 7, 9, 3, 33, 34, 38, 51, 50, 53, 34, 24, 36, 40, 41, 33, 46, 32, 44, 33, 71, 90, 94, 86, 60, 39, 35, 45, 38, 59};
    }

    static {
        A05();
        A04 = C1627Gs.class.getSimpleName();
    }

    public C1627Gs(C1642Hh c1642Hh, HC hc) {
        this.A00 = c1642Hh;
        this.A01 = hc;
    }

    public static JSONArray A01(C1642Hh c1642Hh, JSONArray jSONArray, JSONArray jSONArray2) {
        int i = 0;
        if (jSONArray != null) {
            int limit = jSONArray.length();
            i = 0 + limit;
        }
        if (jSONArray2 != null) {
            int limit2 = jSONArray2.length();
            i += limit2;
        }
        return A02(c1642Hh, jSONArray, jSONArray2, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f9, code lost:
    
        if (r22 <= 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fb, code lost:
    
        if (r5 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fd, code lost:
    
        r8.put(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0100, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0101, code lost:
    
        if (r4 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0103, code lost:
    
        r8.put(r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONArray A02(com.facebook.ads.redexgen.X.C1642Hh r19, org.json.JSONArray r20, org.json.JSONArray r21, int r22) {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1627Gs.A02(com.facebook.ads.redexgen.X.Hh, org.json.JSONArray, org.json.JSONArray, int):org.json.JSONArray");
    }

    private JSONObject A03() {
        JSONArray jSONArrayA03;
        JSONObject jSONObjectA7T = this.A01.A7T();
        JSONArray jSONArrayA7S = this.A01.A7S();
        if (AbstractC2890mx.A0P(this.A00) && (jSONArrayA03 = C2813lh.A03(this.A00)) != null && jSONArrayA03.length() > 0) {
            C1642Hh c1642Hh = this.A00;
            String[] strArr = A03;
            if (strArr[7].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[1] = "DqeH9SIpXFi3b8zfs8mhzwqF8zVFhPmm";
            strArr2[2] = "TV1z9woSYeZeWz7dxNs9KlrMFeTbS55S";
            jSONArrayA7S = A01(c1642Hh, jSONArrayA03, jSONArrayA7S);
        }
        JSONObject jSONObject = null;
        if (jSONArrayA7S != null) {
            try {
                jSONObject = new JSONObject();
                if (jSONObjectA7T != null) {
                    jSONObject.put(A00(439, 6, 32), jSONObjectA7T);
                }
                jSONObject.put(A00(387, 6, 28), jSONArrayA7S);
            } catch (JSONException unused) {
                return null;
            }
        }
        return jSONObject;
    }

    private JSONObject A04(int i) {
        int iA08;
        JSONArray jSONArrayA04;
        Pair<JSONObject, JSONArray> tokensAndEvents = this.A01.A9v(i);
        JSONObject jSONObject = (JSONObject) tokensAndEvents.first;
        JSONArray debugLogEvents = (JSONArray) tokensAndEvents.second;
        if (AbstractC2890mx.A0P(this.A00) && (jSONArrayA04 = C2813lh.A04(this.A00, (iA08 = AbstractC2890mx.A08(this.A00)))) != null && jSONArrayA04.length() > 0) {
            debugLogEvents = A02(this.A00, jSONArrayA04, debugLogEvents, i + iA08);
        }
        JSONObject payload = null;
        if (debugLogEvents != null) {
            try {
                payload = new JSONObject();
                if (jSONObject != null) {
                    payload.put(A00(439, 6, 32), jSONObject);
                }
                payload.put(A00(387, 6, 28), debugLogEvents);
            } catch (JSONException unused) {
                return null;
            }
        }
        return payload;
    }

    private void A06(String str) {
        if (C2813lh.A0I(str)) {
            C2813lh.A0B(this.A00, str);
        } else {
            this.A01.AAj(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nE
    public final JSONObject A5u() {
        int eventLimit = AbstractC2890mx.A0F(this.A00);
        return eventLimit > 0 ? A04(eventLimit) : A03();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nE
    public final boolean ABJ() {
        int eventCount = AbstractC2890mx.A0F(this.A00);
        if (eventCount < 1) {
            return false;
        }
        int iA8d = this.A01.A8d();
        int eventLimit = C2813lh.A00(this.A00);
        return iA8d + eventLimit > eventCount;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nE
    public final void ADq() {
        int iA5Z = this.A01.A5Z(AbstractC2890mx.A0G(this.A00));
        if (iA5Z > 0) {
            this.A00.A08().ABz(A00(379, 8, 100), AbstractC2811lf.A10, new C2812lg(A00(28, 44, 73) + iA5Z));
        }
        C1642Hh c1642Hh = this.A00;
        String[] strArr = A03;
        String str = strArr[5];
        String str2 = strArr[6];
        int attemptsExceededEventsCount = str.length();
        int retryLimit = str2.length();
        if (attemptsExceededEventsCount == retryLimit) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[5] = "bzDkK7DGlCk2AgYUikBmx";
        strArr2[6] = "oAHu9PBino36rPxONmBwiLk";
        C2813lh.A0F(c1642Hh);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nE
    public final void AEf(JSONArray jSONArray) {
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                A06(jSONArray.getJSONObject(i).getString(A00(433, 2, 45)));
            } catch (JSONException e) {
                if (this.A00.A05().AB6()) {
                    String str = A04;
                    String[] strArr = A03;
                    String str2 = strArr[5];
                    String str3 = strArr[6];
                    int i2 = str2.length();
                    int length2 = str3.length();
                    if (i2 == length2) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A03;
                    strArr2[1] = "UiT9WvgcUGvh4UJIWCcVV8uUv9KhPAuj";
                    strArr2[2] = "iCLGRVxWINjUDSHIa5c9b6YKh720uR79";
                    Log.e(str, A00(108, 62, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE), e);
                } else {
                    continue;
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nE
    public final boolean AEh(JSONArray jSONArray) {
        String strA00 = A00(27, 1, 40);
        boolean z = true;
        boolean zA0P = AbstractC2890mx.A0P(this.A00);
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(A00(433, 2, 45));
                if (A00(393, 26, 8).equals(string)) {
                    C2888mv.A0T(this.A00).A39(jSONObject.getString(A00(419, 14, 47)));
                    this.A00.A04().ADG();
                } else {
                    int i2 = jSONObject.getInt(A00(375, 4, 91));
                    if (i2 == 1) {
                        if (this.A00.A05().AB6()) {
                            String str = A00(170, 25, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE) + string + A00(13, 14, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
                            String eventType = this.A01.A8g(string);
                            if (eventType != null) {
                                String str2 = A00(72, 36, 101) + eventType;
                            }
                        }
                        if (!this.A01.A6P(string) && zA0P) {
                            C2813lh.A0D(string);
                        }
                    } else {
                        String strA002 = A00(0, 13, 93);
                        if (i2 >= 1000 && i2 < 2000) {
                            if (this.A00.A05().AB6()) {
                                Log.e(A04, A00(236, 37, 17) + i2 + strA002 + string + strA00);
                            }
                            A06(string);
                            z = false;
                        } else if (i2 >= 2000 && i2 < 3000) {
                            if (this.A00.A05().AB6()) {
                                Log.e(A04, A00(195, 41, 9) + i2 + strA002 + string + strA00);
                            }
                            if (!this.A01.A6P(string) && zA0P) {
                                C2813lh.A0D(string);
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (this.A00.A05().AB6()) {
                    Log.e(A04, A00(331, 44, 82) + i + strA00, e);
                }
                z = false;
            }
        }
        return z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2907nE
    public final void AGg() {
        this.A01.A5a();
        C2813lh.A07(this.A00);
    }
}
