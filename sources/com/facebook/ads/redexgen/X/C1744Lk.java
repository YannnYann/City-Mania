package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1744Lk implements InterfaceC2763kr {
    public static byte[] A04;
    public final /* synthetic */ InterfaceC2401ev A00;
    public final /* synthetic */ C14097q A01;
    public final /* synthetic */ C7D A02;
    public final /* synthetic */ C3166rV A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{57, 30, 22, 19, 26, 27, 95, 11, 16, 95, 27, 16, 8, 17, 19, 16, 30, 27, 95, 30, 95, 18, 26, 27, 22, 30, 81};
    }

    public C1744Lk(C14097q c14097q, C3166rV c3166rV, InterfaceC2401ev interfaceC2401ev, C7D c7d) {
        this.A01 = c14097q;
        this.A03 = c3166rV;
        this.A00 = interfaceC2401ev;
        this.A02 = c7d;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2763kr
    public final void AEJ() {
        AdErrorType adErrorType = AdErrorType.CACHE_FAILURE_ERROR;
        String strA00 = A00(0, 27, 110);
        this.A02.A0F().A3j(C3101qS.A01(this.A01.A00), adErrorType.getErrorCode(), strA00);
        this.A00.AFQ(this.A01, C2947nt.A01(adErrorType, strA00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2763kr
    public final void AEU() {
        this.A03.A0J();
        this.A00.AE9(this.A01, this.A03);
        this.A02.A0F().A4p(this.A01.A01 != null);
    }
}
