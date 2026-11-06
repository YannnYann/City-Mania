package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;

/* JADX INFO: loaded from: classes.dex */
public final class g63 implements RewardItem {
    public final int a;
    public final String b;

    public g63(int i, String str) {
        this.a = i;
        this.b = str;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem
    public final int getAmount() {
        return this.a;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem
    public final String getType() {
        return this.b;
    }
}
