package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ZJ {
    public static byte[] A02;
    public static String[] A03 = {"RkyzMIX7dnWayp1aUiY64MAifapwPtFS", "fl7VGE8u07stMfeDiLZA7R0BMTMoHXF", "Qnxxlxr93lHkfrXBSlZByuOxsknIBb4", "GeXZgCrKduoDdAVrUgNSWFxpEmjIuEhu", "VUXA3c5X1C8VWu6XdnQ0d5iUroJRyIhh", "ZfRKTxAtrHC1kn5q6btIUiImK1U6qqdS", "S", "Y2coqyWxqontkjM9vg7"};
    public final ZL A00;
    public final ZL A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{37, 41, 95, 103};
    }

    static {
        A01();
    }

    public ZJ(ZL zl) {
        this(zl, zl);
    }

    public ZJ(ZL zl, ZL zl2) {
        this.A00 = (ZL) AbstractC1747Ln.A01(zl);
        this.A01 = (ZL) AbstractC1747Ln.A01(zl2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ZJ zj = (ZJ) obj;
        if (this.A00.equals(zj.A00)) {
            ZL zl = this.A01;
            ZL zl2 = zj.A01;
            String[] strArr = A03;
            if (strArr[3].charAt(30) != strArr[4].charAt(30)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "AiPoSTC10DQnVaP09bL0aHPjxqzLUIoE";
            strArr2[0] = "cdXwAuXcDVGfJgfiGTnMOeBgOTaeQ70H";
            if (zl.equals(zl2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.A00.hashCode() * 31) + this.A01.hashCode();
    }

    public final String toString() {
        return A00(2, 1, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE) + this.A00 + (this.A00.equals(this.A01) ? A00(0, 0, 38) : A00(0, 2, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE) + this.A01) + A00(3, 1, 64);
    }
}
