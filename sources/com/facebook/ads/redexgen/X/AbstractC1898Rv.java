package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1898Rv implements InterfaceC1961Uj {
    public Looper A00;
    public Timeline A01;
    public QD A02;
    public final ArrayList<InterfaceC1960Ui> A05 = new ArrayList<>(1);
    public final HashSet<InterfaceC1960Ui> A06 = new HashSet<>(1);
    public final C1972Uu A04 = new C1972Uu();
    public final C1892Rp A03 = new C1892Rp();

    public abstract void A09();

    public abstract void A0A(InterfaceC1793Ni interfaceC1793Ni);

    public final QD A00() {
        return (QD) AbstractC1747Ln.A02(this.A02);
    }

    public final C1892Rp A01(C1887Rk c1887Rk) {
        return this.A03.A00(0, c1887Rk);
    }

    public final C1972Uu A02(C1887Rk c1887Rk) {
        return this.A04.A02(0, c1887Rk, 0L);
    }

    public void A03() {
    }

    public void A04() {
    }

    public final void A05(Timeline timeline) {
        this.A01 = timeline;
        Iterator<InterfaceC1960Ui> it = this.A05.iterator();
        while (it.hasNext()) {
            it.next().AH8(this, timeline);
        }
    }

    public final void A06(InterfaceC1960Ui interfaceC1960Ui) {
        boolean z = !this.A06.isEmpty();
        this.A06.remove(interfaceC1960Ui);
        if (z) {
            boolean wasEnabled = this.A06.isEmpty();
            if (wasEnabled) {
                A03();
            }
        }
    }

    public final void A07(InterfaceC1960Ui interfaceC1960Ui) {
        AbstractC1747Ln.A01(this.A00);
        boolean zIsEmpty = this.A06.isEmpty();
        this.A06.add(interfaceC1960Ui);
        if (zIsEmpty) {
            A04();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A08(com.facebook.ads.redexgen.X.InterfaceC1960Ui r4, com.facebook.ads.redexgen.X.InterfaceC1793Ni r5, com.facebook.ads.redexgen.X.QD r6) {
        /*
            r3 = this;
            android.os.Looper r2 = android.os.Looper.myLooper()
            android.os.Looper r0 = r3.A00
            if (r0 == 0) goto Lc
            android.os.Looper r0 = r3.A00
            if (r0 != r2) goto L31
        Lc:
            r0 = 1
        Ld:
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A07(r0)
            r3.A02 = r6
            com.facebook.ads.androidx.media3.common.Timeline r1 = r3.A01
            java.util.ArrayList<com.facebook.ads.redexgen.X.Ui> r0 = r3.A05
            r0.add(r4)
            android.os.Looper r0 = r3.A00
            if (r0 != 0) goto L28
            r3.A00 = r2
            java.util.HashSet<com.facebook.ads.redexgen.X.Ui> r0 = r3.A06
            r0.add(r4)
            r3.A0A(r5)
        L27:
            return
        L28:
            if (r1 == 0) goto L27
            r3.A07(r4)
            r4.AH8(r3, r1)
            goto L27
        L31:
            r0 = 0
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1898Rv.A08(com.facebook.ads.redexgen.X.Ui, com.facebook.ads.redexgen.X.Ni, com.facebook.ads.redexgen.X.QD):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1961Uj
    public final void A4P(Handler handler, InterfaceC1973Uv interfaceC1973Uv) {
        AbstractC1747Ln.A01(handler);
        AbstractC1747Ln.A01(interfaceC1973Uv);
        this.A04.A04(handler, interfaceC1973Uv);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1961Uj
    public final void AIK(InterfaceC1960Ui interfaceC1960Ui, InterfaceC1793Ni interfaceC1793Ni) {
        A08(interfaceC1960Ui, interfaceC1793Ni, QD.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1961Uj
    public final void AIz(InterfaceC1960Ui interfaceC1960Ui) {
        this.A05.remove(interfaceC1960Ui);
        if (this.A05.isEmpty()) {
            this.A00 = null;
            this.A01 = null;
            this.A02 = null;
            this.A06.clear();
            A09();
            return;
        }
        A06(interfaceC1960Ui);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1961Uj
    public final void AJj(InterfaceC1973Uv interfaceC1973Uv) {
        this.A04.A0D(interfaceC1973Uv);
    }
}
