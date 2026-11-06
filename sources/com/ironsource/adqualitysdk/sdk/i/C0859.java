package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import tv.superawesome.sdk.publisher.SABannerAd;
import tv.superawesome.sdk.publisher.SAInterface;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.יּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0859 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0846 f3322;

    public C0859(C0846 c0846) {
        this.f3322 = c0846;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0846 c0846 = this.f3322;
        SABannerAd sABannerAd = (SABannerAd) arrayList.get(0);
        SAInterface sAInterface = (SAInterface) arrayList.get(1);
        c0846.getClass();
        sABannerAd.setListener(sAInterface);
        return null;
    }
}
