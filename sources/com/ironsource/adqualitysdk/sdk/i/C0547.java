package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.ads.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓻ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0547 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0529 f2491;

    public C0547(C0529 c0529) {
        this.f2491 = c0529;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0529 c0529 = this.f2491;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c0529.getClass();
        return Double.valueOf(impressionData.getNetPayout());
    }
}
