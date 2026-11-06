package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public class C1905Sc implements InterfaceC1834Ox {
    public static String[] A05 = {"Azs17CFr08No3JiudECzTD969WN37o7", "gdwVSO", "BQbkTVLnALmTK4t3iDSCe", "QuSzUIEdxNu6DWfru6OCfMbe1VI61w", "bkbC2gVlY1Yk1m7JUTGD", "IkE81", "GWIaH4TtsLO6epnDEeFC9wRIEzAgGgGA", "PjMvm1PmNrw6x"};
    public long A00;
    public long A01;
    public UW A02 = UW.A05;
    public boolean A03;
    public final InterfaceC1754Lu A04;

    public C1905Sc(InterfaceC1754Lu interfaceC1754Lu) {
        this.A04 = interfaceC1754Lu;
    }

    public void A00() {
        if (!this.A03) {
            this.A00 = this.A04.A6s();
            this.A03 = true;
        }
    }

    public void A01() {
        if (this.A03) {
            A02(A9S());
            this.A03 = false;
        }
    }

    public void A02(long j) {
        this.A01 = j;
        if (this.A03) {
            long jA6s = this.A04.A6s();
            if (A05[6].charAt(16) != 'E') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[2] = "LKBp3WmaJ7eIQYhbukbaZ";
            strArr[4] = "jnJGPiBBu5SxkPoUo9gt";
            this.A00 = jA6s;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1834Ox
    public UW A9P() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1834Ox
    public long A9S() {
        long j = this.A01;
        if (this.A03) {
            long jA6s = this.A04.A6s();
            long positionUs = this.A00;
            long j2 = jA6s - positionUs;
            float f = this.A02.A01;
            String[] strArr = A05;
            if (strArr[1].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            A05[6] = "hLp01FOAv5eA49unEvsyMhNhGGc3ow5h";
            if (f == 1.0f) {
                long positionUs2 = N1.A0O(j2);
                return j + positionUs2;
            }
            long positionUs3 = this.A02.A03(j2);
            return j + positionUs3;
        }
        return j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1834Ox
    public void AKv(UW uw) {
        if (this.A03) {
            A02(A9S());
        }
        this.A02 = uw;
    }
}
