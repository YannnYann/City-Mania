package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Kh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1717Kh implements InterfaceC2763kr {
    public static String[] A05 = {"udExhBBZigXHD765", "VCbgsgLtwNII3DWSf3Df", "sJ3cSki5Ts1gkpIy0", "hudoenMQ7OfQJqKUwYviTAHkC5956B", "3GiDDKpH2PPu7", "VAV0OzmNbR17K1ZAu", "eIBPlY8UdwZIA15YBWaPzTw3Re1i6Niv", "w6ShnqqW6c5InpRu2fdQvGfdyx0XiT7r"};
    public final /* synthetic */ LA A00;
    public final /* synthetic */ InterfaceC2452fk A01;
    public final /* synthetic */ C2453fl A02;
    public final /* synthetic */ C1643Hi A03;
    public final /* synthetic */ boolean A04;

    public C1717Kh(C2453fl c2453fl, C1643Hi c1643Hi, boolean z, LA la, InterfaceC2452fk interfaceC2452fk) {
        this.A02 = c2453fl;
        this.A03 = c1643Hi;
        this.A04 = z;
        this.A00 = la;
        this.A01 = interfaceC2452fk;
    }

    private void A00(boolean z) {
        if (z) {
            C1643Hi c1643Hi = this.A03;
            String[] strArr = A05;
            if (strArr[7].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[5] = "ua1Hqbcww3qJrVJ6O";
            strArr2[2] = "2U70GzBDbPON7gkn8";
            if (C2888mv.A1q(c1643Hi) && this.A04) {
                this.A02.A02.add(M1.A01(this.A03, this.A00, 1, new C1721Kl(this)));
                return;
            } else {
                this.A01.ADl();
                return;
            }
        }
        this.A01.ADk(AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2763kr
    public final void AEJ() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2763kr
    public final void AEU() {
        A00(true);
    }
}
