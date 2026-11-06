package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O5 implements InterfaceC2265ch {
    public static byte[] A06;
    public static String[] A07 = {"vtEqmAk", "YIkCn0D8Ke1twsuZCTMNKlnb83ot9wWC", "2fgIgZToA", "AJxy", "ri50siERTUQGyQdlM7E3sxFZIKq6cMIu", "ktdx77aRJs8dvCrbODsVjHge1bjyCENV", "1avsMHI1PWMPXFGr8VriyDjLvosBq34", "vAKt3tqJZNBTuvyOu0CyTnClZKABuKjs"};
    public int A00;
    public int A01;
    public ZP A03;
    public boolean A04;
    public final C1769Mk A05 = new C1769Mk(10);
    public long A02 = -9223372036854775807L;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 68);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{-91, -54, -44, -60, -62, -45, -59, -54, -49, -56, -127, -54, -49, -41, -62, -51, -54, -59, -127, -86, -91, -108, -127, -43, -62, -56, -28, -1, -50, -19, 0, -4, -1, 0, 13, 0, 15, 15, 11, 8, 2, 0, 19, 8, 14, 13, -50, 8, 3, -46};
    }

    static {
        A01();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A5j(C1769Mk c1769Mk) {
        AbstractC1747Ln.A02(this.A03);
        if (!this.A04) {
            return;
        }
        int iA07 = c1769Mk.A07();
        int bytesAvailable = this.A00;
        if (bytesAvailable < 10) {
            int bytesAvailable2 = this.A00;
            int iMin = Math.min(iA07, 10 - bytesAvailable2);
            byte[] bArrA0l = c1769Mk.A0l();
            int iA09 = c1769Mk.A09();
            byte[] bArrA0l2 = this.A05.A0l();
            int bytesAvailable3 = this.A00;
            System.arraycopy(bArrA0l, iA09, bArrA0l2, bytesAvailable3, iMin);
            int bytesAvailable4 = this.A00;
            if (bytesAvailable4 + iMin == 10) {
                this.A05.A0f(0);
                int headerBytesAvailable = this.A05.A0I();
                if (73 == headerBytesAvailable) {
                    int headerBytesAvailable2 = this.A05.A0I();
                    if (68 == headerBytesAvailable2) {
                        int headerBytesAvailable3 = this.A05.A0I();
                        if (51 == headerBytesAvailable3) {
                            this.A05.A0g(3);
                            int bytesAvailable5 = this.A05.A0H();
                            this.A01 = bytesAvailable5 + 10;
                        }
                    }
                }
                MV.A07(A00(26, 9, 87), A00(0, 26, 29));
                this.A04 = false;
                return;
            }
        }
        int headerBytesAvailable4 = this.A01;
        int bytesAvailable6 = this.A00;
        int bytesToWrite = Math.min(iA07, headerBytesAvailable4 - bytesAvailable6);
        this.A03.AK9(c1769Mk, bytesToWrite);
        int i = this.A00 + bytesToWrite;
        if (A07[2].length() == 2) {
            throw new RuntimeException();
        }
        A07[0] = "WOz";
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A6B(InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
        c2286d2.A05();
        this.A03 = interfaceC2069Yw.ALm(c2286d2.A03(), 5);
        this.A03.A7E(new C1714Ke().A0y(c2286d2.A04()).A11(A00(35, 15, 91)).A14());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI2() {
        AbstractC1747Ln.A02(this.A03);
        if (!this.A04 || this.A01 == 0 || this.A00 != this.A01) {
            return;
        }
        long j = this.A02;
        if (A07[2].length() == 2) {
            throw new RuntimeException();
        }
        String[] strArr = A07;
        strArr[4] = "oG5I0s1vIi9gluwY0RcQoE0mKr55Q907";
        strArr[5] = "O1K8o3uFcng9Bw4QgcvJobHTy0Ai1MIu";
        if (j != -9223372036854775807L) {
            this.A03.AKC(this.A02, 1, this.A01, 0, null);
        }
        this.A04 = false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI3(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.A04 = true;
        if (j != -9223372036854775807L) {
            this.A02 = j;
        }
        this.A01 = 0;
        this.A00 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AKN() {
        this.A04 = false;
        this.A02 = -9223372036854775807L;
    }
}
