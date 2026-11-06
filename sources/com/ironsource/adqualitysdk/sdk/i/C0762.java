package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.internal.adapters.AdAdapter;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0762 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0740 f3087;

    public C0762(C0740 c0740) {
        this.f3087 = c0740;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0740 c0740 = this.f3087;
        AdAdapter adAdapter = (AdAdapter) arrayList.get(0);
        c0740.getClass();
        return adAdapter.getPlacementType();
    }
}
