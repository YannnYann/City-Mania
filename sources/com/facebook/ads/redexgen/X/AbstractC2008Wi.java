package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2008Wi {
    public InterfaceC2007Wh A00;
    public InterfaceC2018Ws A01;

    public abstract boolean A0Y();

    public abstract C2009Wj A0b(InterfaceC1838Pe[] interfaceC1838PeArr, RY ry, C1887Rk c1887Rk, Timeline timeline) throws AnonymousClass96;

    public abstract void A0c(Object obj);

    public final InterfaceC2018Ws A00() {
        return (InterfaceC2018Ws) AbstractC1747Ln.A02(this.A01);
    }

    public final void A01() {
        if (this.A00 != null) {
            this.A00.AHM();
        }
    }

    public final void A02(InterfaceC2007Wh interfaceC2007Wh, InterfaceC2018Ws interfaceC2018Ws) {
        this.A00 = interfaceC2007Wh;
        this.A01 = interfaceC2018Ws;
    }
}
