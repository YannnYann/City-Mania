package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2653j4 {
    public static byte[] A09;
    public static String[] A0A = {"ulA9tMpXJ0Fgz3L6", "kmBp6JcSqPlb9eogqvbvj6g5ppHVaWSS", "klPqAM4BpBJNr6xIOjiQhoS6UO4TrOHS", "7VyM9GgXJuu8YzSYQI3HrMroeBYRJajD", "jF2bnw6E6wYHKm8plX11kYiLrSAbSJmD", "6pBnRch9VxXRPJwtqH0gd323b09mKXXU", "Clk2oRExhn8z5HC1wWkAqM8aEwWEfAA8", "Myq33IQdIYqIzBMhSJhfspyke76FBM0c"};
    public C2652j3 A01;
    public AbstractC2661jC A04;
    public final /* synthetic */ C7O A08;
    public final ArrayList<AbstractC2663jE> A05 = new ArrayList<>();
    public ArrayList<AbstractC2663jE> A02 = null;
    public final ArrayList<AbstractC2663jE> A06 = new ArrayList<>();
    public final List<AbstractC2663jE> A07 = Collections.unmodifiableList(this.A05);
    public int A03 = 2;
    public int A00 = 2;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 58);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A09 = new byte[]{-91, -18, -8, -58, -7, -7, -26, -24, -19, -22, -23, -65, -59, -32, 39, 30, 30, 43, 29, 44, -14, -53, -48, -62, -21, 22, 7, 15, -62, 5, 17, 23, 16, 22, -36, -38, -33, 36, 37, 18, 37, 22, -21, -120, 122, -83, -50, -69, -50, -65, 122, -61, -50, -65, -57, 122, -67, -55, -49, -56, -50, 122, -61, -51, 122, -13, 17, 28, 28, 21, 20, -48, 35, 19, 34, 17, 32, -48, 38, 25, 21, 39, -48, 39, 25, 36, 24, -48, 17, 30, -48, 25, 30, 38, 17, 28, 25, 20, -48, 38, 25, 21, 39, -34, -48, -7, 30, 38, 17, 28, 25, 20, -48, 38, 25, 21, 39, 35, -48, 19, 17, 30, 30, 31, 36, -48, 18, 21, -48, 34, 21, 37, 35, 21, 20, -48, 22, 34, 31, 29, -48, 35, 19, 34, 17, 32, -36, -48, 36, 24, 21, 41, -48, 35, 24, 31, 37, 28, 20, -48, 34, 21, 18, 31, 37, 30, 20, -48, 22, 34, 31, 29, -48, 34, 21, 19, 41, 19, 28, 21, 34, -48, 32, 31, 31, 28, -34, -13, 24, 13, 25, 24, 29, 19, 29, 30, 15, 24, 13, 35, -54, 14, 15, 30, 15, 13, 30, 15, 14, -40, -54, -13, 24, 32, 11, 22, 19, 14, -54, 19, 30, 15, 23, -54, 26, 25, 29, 19, 30, 19, 25, 24, -54, -125, -88, -99, -87, -88, -83, -93, -83, -82, -97, -88, -99, -77, 90, -98, -97, -82, -97, -99, -82, -97, -98, 104, 90, -125, -88, -80, -101, -90, -93, -98, 90, -80, -93, -97, -79, 90, -94, -87, -90, -98, -97, -84, 90, -101, -98, -101, -86, -82, -97, -84, 90, -86, -87, -83, -93, -82, -93, -87, -88, -73, -36, -28, -49, -38, -41, -46, -114, -41, -30, -45, -37, -114, -34, -35, -31, -41, -30, -41, -35, -36, -114, -36, -20, -5, -22, -7, -7, -18, -19, -87, -8, -5, -87, -22, -3, -3, -22, -20, -15, -18, -19, -87, -1, -14, -18, 0, -4, -87, -10, -22, 2, -87, -9, -8, -3, -87, -21, -18, -87, -5, -18, -20, 2, -20, -11, -18, -19, -73, -87, -14, -4, -36, -20, -5, -22, -7, -61, -102, -77, -74, 102, -86, -85, -70, -89, -87, -82, -85, -86, 102, -68, -81, -85, -67, 102, -71, -82, -75, -69, -78, -86, 102, -88, -85, 102, -72, -85, -77, -75, -68, -85, -86, 102, -84, -72, -75, -77, 102, -104, -85, -87, -65, -87, -78, -85, -72, -100, -81, -85, -67, 102, -88, -85, -84, -75, -72, -85, 102, -81, -70, 102, -87, -89, -76, 102, -88, -85, 102, -72, -85, -87, -65, -87, -78, -85, -86, -128, 102, -38, -8, -1, -17, -12, -19, -90, -6, -11, -90, -8, -21, -23, -1, -23, -14, -21, -90, -25, -12, -90, -17, -19, -12, -11, -8, -21, -22, -90, -4, -17, -21, -3, -90, -18, -11, -14, -22, -21, -8, -76, -90, -33, -11, -5, -90, -7, -18, -11, -5, -14, -22, -90, -20, -17, -8, -7, -6, -90, -23, -25, -14, -14, -90, -7, -6, -11, -10, -49, -19, -12, -11, -8, -17, -12, -19, -36, -17, -21, -3, -82, -4, -17, -21, -3, -81, -90, -24, -21, -20, -11, -8, -21, -90, -23, -25, -14, -14, -17, -12, -19, -90, -8, -21, -23, -1, -23, -14, -21, -76, -78, -80, -65, -95, -76, -80, -62, -111, -70, -67, -101, -70, -66, -76, -65, -76, -70, -71, -116, -71, -81, -97, -60, -69, -80, -66, -61, -53, -74, -63, -66, -71, 117, -59, -60, -56, -66, -55, -66, -60, -61, 117, -28, -39, -15, -25, -19, -20, -104, -31, -26, -36, -35, -16, -104, -21, -32, -25, -19, -28, -36, -104, -26, -25, -20, -104, -38, -35, -104, -91, -87, -104, -39, -34, -20, -35, -22, -104, -19, -26, -32, -31, -36, -31, -26, -33, -104, -39, -104, -18, -31, -35, -17, -78, -12, -13, -37, -18, -22, -4, -41, -22, -24, -2, -24, -15, -22, -23};
    }

    static {
        A05();
    }

    public C2653j4(C7O c7o) {
        this.A08 = c7o;
    }

    private final View A00(int i, boolean z) {
        return A0J(i, z, Long.MAX_VALUE).A0H;
    }

    private final AbstractC2663jE A01(int i) {
        int size;
        int iA0D;
        if (this.A02 == null || (size = this.A02.size()) == 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC2663jE abstractC2663jE = this.A02.get(i2);
            if (!abstractC2663jE.A0t()) {
                int i3 = abstractC2663jE.A0T();
                if (i3 == i) {
                    abstractC2663jE.A0e(32);
                    return abstractC2663jE;
                }
            }
        }
        if (this.A08.A04.A0O() && (iA0D = this.A08.A00.A0D(i)) > 0) {
            int offsetPosition = this.A08.A04.A0B();
            if (iA0D < offsetPosition) {
                long jA0D = this.A08.A04.A0D(iA0D);
                for (int i4 = 0; i4 < size; i4++) {
                    AbstractC2663jE abstractC2663jE2 = this.A02.get(i4);
                    if (!abstractC2663jE2.A0t() && abstractC2663jE2.A0V() == jA0D) {
                        abstractC2663jE2.A0e(32);
                        return abstractC2663jE2;
                    }
                }
            }
        }
        return null;
    }

    private final AbstractC2663jE A02(int i, boolean z) {
        View viewA08;
        int size = this.A05.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC2663jE abstractC2663jE = this.A05.get(i2);
            if (!abstractC2663jE.A0t()) {
                int scrapCount = abstractC2663jE.A0T();
                if (scrapCount == i && !abstractC2663jE.A0m() && (this.A08.A0s.A09 || !abstractC2663jE.A0n())) {
                    abstractC2663jE.A0e(32);
                    return abstractC2663jE;
                }
            }
        }
        if (!z && (viewA08 = this.A08.A01.A08(i)) != null) {
            AbstractC2663jE abstractC2663jEA0F = C7O.A0F(viewA08);
            this.A08.A01.A0G(viewA08);
            int iA07 = this.A08.A01.A07(viewA08);
            if (iA07 != -1) {
                this.A08.A01.A0C(iA07);
                A0X(viewA08);
                abstractC2663jEA0F.A0e(8224);
                return abstractC2663jEA0F;
            }
            throw new IllegalStateException(A04(604, 52, 62) + abstractC2663jEA0F + this.A08.A1L());
        }
        int size2 = this.A06.size();
        for (int i3 = 0; i3 < size2; i3++) {
            AbstractC2663jE abstractC2663jE2 = this.A06.get(i3);
            if (!abstractC2663jE2.A0m()) {
                int scrapCount2 = abstractC2663jE2.A0T();
                if (scrapCount2 == i) {
                    if (!z) {
                        this.A06.remove(i3);
                    }
                    return abstractC2663jE2;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ec A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.facebook.ads.redexgen.X.AbstractC2663jE A03(long r8, int r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 313
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2653j4.A03(long, int, boolean):com.facebook.ads.redexgen.X.jE");
    }

    private final void A06() {
        int count = this.A06.size();
        for (int count2 = count - 1; count2 >= 0; count2--) {
            A07(count2);
        }
        this.A06.clear();
        if (C7O.A1E) {
            this.A08.A02.A02();
        }
    }

    private final void A07(int i) {
        A0e(this.A06.get(i), true);
        this.A06.remove(i);
    }

    private void A08(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                String[] strArr = A0A;
                String str = strArr[7];
                String str2 = strArr[6];
                int iCharAt = str.charAt(8);
                int i = str2.charAt(8);
                if (iCharAt == i) {
                    throw new RuntimeException();
                }
                A0A[4] = "0ZJbYELQTNKw4GYvMFOIJ2JFgvUoupt2";
                A08((ViewGroup) childAt, true);
            }
        }
        if (!z) {
            return;
        }
        if (viewGroup.getVisibility() == 4) {
            viewGroup.setVisibility(0);
            viewGroup.setVisibility(4);
        } else {
            int visibility = viewGroup.getVisibility();
            viewGroup.setVisibility(4);
            viewGroup.setVisibility(visibility);
        }
    }

    private void A09(AbstractC2663jE abstractC2663jE) {
        if (this.A08.A1x()) {
            View view = abstractC2663jE.A0H;
            if (AbstractC2565hb.A00(view) == 0) {
                AbstractC2565hb.A09(view, 1);
            }
            if (!AbstractC2565hb.A0F(view)) {
                abstractC2663jE.A0e(16384);
                AbstractC2565hb.A0B(view, this.A08.A09.A0A());
            }
        }
    }

    private void A0A(AbstractC2663jE abstractC2663jE) {
        if (abstractC2663jE.A0H instanceof ViewGroup) {
            A08((ViewGroup) abstractC2663jE.A0H, false);
        }
    }

    private final void A0B(AbstractC2663jE abstractC2663jE) {
        if (0 != 0) {
            throw new NullPointerException(A04(656, 14, 75));
        }
        if (this.A08.A04 != null) {
            this.A08.A04.A0K(abstractC2663jE);
        }
        if (this.A08.A0s != null) {
            this.A08.A0t.A0B(abstractC2663jE);
        }
    }

    private final boolean A0C(AbstractC2663jE abstractC2663jE) {
        if (abstractC2663jE.A0n()) {
            return this.A08.A0s.A07();
        }
        if (abstractC2663jE.A03 >= 0 && abstractC2663jE.A03 < this.A08.A04.A0B()) {
            if (!this.A08.A0s.A07()) {
                int iA0C = this.A08.A04.A0C(abstractC2663jE.A03);
                int type = abstractC2663jE.A0S();
                if (iA0C != type) {
                    return false;
                }
            }
            return !this.A08.A04.A0O() || abstractC2663jE.A0V() == this.A08.A04.A0D(abstractC2663jE.A03);
        }
        throw new IndexOutOfBoundsException(A04(233, 60, 0) + abstractC2663jE + this.A08.A1L());
    }

    private boolean A0D(AbstractC2663jE abstractC2663jE, int i, int i2, long startBindNs) {
        abstractC2663jE.A08 = this.A08;
        int iA0S = abstractC2663jE.A0S();
        long nanoTime = this.A08.getNanoTime();
        if (startBindNs != Long.MAX_VALUE) {
            C2652j3 c2652j3 = this.A01;
            String[] strArr = A0A;
            String str = strArr[5];
            String str2 = strArr[3];
            int iCharAt = str.charAt(0);
            int viewType = str2.charAt(0);
            if (iCharAt == viewType) {
                throw new RuntimeException();
            }
            A0A[0] = "We3abAYlnqMpJzTP";
            if (!c2652j3.A0A(iA0S, nanoTime, startBindNs)) {
                return false;
            }
        }
        this.A08.A04.A0L(abstractC2663jE, i);
        this.A01.A05(abstractC2663jE.A0S(), this.A08.getNanoTime() - nanoTime);
        A09(abstractC2663jE);
        if (this.A08.A0s.A07()) {
            abstractC2663jE.A04 = i2;
            return true;
        }
        return true;
    }

    public final int A0E() {
        return this.A05.size();
    }

    public final int A0F(int i) {
        if (i >= 0) {
            C7O c7o = this.A08;
            if (A0A[0].length() != 16) {
                throw new RuntimeException();
            }
            A0A[0] = "3KxCBQFQ0qPnaRqJ";
            if (i < c7o.A0s.A03()) {
                if (!this.A08.A0s.A07()) {
                    return i;
                }
                return this.A08.A00.A0D(i);
            }
        }
        throw new IndexOutOfBoundsException(A04(587, 17, 27) + i + A04(43, 22, 32) + this.A08.A0s.A03() + this.A08.A1L());
    }

    public final View A0G(int i) {
        return this.A05.get(i).A0H;
    }

    public final View A0H(int i) {
        return A00(i, false);
    }

    public final C2652j3 A0I() {
        if (this.A01 == null) {
            this.A01 = new C2652j3();
        }
        return this.A01;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0180 A[PHI: r7 r9
      0x0180: PHI (r7v3 boolean) = (r7v2 boolean), (r7v4 boolean), (r7v4 boolean) binds: [B:24:0x0052, B:50:0x00c5, B:66:0x0173] A[DONT_GENERATE, DONT_INLINE]
      0x0180: PHI (r9v3 com.facebook.ads.redexgen.X.jE) = (r9v2 com.facebook.ads.redexgen.X.jE), (r9v5 com.facebook.ads.redexgen.X.jE), (r9v6 com.facebook.ads.redexgen.X.jE) binds: [B:24:0x0052, B:50:0x00c5, B:66:0x0173] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x019f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.AbstractC2663jE A0J(int r21, boolean r22, long r23) {
        /*
            Method dump skipped, instruction units count: 762
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2653j4.A0J(int, boolean, long):com.facebook.ads.redexgen.X.jE");
    }

    public final List<AbstractC2663jE> A0K() {
        return this.A07;
    }

    public final void A0L() {
        int size = this.A06.size();
        for (int i = 0; i < size; i++) {
            this.A06.get(i).A0X();
        }
        int i2 = this.A05.size();
        for (int scrapCount = 0; scrapCount < i2; scrapCount++) {
            this.A05.get(scrapCount).A0X();
        }
        ArrayList<AbstractC2663jE> arrayList = this.A02;
        String[] strArr = A0A;
        String str = strArr[2];
        String str2 = strArr[1];
        int scrapCount2 = str.charAt(0);
        int cachedCount = str2.charAt(0);
        if (scrapCount2 != cachedCount) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[7] = "w7WcMXH384MQxArKBWq9tfOfmOANhXYh";
        strArr2[6] = "ji6HgViVTGyvfONq8Vqt8Uaju4D1iJHU";
        if (arrayList != null) {
            int changedScrapCount = this.A02.size();
            for (int scrapCount3 = 0; scrapCount3 < changedScrapCount; scrapCount3++) {
                this.A02.get(scrapCount3).A0X();
            }
        }
    }

    public final void A0M() {
        this.A05.clear();
        if (this.A02 != null) {
            this.A02.clear();
        }
    }

    public final void A0N() {
        int size = this.A06.size();
        for (int i = 0; i < size; i++) {
            C2646ix c2646ix = (C2646ix) this.A06.get(i).A0H.getLayoutParams();
            if (c2646ix != null) {
                c2646ix.A01 = true;
            }
        }
    }

    public final void A0O() {
        if (this.A08.A04 != null && this.A08.A04.A0O()) {
            int size = this.A06.size();
            for (int i = 0; i < size; i++) {
                AbstractC2663jE abstractC2663jE = this.A06.get(i);
                int i2 = A0A[0].length();
                if (i2 != 16) {
                    throw new RuntimeException();
                }
                String[] strArr = A0A;
                strArr[2] = "kx9etu5Uswf3mlSSd54JM5SDJxoMGNTv";
                strArr[1] = "kxxNK4Rys8aPJuu822sP3fs8sDM7v1G0";
                if (abstractC2663jE != null) {
                    abstractC2663jE.A0e(6);
                    abstractC2663jE.A0j(null);
                }
            }
            return;
        }
        A06();
    }

    public final void A0P() {
        int extraCache;
        if (this.A08.A06 != null) {
            AbstractC2645iw abstractC2645iw = this.A08.A06;
            if (A0A[0].length() == 16) {
                String[] strArr = A0A;
                strArr[2] = "kSelswvDf1EbxUzrii1mBr6dHJR0d4zj";
                strArr[1] = "kcuGN1lunmBh6z5P1vsNJWvgiUTpOK0Q";
                extraCache = abstractC2645iw.A00;
            }
            throw new RuntimeException();
        }
        extraCache = 0;
        this.A00 = this.A03 + extraCache;
        int extraCache2 = this.A06.size();
        for (int i = extraCache2 - 1; i >= 0; i--) {
            int size = this.A06.size();
            String[] strArr2 = A0A;
            String str = strArr2[2];
            String str2 = strArr2[1];
            int i2 = str.charAt(0);
            int extraCache3 = str2.charAt(0);
            if (i2 != extraCache3) {
                throw new RuntimeException();
            }
            String[] strArr3 = A0A;
            strArr3[2] = "kpxxdOz3cEfo3MLV8RPQuR2Jasv2n6jF";
            strArr3[1] = "kgO1H2GjmHeLX2ZusVi9gFRUJKE1zGI0";
            int extraCache4 = this.A00;
            if (size > extraCache4) {
                A07(i);
            } else {
                return;
            }
        }
    }

    public final void A0Q() {
        this.A05.clear();
        A06();
    }

    public final void A0R(int i) {
        this.A03 = i;
        A0P();
    }

    public final void A0S(int i, int i2) {
        int size = this.A06.size();
        for (int i3 = 0; i3 < size; i3++) {
            AbstractC2663jE abstractC2663jE = this.A06.get(i3);
            if (abstractC2663jE != null) {
                int cachedCount = abstractC2663jE.A03;
                if (cachedCount >= i) {
                    abstractC2663jE.A0h(i2, true);
                }
            }
        }
    }

    public final void A0T(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (i < i2) {
            i3 = i;
            i4 = i2;
            i5 = -1;
        } else {
            i3 = i2;
            i4 = i;
            i5 = 1;
        }
        int size = this.A06.size();
        for (int i6 = 0; i6 < size; i6++) {
            AbstractC2663jE abstractC2663jE = this.A06.get(i6);
            if (abstractC2663jE != null) {
                int start = abstractC2663jE.A03;
                if (start >= i3) {
                    int start2 = abstractC2663jE.A03;
                    if (start2 > i4) {
                        continue;
                    } else {
                        int i7 = abstractC2663jE.A03;
                        String[] strArr = A0A;
                        String str = strArr[5];
                        String str2 = strArr[3];
                        int end = str.charAt(0);
                        int start3 = str2.charAt(0);
                        if (end == start3) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A0A;
                        strArr2[2] = "kvvW4F2OCwdEIl1qwIuxYVFpmp0ugJY5";
                        strArr2[1] = "kzcCp2wTfEGQm2KGuN32b5oIYABnQWPG";
                        if (i7 == i) {
                            int end2 = i2 - i;
                            abstractC2663jE.A0h(end2, false);
                        } else {
                            abstractC2663jE.A0h(i5, false);
                        }
                    }
                } else {
                    continue;
                }
            }
        }
    }

    public final void A0U(int i, int i2) {
        int positionEnd;
        int i3 = i + i2;
        for (int i4 = this.A06.size() - 1; i4 >= 0; i4--) {
            AbstractC2663jE abstractC2663jE = this.A06.get(i4);
            if (abstractC2663jE != null && (positionEnd = abstractC2663jE.A03) >= i && positionEnd < i3) {
                abstractC2663jE.A0e(2);
                A07(i4);
            }
        }
    }

    public final void A0V(int i, int i2, boolean z) {
        int i3 = i + i2;
        int removedEnd = this.A06.size();
        for (int i4 = removedEnd - 1; i4 >= 0; i4--) {
            AbstractC2663jE abstractC2663jE = this.A06.get(i4);
            if (abstractC2663jE != null) {
                int removedEnd2 = abstractC2663jE.A03;
                if (removedEnd2 >= i3) {
                    int removedEnd3 = -i2;
                    abstractC2663jE.A0h(removedEnd3, z);
                } else {
                    int removedEnd4 = abstractC2663jE.A03;
                    if (removedEnd4 >= i) {
                        abstractC2663jE.A0e(8);
                        A07(i4);
                    }
                }
            }
        }
    }

    public final void A0W(View view) {
        AbstractC2663jE abstractC2663jEA0F = C7O.A0F(view);
        abstractC2663jEA0F.A0F = null;
        abstractC2663jEA0F.A0G = false;
        abstractC2663jEA0F.A0Z();
        A0c(abstractC2663jEA0F);
    }

    public final void A0X(View view) {
        AbstractC2663jE abstractC2663jEA0F = C7O.A0F(view);
        if (abstractC2663jEA0F.A0v(12) || !abstractC2663jEA0F.A0q() || this.A08.A25(abstractC2663jEA0F)) {
            boolean zA0m = abstractC2663jEA0F.A0m();
            if (A0A[0].length() != 16) {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[5] = "cscHAR4ImnAFzAxZJ9yqjMNa91RcN8Vb";
            strArr[3] = "pspTzLDNU823NSI2ymIgIumCpfqVQlal";
            if (!zA0m || abstractC2663jEA0F.A0n() || this.A08.A04.A0O()) {
                abstractC2663jEA0F.A0i(this, false);
                this.A05.add(abstractC2663jEA0F);
                return;
            }
            throw new IllegalArgumentException(A04(65, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE) + this.A08.A1L());
        }
        if (this.A02 == null) {
            this.A02 = new ArrayList<>();
        }
        abstractC2663jEA0F.A0i(this, true);
        this.A02.add(abstractC2663jEA0F);
    }

    public final void A0Y(View view) {
        AbstractC2663jE abstractC2663jEA0F = C7O.A0F(view);
        if (abstractC2663jEA0F.A0p()) {
            this.A08.removeDetachedView(view, false);
        }
        if (abstractC2663jEA0F.A0o()) {
            abstractC2663jEA0F.A0d();
        } else if (abstractC2663jEA0F.A0t()) {
            abstractC2663jEA0F.A0Z();
        }
        A0c(abstractC2663jEA0F);
    }

    public final void A0Z(AbstractC2633ik abstractC2633ik, AbstractC2633ik abstractC2633ik2, boolean z) {
        A0Q();
        A0I().A08(abstractC2633ik, abstractC2633ik2, z);
    }

    public final void A0a(C2652j3 c2652j3) {
        if (this.A01 != null) {
            C2652j3 c2652j32 = this.A01;
            String[] strArr = A0A;
            if (strArr[7].charAt(8) == strArr[6].charAt(8)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[5] = "eg5celMCH5XhNc8VzkIGx3YtNAPnP9H4";
            strArr2[3] = "1J6YUmXidV7MMEP0bzwuQdNnIs5cPq10";
            c2652j32.A04();
        }
        this.A01 = c2652j3;
        if (c2652j3 != null) {
            this.A01.A07(this.A08.getAdapter());
        }
    }

    public final void A0b(AbstractC2661jC abstractC2661jC) {
        this.A04 = abstractC2661jC;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0c(com.facebook.ads.redexgen.X.AbstractC2663jE r10) {
        /*
            Method dump skipped, instruction units count: 394
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2653j4.A0c(com.facebook.ads.redexgen.X.jE):void");
    }

    public final void A0d(AbstractC2663jE abstractC2663jE) {
        if (abstractC2663jE.A0G) {
            this.A02.remove(abstractC2663jE);
        } else {
            this.A05.remove(abstractC2663jE);
        }
        abstractC2663jE.A0F = null;
        abstractC2663jE.A0G = false;
        abstractC2663jE.A0Z();
    }

    public final void A0e(AbstractC2663jE abstractC2663jE, boolean z) {
        C7O.A0t(abstractC2663jE);
        if (abstractC2663jE.A0v(16384)) {
            abstractC2663jE.A0f(0, 16384);
            AbstractC2565hb.A0B(abstractC2663jE.A0H, null);
        }
        if (z) {
            A0B(abstractC2663jE);
        }
        abstractC2663jE.A08 = null;
        A0I().A09(abstractC2663jE);
    }
}
