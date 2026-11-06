package com.facebook.ads.redexgen.X;

import io.bidmachine.protobuf.EventTypeExtended;
import java.util.Arrays;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OG implements InterfaceC2265ch {
    public static byte[] A0L;
    public static String[] A0M = {"XIIjnjdFYQVCtdrlkJcHdDoR80m8cVgP", "owkmjBi7RD4T7wEJ0Z5qsPBdy5XBWaNI", "YqHCOvd4KSZAhVJGzYGAlRF6PfNfNDl", "8HrS9oH6Bl73q9G4lty2QskZuMTT9Ad3", "1vrRnJ4yUoJNeCsTOs", "OYApvTmLFEs5ZQUBeKfBNMkvy33UT6TX", "MdWN3vRrL4V6R5Sljp5k7gd7NnBuAkyJ", "tIqEUkhIdE6CbQpVMZy02iy0diDP43UJ"};
    public static final byte[] A0N;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public ZP A0A;
    public ZP A0B;
    public ZP A0C;
    public String A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public final C1768Mj A0H;
    public final C1769Mk A0I;
    public final String A0J;
    public final boolean A0K;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0L = new byte[]{36, 40, 106, 125, 124, 40, 105, 123, 123, 125, 101, 97, 102, 111, 40, 73, 73, 75, 40, 68, 75, 38, 76, 105, 121, 126, 95, 104, 108, 105, 104, 127, 113, 80, 65, 80, 86, 65, 80, 81, 21, 84, 64, 81, 92, 90, 21, 90, 87, 95, 80, 86, 65, 21, 65, 76, 69, 80, 15, 21, 76, 93, 93, 65, 68, 78, 76, 89, 68, 66, 67, 2, 68, 73, 30, 56, 44, 61, 48, 54, 118, 52, 41, 109, 56, 116, 53, 56, 45, 52};
        if (A0M[0].charAt(23) != 'R') {
            throw new RuntimeException();
        }
        A0M[3] = "sAkikvs1jZ7mk1hfs4I9QLiXXK3MQFMn";
    }

    static {
        A09();
        A0N = new byte[]{73, 68, 51};
    }

    public OG(boolean z) {
        this(z, null);
    }

    public OG(boolean z, String str) {
        this.A0H = new C1768Mj(new byte[7]);
        this.A0I = new C1769Mk(Arrays.copyOf(A0N, 10));
        A06();
        this.A03 = -1;
        this.A02 = -1;
        this.A08 = -9223372036854775807L;
        this.A09 = -9223372036854775807L;
        this.A0K = z;
        this.A0J = str;
    }

    @EnsuresNonNull
    private void A01() {
        AbstractC1747Ln.A01(this.A0C);
    }

    @RequiresNonNull
    private void A02() throws L9 {
        this.A0H.A08(0);
        if (!this.A0G) {
            int iA04 = this.A0H.A04(2) + 1;
            if (iA04 != 2) {
                MV.A07(A00(22, 10, 51), A00(32, 28, 11) + iA04 + A00(0, 22, 54));
                iA04 = 2;
            }
            this.A0H.A09(5);
            int iA042 = this.A0H.A04(3);
            int audioObjectType = this.A02;
            byte[] bArrA07 = YZ.A07(iA04, audioObjectType, iA042);
            YY aacConfig = YZ.A03(bArrA07);
            C1714Ke c1714KeA0w = new C1714Ke().A0y(this.A0D).A11(A00(75, 15, 103)).A0w(aacConfig.A02);
            int audioObjectType2 = aacConfig.A00;
            C1714Ke c1714KeA0b = c1714KeA0w.A0b(audioObjectType2);
            int audioObjectType3 = aacConfig.A01;
            VC vcA14 = c1714KeA0b.A0m(audioObjectType3).A12(Collections.singletonList(bArrA07)).A10(this.A0J).A14();
            int audioObjectType4 = vcA14.A0G;
            this.A08 = 1024000000 / ((long) audioObjectType4);
            this.A0C.A7E(vcA14);
            this.A0G = true;
        } else {
            C1768Mj c1768Mj = this.A0H;
            String[] strArr = A0M;
            String str = strArr[5];
            String str2 = strArr[7];
            int iCharAt = str.charAt(29);
            int sampleSize = str2.charAt(29);
            if (iCharAt == sampleSize) {
                throw new RuntimeException();
            }
            A0M[6] = "RDW6QgyzfrheMO4rLZgltkW7TYCvHjcm";
            c1768Mj.A09(10);
        }
        this.A0H.A09(4);
        int iA043 = (this.A0H.A04(13) - 2) - 5;
        if (A0M[1].charAt(9) == 'V') {
            throw new RuntimeException();
        }
        String[] strArr2 = A0M;
        strArr2[2] = "Cp9dS5j7gr5WjG7WGJY3hKVlRVfN3sn";
        strArr2[4] = "YMSmvOKMelhUdRuYh2";
        if (this.A0F) {
            iA043 -= 2;
        }
        A0D(this.A0C, this.A08, 0, iA043);
    }

    @RequiresNonNull
    private void A03() {
        this.A0B.AK9(this.A0I, 10);
        this.A0I.A0f(6);
        A0D(this.A0B, 0L, 10, this.A0I.A0H() + 10);
    }

    private void A04() {
        this.A0E = false;
        A06();
    }

    private void A05() {
        this.A06 = 1;
        this.A00 = 0;
    }

    private void A06() {
        this.A06 = 0;
        this.A00 = 0;
        this.A04 = 256;
    }

    private void A07() {
        this.A06 = 3;
        this.A00 = 0;
    }

    private void A08() {
        this.A06 = 2;
        this.A00 = A0N.length;
        this.A05 = 0;
        this.A0I.A0f(0);
    }

    private void A0A(C1769Mk c1769Mk) {
        if (c1769Mk.A07() == 0) {
            return;
        }
        this.A0H.A00[0] = c1769Mk.A0l()[c1769Mk.A09()];
        this.A0H.A08(2);
        int iA04 = this.A0H.A04(4);
        if (this.A02 != -1) {
            int currentFrameSampleRateIndex = this.A02;
            if (iA04 != currentFrameSampleRateIndex) {
                A04();
                return;
            }
        }
        if (!this.A0E) {
            this.A0E = true;
            int currentFrameSampleRateIndex2 = this.A01;
            this.A03 = currentFrameSampleRateIndex2;
            this.A02 = iA04;
        }
        A07();
    }

    private void A0B(C1769Mk c1769Mk) {
        byte[] bArrA0l = c1769Mk.A0l();
        int iA09 = c1769Mk.A09();
        int iA0A = c1769Mk.A0A();
        while (iA09 < iA0A) {
            int endOffset = iA09 + 1;
            int i = bArrA0l[iA09] & 255;
            if (this.A04 == 512 && A0E((byte) -1, (byte) i) && (this.A0E || A0G(c1769Mk, endOffset - 2))) {
                this.A01 = (i & 8) >> 3;
                this.A0F = (i & 1) == 0;
                if (!this.A0E) {
                    A05();
                } else {
                    A07();
                }
                c1769Mk.A0f(endOffset);
                return;
            }
            switch (this.A04 | i) {
                case 329:
                    this.A04 = 768;
                    iA09 = endOffset;
                    break;
                case 511:
                    this.A04 = EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
                    iA09 = endOffset;
                    break;
                case 836:
                    this.A04 = 1024;
                    iA09 = endOffset;
                    break;
                case 1075:
                    A08();
                    c1769Mk.A0f(endOffset);
                    break;
                default:
                    int data = this.A04;
                    if (data != 256) {
                        this.A04 = 256;
                        iA09 = endOffset - 1;
                    } else {
                        iA09 = endOffset;
                    }
                    break;
            }
            return;
        }
        c1769Mk.A0f(iA09);
    }

    @RequiresNonNull
    private void A0C(C1769Mk c1769Mk) {
        int iMin = Math.min(c1769Mk.A07(), this.A05 - this.A00);
        this.A0A.AK9(c1769Mk, iMin);
        int bytesToRead = this.A00;
        this.A00 = bytesToRead + iMin;
        int i = this.A00;
        int bytesToRead2 = this.A05;
        if (i == bytesToRead2) {
            if (this.A09 != -9223372036854775807L) {
                this.A0A.AKC(this.A09, 1, this.A05, 0, null);
                this.A09 += this.A07;
            }
            A06();
        }
    }

    private void A0D(ZP zp, long j, int i, int i2) {
        this.A06 = 4;
        this.A00 = i;
        this.A0A = zp;
        this.A07 = j;
        this.A05 = i2;
    }

    private boolean A0E(byte b, byte b2) {
        return A0F(((b & 255) << 8) | (b2 & 255));
    }

    public static boolean A0F(int i) {
        return (65526 & i) == 65520;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0G(com.facebook.ads.redexgen.X.C1769Mk r10, int r11) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.OG.A0G(com.facebook.ads.redexgen.X.Mk, int):boolean");
    }

    private boolean A0H(C1769Mk c1769Mk, byte[] bArr, int i) {
        int iMin = Math.min(c1769Mk.A07(), i - this.A00);
        int bytesToRead = this.A00;
        c1769Mk.A0k(bArr, bytesToRead, iMin);
        int bytesToRead2 = this.A00;
        this.A00 = bytesToRead2 + iMin;
        int bytesToRead3 = this.A00;
        return bytesToRead3 == i;
    }

    private boolean A0I(C1769Mk c1769Mk, byte[] bArr, int i) {
        if (c1769Mk.A07() < i) {
            return false;
        }
        c1769Mk.A0k(bArr, 0, i);
        return true;
    }

    public final long A0J() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A5j(C1769Mk c1769Mk) throws L9 {
        A01();
        while (c1769Mk.A07() > 0) {
            switch (this.A06) {
                case 0:
                    A0B(c1769Mk);
                    break;
                case 1:
                    A0A(c1769Mk);
                    break;
                case 2:
                    if (A0H(c1769Mk, this.A0I.A0l(), 10)) {
                        A03();
                    }
                    break;
                case 3:
                    if (A0H(c1769Mk, this.A0H.A00, this.A0F ? 7 : 5)) {
                        A02();
                    }
                    break;
                case 4:
                    A0C(c1769Mk);
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A6B(InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
        c2286d2.A05();
        this.A0D = c2286d2.A04();
        this.A0C = interfaceC2069Yw.ALm(c2286d2.A03(), 1);
        this.A0A = this.A0C;
        if (this.A0K) {
            c2286d2.A05();
            this.A0B = interfaceC2069Yw.ALm(c2286d2.A03(), 5);
            this.A0B.A7E(new C1714Ke().A0y(c2286d2.A04()).A11(A00(60, 15, 19)).A14());
            return;
        }
        this.A0B = new QA();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A09 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AKN() {
        this.A09 = -9223372036854775807L;
        A04();
    }
}
