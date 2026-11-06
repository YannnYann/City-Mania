package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Oz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1836Oz {
    public static byte[] A0E;
    public static String[] A0F = {"xeNmsN5JKd3AA", "Z04P8T13CEqsnfEVcttKFEqj29GRXKUL", "lC6IfUxfJXSeS", "mqCbdzoESXNqi7TcuBtcGY3oRo12E4Pd", "NLwB4WZdcWvz5YN3eLjjOx3Ay2p6uDYK", "ZPMzBEU0DQA2C", "r1txEiQ0trD4b", "F2qoMedzc104itDVaFIeKDfHUX98ZJvI"};
    public P0 A00;
    public boolean A01;
    public boolean A02;
    public long A03;
    public C1836Oz A04;
    public RY A05 = RY.A06;
    public C2009Wj A06;
    public final InterfaceC1888Rl A07;
    public final Object A08;
    public final VF[] A09;
    public final InterfaceC1835Oy A0A;
    public final AbstractC2008Wi A0B;
    public final InterfaceC1838Pe[] A0C;
    public final boolean[] A0D;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        byte[] bArr = {94, 118, 119, 122, 114, 67, 118, 97, 122, 124, 119, 91, 124, 127, 119, 118, 97, 44, 25, 14, 21, 19, 24, 92, 14, 25, 16, 25, 29, 15, 25, 92, 26, 29, 21, 16, 25, 24, 82};
        String[] strArr = A0F;
        if (strArr[6].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[5] = "xrsRfx8FMqka3";
        strArr2[0] = "gzwWjpeZxHefO";
        A0E = bArr;
    }

    static {
        A04();
    }

    @MetaExoPlayerCustomization
    public C1836Oz(InterfaceC1838Pe[] interfaceC1838PeArr, long j, AbstractC2008Wi abstractC2008Wi, InterfaceC2012Wm interfaceC2012Wm, InterfaceC1961Uj interfaceC1961Uj, P0 p0, C2009Wj c2009Wj) {
        this.A0C = interfaceC1838PeArr;
        this.A03 = j - p0.A03;
        this.A0B = abstractC2008Wi;
        this.A08 = AbstractC1747Ln.A01(p0.A04.A04);
        this.A00 = p0;
        this.A06 = c2009Wj;
        this.A09 = new VF[interfaceC1838PeArr.length];
        this.A0D = new boolean[interfaceC1838PeArr.length];
        this.A0A = new C1910Sh(this, interfaceC1961Uj);
        this.A07 = A00(p0.A04, this.A0A, interfaceC2012Wm, p0.A03, p0.A01);
    }

    @MetaExoPlayerCustomization
    public static InterfaceC1888Rl A00(C1887Rk c1887Rk, InterfaceC1835Oy interfaceC1835Oy, InterfaceC2012Wm interfaceC2012Wm, long j, long j2) {
        InterfaceC1888Rl interfaceC1888RlA65 = interfaceC1835Oy.A65(c1887Rk, interfaceC2012Wm, j);
        if (j2 != -9223372036854775807L) {
            return new C8t(interfaceC1888RlA65, true, 0L, j2);
        }
        return interfaceC1888RlA65;
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x000c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A02() {
        /*
            r3 = this;
            boolean r0 = r3.A08()
            if (r0 != 0) goto L7
            return
        L7:
            r2 = 0
        L8:
            com.facebook.ads.redexgen.X.Wj r0 = r3.A06
            int r0 = r0.A00
            if (r2 >= r0) goto L24
            com.facebook.ads.redexgen.X.Wj r0 = r3.A06
            boolean r1 = r0.A00(r2)
            com.facebook.ads.redexgen.X.Wj r0 = r3.A06
            com.facebook.ads.redexgen.X.RA[] r0 = r0.A04
            r0 = r0[r2]
            if (r1 == 0) goto L21
            if (r0 == 0) goto L21
            r0.A6W()
        L21:
            int r2 = r2 + 1
            goto L8
        L24:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1836Oz.A02():void");
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x000c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A03() {
        /*
            r3 = this;
            boolean r0 = r3.A08()
            if (r0 != 0) goto L7
            return
        L7:
            r2 = 0
        L8:
            com.facebook.ads.redexgen.X.Wj r0 = r3.A06
            int r0 = r0.A00
            if (r2 >= r0) goto L24
            com.facebook.ads.redexgen.X.Wj r0 = r3.A06
            boolean r1 = r0.A00(r2)
            com.facebook.ads.redexgen.X.Wj r0 = r3.A06
            com.facebook.ads.redexgen.X.RA[] r0 = r0.A04
            r0 = r0[r2]
            if (r1 == 0) goto L21
            if (r0 == 0) goto L21
            r0.A6t()
        L21:
            int r2 = r2 + 1
            goto L8
        L24:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1836Oz.A03():void");
    }

    @MetaExoPlayerCustomization
    public static void A05(InterfaceC1835Oy interfaceC1835Oy, InterfaceC1888Rl interfaceC1888Rl) {
        try {
            if (interfaceC1888Rl instanceof C8t) {
                interfaceC1835Oy.AIy(((C8t) interfaceC1888Rl).A05);
            } else {
                interfaceC1835Oy.AIy(interfaceC1888Rl);
            }
        } catch (RuntimeException e) {
            MV.A08(A01(0, 17, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), A01(17, 22, 25), e);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A06(com.facebook.ads.redexgen.X.VF[] r4) {
        /*
            r3 = this;
            r2 = 0
        L1:
            com.facebook.ads.redexgen.X.Pe[] r0 = r3.A0C
            int r0 = r0.length
            if (r2 >= r0) goto L23
            com.facebook.ads.redexgen.X.Pe[] r0 = r3.A0C
            r0 = r0[r2]
            int r1 = r0.AA0()
            r0 = -2
            if (r1 != r0) goto L20
            com.facebook.ads.redexgen.X.Wj r0 = r3.A06
            boolean r0 = r0.A00(r2)
            if (r0 == 0) goto L20
            com.facebook.ads.redexgen.X.Rn r0 = new com.facebook.ads.redexgen.X.Rn
            r0.<init>()
            r4[r2] = r0
        L20:
            int r2 = r2 + 1
            goto L1
        L23:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1836Oz.A06(com.facebook.ads.redexgen.X.VF[]):void");
    }

    private void A07(VF[] vfArr) {
        int i = 0;
        while (true) {
            InterfaceC1838Pe[] interfaceC1838PeArr = this.A0C;
            String[] strArr = A0F;
            String str = strArr[3];
            String str2 = strArr[7];
            int iCharAt = str.charAt(12);
            int i2 = str2.charAt(12);
            if (iCharAt != i2) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[1] = "e67iNPwlo2xMyItWeFWVrh6Sq5MD7b9N";
            strArr2[4] = "8j5sJWHYuA8HuIuKrszfSbVSyNbW6rIm";
            int i3 = interfaceC1838PeArr.length;
            if (i < i3) {
                int iAA0 = this.A0C[i].AA0();
                String[] strArr3 = A0F;
                String str3 = strArr3[5];
                String str4 = strArr3[0];
                int length = str3.length();
                int i4 = str4.length();
                if (length != i4) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A0F;
                strArr4[1] = "a5omIPsi53glrCjuYuliWX9X1uQjkwF7";
                strArr4[4] = "o4jjjRHo4L3CtOBwjjyvFJ2NYpv36dqm";
                if (iAA0 == -2) {
                    vfArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    private boolean A08() {
        return this.A04 == null;
    }

    public final long A09() {
        if (!this.A02) {
            return this.A00.A03;
        }
        long jA7i = this.A01 ? this.A07.A7i() : Long.MIN_VALUE;
        return jA7i == Long.MIN_VALUE ? this.A00.A00 : jA7i;
    }

    public final long A0A() {
        if (this.A02) {
            return this.A07.A9E();
        }
        return 0L;
    }

    public final long A0B() {
        return this.A03;
    }

    @MetaExoPlayerCustomization
    public final long A0C(long j) {
        return this.A07.A7g(j);
    }

    public final long A0D(long j) {
        return j - A0B();
    }

    public final long A0E(long j) {
        return A0B() + j;
    }

    public final long A0F(C2009Wj c2009Wj, long j, boolean z) {
        return A0G(c2009Wj, j, z, new boolean[this.A0C.length]);
    }

    public final long A0G(C2009Wj c2009Wj, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = false;
            if (i >= c2009Wj.A00) {
                break;
            }
            boolean[] zArr2 = this.A0D;
            if (!z && c2009Wj.A01(this.A06, i)) {
                z2 = true;
            }
            zArr2[i] = z2;
            i++;
        }
        A07(this.A09);
        A02();
        this.A06 = c2009Wj;
        A03();
        long jAKR = this.A07.AKR(c2009Wj.A04, this.A0D, this.A09, zArr, j);
        A06(this.A09);
        this.A01 = false;
        for (int i2 = 0; i2 < this.A09.length; i2++) {
            if (this.A09[i2] != null) {
                AbstractC1747Ln.A08(c2009Wj.A00(i2));
                int iAA0 = this.A0C[i2].AA0();
                String[] strArr = A0F;
                if (strArr[5].length() != strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0F;
                strArr2[5] = "SpfogtgHHCqG6";
                strArr2[0] = "WCRSsSXzpYDpA";
                if (iAA0 != -2) {
                    this.A01 = true;
                }
            } else {
                AbstractC1747Ln.A08(c2009Wj.A04[i2] == null);
            }
        }
        return jAKR;
    }

    @MetaExoPlayerCustomization
    public final long A0H(boolean z) {
        if (!z) {
            return this.A03;
        }
        return this.A00.A03 + this.A03;
    }

    public final C1836Oz A0I() {
        return this.A04;
    }

    public final RY A0J() {
        return this.A05;
    }

    public final C2009Wj A0K() {
        return this.A06;
    }

    public final C2009Wj A0L(float f, Timeline timeline) throws AnonymousClass96 {
        C2009Wj c2009WjA0b = this.A0B.A0b(this.A0C, A0J(), this.A00.A04, timeline);
        for (RA ra : c2009WjA0b.A04) {
            if (ra != null) {
                ra.AGO(f);
            }
        }
        return c2009WjA0b;
    }

    @MetaExoPlayerCustomization
    public final void A0M() {
        A02();
        A05(this.A0A, this.A07);
    }

    public final void A0N(float f, Timeline timeline) throws AnonymousClass96 {
        this.A02 = true;
        this.A05 = this.A07.A9z();
        long jA0F = A0F(A0L(f, timeline), this.A00.A03, false);
        this.A03 += this.A00.A03 - jA0F;
        this.A00 = this.A00.A00(jA0F);
    }

    public final void A0O(long j) {
        AbstractC1747Ln.A08(A08());
        this.A07.A5l(A0D(j));
    }

    public final void A0P(long j) {
        AbstractC1747Ln.A08(A08());
        if (this.A02) {
            this.A07.AIk(A0D(j));
        }
    }

    public final void A0Q(C1836Oz c1836Oz) {
        if (c1836Oz == this.A04) {
            return;
        }
        A02();
        this.A04 = c1836Oz;
        A03();
    }

    public final boolean A0R() {
        return this.A02 && (!this.A01 || this.A07.A7i() == Long.MIN_VALUE);
    }
}
