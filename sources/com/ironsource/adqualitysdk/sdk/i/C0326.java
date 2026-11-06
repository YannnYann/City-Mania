package com.ironsource.adqualitysdk.sdk.i;

import io.bidmachine.AdRequestParameters;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٻ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0326 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0193 f1909;

    public C0326(C0193 c0193) {
        this.f1909 = c0193;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0193 c0193 = this.f1909;
        AdRequestParameters adRequestParameters = (AdRequestParameters) arrayList.get(0);
        c0193.getClass();
        return adRequestParameters.getAdsType().getName();
    }
}
