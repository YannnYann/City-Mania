package io.bidmachine.ads.networks.gam_dynamic;

import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public interface InternalAdPresentListener {
    void onAdExpired();

    void onAdShowFailed(BMError bmError);
}
