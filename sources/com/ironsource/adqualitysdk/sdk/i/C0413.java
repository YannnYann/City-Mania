package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.sdk.AppLovinAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ป, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0413 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2147;

    public C0413(C0398 c0398) {
        this.f2147 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2147;
        AppLovinAd appLovinAd = (AppLovinAd) arrayList.get(0);
        c0398.getClass();
        return Long.valueOf(appLovinAd.getAdIdNumber());
    }
}
