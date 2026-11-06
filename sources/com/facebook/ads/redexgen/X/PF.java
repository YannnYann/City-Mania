package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class PF extends AbstractC2140ag {
    public static byte[] A03;
    public final long A00;
    public final List<PF> A01;
    public final List<PE> A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 80);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-67, 0, 12, 11, 17, -2, 6, 11, 2, 15, 16, -41, -67, -35, 41, 34, 30, 51, 34, 48, -9, -35};
    }

    public PF(int i, long j) {
        super(i);
        this.A00 = j;
        this.A02 = new ArrayList();
        this.A01 = new ArrayList();
    }

    public final PF A02(int i) {
        int size = this.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            PF pf = this.A01.get(i2);
            int childrenSize = ((AbstractC2140ag) pf).A00;
            if (childrenSize == i) {
                return pf;
            }
        }
        return null;
    }

    public final PE A03(int i) {
        int size = this.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            PE pe = this.A02.get(i2);
            int childrenSize = ((AbstractC2140ag) pe).A00;
            if (childrenSize == i) {
                return pe;
            }
        }
        return null;
    }

    public final void A04(PF pf) {
        this.A01.add(pf);
    }

    public final void A05(PE pe) {
        this.A02.add(pe);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2140ag
    public final String toString() {
        return AbstractC2140ag.A04(super.A00) + A00(13, 9, 109) + Arrays.toString(this.A02.toArray()) + A00(0, 13, 77) + Arrays.toString(this.A01.toArray());
    }
}
