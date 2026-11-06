package io.bidmachine.ads.networks.gam.versions.v22_0_0;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.GAMLoader;
import io.bidmachine.ads.networks.gam.GAMUnitData;
import io.bidmachine.ads.networks.gam.InternalGAMFullscreenAdPresentListener;
import io.bidmachine.ads.networks.gam.InternalGAMRewardedAd;
import io.bidmachine.ads.networks.gam.InternalLoadListener;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public class e extends InternalGAMRewardedAd {
    public RewardedAd a;

    public static final class b extends RewardedAdLoadCallback {
        public final e a;
        public final InternalLoadListener b;

        public b(e eVar, InternalLoadListener internalLoadListener) {
            this.a = eVar;
            this.b = internalLoadListener;
        }
    }

    public static final class c implements OnUserEarnedRewardListener {
        public c() {
        }
    }

    public e(GAMLoader gAMLoader, AdsFormat adsFormat, GAMUnitData gAMUnitData) {
        super(gAMLoader, adsFormat, gAMUnitData);
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    public void destroyAd() {
        RewardedAd rewardedAd = this.a;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback((FullScreenContentCallback) null);
            this.a = null;
        }
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    public void loadAd(Context context, InternalLoadListener internalLoadListener) {
        RewardedAd.load(context, getAdUnitId(), io.bidmachine.ads.networks.gam.versions.v22_0_0.a.a(getGamLoader(), getGamUnitData()), new b(this, internalLoadListener));
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMFullscreenAd
    public void showAd(Activity activity, InternalGAMFullscreenAdPresentListener internalGAMFullscreenAdPresentListener) {
        RewardedAd rewardedAd = this.a;
        if (rewardedAd == null) {
            internalGAMFullscreenAdPresentListener.onAdShowFailed(BMError.internal("InternalGAM rewarded object is null or not loaded"));
        } else {
            rewardedAd.setFullScreenContentCallback(new io.bidmachine.ads.networks.gam.versions.v22_0_0.b(internalGAMFullscreenAdPresentListener));
            this.a.show(activity, new c());
        }
    }
}
