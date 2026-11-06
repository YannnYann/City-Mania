package io.bidmachine.ads.networks.gam;

import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public interface InternalGAMAdPresentListener {
    void onAdExpired();

    void onAdShowFailed(BMError bmError);
}
