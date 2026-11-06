package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.EnumSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ks, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1728Ks implements InterfaceC2452fk {
    public final /* synthetic */ int A00;
    public final /* synthetic */ LA A01;
    public final /* synthetic */ C1733Kz A02;
    public final /* synthetic */ InterfaceC2452fk A03;
    public final /* synthetic */ C2453fl A04;
    public final /* synthetic */ C1643Hi A05;
    public final /* synthetic */ EnumSet A06;

    public C1728Ks(C2453fl c2453fl, C1643Hi c1643Hi, LA la, C1733Kz c1733Kz, int i, InterfaceC2452fk interfaceC2452fk, EnumSet enumSet) {
        this.A04 = c2453fl;
        this.A05 = c1643Hi;
        this.A01 = la;
        this.A02 = c1733Kz;
        this.A00 = i;
        this.A03 = interfaceC2452fk;
        this.A06 = enumSet;
    }

    private final void A00() {
        if (this.A00 + 1 >= this.A02.A2v()) {
            return;
        }
        this.A04.A0A(this.A05, this.A06, this.A02, this.A02.A2z(this.A00 + 1), this.A00 + 1, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2452fk
    public final void ADk(AdError adError) {
        if (this.A00 == 0) {
            this.A03.ADk(adError);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2452fk
    public final void ADl() {
        this.A05.A01().AKW(this.A01.A37(), this.A02.A30());
        if (this.A00 == this.A02.A2x()) {
            this.A03.ADl();
        }
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2452fk
    public final void AIm() {
        if (this.A00 == 0) {
            this.A03.AIm();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2452fk
    public final void ALr() {
        if (this.A00 == 0) {
            this.A03.ALr();
        }
    }
}
