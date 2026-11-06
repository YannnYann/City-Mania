package com.ironsource.adqualitysdk.sdk.i;

import com.inmobi.ads.AdContainer;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ǰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0090 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1031 f892;

    public C0090(C1031 c1031) {
        this.f892 = c1031;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C1031 c1031 = this.f892;
        AdContainer adContainer = (AdContainer) arrayList.get(0);
        c1031.getClass();
        return adContainer.getDataModel();
    }
}
