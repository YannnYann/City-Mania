package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.On, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1824On extends AbstractC2183bN {
    public static byte[] A01;
    public static final byte[] A02;
    public static final byte[] A03;
    public boolean A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-46, -26, -43, -38, -32, -96, -32, -31, -26, -28};
    }

    static {
        A01();
        A03 = new byte[]{79, 112, 117, 115, 72, 101, 97, 100};
        A02 = new byte[]{79, 112, 117, 115, 84, 97, 103, 115};
    }

    public static boolean A02(C1769Mk c1769Mk) {
        return A03(c1769Mk, A03);
    }

    public static boolean A03(C1769Mk c1769Mk, byte[] bArr) {
        if (c1769Mk.A07() < bArr.length) {
            return false;
        }
        int iA09 = c1769Mk.A09();
        int startPosition = bArr.length;
        byte[] header = new byte[startPosition];
        int startPosition2 = bArr.length;
        c1769Mk.A0k(header, 0, startPosition2);
        c1769Mk.A0f(iA09);
        return Arrays.equals(header, bArr);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183bN
    public final long A0E(C1769Mk c1769Mk) {
        return A0D(ZF.A05(c1769Mk.A0l()));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183bN
    public final void A0I(boolean z) {
        super.A0I(z);
        if (z) {
            this.A00 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183bN
    @EnsuresNonNullIf
    @MetaExoPlayerCustomization
    public final boolean A0J(C1769Mk c1769Mk, long j, C2182bM c2182bM) throws L9 {
        if (A03(c1769Mk, A03)) {
            byte[] headerBytes = Arrays.copyOf(c1769Mk.A0l(), c1769Mk.A0A());
            int iA01 = ZF.A01(headerBytes);
            List<byte[]> listA06 = ZF.A06(headerBytes);
            if (c2182bM.A00 != null) {
                return true;
            }
            c2182bM.A00 = new C1714Ke().A11(A00(0, 10, 112)).A0b(iA01).A0m(48000).A12(listA06).A14();
            return true;
        }
        if (A03(c1769Mk, A02)) {
            AbstractC1747Ln.A02(c2182bM.A00);
            if (this.A00) {
                return true;
            }
            this.A00 = true;
            c1769Mk.A0g(A02.length);
            ZT commentHeader = ZW.A05(c1769Mk, false, false);
            Metadata vorbisMetadata = ZW.A02(XR.A02(commentHeader.A02));
            if (vorbisMetadata == null) {
                return true;
            }
            c2182bM.A00 = c2182bM.A00.A07().A0v(vorbisMetadata.A04(c2182bM.A00.A0P)).A14();
            return true;
        }
        AbstractC1747Ln.A02(c2182bM.A00);
        return false;
    }
}
