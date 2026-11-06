package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class F2 extends AbstractC2633ik<CY> {
    public int A00;
    public int A01;
    public int A02;
    public InterfaceC3144r9 A03;
    public C2224c2 A04;
    public String A05;
    public List<C2999ol> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final LA A08;
    public final C2771kz A09;
    public final C1643Hi A0A;
    public final InterfaceC2909nG A0B;
    public final GT A0C;
    public final C3102qT A0D;
    public final C13846r A0E;
    public final C1466Am A0F;

    public F2(C1643Hi c1643Hi, List<C2999ol> list, LA la, InterfaceC2909nG interfaceC2909nG, GT gt, InterfaceC3144r9 interfaceC3144r9, String str, C13846r c13846r, C1466Am c1466Am) {
        this.A0A = c1643Hi;
        this.A0B = interfaceC2909nG;
        this.A0C = gt;
        this.A09 = gt.A14();
        this.A04 = gt.A1G();
        this.A0D = gt.A1E();
        this.A03 = interfaceC3144r9;
        this.A08 = la;
        this.A06 = list;
        this.A05 = str;
        this.A0E = c13846r;
        this.A0F = c1466Am;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final CY A0F(ViewGroup viewGroup, int i) {
        return new CY(AbstractC3331uA.A00(new C3373uq(this.A0A, this.A0B, this.A03, this.A08, null, this.A04, this.A0D).A0R(this.A0F).A0N(this.A0C).A0U(), this.A0C, this.A05, this.A0E), this.A07, this.A04, this.A06.size(), this.A0A, this.A08.A33());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void A0M(CY cy, int i) {
        C2999ol c2999ol = this.A06.get(i);
        cy.A0x(this.A04);
        cy.A0w(c2999ol, this.A0B, this.A09, this.A0D, this.A05, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    public final int A0B() {
        return this.A06.size();
    }

    public final void A0Q(int i, int i2, int i3) {
        boolean needsUpdate = i != this.A00;
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
        if (needsUpdate) {
            A0G();
        }
    }

    public final void A0R(C2224c2 c2224c2) {
        this.A04 = c2224c2;
    }
}
