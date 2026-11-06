package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdEventListener;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ⴡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0436 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2184;

    public C0436(C0398 c0398) {
        this.f2184 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2184;
        AppLovinNativeAdImpl appLovinNativeAdImpl = (AppLovinNativeAdImpl) arrayList.get(0);
        AppLovinNativeAdEventListener appLovinNativeAdEventListener = (AppLovinNativeAdEventListener) arrayList.get(1);
        c0398.getClass();
        appLovinNativeAdImpl.setEventListener(appLovinNativeAdEventListener);
        return null;
    }
}
