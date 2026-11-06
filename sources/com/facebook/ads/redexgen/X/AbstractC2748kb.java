package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2748kb {
    public static byte[] A00;
    public static String[] A01 = {"zJ7sRo3sU3MwvYkxVq5sKXU", "uwqdBBQkb", "sk1pAaPClwmr1DZFuM4XEVJDjMgj4luU", "2DEAuAVf", "LM1sVeBw6DNfIdZzIYsj5hqYQDPEhJFy", "hYSBjzGCwuKpFZFqojmwIwdxMJLMCyYz", "BWOi5Qn34m6VEGTMmYfzcDYeX0GTjOOy", "rscTiGR64sMWr7IEiXLU0M2EjoTwZlLg"};
    public static final AtomicReference<C2746kZ> A02;
    public static final AtomicReference<String> A03;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{-98, -90, -95, -100, -84, -77, -94, -81, -81, -90, -95, -94, -95, -97, -88, -97, -84, -93, -99, -20, -25, -23, -28, -30, -14, -7, -24, -11, -11, -20, -25, -24};
    }

    static {
        A05();
        A02 = new AtomicReference<>();
        A03 = new AtomicReference<>(A04(0, 0, 68));
    }

    public static C2746kZ A00() {
        C2746kZ c2746kZ = A02.get();
        if (A01[6].charAt(15) == 'M') {
            String[] strArr = A01;
            strArr[3] = "GQnQs3ZS";
            strArr[1] = "yTwJu7KeR";
            C2746kZ c2746kZ2 = c2746kZ;
            if (c2746kZ2 == null) {
                C2746kZ c2746kZA00 = C2746kZ.A00();
                String[] strArr2 = A01;
                if (strArr2[3].length() != strArr2[1].length()) {
                    A01[0] = "yvynwBtI7EoQ7kGRkYf58OE";
                    return c2746kZA00;
                }
            } else {
                return c2746kZ2;
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (android.text.TextUtils.isEmpty(r6.A03()) != false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2746kZ A01(com.facebook.ads.redexgen.X.C2780lA r5, com.facebook.ads.redexgen.X.C2746kZ r6) {
        /*
            if (r6 == 0) goto Lc
            java.lang.String r0 = r6.A03()     // Catch: java.lang.Throwable -> L11
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L11
            if (r0 == 0) goto L28
        Lc:
            com.facebook.ads.redexgen.X.kZ r0 = com.facebook.ads.redexgen.X.AbstractC2753kh.A00(r5)     // Catch: java.lang.Throwable -> L11
            return r0
        L11:
            r0 = move-exception
            com.facebook.ads.redexgen.X.le r5 = r5.A08()
            int r4 = com.facebook.ads.redexgen.X.AbstractC2811lf.A1Q
            com.facebook.ads.redexgen.X.lg r3 = new com.facebook.ads.redexgen.X.lg
            r3.<init>(r0)
            r2 = 12
            r1 = 7
            r0 = 6
            java.lang.String r0 = A04(r2, r1, r0)
            r5.ABz(r0, r4, r3)
        L28:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2748kb.A01(com.facebook.ads.redexgen.X.lA, com.facebook.ads.redexgen.X.kZ):com.facebook.ads.redexgen.X.kZ");
    }

    public static C2746kZ A02(C2780lA c2780lA, C2746kZ c2746kZ, C2747ka c2747ka) {
        C2749kc c2749kcA00 = null;
        try {
            if (AbstractC2886mt.A06(c2780lA) && (c2746kZ == null || TextUtils.isEmpty(c2746kZ.A03()))) {
                c2749kcA00 = AbstractC2750kd.A00(c2780lA.getContentResolver());
            }
        } catch (Throwable th) {
            c2780lA.A08().ABz(A04(12, 7, 6), AbstractC2811lf.A1S, new C2812lg(th));
        }
        if (c2749kcA00 != null && c2749kcA00.A01 != null) {
            A03.set(c2749kcA00.A01);
            c2747ka.A05(c2749kcA00.A01);
        }
        if (c2746kZ == null && c2749kcA00 != null && !TextUtils.isEmpty(c2749kcA00.A00)) {
            return new C2746kZ(c2749kcA00.A00, c2749kcA00.A02, EnumC2745kY.A05);
        }
        return c2746kZ;
    }

    public static String A03() {
        String attributionId = A03.get();
        if (attributionId == null) {
            return A04(0, 0, 68);
        }
        return attributionId;
    }

    public static void A06(C2747ka c2747ka) {
        A02.set(c2747ka.A02());
        A03.set(c2747ka.A03());
    }

    public static void A07(C2780lA c2780lA) {
        long jA01;
        C2746kZ advertisingIdInfo;
        try {
            C2747ka c2747ka = new C2747ka(c2780lA);
            A06(c2747ka);
            if (A08()) {
                return;
            }
            C2746kZ advertisingIdInfo2 = A02.get();
            if (advertisingIdInfo2 != null && !TextUtils.isEmpty(advertisingIdInfo2.A03())) {
                jA01 = advertisingIdInfo2.A01();
            } else {
                jA01 = -1;
            }
            if (jA01 > 0 && System.currentTimeMillis() - jA01 < AbstractC2886mt.A00(c2780lA)) {
                return;
            }
            if (AbstractC2886mt.A07(c2780lA)) {
                advertisingIdInfo = A01(c2780lA, A02(c2780lA, null, c2747ka));
            } else {
                advertisingIdInfo = A02(c2780lA, A01(c2780lA, null), c2747ka);
            }
            if (advertisingIdInfo != null && !TextUtils.isEmpty(advertisingIdInfo.A03())) {
                A02.set(advertisingIdInfo);
                c2747ka.A04(advertisingIdInfo);
            }
        } catch (Throwable t) {
            c2780lA.A08().ABz(A04(12, 7, 6), AbstractC2811lf.A1R, new C2812lg(t));
        }
    }

    public static boolean A08() {
        boolean z = false;
        boolean updated = C3038pR.A04();
        if (updated) {
            if (A01[0].length() != 23) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "OqjdKmMb";
            strArr[1] = "Sbvi0a9C0";
            String strA04 = A04(0, 12, 9);
            boolean updated2 = C3038pR.A05(strA04);
            if (updated2) {
                A03.set(C3038pR.A01(strA04));
                z = true;
            }
        }
        boolean zA04 = C3038pR.A04();
        String[] strArr2 = A01;
        if (strArr2[5].charAt(29) != strArr2[4].charAt(29)) {
            A01[6] = "1QSggKSi3jrfAw1MbHCsavUz8mNGSj1M";
            if (!zA04) {
                return z;
            }
        } else {
            A01[6] = "SqTb5lTJEle7YRZML8ItyxwGEN07wws1";
            if (!zA04) {
                return z;
            }
        }
        String strA042 = A04(19, 13, 79);
        boolean updated3 = C3038pR.A05(strA042);
        if (updated3) {
            String strA01 = C3038pR.A01(strA042);
            AtomicReference<C2746kZ> atomicReference = A02;
            if (strA01 == null) {
                strA01 = A04(0, 0, 68);
            }
            atomicReference.set(new C2746kZ(strA01, false, EnumC2745kY.A04));
            return true;
        }
        return z;
    }
}
