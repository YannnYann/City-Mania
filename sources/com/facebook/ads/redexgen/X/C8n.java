package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8n, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8n extends AbstractC1898Rv implements V4 {
    public static String[] A0D = {"aCCKp74F07xhks0wjUvUAOmke7ahumy3", "9yAdGChhzOrYvLlK7jxyWzYr2hB00EYR", "AU2N5WlA62GLL7yzjoonUPMRJtI3OVuj", "X4V0lMVEaRTDuPih5Dhtu8vWV1OA2igf", "peOHYqBZE6", "uU4ndoabaB4ymOQNkB8SKkaAeZXx9A8F", "bUyNtGoxVfGpgtNWB6WaPvyYmlQ53Sfo", "OkgGnovhzwhyAaFDcd6UqCls"};
    public long A00;
    public InterfaceC1793Ni A01;
    public InterfaceC2002Wb<XN> A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final int A06;
    public final C1727Kr A07;
    public final C1958Ug A08;
    public final NN A09;
    public final InterfaceC1897Ru A0A;
    public final InterfaceC1976Uy A0B;
    public final X1 A0C;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wb != com.google.common.base.Supplier<com.facebook.ads.androidx.media3.exoplayer.util.ReleasableExecutor> */
    @MetaExoPlayerCustomization
    public C8n(C1958Ug c1958Ug, NN nn, InterfaceC1976Uy interfaceC1976Uy, InterfaceC1897Ru interfaceC1897Ru, X1 x1, int i, InterfaceC2002Wb<XN> interfaceC2002Wb) {
        this.A07 = (C1727Kr) AbstractC1747Ln.A01(c1958Ug.A03);
        this.A08 = c1958Ug;
        this.A09 = nn;
        this.A0B = interfaceC1976Uy;
        this.A0A = interfaceC1897Ru == null ? InterfaceC1897Ru.A00 : interfaceC1897Ru;
        this.A0C = x1;
        this.A06 = i;
        this.A04 = true;
        this.A00 = -9223372036854775807L;
        this.A02 = interfaceC2002Wb;
    }

    private void A00() {
        final Timeline c8m = new C8m(this.A00, this.A05, false, this.A03, null, this.A08);
        if (this.A04) {
            Timeline timeline = new C8r(c8m) { // from class: com.facebook.ads.redexgen.X.4F
                @Override // com.facebook.ads.redexgen.X.C8r, com.facebook.ads.androidx.media3.common.Timeline
                public final UM A0I(int i, UM um, boolean z) {
                    super.A0I(i, um, z);
                    um.A05 = true;
                    return um;
                }

                @Override // com.facebook.ads.redexgen.X.C8r, com.facebook.ads.androidx.media3.common.Timeline
                public final UK A0L(int i, UK uk, long j) {
                    super.A0L(i, uk, j);
                    uk.A0F = true;
                    return uk;
                }
            };
            c8m = timeline;
        }
        A05(c8m);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1898Rv
    public final void A09() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1898Rv
    public final void A0A(InterfaceC1793Ni interfaceC1793Ni) {
        this.A01 = interfaceC1793Ni;
        this.A0A.AIH();
        this.A0A.AKw((Looper) AbstractC1747Ln.A01(Looper.myLooper()), A00());
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1961Uj
    @MetaExoPlayerCustomization
    public final InterfaceC1888Rl A65(C1887Rk c1887Rk, InterfaceC2012Wm interfaceC2012Wm, long j) {
        TE teA5r = this.A09.A5r();
        if (this.A01 != null) {
            teA5r.A4T(this.A01);
        }
        Uri uri = this.A07.A00;
        InterfaceC1977Uz interfaceC1977UzA66 = this.A0B.A66(QD.A03);
        InterfaceC1897Ru interfaceC1897Ru = this.A0A;
        C1892Rp c1892RpA01 = A01(c1887Rk);
        X1 x1 = this.A0C;
        C1972Uu c1972UuA02 = A02(c1887Rk);
        String str = this.A07.A04;
        int i = this.A06;
        XN xn = this.A02 != null ? this.A02.get() : null;
        if (A0D[3].charAt(15) != 'h') {
            throw new RuntimeException();
        }
        String[] strArr = A0D;
        strArr[7] = "mg70WGikq5hXOPBSzr51jpiB";
        strArr[4] = "U6N8G9lzc0";
        return new C8p(uri, teA5r, interfaceC1977UzA66, interfaceC1897Ru, c1892RpA01, x1, c1972UuA02, this, interfaceC2012Wm, str, i, xn);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1961Uj
    public final void ADK() {
    }

    @Override // com.facebook.ads.redexgen.X.V4
    public final void AH7(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.A00;
        }
        if (!this.A04 && this.A00 == j && this.A05 == z && this.A03 == z2) {
            return;
        }
        this.A00 = j;
        this.A05 = z;
        this.A03 = z2;
        this.A04 = false;
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1961Uj
    public final void AIy(InterfaceC1888Rl interfaceC1888Rl) {
        ((C8p) interfaceC1888Rl).A0a();
    }
}
