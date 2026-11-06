package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import com.vungle.ads.internal.protos.Sdk;
import java.io.Serializable;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2429fN implements Serializable {
    public static byte[] A0A = null;
    public static final int A0B;
    public static final int A0C;
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final long serialVersionUID = 8946536326456653736L;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 92);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0A = new byte[]{37, 52, 53, 52, 49, 52, 64, 84, 67, 21, 67, 17, 66, 65, 4, 30, 23, 30, 19, 30, 68, 82, 23, 71, 23, 70, 23, 72, 58, 127, 127, 45, 41, 33, 41, 127, 127, 59, 57, 57, 63, 52, 46, 5, 57, 53, 54, 53, 40, 110, 107, 83, 111, 99, 96, 99, 126, 57, 52, 63, 34, 4, 56, 52, 55, 52, 41, 13, 26, 15, 49, 13, 1, 2, 1, 28, 105, 126, 107, 85, 105, 101, 102, 101, 120, 85, 101, 124, 111, 120, 85, 103, 111, 110, 99, 107, 1, 22, 3, 61, 6, 27, 12, 3, 15, 11, 1, 61, 1, 13, 14, 13, 16, 31, 8, 29, 35, 8, 25, 4, 8, 35, 31, 19, 16, 19, 14, 59, 44, 57, 7, 44, 61, 32, 44, 7, 59, 55, 52, 55, 42, 7, 55, 46, 61, 42, 7, 53, 61, 60, 49, 57, 84, 82, 69, 83, 78, 83, 75, 66, 120, 68, 72, 75, 72, 85, 98, 127, 98, 122, 115, 73, 117, 121, 122, 121, 100};
    }

    static {
        A03();
        A0B = Color.parseColor(A02(14, 7, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE));
        A0C = Color.parseColor(A02(7, 7, 43));
        A0D = Color.parseColor(A02(21, 7, 45));
        String strA02 = A02(28, 9, 69);
        A0E = Color.parseColor(strA02);
        A0F = Color.parseColor(A02(0, 7, 90));
        A0G = Color.parseColor(strA02);
    }

    public C2429fN(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.A00 = i;
        this.A01 = i2;
        this.A02 = i3;
        this.A03 = i4;
        this.A04 = i5;
        this.A05 = i6;
        this.A07 = i7;
        this.A08 = i8;
        this.A09 = i9;
        this.A06 = i10;
    }

    public static int A00(JSONObject jSONObject, String str, int i) {
        if (jSONObject != null && jSONObject.has(str)) {
            return Color.parseColor(jSONObject.optString(str));
        }
        return i;
    }

    public static C2429fN A01(JSONObject jSONObject) {
        return new C2429fN(A00(jSONObject, A02(37, 12, 6), A0B), A00(jSONObject, A02(57, 10, 7), A0C), A00(jSONObject, A02(152, 14, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE), -16777216), A00(jSONObject, A02(49, 8, 80), A0D), A00(jSONObject, A02(67, 9, 50), A0E), A00(jSONObject, A02(76, 20, 86), -1), A00(jSONObject, A02(113, 14, 32), -1), A00(jSONObject, A02(Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE, 25, 4), A0G), A00(jSONObject, A02(166, 11, 74), -16777216), A00(jSONObject, A02(96, 17, 62), A0E));
    }

    public final int A04() {
        return this.A06;
    }

    public final int A05(boolean z) {
        if (z) {
            return -1;
        }
        return this.A00;
    }

    public final int A06(boolean z) {
        if (z) {
            return -1;
        }
        return this.A01;
    }

    public final int A07(boolean z) {
        if (z) {
            return -1;
        }
        return this.A02;
    }

    public final int A08(boolean z) {
        return z ? A0F : this.A03;
    }

    public final int A09(boolean z) {
        return z ? this.A05 : this.A04;
    }

    public final int A0A(boolean z) {
        return z ? this.A08 : this.A07;
    }

    public final int A0B(boolean z) {
        if (z) {
            return -1;
        }
        return this.A09;
    }
}
