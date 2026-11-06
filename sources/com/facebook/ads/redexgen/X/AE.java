package com.facebook.ads.redexgen.X;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AE implements Yk {
    public final EnumC2075Zc A00;
    public final AbstractC13344t A01;

    public AE(AbstractC13344t abstractC13344t, EnumC2075Zc enumC2075Zc) {
        this.A01 = abstractC13344t;
        this.A00 = enumC2075Zc;
    }

    @Override // com.facebook.ads.redexgen.X.Yk
    public void A4e(Map<InterfaceC2106a7, YU> map, Map<SyncModifiableBundle, EnumC2075Zc> map2) {
        map2.put(null, this.A00);
    }
}
