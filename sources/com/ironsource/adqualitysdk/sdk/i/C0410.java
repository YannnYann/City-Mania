package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.sdk.AppLovinAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ท, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0410 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2144;

    public C0410(C0398 c0398) {
        this.f2144 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2144;
        AppLovinAd appLovinAd = (AppLovinAd) arrayList.get(0);
        c0398.getClass();
        return appLovinAd.getSize();
    }
}
