package com.facebook.ads.redexgen.X;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AD implements Yk {
    public final AK A00;
    public final YU A01;

    public AD(AK ak, YU yu) {
        this.A00 = ak;
        this.A01 = yu;
    }

    @Override // com.facebook.ads.redexgen.X.Yk
    public void A4e(Map<InterfaceC2106a7, YU> map, Map<SyncModifiableBundle, EnumC2075Zc> map2) {
        map.put(this.A00, this.A01);
    }
}
