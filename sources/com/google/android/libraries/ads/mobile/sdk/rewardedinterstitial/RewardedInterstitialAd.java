package com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;

/* JADX INFO: loaded from: classes3.dex */
public interface RewardedInterstitialAd extends Ad {
    Bundle getAdMetadata();

    RewardItem getRewardItem();
}
