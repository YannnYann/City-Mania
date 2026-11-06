package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2842mB {
    public static HashMap<String, String> A00;
    public static byte[] A01;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{63, 46, 46, 60, 43, 55, 50, 58, 118, 103, 103, 121, 118, 122, 114, 27, 10, 10, 12, 31, 8, 9, 14, 25, 2, 8, 0, 9, 47, 45, 38, 39, 46, 15, 19, 53, 41, 44, 63, 40, 41, 101, 114, 125, 114, 101, 106, 126, 119, 100, 115, 114, 104, 110, 111, 126, 104, 126, 126, 100, 98, 99, 114, 100, 105, 51, 60, 54, 32, 61, 59, 54};
    }

    public static synchronized Map<String, String> A01(C2780lA c2780lA) {
        if (A00 != null) {
            return new HashMap(A00);
        }
        A00 = new HashMap<>();
        A00.put(A00(22, 6, 41), c2780lA.getPackageName());
        A03(c2780lA, A00, null);
        return new HashMap(A00);
    }

    public static synchronized void A03(C2780lA c2780lA, Map<String, String> map, String str) {
        map.put(A00(41, 3, 83), A00(65, 7, 55));
        map.put(A00(44, 11, 68), c2780lA.A05().AA6());
        map.put(A00(33, 2, 37), c2780lA.A05().AA5());
        map.put(A00(35, 6, 31), C2822lq.A04);
        C2822lq c2822lq = new C2822lq(c2780lA, str);
        map.put(A00(15, 7, 63), c2822lq.A06());
        map.put(A00(8, 7, 82), c2822lq.A05());
        map.put(A00(0, 8, 27), String.valueOf(c2822lq.A04()));
        map.put(A00(28, 5, 7), c2822lq.A0A());
        map.put(A00(55, 10, 72), c2780lA.A09().A02());
    }
}
