package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2061Yo {
    public static byte[] A04;
    public C2056Yi A00;
    public final int A01;
    public final QL A02;
    public final InterfaceC2060Yn A03;

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A04 = new byte[]{51, 20, 12, 27, 22, 19, 30, 90, 25, 27, 9, 31};
    }

    public AbstractC2061Yo(InterfaceC2057Yj interfaceC2057Yj, InterfaceC2060Yn interfaceC2060Yn, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.A03 = interfaceC2060Yn;
        this.A01 = i;
        this.A02 = new QL(interfaceC2057Yj, j, j2, j3, j4, j5, j6);
    }

    private final int A02(Q9 q9, long j, ZH zh) {
        if (j == q9.A9Q()) {
            return 0;
        }
        zh.A00 = j;
        return 1;
    }

    private final C2056Yi A03(long j) {
        return new C2056Yi(j, this.A02.A05(j), this.A02.A05, this.A02.A02, this.A02.A04, this.A02.A01, this.A02.A00);
    }

    private final void A06(boolean z, long j) {
        this.A00 = null;
        this.A03.AGz();
    }

    private final boolean A07(Q9 q9, long j) throws IOException {
        long jA9Q = j - q9.A9Q();
        if (jA9Q >= 0 && jA9Q <= 262144) {
            q9.ALL((int) jA9Q);
            return true;
        }
        return false;
    }

    public final int A08(Q9 q9, ZH zh) throws IOException {
        while (true) {
            C2056Yi c2056Yi = (C2056Yi) AbstractC1747Ln.A02(this.A00);
            long jA01 = c2056Yi.A01();
            long jA00 = c2056Yi.A00();
            long jA02 = c2056Yi.A02();
            if (jA00 - jA01 <= this.A01) {
                A06(false, jA01);
                return A02(q9, jA01, zh);
            }
            if (!A07(q9, jA02)) {
                return A02(q9, jA02, zh);
            }
            q9.AK3();
            C2058Yl c2058YlAKE = this.A03.AKE(q9, c2056Yi.A04());
            switch (c2058YlAKE.A00) {
                case -3:
                    A06(false, jA02);
                    return A02(q9, jA02, zh);
                case -2:
                    c2056Yi.A0D(c2058YlAKE.A02, c2058YlAKE.A01);
                    break;
                case -1:
                    c2056Yi.A0C(c2058YlAKE.A02, c2058YlAKE.A01);
                    break;
                case 0:
                    A07(q9, c2058YlAKE.A01);
                    long floorPosition = c2058YlAKE.A01;
                    A06(true, floorPosition);
                    return A02(q9, c2058YlAKE.A01, zh);
                default:
                    throw new IllegalStateException(A04(0, 12, 4));
            }
        }
    }

    public final QL A09() {
        return this.A02;
    }

    public final void A0A(long j) {
        if (this.A00 != null && this.A00.A03() == j) {
            return;
        }
        this.A00 = A03(j);
    }

    public final boolean A0B() {
        return this.A00 != null;
    }
}
