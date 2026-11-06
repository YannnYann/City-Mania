package com.ironsource.adqualitysdk.sdk.i;

import com.mintegral.msdk.reward.player.MTGRewardVideoActivity;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ⅹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0803 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0714 f3147;

    public C0803(C0714 c0714) {
        this.f3147 = c0714;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0714 c0714 = this.f3147;
        MTGRewardVideoActivity mTGRewardVideoActivity = (MTGRewardVideoActivity) arrayList.get(0);
        c0714.getClass();
        return mTGRewardVideoActivity.getCampaignEx();
    }
}
