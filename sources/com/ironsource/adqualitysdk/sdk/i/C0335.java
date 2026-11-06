package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.out.RewardInfo;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڎ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0335 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0211 f1924;

    public C0335(C0211 c0211) {
        this.f1924 = c0211;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0211 c0211 = this.f1924;
        RewardInfo rewardInfo = (RewardInfo) arrayList.get(0);
        c0211.getClass();
        return rewardInfo.getRewardName();
    }
}
