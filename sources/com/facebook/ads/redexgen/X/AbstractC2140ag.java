package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ag, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public abstract class AbstractC2140ag {
    public static byte[] A01;

    @MetaExoPlayerCustomization
    public static final int A02;
    public final int A00;

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 105);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A01 = new byte[]{52, 33, 32, 108};
    }

    static {
        A06();
        A02 = N1.A0D(A05(0, 4, 37));
    }

    public AbstractC2140ag(int i) {
        this.A00 = i;
    }

    public static int A02(int i) {
        return 16777215 & i;
    }

    public static int A03(int i) {
        return (i >> 24) & 255;
    }

    public static String A04(int i) {
        return A05(0, 0, 17) + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    public String toString() {
        return A04(this.A00);
    }
}
