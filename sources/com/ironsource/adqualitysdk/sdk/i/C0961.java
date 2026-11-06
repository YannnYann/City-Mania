package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.aps.ads.ApsAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0961 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0841 f3632;

    public C0961(C0841 c0841) {
        this.f3632 = c0841;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0841 c0841 = this.f3632;
        ApsAd apsAd = (ApsAd) arrayList.get(0);
        c0841.getClass();
        return apsAd.getAdView();
    }
}
