package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;

/* JADX INFO: loaded from: classes.dex */
public final class yo3 implements RewardItem {
    public final /* synthetic */ com.google.android.gms.ads.rewarded.RewardItem a;

    public yo3(com.google.android.gms.ads.rewarded.RewardItem rewardItem) {
        this.a = rewardItem;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem
    public final String getType() {
        return this.a.getType();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem
    public final int getAmount() {
        return this.a.getAmount();
    }
}
