package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.mediation.MaxAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ค, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0403 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2137;

    public C0403(C0398 c0398) {
        this.f2137 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2137;
        MaxAd maxAd = (MaxAd) arrayList.get(0);
        c0398.getClass();
        return maxAd.getCreativeId();
    }
}
