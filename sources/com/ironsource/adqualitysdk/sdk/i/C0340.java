package com.ironsource.adqualitysdk.sdk.i;

import io.bidmachine.AdRequestParameters;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ړ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0340 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0193 f1932;

    public C0340(C0193 c0193) {
        this.f1932 = c0193;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0193 c0193 = this.f1932;
        AdRequestParameters adRequestParameters = (AdRequestParameters) arrayList.get(0);
        c0193.getClass();
        return adRequestParameters.getPlacementId();
    }
}
