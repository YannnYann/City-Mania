package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0510 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2334;

    public C0510(C0398 c0398) {
        this.f2334 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2334;
        boolean z = false;
        AppLovinAd appLovinAd = (AppLovinAd) arrayList.get(0);
        c0398.getClass();
        if (appLovinAd != null && (appLovinAd.getSize() == AppLovinAdSize.BANNER || appLovinAd.getSize() == AppLovinAdSize.LEADER || appLovinAd.getSize() == AppLovinAdSize.MREC)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
