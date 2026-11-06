package com.unity3d.ads;

/* JADX INFO: compiled from: ShowListener.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface ShowListener<UnityAd> {
    void onClicked(UnityAd unityad);

    void onCompleted(UnityAd unityad, ShowFinishState showFinishState);

    void onFailed(UnityAd unityad, UnityAdsError unityAdsError);

    void onStarted(UnityAd unityad);
}
