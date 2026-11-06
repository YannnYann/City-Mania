package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.AdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺓ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0934 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0740 f3534;

    public C0934(C0740 c0740) {
        this.f3534 = c0740;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0740 c0740 = this.f3534;
        AdView adView = (AdView) arrayList.get(0);
        c0740.getClass();
        return adView.getPlacementId();
    }
}
