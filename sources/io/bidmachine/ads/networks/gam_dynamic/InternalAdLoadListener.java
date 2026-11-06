package io.bidmachine.ads.networks.gam_dynamic;

import io.bidmachine.ads.networks.gam_dynamic.InternalAd;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public interface InternalAdLoadListener<InternalAdType extends InternalAd> {
    void onAdLoadFailed(BMError bmError);

    void onAdLoaded(InternalAdType internalAd);
}
