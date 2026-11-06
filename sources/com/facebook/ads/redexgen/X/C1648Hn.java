package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1648Hn extends AbstractRunnableC3004oq {
    public final /* synthetic */ InterfaceC2763kr A00;
    public final /* synthetic */ C2764ks A01;
    public final /* synthetic */ C2771kz A02;
    public final /* synthetic */ ArrayList A03;
    public final /* synthetic */ ArrayList A04;

    public C1648Hn(C2771kz c2771kz, ArrayList arrayList, C2764ks c2764ks, InterfaceC2763kr interfaceC2763kr, ArrayList arrayList2) {
        this.A02 = c2771kz;
        this.A03 = arrayList;
        this.A01 = c2764ks;
        this.A00 = interfaceC2763kr;
        this.A04 = arrayList2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        AtomicBoolean atomicBooleanA0D = C2771kz.A0D(this.A03);
        if (this.A02.A04 instanceof C1643Hi) {
            C1643Hi c1643Hi = (C1643Hi) this.A02.A04;
            if (this.A01.A00 == -1) {
                if (atomicBooleanA0D.get()) {
                    c1643Hi.A0F().A5L(C3101qS.A01(this.A02.A00));
                } else {
                    c1643Hi.A0F().A5J(C3101qS.A01(this.A02.A00));
                }
            } else if (atomicBooleanA0D.get()) {
                c1643Hi.A0F().A5M(C3101qS.A01(this.A02.A00), this.A01.A00);
            } else {
                c1643Hi.A0F().A5K(C3101qS.A01(this.A02.A00), this.A01.A00);
            }
        }
        this.A02.A02.post(new C1649Ho(this, atomicBooleanA0D));
        C2771kz.A0D(this.A04);
    }
}
