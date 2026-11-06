package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9J, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class C9J implements TE {
    public static String[] A04 = {"isuZk4LYvPtzcJmYXN55NQD4bjZcpqJn", "6Js", "4Hvb7CdVaEKj9bi8gEJZKIBZaVtBBdMl", "YCKTvsMXz3llo15twFpneIfIj1hgPSnw", "UeqJ4HHO1DLcEUC6RLoigQ09", "r2W4uoxvkTEWcf6mnFycXLGKFVJU", "wE1NNsV0QTEKxapJX1OFponH", "nRXIAIHDX3jmS6ZOUJ00SCHf0iMD"};
    public int A00;
    public NX A01;
    public final ArrayList<InterfaceC1793Ni> A02 = new ArrayList<>(1);
    public final boolean A03;

    @Override // com.facebook.ads.redexgen.X.TE
    public /* synthetic */ Map A9W() {
        return NM.A00(this);
    }

    public C9J(boolean z) {
        this.A03 = z;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A0D(com.facebook.ads.redexgen.X.NX r4, boolean r5) {
        /*
            r3 = this;
            r3.A01 = r4
            r2 = 0
        L3:
            int r0 = r3.A00
            if (r2 >= r0) goto L17
            java.util.ArrayList<com.facebook.ads.redexgen.X.Ni> r0 = r3.A02
            java.lang.Object r1 = r0.get(r2)
            com.facebook.ads.redexgen.X.Ni r1 = (com.facebook.ads.redexgen.X.InterfaceC1793Ni) r1
            boolean r0 = r3.A03
            r1.AHQ(r3, r4, r0, r5)
            int r2 = r2 + 1
            goto L3
        L17:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9J.A0D(com.facebook.ads.redexgen.X.NX, boolean):void");
    }

    public final void A0E() {
        NX nx = (NX) N1.A0f(this.A01);
        for (int i = 0; i < this.A00; i++) {
            this.A02.get(i).AHP(this, nx, this.A03);
        }
        this.A01 = null;
    }

    public final void A0F(int i) {
        NX nx = (NX) N1.A0f(this.A01);
        int i2 = 0;
        while (true) {
            int i3 = this.A00;
            String[] strArr = A04;
            String str = strArr[0];
            String str2 = strArr[2];
            int i4 = str.charAt(12);
            if (i4 == str2.charAt(12)) {
                throw new RuntimeException();
            }
            A04[1] = "0wB";
            if (i2 < i3) {
                this.A02.get(i2).AEI(this, nx, this.A03, i);
                i2++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0003 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0G(com.facebook.ads.redexgen.X.NX r3) {
        /*
            r2 = this;
            r1 = 0
        L1:
            int r0 = r2.A00
            if (r1 >= r0) goto Ld
            java.util.ArrayList<com.facebook.ads.redexgen.X.Ni> r0 = r2.A02
            r0.get(r1)
            int r1 = r1 + 1
            goto L1
        Ld:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9J.A0G(com.facebook.ads.redexgen.X.NX):void");
    }

    public final void A0H(NX nx) {
        A0D(nx, false);
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void A4T(InterfaceC1793Ni interfaceC1793Ni) {
        AbstractC1747Ln.A01(interfaceC1793Ni);
        if (!this.A02.contains(interfaceC1793Ni)) {
            this.A02.add(interfaceC1793Ni);
            this.A00++;
        }
    }
}
