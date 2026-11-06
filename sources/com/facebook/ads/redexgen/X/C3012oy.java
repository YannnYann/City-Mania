package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3012oy {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 82);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-60, -48, -50, -113, -57, -62, -60, -58, -61, -48, -48, -52, -113, -62, -59, -44, -113, -54, -49, -43, -58, -45, -49, -62, -51, -113, -62, -59, -44, -64, -44, -47, -64, -44, -43, -48, -45, -62, -56, -58};
    }

    public static SharedPreferences A00(C2780lA c2780lA) {
        return c2780lA.getSharedPreferences(ProcessUtils.getProcessSpecificName(A01(0, 40, 15), c2780lA), 0);
    }

    public final int A03(C2780lA c2780lA, String str, int i) {
        return A00(c2780lA).getInt(str, i);
    }

    public final String A04(C2780lA c2780lA, String str, String str2) {
        return A00(c2780lA).getString(str, str2);
    }

    public final void A05(C2780lA c2780lA, String str, int i) {
        SharedPreferences btSP = A00(c2780lA);
        btSP.edit().putInt(str, i).apply();
    }

    public final void A06(C2780lA c2780lA, String str, String str2) {
        SharedPreferences btSP = A00(c2780lA);
        btSP.edit().putString(str, str2).apply();
    }
}
