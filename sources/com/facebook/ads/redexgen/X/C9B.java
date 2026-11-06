package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9B, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C9B implements TE {
    public static byte[] A00;
    public static final NN A01;
    public static final C9B A02;

    public static /* synthetic */ C9B A00() {
        return new C9B();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 108);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-33, -5, -16, -14, -12, -9, -2, -5, -13, -12, 1, -45, -16, 3, -16, -30, -2, 4, 1, -14, -12, -81, -14, -16, -3, -3, -2, 3, -81, -15, -12, -81, -2, -1, -12, -3, -12, -13};
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final /* synthetic */ Map A9W() {
        return NM.A00(this);
    }

    static {
        A02();
        A02 = new C9B();
        A01 = new NN() { // from class: com.facebook.ads.redexgen.X.T5
            @Override // com.facebook.ads.redexgen.X.NN
            public final TE A5r() {
                return C9B.A00();
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void A4T(InterfaceC1793Ni interfaceC1793Ni) {
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Uri AA2() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final long AHv(NX nx) throws IOException {
        throw new IOException(A01(0, 38, 35));
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void close() {
    }

    @Override // com.facebook.ads.redexgen.X.KR
    public final int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }
}
