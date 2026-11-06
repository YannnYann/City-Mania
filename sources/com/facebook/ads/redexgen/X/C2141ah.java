package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ah, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2141ah {
    public static byte[] A09;
    public int A00;
    public int A01;
    public long A02;
    public int A03;
    public int A04;
    public final int A05;
    public final C1769Mk A06;
    public final C1769Mk A07;
    public final boolean A08;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 112);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A09 = new byte[]{84, 87, 96, 97, 98, 77, 81, 86, 99, 92, 89, 14, 91, 99, 97, 98, 14, 80, 83, 14, 31};
    }

    public C2141ah(C1769Mk c1769Mk, C1769Mk c1769Mk2, boolean z) throws L9 {
        this.A07 = c1769Mk;
        this.A06 = c1769Mk2;
        this.A08 = z;
        c1769Mk2.A0f(12);
        this.A05 = c1769Mk2.A0L();
        c1769Mk.A0f(12);
        this.A04 = c1769Mk.A0L();
        AbstractC2070Yx.A01(c1769Mk.A0C() == 1, A00(0, 21, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE));
        this.A00 = -1;
    }

    public final boolean A02() {
        long jA0Q;
        int iA0L;
        int i = this.A00 + 1;
        this.A00 = i;
        if (i == this.A05) {
            return false;
        }
        if (this.A08) {
            jA0Q = this.A06.A0R();
        } else {
            jA0Q = this.A06.A0Q();
        }
        this.A02 = jA0Q;
        if (this.A00 == this.A03) {
            this.A01 = this.A07.A0L();
            this.A07.A0g(4);
            int i2 = this.A04 - 1;
            this.A04 = i2;
            if (i2 > 0) {
                iA0L = this.A07.A0L() - 1;
            } else {
                iA0L = -1;
            }
            this.A03 = iA0L;
        }
        return true;
    }
}
