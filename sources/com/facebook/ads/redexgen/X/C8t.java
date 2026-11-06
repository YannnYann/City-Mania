package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8t, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8t implements InterfaceC1888Rl, InterfaceC1889Rm {
    public static String[] A06 = {"j7ubs5bwgBez5KDYUpPY3y9IUQxc", "JOAIKi1HLeUTl2tk5bOhUejHSMD1BwGe", "YxHHt2R32vuln3OS2w6ZQ7XqQwwfs", "aupLwo0WeDrisWiY1FBdNsKSCvzUPpFe", "KV0q3mJ2COCv3zNe1TKQIxAqT8En", "VvmcfsKIDFg0hFd1fCD4fg9J7lYLhQDg", "7uek9E1vo9MWNmtvovjiW3PoQelKtD61", "xssxyHNHBfHwiy7JIZEyvUKZcMkbPmVh"};
    public long A00;
    public long A01;
    public long A02;
    public InterfaceC1889Rm A03;
    public C1891Ro[] A04 = new C1891Ro[0];
    public final InterfaceC1888Rl A05;

    public C8t(InterfaceC1888Rl interfaceC1888Rl, boolean z, long j, long j2) {
        this.A05 = interfaceC1888Rl;
        this.A02 = z ? j : -9223372036854775807L;
        this.A01 = j;
        this.A00 = j2;
    }

    private C1841Pj A00(long j, C1841Pj c1841Pj) {
        long toleranceBeforeUs = N1.A0T(c1841Pj.A01, 0L, j - this.A01);
        long jA0T = N1.A0T(c1841Pj.A00, 0L, this.A00 == Long.MIN_VALUE ? Long.MAX_VALUE : this.A00 - j);
        if (toleranceBeforeUs == c1841Pj.A01 && jA0T == c1841Pj.A00) {
            return c1841Pj;
        }
        return new C1841Pj(toleranceBeforeUs, jA0T);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.VI
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void AEW(InterfaceC1888Rl interfaceC1888Rl) {
        ((InterfaceC1889Rm) AbstractC1747Ln.A01(this.A03)).AEW(this);
    }

    public static boolean A02(long j, RA[] raArr) {
        if (j != 0) {
            for (RA ra : raArr) {
                if (A06[3].charAt(14) == 'B') {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[6] = "fGuJHx4aftfK4nNvykLU6KmljzgT82dn";
                strArr[5] = "kD9XBGQyLMsMzCVi6Yj91l7kD05F7qTo";
                if (ra != null) {
                    VC vcA9f = ra.A9f();
                    if (!L8.A0G(vcA9f.A0W, vcA9f.A0R)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean A03() {
        return this.A02 != -9223372036854775807L;
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void A5O(long j) {
        this.A05.A5O(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final boolean A5l(long j) {
        return this.A05.A5l(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final void A6Z(long j, boolean z) {
        this.A05.A6Z(j, z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long A7R(long j, C1841Pj c1841Pj) {
        if (j == this.A01) {
            return this.A01;
        }
        return this.A05.A7R(j, A00(j, c1841Pj));
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final long A7g(long j) {
        return this.A05.A7g(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long A7i() {
        long jA7i = this.A05.A7i();
        if (jA7i == Long.MIN_VALUE || (this.A00 != Long.MIN_VALUE && jA7i >= this.A00)) {
            return Long.MIN_VALUE;
        }
        return jA7i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long A9E() {
        long jA9E = this.A05.A9E();
        if (jA9E != Long.MIN_VALUE) {
            if (this.A00 != Long.MIN_VALUE) {
                long j = this.A00;
                if (A06[3].charAt(14) == 'B') {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[4] = "xQnkrCD7Wc1JZKFxJsjRaCrFf9eL";
                strArr[0] = "QqNj2pBz7mrHzdsygHykcydjOmZN";
                if (jA9E >= j) {
                }
            }
            return jA9E;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final RY A9z() {
        return this.A05.A9z();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final void ADJ() throws IOException {
        if (0 == 0) {
            this.A05.ADJ();
            return;
        }
        throw null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1889Rm
    public final void AGX(InterfaceC1888Rl interfaceC1888Rl) {
        if (0 != 0) {
            return;
        }
        ((InterfaceC1889Rm) AbstractC1747Ln.A01(this.A03)).AGX(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final void AII(InterfaceC1889Rm interfaceC1889Rm, long j) {
        this.A03 = interfaceC1889Rm;
        this.A05.AII(this, j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long AId() {
        if (A03()) {
            long childDiscontinuityUs = this.A02;
            this.A02 = -9223372036854775807L;
            long initialDiscontinuityUs = AId();
            return initialDiscontinuityUs != -9223372036854775807L ? initialDiscontinuityUs : childDiscontinuityUs;
        }
        long jAId = this.A05.AId();
        if (jAId == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z = true;
        AbstractC1747Ln.A08(jAId >= this.A01);
        long discontinuityUs = this.A00;
        if (discontinuityUs != Long.MIN_VALUE && jAId > this.A00) {
            z = false;
        }
        AbstractC1747Ln.A08(z);
        return jAId;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final void AIk(long j) {
        this.A05.AIk(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long AKQ(@com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization long r11, boolean r13) {
        /*
            r10 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r10.A02 = r0
            com.facebook.ads.redexgen.X.Ro[] r3 = r10.A04
            int r2 = r3.length
            r9 = 0
            r1 = 0
        Lc:
            if (r1 >= r2) goto L18
            r0 = r3[r1]
            if (r0 == 0) goto L15
            r0.A00()
        L15:
            int r1 = r1 + 1
            goto Lc
        L18:
            com.facebook.ads.redexgen.X.Rl r0 = r10.A05
            long r7 = r0.AKQ(r11, r13)
            int r0 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r0 == 0) goto L55
            long r1 = r10.A01
            int r0 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r0 < 0) goto L56
            long r3 = r10.A00
            r5 = -9223372036854775808
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C8t.A06
            r0 = 4
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L44
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L44:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C8t.A06
            java.lang.String r1 = "YjAFFIZthIBm8p803KJts"
            r0 = 2
            r2[r0] = r1
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 == 0) goto L55
            long r1 = r10.A00
            int r0 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r0 > 0) goto L56
        L55:
            r9 = 1
        L56:
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A08(r9)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8t.AKQ(long, boolean):long");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long AKR(RA[] raArr, boolean[] zArr, VF[] vfArr, boolean[] zArr2, long j) {
        long j2;
        boolean z;
        this.A04 = new C1891Ro[vfArr.length];
        VF[] vfArr2 = new VF[vfArr.length];
        int i = 0;
        while (true) {
            VF vf = null;
            if (i >= vfArr.length) {
                break;
            }
            this.A04[i] = (C1891Ro) vfArr[i];
            VF[] childStreams = this.A04;
            if (childStreams[i] != null) {
                vf = this.A04[i].A01;
            }
            vfArr2[i] = vf;
            i++;
        }
        long jAKR = this.A05.AKR(raArr, zArr, vfArr2, zArr2, j);
        if (A03() && j == this.A01 && A02(this.A01, raArr)) {
            j2 = jAKR;
        } else {
            j2 = -9223372036854775807L;
        }
        this.A02 = j2;
        if (jAKR != j) {
            long enablePositionUs = this.A01;
            if (jAKR >= enablePositionUs) {
                long enablePositionUs2 = this.A00;
                if (enablePositionUs2 != Long.MIN_VALUE) {
                    long enablePositionUs3 = this.A00;
                    if (jAKR <= enablePositionUs3) {
                    }
                }
                z = true;
            }
            z = false;
        } else {
            z = true;
        }
        AbstractC1747Ln.A08(z);
        for (int i2 = 0; i2 < vfArr.length; i2++) {
            if (vfArr2[i2] == null) {
                VF[] childStreams2 = this.A04;
                childStreams2[i2] = null;
            } else {
                VF[] childStreams3 = this.A04;
                if (childStreams3[i2] == null || this.A04[i2].A01 != vfArr2[i2]) {
                    this.A04[i2] = new C1891Ro(this, vfArr2[i2]);
                }
            }
            VF[] childStreams4 = this.A04;
            vfArr[i2] = childStreams4[i2];
        }
        return jAKR;
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void AKu(boolean z) {
        this.A05.AKu(z);
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void ALv(byte b) {
        this.A05.ALv(b);
    }
}
