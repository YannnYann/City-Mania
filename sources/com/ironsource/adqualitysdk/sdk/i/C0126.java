package com.ironsource.adqualitysdk.sdk.i;

import com.inmobi.media.ads.network.common.model.ContextData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0126 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1031 f1068;

    public C0126(C1031 c1031) {
        this.f1068 = c1031;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C1031 c1031 = this.f1068;
        ContextData contextData = (ContextData) arrayList.get(0);
        c1031.getClass();
        return contextData.getAdvertisedContent();
    }
}
