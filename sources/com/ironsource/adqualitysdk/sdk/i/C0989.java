package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.aps.ads.ApsAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0989 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0841 f3710;

    public C0989(C0841 c0841) {
        this.f3710 = c0841;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0841 c0841 = this.f3710;
        ApsAd apsAd = (ApsAd) arrayList.get(0);
        c0841.getClass();
        return apsAd.getApsAdRequest();
    }
}
