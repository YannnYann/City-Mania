package com.ironsource.adapters.unityads.interstitial;

import com.ironsource.adapters.unityads.UnityAdsAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.InterstitialAd;
import com.unity3d.ads.LoadListener;
import com.unity3d.ads.UnityAdsError;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsInterstitialLoadListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnityAdsInterstitialLoadListener implements LoadListener<InterstitialAd> {
    private final WeakReference<UnityAdsInterstitialAdapter> adapter;
    private final InterstitialAdListener listener;

    public UnityAdsInterstitialLoadListener(InterstitialAdListener listener, WeakReference<UnityAdsInterstitialAdapter> adapter) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.listener = listener;
        this.adapter = adapter;
    }

    @Override // com.unity3d.ads.LoadListener
    public void onAdLoaded(InterstitialAd interstitialAd, UnityAdsError unityAdsError) {
        if (interstitialAd != null) {
            IronLog.ADAPTER_CALLBACK.verbose();
            UnityAdsInterstitialAdapter unityAdsInterstitialAdapter = this.adapter.get();
            if (unityAdsInterstitialAdapter != null) {
                unityAdsInterstitialAdapter.setInterstitialAd$unityadsadapter_release(interstitialAd);
            }
            this.listener.onAdLoadSuccess();
            return;
        }
        int code = unityAdsError != null ? unityAdsError.getCode() : 1000;
        String message = unityAdsError != null ? unityAdsError.getMessage() : null;
        if (message == null) {
            message = "";
        }
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(code), message}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(UnityAdsAdapter.Companion.getLoadErrorType(unityAdsError), code, message);
    }
}
