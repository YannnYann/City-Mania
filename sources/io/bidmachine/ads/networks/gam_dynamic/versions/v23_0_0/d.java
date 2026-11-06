package io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.InternalAdListener;
import io.bidmachine.ads.networks.gam_dynamic.InternalFullscreenAdPresentListener;
import io.bidmachine.ads.networks.gam_dynamic.InternalLoadListener;
import io.bidmachine.ads.networks.gam_dynamic.InternalRewardedAd;
import io.bidmachine.ads.networks.gam_dynamic.NetworkParams;
import io.bidmachine.ads.networks.gam_dynamic.TaskExecutor;
import io.bidmachine.protobuf.Waterfall;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public class d extends InternalRewardedAd {
    public RewardedAd a;

    public static final class b extends RewardedAdLoadCallback {
        public final d a;
        public final InternalLoadListener b;

        public b(d dVar, InternalLoadListener internalLoadListener) {
            this.a = dVar;
            this.b = internalLoadListener;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.d$d, reason: collision with other inner class name */
    public static final class C1107d implements OnUserEarnedRewardListener {
        public C1107d() {
        }
    }

    public d(NetworkParams networkParams, TaskExecutor taskExecutor, AdsFormat adsFormat, Waterfall.Configuration.AdUnit adUnit, InternalAdListener internalAdListener) {
        super(networkParams, taskExecutor, adsFormat, adUnit, internalAdListener);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    public void destroyAd() {
        RewardedAd rewardedAd = this.a;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback((FullScreenContentCallback) null);
            this.a.setOnPaidEventListener((OnPaidEventListener) null);
            this.a = null;
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    public void loadAd(Context context, InternalLoadListener internalLoadListener) {
        RewardedAd.load(context, getAdUnitId(), e.a(getAdUnit()), new b(this, internalLoadListener));
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalFullscreenAd
    public void showAd(Activity activity, InternalFullscreenAdPresentListener internalFullscreenAdPresentListener) {
        RewardedAd rewardedAd = this.a;
        if (rewardedAd == null) {
            internalFullscreenAdPresentListener.onAdShowFailed(BMError.internal("Internal GAM rewarded object is null or not loaded"));
        } else {
            rewardedAd.setFullScreenContentCallback(new io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.b(internalFullscreenAdPresentListener));
            this.a.show(activity, new C1107d());
        }
    }
}
