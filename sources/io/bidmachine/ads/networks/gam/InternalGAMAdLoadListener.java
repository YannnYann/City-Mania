package io.bidmachine.ads.networks.gam;

import io.bidmachine.ads.networks.gam.InternalGAMAd;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public interface InternalGAMAdLoadListener<GAMAdType extends InternalGAMAd> {
    void onAdLoadFailed(BMError bmError);

    void onAdLoaded(GAMAdType internalGAMAd);
}
