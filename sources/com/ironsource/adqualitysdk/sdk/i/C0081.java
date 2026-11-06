package com.ironsource.adqualitysdk.sdk.i;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ƨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0081 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0037 f858;

    public C0081(C0037 c0037) {
        this.f858 = c0037;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0037 c0037 = this.f858;
        PAGRewardItem pAGRewardItem = (PAGRewardItem) arrayList.get(0);
        c0037.getClass();
        return pAGRewardItem.getRewardName();
    }
}
