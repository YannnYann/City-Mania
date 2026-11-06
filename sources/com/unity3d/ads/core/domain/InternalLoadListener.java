package com.unity3d.ads.core.domain;

import com.unity3d.ads.UnityAdsError;
import com.unity3d.ads.core.data.model.AdObject;

/* JADX INFO: compiled from: InternalLoadListener.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface InternalLoadListener {
    void onAdLoadFail(UnityAdsError unityAdsError);

    void onAdLoaded(AdObject adObject);
}
