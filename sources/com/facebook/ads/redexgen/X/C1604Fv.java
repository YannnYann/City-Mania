package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1604Fv implements InterfaceC3288tT {
    public static byte[] A01;
    public final /* synthetic */ C1602Ft A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 27);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-62, -64, -78, -65, -84, -81, -62, -77, -77, -78, -65, -78, -79, -84, -80, -71, -74, -80, -72, -84, -74, -82, -81, -84, -78, -59, -63, -78, -65, -69, -82, -71, -84, -69, -82, -61, -74, -76, -82, -63, -74, -68, -69};
    }

    public C1604Fv(C1602Ft c1602Ft) {
        this.A00 = c1602Ft;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3288tT
    public final void AEP() {
        this.A00.A0H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3288tT
    public final void AG4() {
        this.A00.A0K(A00(0, 43, 50));
    }
}
