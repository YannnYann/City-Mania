package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.sdk.AppLovinAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒸ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0513 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2342;

    public C0513(C0398 c0398) {
        this.f2342 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2342;
        AppLovinAd appLovinAd = (AppLovinAd) arrayList.get(0);
        c0398.getClass();
        return Boolean.valueOf(appLovinAd.isVideoAd());
    }
}
