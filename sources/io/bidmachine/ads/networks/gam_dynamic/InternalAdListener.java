package io.bidmachine.ads.networks.gam_dynamic;

/* JADX INFO: loaded from: classes4.dex */
public interface InternalAdListener {
    void onAdDestroyed(InternalAd internalAd, boolean isAdReleased);

    void onAdExpired(InternalAd internalAd);

    void onAdShown(InternalAd internalAd);
}
