package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1792Nh implements InterfaceC2278cu {
    public final C1768Mj A00 = new C1768Mj(new byte[4]);
    public final /* synthetic */ C1790Nf A01;

    public C1792Nh(C1790Nf c1790Nf) {
        this.A01 = c1790Nf;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2278cu
    public final void A5j(C1769Mk c1769Mk) {
        int tableId = c1769Mk.A0I();
        if (tableId != 0) {
            return;
        }
        int tableId2 = c1769Mk.A0I();
        if ((tableId2 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) == 0) {
            return;
        }
        c1769Mk.A0g(6);
        int iA07 = c1769Mk.A07() / 4;
        for (int i = 0; i < iA07; i++) {
            c1769Mk.A0h(this.A00, 4);
            int programCount = this.A00.A04(16);
            this.A00.A09(3);
            if (programCount == 0) {
                this.A00.A09(13);
            } else {
                int iA04 = this.A00.A04(13);
                if (this.A01.A0B.get(iA04) == null) {
                    this.A01.A0B.put(iA04, new C1807Nw(new C1791Ng(this.A01, iA04)));
                    C1790Nf.A02(this.A01);
                }
            }
        }
        int secondHeaderByte = this.A01.A09;
        if (secondHeaderByte != 2) {
            this.A01.A0B.remove(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2278cu
    public final void AAo(C1777Ms c1777Ms, InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
    }
}
