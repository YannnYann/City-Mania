package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8j, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class C8j implements RA {
    public int A00;

    @MetaExoPlayerCustomization
    public boolean A01;
    public final int A02;
    public final long[] A03;
    public final VC[] A04;
    public final int A05;
    public final U8 A06;
    public final int[] A07;

    /* JADX WARN: Incorrect condition in loop: B:12:0x0044 */
    /* JADX WARN: Incorrect condition in loop: B:7:0x0020 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C8j(com.facebook.ads.redexgen.X.U8 r5, int[] r6, int r7) {
        /*
            r4 = this;
            r4.<init>()
            int r0 = r6.length
            r3 = 0
            if (r0 <= 0) goto L2f
            r0 = 1
        L8:
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A08(r0)
            r4.A02 = r7
            java.lang.Object r0 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r5)
            com.facebook.ads.redexgen.X.U8 r0 = (com.facebook.ads.redexgen.X.U8) r0
            r4.A06 = r0
            int r0 = r6.length
            r4.A05 = r0
            int r0 = r4.A05
            com.facebook.ads.redexgen.X.VC[] r0 = new com.facebook.ads.redexgen.X.VC[r0]
            r4.A04 = r0
            r2 = 0
        L1f:
            int r0 = r6.length
            if (r2 >= r0) goto L31
            com.facebook.ads.redexgen.X.VC[] r1 = r4.A04
            r0 = r6[r2]
            com.facebook.ads.redexgen.X.VC r0 = r5.A08(r0)
            r1[r2] = r0
            int r2 = r2 + 1
            goto L1f
        L2f:
            r0 = 0
            goto L8
        L31:
            com.facebook.ads.redexgen.X.VC[] r1 = r4.A04
            com.facebook.ads.redexgen.X.WH r0 = new com.facebook.ads.redexgen.X.WH
            r0.<init>()
            java.util.Arrays.sort(r1, r0)
            int r0 = r4.A05
            int[] r0 = new int[r0]
            r4.A07 = r0
            r2 = 0
        L42:
            int r0 = r4.A05
            if (r2 >= r0) goto L55
            int[] r1 = r4.A07
            com.facebook.ads.redexgen.X.VC[] r0 = r4.A04
            r0 = r0[r2]
            int r0 = r5.A07(r0)
            r1[r2] = r0
            int r2 = r2 + 1
            goto L42
        L55:
            int r0 = r4.A05
            long[] r0 = new long[r0]
            r4.A03 = r0
            r4.A01 = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8j.<init>(com.facebook.ads.redexgen.X.U8, int[], int):void");
    }

    public static /* synthetic */ int A07(VC vc, VC vc2) {
        return vc2.A05 - vc.A05;
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public void A6W() {
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public void A6t() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2003Wc
    public final VC A8m(int i) {
        return this.A04[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2003Wc
    public final int A8t(int i) {
        return this.A07[i];
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public final VC A9f() {
        return this.A04[A9g()];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2003Wc
    public final U8 A9y() {
        return this.A06;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0003 */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2003Wc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int AAk(int r3) {
        /*
            r2 = this;
            r1 = 0
        L1:
            int r0 = r2.A05
            if (r1 >= r0) goto Lf
            int[] r0 = r2.A07
            r0 = r0[r1]
            if (r0 != r3) goto Lc
            return r1
        Lc:
            int r1 = r1 + 1
            goto L1
        Lf:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8j.AAk(int):int");
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public void AGO(float f) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C8j c8j = (C8j) obj;
        return this.A06 == c8j.A06 && Arrays.equals(this.A07, c8j.A07);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            this.A00 = (System.identityHashCode(this.A06) * 31) + Arrays.hashCode(this.A07);
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2003Wc
    public final int length() {
        return this.A07.length;
    }
}
