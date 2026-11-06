package com.ironsource.adapters.unityads.interstitial;

import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.InterstitialAd;
import com.unity3d.ads.InterstitialShowListener;
import com.unity3d.ads.ShowFinishState;
import com.unity3d.ads.UnityAdsError;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsInterstitialShowListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnityAdsInterstitialShowListener implements InterstitialShowListener {
    private final InterstitialAdListener listener;

    public UnityAdsInterstitialShowListener(InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // com.unity3d.ads.ShowListener
    public void onStarted(InterstitialAd unityAd) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onFailed(InterstitialAd unityAd, UnityAdsError error) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        Integer numValueOf = Integer.valueOf(error.getCode());
        String message = error.getMessage();
        if (message == null) {
            message = "";
        }
        String str = String.format("Failed to show, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{numValueOf, message}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        InterstitialAdListener interstitialAdListener = this.listener;
        int code = error.getCode();
        String message2 = error.getMessage();
        interstitialAdListener.onAdShowFailed(code, message2 != null ? message2 : "");
    }

    @Override // com.unity3d.ads.ShowListener
    public void onClicked(InterstitialAd unityAd) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onCompleted(InterstitialAd unityAd, ShowFinishState state) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        Intrinsics.checkNotNullParameter(state, "state");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClosed();
    }
}
