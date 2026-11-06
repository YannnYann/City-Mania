package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.response.AdParams;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ị, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0744 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f3058;

    public C0744(C0108 c0108) {
        this.f3058 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f3058;
        AdParams adParams = (AdParams) arrayList.get(0);
        c0108.getClass();
        return adParams.getAdParams();
    }
}
