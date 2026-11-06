package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OB implements InterfaceC2265ch {
    public static byte[] A0G;
    public static String[] A0H = {"YGG1hGUD7fkjRKuCpzKT5xoEHOcfG6wu", "TQXKnorHL0Wp0UUUX4bd7R4ZTnX6wyIS", "TV3l43IPvaenHgMQpr4x7SRb", "tKBW5Kai9NbQDMaCywCTlxP8j2GOO0Oi", "rfH16", "B20XQICxyCiRsSVQ2P5LIf408", "awDRzHrVV97XPhxtIX5rVM6LFD6uycRQ", "NgNfOWdkwBWAvoaxwVn"};
    public static final double[] A0I;
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public ZP A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final C1769Mk A0B;
    public final C2266ci A0C;
    public final C2274cq A0D;
    public final C2289d5 A0E;
    public final boolean[] A0F;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<VC, Long> A00(C2266ci c2266ci, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(c2266ci.A02, c2266ci.A00);
        int i = bArrCopyOf[4] & 255;
        int i2 = bArrCopyOf[5] & 255;
        int i3 = (i << 4) | (i2 >> 4);
        int i4 = ((i2 & 15) << 8) | (bArrCopyOf[6] & 255);
        float f = 1.0f;
        switch ((bArrCopyOf[7] & 240) >> 4) {
            case 2:
                f = (i4 * 4) / (i3 * 3);
                break;
            case 3:
                float f2 = i4 * 16;
                float f3 = i3 * 9;
                if (A0H[6].charAt(30) != 'R') {
                    throw new RuntimeException();
                }
                String[] strArr = A0H;
                strArr[2] = "Up4zawitIqBYsavBWR3ldgVN";
                strArr[5] = "iQb1UOZoqczfSY3g355bEPJrS";
                f = f2 / f3;
                break;
            case 4:
                f = (i4 * Sdk.SDKError.Reason.TPAT_ERROR_VALUE) / (i3 * 100);
                break;
        }
        VC vcA14 = new C1714Ke().A0y(str).A11(A01(0, 11, 108)).A0r(i3).A0f(i4).A0Y(f).A12(Collections.singletonList(bArrCopyOf)).A14();
        long j = 0;
        int i5 = (bArrCopyOf[7] & 15) - 1;
        if (i5 >= 0 && i5 < A0I.length) {
            double d = A0I[i5];
            int i6 = c2266ci.A01;
            int i7 = (bArrCopyOf[i6 + 9] & 96) >> 5;
            int i8 = bArrCopyOf[i6 + 9] & 31;
            if (i7 != i8) {
                d *= (((double) i7) + 1.0d) / ((double) (i8 + 1));
            }
            j = (long) (1000000.0d / d);
        }
        return Pair.create(vcA14, Long.valueOf(j));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
            String[] strArr = A0H;
            if (strArr[2].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0H;
            strArr2[2] = "xTMpCgeabkGc6FSJv0GmRwxa";
            strArr2[5] = "wqPkn2tehNo6DcL26O9gaQyFc";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0G = new byte[]{32, 63, 50, 51, 57, 121, 59, 38, 51, 49, 100};
    }

    static {
        A02();
        A0I = new double[]{23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    }

    public OB() {
        this(null);
    }

    public OB(C2289d5 c2289d5) {
        this.A0E = c2289d5;
        this.A0F = new boolean[4];
        this.A0C = new C2266ci(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        if (c2289d5 != null) {
            this.A0D = new C2274cq(178, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            this.A0B = new C1769Mk();
        } else {
            this.A0D = null;
            this.A0B = null;
        }
        this.A01 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017f  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A5j(com.facebook.ads.redexgen.X.C1769Mk r21) {
        /*
            Method dump skipped, instruction units count: 438
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.OB.A5j(com.facebook.ads.redexgen.X.Mk):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A6B(InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
        c2286d2.A05();
        this.A06 = c2286d2.A04();
        this.A05 = interfaceC2069Yw.ALm(c2286d2.A03(), 2);
        if (this.A0E != null) {
            this.A0E.A03(interfaceC2069Yw, c2286d2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI3(long j, int i) {
        this.A01 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AKN() {
        ZE.A0H(this.A0F);
        this.A0C.A00();
        if (this.A0D != null) {
            this.A0D.A00();
        }
        this.A04 = 0L;
        this.A0A = false;
        this.A01 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }
}
