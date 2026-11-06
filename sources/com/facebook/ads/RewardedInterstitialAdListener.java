package com.facebook.ads;

import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public interface RewardedInterstitialAdListener extends AdListener {
    void onRewardedInterstitialClosed();

    void onRewardedInterstitialCompleted();
}
