package com.ironsource.adqualitysdk.sdk.i;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ƫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0082 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0037 f859;

    public C0082(C0037 c0037) {
        this.f859 = c0037;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0037 c0037 = this.f859;
        PAGRewardItem pAGRewardItem = (PAGRewardItem) arrayList.get(0);
        c0037.getClass();
        return Integer.valueOf(pAGRewardItem.getRewardAmount());
    }
}
