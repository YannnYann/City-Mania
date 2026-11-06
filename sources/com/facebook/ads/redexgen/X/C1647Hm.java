package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1647Hm implements InterfaceC2318dY {
    public static byte[] A01;
    public static String[] A02 = {"aROWSCJTZ7USEA9NykDAgKPqU9Hz2yMC", "Zqbs868sBagHNlYScp55lXssWh10RIQa", "mbYc5GC1jhCg", "AuzesFDqytnerPl8cSxQvwaSTNgSXgGN", "J34OJh55Zf7CVcps1JZJSO0d6JwePACZ", "sgVYwbqUus7", "7dh0o4NaZc6u8WRc1KGfxvMUmypAWeMQ", "ZE0swazaf"};
    public final /* synthetic */ C1642Hh A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            if (A02[3].charAt(2) == 'x') {
                throw new RuntimeException();
            }
            A02[0] = "5v5qZEzKm5dZGLy7lyhruzHwv9U4ulwR";
            bArrCopyOfRange[i4] = (byte) ((b ^ i3) ^ 108);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{5, 1, 13, 11, 9};
    }

    static {
        A01();
    }

    public C1647Hm(C1642Hh c1642Hh) {
        this.A00 = c1642Hh;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2318dY
    public final void ABp(Throwable th) {
        this.A00.A08().ABz(A00(0, 5, 0), AbstractC2811lf.A1e, new C2812lg(th));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2318dY
    public final void AC6(Throwable th) {
        this.A00.A08().ABz(A00(0, 5, 0), AbstractC2811lf.A1g, new C2812lg(th));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2318dY
    public final void AIh(String str, int i, String str2, Long l, Long l2, C2303dJ c2303dJ) {
        C2774l2.A05(this.A00, c2303dJ.A06, c2303dJ.A08, c2303dJ.A09, c2303dJ.A07, c2303dJ.A03, i, str2, l, l2, null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2318dY
    public final void AIi(String str, boolean z, C2303dJ c2303dJ) {
        C2774l2.A04(this.A00, new C2773l1(c2303dJ.A06, c2303dJ.A08, c2303dJ.A07, c2303dJ.A03, str), z);
    }
}
