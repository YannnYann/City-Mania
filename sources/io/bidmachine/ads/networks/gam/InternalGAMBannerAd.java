package io.bidmachine.ads.networks.gam;

import android.view.View;
import io.bidmachine.AdsFormat;

/* JADX INFO: loaded from: classes4.dex */
public abstract class InternalGAMBannerAd extends InternalGAMAd {
    public abstract View getAdView();

    public InternalGAMBannerAd(GAMLoader gamLoader, AdsFormat adsFormat, GAMUnitData gamUnitData) {
        super(gamLoader, adsFormat, gamUnitData);
    }
}
