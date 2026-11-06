package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.response.AdParams;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0677 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f2741;

    public C0677(C0108 c0108) {
        this.f2741 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f2741;
        AdParams adParams = (AdParams) arrayList.get(0);
        c0108.getClass();
        return adParams.getVideoClicks();
    }
}
