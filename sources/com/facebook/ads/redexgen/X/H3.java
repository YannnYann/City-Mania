package com.facebook.ads.redexgen.X;

import java.util.Set;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class H3 implements InterfaceC12842t<C2895n2, C2900n7> {
    public H0 A00;

    @Override // com.facebook.ads.redexgen.X.InterfaceC12842t
    public final /* synthetic */ Set A4a() {
        return AbstractC12862v.A00(this);
    }

    public H3(H0 h0) {
        this.A00 = h0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2l != com.instagram.common.viewpoint.core.ViewpointData<com.facebook.ads.internal.impressionsecondchannel.model.Impression, com.facebook.ads.internal.impressionsecondchannel.state.ImpressionState> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC12842t
    public final void A70(C12762l<C2895n2, C2900n7> c12762l, C2Z c2z) {
        switch (c2z.AA7(c12762l)) {
            case A03:
            case A05:
                this.A00.A02(c12762l, c2z);
                break;
        }
    }
}
