package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2280cw {
    public static byte[] A09;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final int A06;
    public final C1777Ms A08 = new C1777Ms(0);
    public long A01 = -9223372036854775807L;
    public long A02 = -9223372036854775807L;
    public long A00 = -9223372036854775807L;
    public final C1769Mk A07 = new C1769Mk();

    static {
        A06();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A09 = new byte[]{-104, -118, -65, -35, -45, -40, -47, -118, -66, -77, -73, -81, -55, -65, -72, -67, -81, -66, -118, -45, -40, -35, -34, -49, -53, -50, -104, 37, 74, 82, 61, 72, 69, 64, -4, 64, 81, 78, 61, 80, 69, 75, 74, 22, -4, 35, 66, 19, 68, 65, 48, 67, 56, 62, 61, 33, 52, 48, 51, 52, 65};
    }

    public C2280cw(int i) {
        this.A06 = i;
    }

    private int A00(Q9 q9) {
        this.A07.A0i(N1.A07);
        this.A03 = true;
        q9.AK3();
        return 0;
    }

    private int A01(Q9 q9, ZH zh, int i) throws IOException {
        int iMin = (int) Math.min(this.A06, q9.A90());
        if (q9.A9Q() != 0) {
            zh.A00 = 0;
            return 1;
        }
        this.A07.A0d(iMin);
        q9.AK3();
        q9.AI6(this.A07.A0l(), 0, iMin);
        this.A01 = A03(this.A07, i);
        this.A04 = true;
        return 0;
    }

    private int A02(Q9 q9, ZH zh, int i) throws IOException {
        long inputLength = q9.A90();
        int iMin = (int) Math.min(this.A06, inputLength);
        long inputLength2 = inputLength - ((long) iMin);
        if (q9.A9Q() != inputLength2) {
            zh.A00 = inputLength2;
            return 1;
        }
        this.A07.A0d(iMin);
        q9.AK3();
        q9.AI6(this.A07.A0l(), 0, iMin);
        this.A02 = A04(this.A07, i);
        this.A05 = true;
        return 0;
    }

    private long A03(C1769Mk c1769Mk, int i) {
        int iA0A = c1769Mk.A0A();
        for (int iA09 = c1769Mk.A09(); iA09 < iA0A; iA09++) {
            int searchEndPosition = c1769Mk.A0l()[iA09];
            if (searchEndPosition == 71) {
                long jA01 = AbstractC2288d4.A01(c1769Mk, iA09, i);
                if (jA01 != -9223372036854775807L) {
                    return jA01;
                }
            }
        }
        return -9223372036854775807L;
    }

    private long A04(C1769Mk c1769Mk, int i) {
        int iA09 = c1769Mk.A09();
        int iA0A = c1769Mk.A0A();
        for (int i2 = iA0A - 188; i2 >= iA09; i2--) {
            if (AbstractC2288d4.A03(c1769Mk.A0l(), iA09, iA0A, i2)) {
                long jA01 = AbstractC2288d4.A01(c1769Mk, i2, i);
                if (jA01 != -9223372036854775807L) {
                    return jA01;
                }
            }
        }
        return -9223372036854775807L;
    }

    public final int A07(Q9 q9, ZH zh, int i) throws IOException {
        if (i <= 0) {
            return A00(q9);
        }
        if (!this.A05) {
            return A02(q9, zh, i);
        }
        if (this.A02 == -9223372036854775807L) {
            return A00(q9);
        }
        if (!this.A04) {
            return A01(q9, zh, i);
        }
        if (this.A01 == -9223372036854775807L) {
            return A00(q9);
        }
        this.A00 = this.A08.A06(this.A02) - this.A08.A06(this.A01);
        if (this.A00 < 0) {
            MV.A07(A05(45, 16, 112), A05(27, 18, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) + this.A00 + A05(0, 27, 11));
            this.A00 = -9223372036854775807L;
        }
        return A00(q9);
    }

    public final long A08() {
        return this.A00;
    }

    public final C1777Ms A09() {
        return this.A08;
    }

    public final boolean A0A() {
        return this.A03;
    }
}
