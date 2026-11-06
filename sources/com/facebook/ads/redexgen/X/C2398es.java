package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.es, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2398es {
    public static InterfaceC2393en A00;

    public final InterfaceC2393en A00(final C1643Hi c1643Hi, AdPlacementType adPlacementType) {
        if (A00 != null) {
            return A00;
        }
        switch (C2397er.A00[adPlacementType.ordinal()]) {
            case 1:
                return new C14107r();
            case 2:
                if (C2888mv.A1O(c1643Hi)) {
                    return new C14097q();
                }
                return new C14107r();
            case 3:
                return new C1750Lq();
            case 4:
                return new C1741Lh(c1643Hi);
            case 5:
                return new C1741Lh(c1643Hi) { // from class: com.facebook.ads.redexgen.X.7p
                    @Override // com.facebook.ads.redexgen.X.C1741Lh, com.facebook.ads.redexgen.X.InterfaceC2393en
                    public final AdPlacementType A9N() {
                        return AdPlacementType.NATIVE_BANNER;
                    }
                };
            case 6:
                return new C14057m();
            default:
                return null;
        }
    }
}
