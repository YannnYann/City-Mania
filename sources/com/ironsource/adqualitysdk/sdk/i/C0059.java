package com.ironsource.adqualitysdk.sdk.i;

import com.inmobi.media.ads.network.common.model.AdResponse;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ŀ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0059 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1031 f812;

    public C0059(C1031 c1031) {
        this.f812 = c1031;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C1031 c1031 = this.f812;
        AdResponse adResponse = (AdResponse) arrayList.get(0);
        c1031.getClass();
        return Long.valueOf(adResponse.getPlacementId());
    }
}
