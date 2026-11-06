package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.Ad;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0894 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0740 f3449;

    public C0894(C0740 c0740) {
        this.f3449 = c0740;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0740 c0740 = this.f3449;
        Ad ad = (Ad) arrayList.get(0);
        c0740.getClass();
        return ad.getPlacementId();
    }
}
