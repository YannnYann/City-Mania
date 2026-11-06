package com.unity3d.ads;

/* JADX INFO: compiled from: BannerShowListener.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface BannerShowListener {
    void onClicked(BannerAd bannerAd);

    void onFailedToShow(BannerAd bannerAd, UnityAdsError unityAdsError);

    void onImpression(BannerAd bannerAd);
}
