package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class u63 extends gs implements RewardedAd {
    public final tn3 c;
    public static final /* synthetic */ KProperty[] e = {kk.a(u63.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;", 0)};
    public static final s63 d = new s63();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u63(un1 internalRewardedAd) {
        super(internalRewardedAd);
        Intrinsics.checkNotNullParameter(internalRewardedAd, "internalRewardedAd");
        this.c = new tn3(new t63(internalRewardedAd), null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd
    public final void setAdEventCallback(RewardedAdEventCallback rewardedAdEventCallback) {
        this.c.setValue(this, e[0], rewardedAdEventCallback);
    }
}
