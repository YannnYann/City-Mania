package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.ads.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ṫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0729 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0529 f3013;

    public C0729(C0529 c0529) {
        this.f3013 = c0529;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0529 c0529 = this.f3013;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c0529.getClass();
        return impressionData.getCampaignId();
    }
}
