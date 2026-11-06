package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NW implements InterfaceC2291d7 {
    public static byte[] A08;
    public static String[] A09 = {"JmEbsc8PDIuthiYKkH927G3BUWnJaP", "AoS2xoUqPeDJxRZl9pEgdbhuIqWYsB2Q", "F9cqkCdM8SYm49ifZFpeQEBtOJaYGkWc", "jdTLEoVAH6GIXf3Hn6jlrOvChCkZAAXh", "S7HRxukEAS0DUjdBUU2afpPMC5bFJhxA", "AJVmxyUuXqXRBdqQBLZJH1X0zO", "lnjpNFr4aNvAKLxzoZlBd7PZNaYuCQBL", "JB3FHxgyiSdGs9kxjZQrWdixlPQaTJlo"};
    public int A00;
    public long A01;
    public long A02;
    public final int A03;
    public final VC A04;
    public final InterfaceC2069Yw A05;
    public final ZP A06;
    public final C2293d9 A07;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A09[5].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A09;
            strArr[1] = "ajAP1O2s8IsFdfezAfqxXs3o2iZOeNt6";
            strArr[6] = "lIP31p4SA4mTRvHnkwRI3tuxM4jTsagG";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
            i4++;
        }
    }

    public static void A01() {
        A08 = new byte[]{21, 14, 73, 65, 90, 20, 14, 103, 90, 82, 71, 65, 86, 71, 70, 2, 64, 78, 77, 65, 73, 2, 81, 75, 88, 71, 24, 2};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2291d7
    public final boolean AKB(Q9 q9, long j) throws IOException {
        long j2 = j;
        while (j2 > 0 && this.A00 < this.A03) {
            int iAK7 = this.A06.AK7(q9, (int) Math.min(this.A03 - this.A00, j2), true);
            if (iAK7 == -1) {
                j2 = 0;
            } else {
                this.A00 += iAK7;
                j2 -= (long) iAK7;
            }
        }
        int i = this.A07.A02;
        int i2 = this.A00 / i;
        if (i2 > 0) {
            long jA0U = this.A02 + N1.A0U(this.A01, 1000000L, this.A07.A04);
            int i3 = i2 * i;
            int i4 = this.A00 - i3;
            this.A06.AKC(jA0U, 1, i3, i4, null);
            this.A01 += (long) i2;
            this.A00 = i4;
        }
        String[] strArr = A09;
        if (strArr[3].charAt(25) == strArr[2].charAt(25)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[1] = "tf7tnqUHUUocL5c3MJMWRmKs6w1tO8Vx";
        strArr2[6] = "teeYafaDrcuEaZLMHqDTHop6vGWCR1YA";
        return j2 <= 0;
    }

    static {
        A01();
    }

    public NW(InterfaceC2069Yw interfaceC2069Yw, ZP zp, C2293d9 c2293d9, String str, int i) throws L9 {
        this.A05 = interfaceC2069Yw;
        this.A06 = zp;
        this.A07 = c2293d9;
        int i2 = (c2293d9.A05 * c2293d9.A01) / 8;
        int bytesPerFrame = c2293d9.A02;
        if (bytesPerFrame == i2) {
            int bytesPerFrame2 = c2293d9.A04;
            int constantBitrate = bytesPerFrame2 * i2 * 8;
            int bytesPerFrame3 = c2293d9.A04;
            this.A03 = Math.max(i2, (bytesPerFrame3 * i2) / 10);
            C1714Ke c1714KeA0j = new C1714Ke().A11(str).A0a(constantBitrate).A0j(constantBitrate);
            int bytesPerFrame4 = this.A03;
            C1714Ke c1714KeA0h = c1714KeA0j.A0h(bytesPerFrame4);
            int bytesPerFrame5 = c2293d9.A05;
            C1714Ke c1714KeA0b = c1714KeA0h.A0b(bytesPerFrame5);
            int bytesPerFrame6 = c2293d9.A04;
            this.A04 = c1714KeA0b.A0m(bytesPerFrame6).A0i(i).A14();
            return;
        }
        StringBuilder sbAppend = new StringBuilder().append(A00(7, 21, 86)).append(i2).append(A00(0, 7, 90));
        int bytesPerFrame7 = c2293d9.A02;
        throw L9.A01(sbAppend.append(bytesPerFrame7).toString(), null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2291d7
    public final void AAm(int i, long j) {
        this.A05.AKP(new NR(this.A07, 1, i, j));
        this.A06.A7E(this.A04);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2291d7
    public final void AK2(long j) {
        this.A02 = j;
        this.A00 = 0;
        this.A01 = 0L;
    }
}
