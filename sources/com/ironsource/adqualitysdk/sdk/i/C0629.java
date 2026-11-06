package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0629 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0211 f2646;

    public C0629(C0211 c0211) {
        this.f2646 = c0211;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0211 c0211 = this.f2646;
        CampaignEx campaignEx = (CampaignEx) arrayList.get(0);
        c0211.getClass();
        return Long.valueOf(campaignEx.getCreativeId());
    }
}
