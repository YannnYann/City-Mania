package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ho, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1649Ho extends AbstractRunnableC3004oq {
    public static byte[] A02;
    public final /* synthetic */ C1648Hn A00;
    public final /* synthetic */ AtomicBoolean A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{117, 87, 85, 94, 83, 22, 80, 87, 95, 90, 24, 77, 111, 109, 102, 107, 46, 125, 123, 109, 109, 107, 125, 125, 32};
    }

    public C1649Ho(C1648Hn c1648Hn, AtomicBoolean atomicBoolean) {
        this.A00 = c1648Hn;
        this.A01 = atomicBoolean;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (this.A00.A00 != null) {
            if (this.A01.get()) {
                this.A00.A02.A0I(EnumC2916nN.A0H);
                C2774l2.A02(this.A00.A02.A04, this.A00.A01, C2774l2.A00, A00(11, 14, 17), this.A00.A02.A00);
                this.A00.A02.A0U();
                this.A00.A00.AEU();
                return;
            }
            this.A00.A02.A0I(EnumC2916nN.A0G);
            C2774l2.A02(this.A00.A02.A04, this.A00.A01, C2774l2.A04, A00(0, 11, 41), this.A00.A02.A00);
            this.A00.A02.A0V();
            this.A00.A00.AEJ();
        }
    }
}
