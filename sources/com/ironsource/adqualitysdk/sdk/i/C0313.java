package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.out.RewardInfo;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ر, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0313 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0211 f1840;

    public C0313(C0211 c0211) {
        this.f1840 = c0211;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0211 c0211 = this.f1840;
        RewardInfo rewardInfo = (RewardInfo) arrayList.get(0);
        c0211.getClass();
        return rewardInfo.getRewardAmount();
    }
}
