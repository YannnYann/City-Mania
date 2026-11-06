package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P3 {
    public static String[] A0B = {"GnEroV9tf25Q74Q4AIL815Rx44kgHmvG", "P063YvyLaUd0U", "1FPz0jD6XCd9GEIx4t71guCP2wVgzCU9", "QppZ1G", "WD4Rw8prweBW9nCmOnoOZ9eITxQmD", "TAEnBdP9yWi256YM1FToN", "eMROy8fWhWETrw9YRXGKpKUkohzw49Ix", "FZX8WufoEexGN39WNk9SO4rP"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public C1836Oz A04;
    public C1836Oz A05;
    public C1836Oz A06;
    public Object A07;
    public boolean A08;
    public final UM A09 = new UM();
    public final UK A0A = new UK();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C1887Rk A06(Timeline timeline, Object obj, long j, long j2, UM um) {
        timeline.A0J(obj, um);
        int iA08 = um.A08(j);
        return iA08 == -1 ? new C1887Rk(obj, j2) : new C1887Rk(obj, iA08, um.A05(iA08), j2);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final P0 A0I(Timeline timeline, P0 p0) {
        long jA0A;
        long j = p0.A01;
        boolean zA08 = A08(timeline, p0.A04, j);
        boolean zA09 = A09(timeline, p0.A04, zA08);
        timeline.A0J(p0.A04.A04, this.A09);
        if (p0.A04.A00()) {
            jA0A = this.A09.A0E(p0.A04.A00, p0.A04.A01);
        } else if (j == Long.MIN_VALUE) {
            jA0A = this.A09.A0A();
            if (A0B[6].charAt(21) == 'n') {
                throw new RuntimeException();
            }
            A0B[3] = "zmmIrK";
        } else {
            jA0A = j;
        }
        return new P0(p0.A04, p0.A03, j, p0.A02, jA0A, zA08, zA09);
    }

    private long A00(Timeline timeline, Object obj) {
        int oldFrontPeriodIndex;
        int holderWindowIndex = timeline.A0J(obj, this.A09).A00;
        if (this.A07 != null && (oldFrontPeriodIndex = timeline.A0A(this.A07)) != -1) {
            int windowIndex = timeline.A0H(oldFrontPeriodIndex, this.A09).A00;
            if (windowIndex == holderWindowIndex) {
                return this.A03;
            }
        }
        for (C1836Oz mediaPeriodHolder = A0D(); mediaPeriodHolder != null; mediaPeriodHolder = mediaPeriodHolder.A0I()) {
            if (mediaPeriodHolder.A08.equals(obj)) {
                return mediaPeriodHolder.A00.A04.A03;
            }
        }
        for (C1836Oz c1836OzA0D = A0D(); c1836OzA0D != null; c1836OzA0D = c1836OzA0D.A0I()) {
            int iA0A = timeline.A0A(c1836OzA0D.A08);
            if (iA0A != -1) {
                int windowIndex2 = timeline.A0H(iA0A, this.A09).A00;
                if (windowIndex2 == holderWindowIndex) {
                    return c1836OzA0D.A00.A04.A03;
                }
            }
        }
        long j = this.A02;
        this.A02 = 1 + j;
        return j;
    }

    private P0 A01(Timeline timeline, C1836Oz c1836Oz, long j) {
        long jLongValue;
        P3 p3 = this;
        P0 p0 = c1836Oz.A00;
        if (p0.A07) {
            int iA09 = timeline.A09(timeline.A0A(p0.A04.A04), p3.A09, p3.A0A, p3.A01, p3.A08);
            if (iA09 == -1) {
                return null;
            }
            int nextPeriodIndex = timeline.A0I(iA09, p3.A09, true).A00;
            Object obj = p3.A09.A04;
            long j2 = p0.A04.A03;
            if (timeline.A0K(nextPeriodIndex, p3.A0A).A00 == iA09) {
                Pair<Object, Long> defaultPosition = timeline.A0F(p3.A0A, p3.A09, nextPeriodIndex, -9223372036854775807L, Math.max(0L, (c1836Oz.A0B() + p0.A00) - j));
                if (defaultPosition == null) {
                    return null;
                }
                obj = defaultPosition.first;
                jLongValue = ((Long) defaultPosition.second).longValue();
                C1836Oz nextMediaPeriodHolder = c1836Oz.A0I();
                if (A0B[3].length() == 6) {
                    A0B[1] = "EUsp1qGPNfBUG";
                    if (nextMediaPeriodHolder != null && nextMediaPeriodHolder.A08.equals(obj)) {
                        j2 = nextMediaPeriodHolder.A00.A04.A03;
                        p3 = this;
                    } else {
                        p3 = this;
                        j2 = p3.A02;
                        long startPositionUs = 1 + j2;
                        p3.A02 = startPositionUs;
                    }
                }
            } else {
                jLongValue = 0;
            }
            return A02(timeline, A06(timeline, obj, jLongValue, j2, p3.A09), jLongValue, jLongValue);
        }
        C1887Rk c1887Rk = p0.A04;
        timeline.A0J(c1887Rk.A04, p3.A09);
        if (c1887Rk.A00()) {
            int i = c1887Rk.A00;
            int iA04 = p3.A09.A04(i);
            if (iA04 == -1) {
                return null;
            }
            int adGroupIndex = p3.A09.A06(i, c1887Rk.A01);
            if (adGroupIndex < iA04) {
                if (!p3.A09.A0I(i, adGroupIndex)) {
                    return null;
                }
                return A03(timeline, c1887Rk.A04, i, adGroupIndex, p0.A02, c1887Rk.A03);
            }
            return A04(timeline, c1887Rk.A04, p0.A02, c1887Rk.A03);
        }
        long j3 = p0.A01;
        if (A0B[0].charAt(22) != 'b') {
            A0B[5] = "J1GWsAdRIVS2ayMBQJ";
            if (j3 != Long.MIN_VALUE) {
                int iA08 = p3.A09.A08(p0.A01);
                if (iA08 == -1) {
                    return A04(timeline, c1887Rk.A04, p0.A01, c1887Rk.A03);
                }
                int nextAdGroupIndex = p3.A09.A05(iA08);
                UM um = p3.A09;
                if (A0B[0].charAt(22) == 'b') {
                    throw new RuntimeException();
                }
                A0B[5] = "uhXbdG";
                if (!um.A0I(iA08, nextAdGroupIndex)) {
                    return null;
                }
                Object obj2 = c1887Rk.A04;
                long j4 = p0.A01;
                String[] strArr = A0B;
                if (strArr[7].length() != strArr[4].length()) {
                    String[] strArr2 = A0B;
                    strArr2[7] = "Lcz6O6fEnk1Q5jWM2W5E02Xu";
                    strArr2[4] = "tfP1uCtFNo7pxKOt8bVF0piC6TJYH";
                    return A03(timeline, obj2, iA08, nextAdGroupIndex, j4, c1887Rk.A03);
                }
            } else {
                int iA03 = p3.A09.A03();
                if (iA03 == 0) {
                    return null;
                }
                int i2 = iA03 - 1;
                UM um2 = p3.A09;
                if (A0B[5].length() == 7) {
                    throw new RuntimeException();
                }
                A0B[3] = "CbLoUs";
                if (um2.A0D(i2) != Long.MIN_VALUE || p3.A09.A0H(i2)) {
                    return null;
                }
                int adGroupCount = p3.A09.A05(i2);
                if (!p3.A09.A0I(i2, adGroupCount)) {
                    return null;
                }
                return A03(timeline, c1887Rk.A04, i2, adGroupCount, p3.A09.A0A(), c1887Rk.A03);
            }
        }
        throw new RuntimeException();
    }

    private P0 A02(Timeline timeline, C1887Rk c1887Rk, long j, long j2) {
        timeline.A0J(c1887Rk.A04, this.A09);
        if (c1887Rk.A00()) {
            UM um = this.A09;
            int i = c1887Rk.A00;
            if (A0B[2].charAt(26) == 'F') {
                throw new RuntimeException();
            }
            A0B[1] = "ItczLf1d2nJIc";
            if (!um.A0I(i, c1887Rk.A01)) {
                return null;
            }
            return A03(timeline, c1887Rk.A04, c1887Rk.A00, c1887Rk.A01, j, c1887Rk.A03);
        }
        return A04(timeline, c1887Rk.A04, j2, c1887Rk.A03);
    }

    private P0 A03(Timeline timeline, Object obj, int i, int i2, long startPositionUs, long j) {
        long jA09;
        C1887Rk c1887Rk = new C1887Rk(obj, i, i2, j);
        boolean zA08 = A08(timeline, c1887Rk, Long.MIN_VALUE);
        boolean zA09 = A09(timeline, c1887Rk, zA08);
        long jA0E = timeline.A0J(c1887Rk.A04, this.A09).A0E(c1887Rk.A00, c1887Rk.A01);
        if (i2 == this.A09.A05(i)) {
            UM um = this.A09;
            if (A0B[1].length() != 13) {
                throw new RuntimeException();
            }
            String[] strArr = A0B;
            strArr[7] = "irlSq0v10zByQDiXm9i8jont";
            strArr[4] = "UKqJqhXwK0uP7TFoy7H6yLR2FGRqi";
            jA09 = um.A09();
        } else {
            jA09 = 0;
        }
        return new P0(c1887Rk, jA09, Long.MIN_VALUE, startPositionUs, jA0E, zA08, zA09);
    }

    private P0 A04(Timeline timeline, Object obj, long j, long j2) {
        long jA0D;
        long jA0A;
        C1887Rk c1887Rk = new C1887Rk(obj, j2);
        timeline.A0J(c1887Rk.A04, this.A09);
        int iA07 = this.A09.A07(j);
        if (iA07 == -1) {
            jA0D = Long.MIN_VALUE;
        } else {
            jA0D = this.A09.A0D(iA07);
        }
        boolean zA08 = A08(timeline, c1887Rk, jA0D);
        boolean zA09 = A09(timeline, c1887Rk, zA08);
        if (jA0D == Long.MIN_VALUE) {
            jA0A = this.A09.A0A();
        } else {
            jA0A = jA0D;
        }
        return new P0(c1887Rk, j, jA0D, -9223372036854775807L, jA0A, zA08, zA09);
    }

    private P0 A05(PO po) {
        return A02(po.A03, po.A05, po.A01, po.A02);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A07(com.facebook.ads.androidx.media3.common.Timeline r13) {
        /*
            r12 = this;
            com.facebook.ads.redexgen.X.Oz r3 = r12.A0D()
            r5 = 1
            if (r3 != 0) goto L8
            return r5
        L8:
            java.lang.Object r0 = r3.A08
            r6 = r13
            int r7 = r6.A0A(r0)
        Lf:
            com.facebook.ads.redexgen.X.UM r8 = r12.A09
            com.facebook.ads.redexgen.X.UK r9 = r12.A0A
            int r10 = r12.A01
            boolean r11 = r12.A08
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.P3.A0B
            r0 = 2
            r1 = r1[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            r0 = 70
            if (r1 == r0) goto L86
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P3.A0B
            java.lang.String r1 = "aKuQ9ueHtOksulQgEbalhQiU7zzzAfgD"
            r0 = 6
            r2[r0] = r1
            int r7 = r6.A09(r7, r8, r9, r10, r11)
        L31:
            com.facebook.ads.redexgen.X.Oz r4 = r3.A0I()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.P3.A0B
            r0 = 2
            r1 = r1[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            r0 = 70
            if (r1 == r0) goto L58
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P3.A0B
            java.lang.String r1 = "Ixtp3Q"
            r0 = 3
            r2[r0] = r1
            if (r4 == 0) goto L5b
        L4d:
            com.facebook.ads.redexgen.X.P0 r0 = r3.A00
            boolean r0 = r0.A07
            if (r0 != 0) goto L5b
            com.facebook.ads.redexgen.X.Oz r3 = r3.A0I()
            goto L31
        L58:
            if (r4 == 0) goto L5b
            goto L4d
        L5b:
            com.facebook.ads.redexgen.X.Oz r1 = r3.A0I()
            r0 = -1
            if (r7 == r0) goto L64
            if (r1 != 0) goto L7b
        L64:
            boolean r1 = r12.A0S(r3)
            com.facebook.ads.redexgen.X.P0 r0 = r3.A00
            com.facebook.ads.redexgen.X.P0 r0 = r12.A0I(r6, r0)
            r3.A00 = r0
            if (r1 == 0) goto L78
            boolean r0 = r12.A0N()
            if (r0 != 0) goto L79
        L78:
            return r5
        L79:
            r5 = 0
            goto L78
        L7b:
            java.lang.Object r0 = r1.A08
            int r0 = r6.A0A(r0)
            if (r0 == r7) goto L84
            goto L64
        L84:
            r3 = r1
            goto Lf
        L86:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P3.A07(com.facebook.ads.androidx.media3.common.Timeline):boolean");
    }

    private boolean A08(Timeline timeline, C1887Rk c1887Rk, long j) {
        int adGroupCount = timeline.A0J(c1887Rk.A04, this.A09).A03();
        if (adGroupCount == 0) {
            return true;
        }
        int lastAdGroupIndex = adGroupCount - 1;
        boolean zA00 = c1887Rk.A00();
        if (this.A09.A0D(lastAdGroupIndex) != Long.MIN_VALUE) {
            return !zA00 && j == Long.MIN_VALUE;
        }
        int postrollAdCount = this.A09.A04(lastAdGroupIndex);
        if (postrollAdCount == -1) {
            return false;
        }
        if (((zA00 && c1887Rk.A00 == lastAdGroupIndex && c1887Rk.A01 == postrollAdCount + (-1)) ? 1 : 0) != 0) {
            return true;
        }
        if (!zA00) {
            int iA05 = this.A09.A05(lastAdGroupIndex);
            if (A0B[6].charAt(21) == 'n') {
                throw new RuntimeException();
            }
            String[] strArr = A0B;
            strArr[7] = "9fN1GtT7csoOtzuVOZGTkJkv";
            strArr[4] = "l5pQsPxk6IT0oV754sDRXb3Ilyc1S";
            if (iA05 == postrollAdCount) {
                return true;
            }
        }
        return false;
    }

    private boolean A09(Timeline timeline, C1887Rk c1887Rk, boolean z) {
        int iA0A = timeline.A0A(c1887Rk.A04);
        return !timeline.A0K(timeline.A0H(iA0A, this.A09).A00, this.A0A).A0D && timeline.A0O(iA0A, this.A09, this.A0A, this.A01, this.A08) && z;
    }

    private boolean A0A(C1836Oz c1836Oz, P0 p0) {
        P0 p02 = c1836Oz.A00;
        if (p02.A03 == p0.A03 && p02.A01 == p0.A01) {
            boolean zEquals = p02.A04.equals(p0.A04);
            if (A0B[0].charAt(22) == 'b') {
                throw new RuntimeException();
            }
            A0B[3] = "TRWx01";
            if (zEquals) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.C1836Oz A0B() {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.Oz r0 = r4.A05
            if (r0 == 0) goto L88
            com.facebook.ads.redexgen.X.Oz r3 = r4.A05
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.P3.A0B
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 7
            if (r1 == r0) goto L99
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P3.A0B
            java.lang.String r1 = "BzNnK6vZGZJzhJ0cKUk4sgiDsSKmw8OE"
            r0 = 6
            r2[r0] = r1
            com.facebook.ads.redexgen.X.Oz r0 = r4.A06
            if (r3 != r0) goto L25
            com.facebook.ads.redexgen.X.Oz r0 = r4.A05
            com.facebook.ads.redexgen.X.Oz r0 = r0.A0I()
            r4.A06 = r0
        L25:
            com.facebook.ads.redexgen.X.Oz r3 = r4.A05
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.P3.A0B
            r0 = 2
            r1 = r1[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            r0 = 70
            if (r1 == r0) goto L6b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P3.A0B
            java.lang.String r1 = "VaAQRmMnxrRkq"
            r0 = 1
            r2[r0] = r1
            r3.A0M()
            com.facebook.ads.redexgen.X.Oz r0 = r4.A05
            com.facebook.ads.redexgen.X.Oz r0 = r0.A0I()
            r4.A05 = r0
            int r0 = r4.A00
            int r0 = r0 + (-1)
            r4.A00 = r0
            int r0 = r4.A00
            if (r0 != 0) goto L55
        L52:
            r0 = 0
            r4.A04 = r0
        L55:
            com.facebook.ads.redexgen.X.Oz r3 = r4.A05
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.P3.A0B
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 6
            if (r1 == r0) goto L91
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P3.A0B
            java.lang.String r1 = "qeaxpnVrjOAzgdW4zxdWcB8fNL6cs9UO"
            r0 = 0
            r2[r0] = r1
            return r3
        L6b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P3.A0B
            java.lang.String r1 = "lvc6uI"
            r0 = 3
            r2[r0] = r1
            r3.A0M()
            com.facebook.ads.redexgen.X.Oz r0 = r4.A05
            com.facebook.ads.redexgen.X.Oz r0 = r0.A0I()
            r4.A05 = r0
            int r0 = r4.A00
            int r0 = r0 + (-1)
            r4.A00 = r0
            int r0 = r4.A00
            if (r0 != 0) goto L55
            goto L52
        L88:
            com.facebook.ads.redexgen.X.Oz r0 = r4.A04
            r4.A05 = r0
            com.facebook.ads.redexgen.X.Oz r0 = r4.A04
            r4.A06 = r0
            goto L55
        L91:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P3.A0B
            java.lang.String r1 = "yTcBq02tmy8sK"
            r0 = 1
            r2[r0] = r1
            return r3
        L99:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P3.A0B():com.facebook.ads.redexgen.X.Oz");
    }

    public final C1836Oz A0C() {
        AbstractC1747Ln.A08((this.A06 == null || this.A06.A0I() == null) ? false : true);
        this.A06 = this.A06.A0I();
        return this.A06;
    }

    public final C1836Oz A0D() {
        return A0N() ? this.A05 : this.A04;
    }

    public final C1836Oz A0E() {
        return this.A04;
    }

    public final C1836Oz A0F() {
        return this.A05;
    }

    public final C1836Oz A0G() {
        return this.A06;
    }

    public final P0 A0H(long j, PO po) {
        if (this.A04 == null) {
            return A05(po);
        }
        return A01(po.A03, this.A04, j);
    }

    public final InterfaceC1888Rl A0J(InterfaceC1838Pe[] interfaceC1838PeArr, long j, AbstractC2008Wi abstractC2008Wi, InterfaceC2012Wm interfaceC2012Wm, InterfaceC1961Uj interfaceC1961Uj, P0 p0, C2009Wj c2009Wj) {
        long jA0B;
        if (this.A04 != null) {
            jA0B = this.A04.A0B() + this.A04.A00.A00;
        } else {
            jA0B = p0.A03 + j;
        }
        C1836Oz c1836Oz = new C1836Oz(interfaceC1838PeArr, jA0B, abstractC2008Wi, interfaceC2012Wm, interfaceC1961Uj, p0, c2009Wj);
        if (this.A04 != null) {
            AbstractC1747Ln.A08(A0N());
            this.A04.A0Q(c1836Oz);
        }
        this.A07 = null;
        this.A04 = c1836Oz;
        this.A00++;
        InterfaceC1888Rl interfaceC1888Rl = c1836Oz.A07;
        String[] strArr = A0B;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A0B[6] = "PhVPZKDAM7fppeQiWsfcSWBqFhBUAWSX";
        return interfaceC1888Rl;
    }

    public final C1887Rk A0K(Timeline timeline, Object obj, long j) {
        return A06(timeline, obj, j, A00(timeline, obj), this.A09);
    }

    public final void A0L(long j) {
        if (this.A04 != null) {
            this.A04.A0P(j);
        }
    }

    public final void A0M(boolean z) {
        C1836Oz c1836OzA0D = A0D();
        if (c1836OzA0D != null) {
            this.A07 = z ? c1836OzA0D.A08 : null;
            this.A03 = c1836OzA0D.A00.A04.A03;
            c1836OzA0D.A0M();
            A0S(c1836OzA0D);
        } else if (!z) {
            this.A07 = null;
        }
        this.A05 = null;
        this.A04 = null;
        this.A06 = null;
        this.A00 = 0;
    }

    public final boolean A0N() {
        return this.A05 != null;
    }

    public final boolean A0O() {
        return this.A04 == null || (!this.A04.A00.A05 && this.A04.A0R() && this.A04.A00.A00 != -9223372036854775807L && this.A00 < 100);
    }

    public final boolean A0P(Timeline timeline, int i) {
        this.A01 = i;
        return A07(timeline);
    }

    public final boolean A0Q(Timeline timeline, C1887Rk c1887Rk, long j) {
        int iA0A = timeline.A0A(c1887Rk.A04);
        C1836Oz c1836Oz = null;
        for (C1836Oz periodHolder = A0D(); periodHolder != null; periodHolder = periodHolder.A0I()) {
            if (c1836Oz == null) {
                periodHolder.A00 = A0I(timeline, periodHolder.A00);
            } else {
                if (iA0A == -1 || !periodHolder.A08.equals(timeline.A0M(iA0A))) {
                    boolean zA0S = A0S(c1836Oz);
                    if (A0B[5].length() == 7) {
                        throw new RuntimeException();
                    }
                    A0B[2] = "DCZOFO6lnt1pg3dDOgZnxlf9qk01Ij2m";
                    return true ^ zA0S;
                }
                P0 p0A01 = A01(timeline, c1836Oz, j);
                if (p0A01 == null) {
                    return true ^ A0S(c1836Oz);
                }
                periodHolder.A00 = A0I(timeline, periodHolder.A00);
                if (!A0A(periodHolder, p0A01)) {
                    return true ^ A0S(c1836Oz);
                }
            }
            if (periodHolder.A00.A07) {
                iA0A = timeline.A09(iA0A, this.A09, this.A0A, this.A01, this.A08);
            }
            c1836Oz = periodHolder;
        }
        return true;
    }

    public final boolean A0R(Timeline timeline, boolean z) {
        this.A08 = z;
        return A07(timeline);
    }

    public final boolean A0S(C1836Oz c1836Oz) {
        AbstractC1747Ln.A08(c1836Oz != null);
        boolean z = false;
        this.A04 = c1836Oz;
        while (c1836Oz.A0I() != null) {
            c1836Oz = c1836Oz.A0I();
            if (c1836Oz == this.A06) {
                this.A06 = this.A05;
                z = true;
            }
            c1836Oz.A0M();
            this.A00--;
        }
        this.A04.A0Q(null);
        return z;
    }

    public final boolean A0T(InterfaceC1888Rl interfaceC1888Rl) {
        return this.A04 != null && this.A04.A07 == interfaceC1888Rl;
    }
}
