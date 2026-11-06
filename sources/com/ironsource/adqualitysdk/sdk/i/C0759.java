package com.ironsource.adqualitysdk.sdk.i;

import com.mintegral.msdk.base.entity.CampaignEx;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0759 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0714 f3083;

    public C0759(C0714 c0714) {
        this.f3083 = c0714;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0714 c0714 = this.f3083;
        CampaignEx campaignEx = (CampaignEx) arrayList.get(0);
        c0714.getClass();
        return campaignEx.getId();
    }
}
