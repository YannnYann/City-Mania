package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class M8 {
    public static byte[] A04;
    public final float A00;
    public final int A01;
    public final int A02;
    public final long A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{64, 77, 65, 79, 64, 92, 8, 69, 93, 91, 92, 8, 74, 77, 8, 88, 71, 91, 65, 92, 65, 94, 77, 4, 8, 74, 93, 92, 8, 65, 91, 18, 8, 107, 117, 120, 104, 116, 60, 113, 105, 111, 104, 60, 126, 121, 60, 108, 115, 111, 117, 104, 117, 106, 121, 48, 60, 126, 105, 104, 60, 117, 111, 38, 60};
    }

    @MetaExoPlayerCustomization
    public M8(int i, int i2, float f, long j) {
        AbstractC1747Ln.A09(i > 0, A00(33, 32, 31) + i);
        AbstractC1747Ln.A09(i2 > 0, A00(0, 33, 43) + i2);
        this.A02 = i;
        this.A01 = i2;
        this.A00 = f;
        this.A03 = j;
    }
}
