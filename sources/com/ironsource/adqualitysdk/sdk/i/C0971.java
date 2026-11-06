package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.aps.ads.ApsAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ｆ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0971 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0841 f3670;

    public C0971(C0841 c0841) {
        this.f3670 = c0841;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0841 c0841 = this.f3670;
        ApsAd apsAd = (ApsAd) arrayList.get(0);
        c0841.getClass();
        return apsAd.getAdLoader();
    }
}
