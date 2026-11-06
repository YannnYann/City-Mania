package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.adview.AdViewController;
import com.applovin.sdk.AppLovinAdDisplayListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ภ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0415 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0398 f2149;

    public C0415(C0398 c0398) {
        this.f2149 = c0398;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0398 c0398 = this.f2149;
        AdViewController adViewController = (AdViewController) arrayList.get(0);
        AppLovinAdDisplayListener appLovinAdDisplayListener = (AppLovinAdDisplayListener) arrayList.get(1);
        c0398.getClass();
        adViewController.setAdDisplayListener(appLovinAdDisplayListener);
        return null;
    }
}
