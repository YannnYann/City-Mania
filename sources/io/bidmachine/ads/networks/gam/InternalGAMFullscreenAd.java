package io.bidmachine.ads.networks.gam;

import android.app.Activity;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.InternalGAMAd;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public abstract class InternalGAMFullscreenAd extends InternalGAMAd {
    public abstract void showAd(Activity activity, final InternalGAMFullscreenAdPresentListener showListener) throws Throwable;

    public InternalGAMFullscreenAd(GAMLoader gamLoader, AdsFormat adsFormat, GAMUnitData gamUnitData) {
        super(gamLoader, adsFormat, gamUnitData);
    }

    public final void show(final Activity activity, final InternalGAMFullscreenAdPresentListener showListener) {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.gam.InternalGAMFullscreenAd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InternalGAMFullscreenAd.m2495$r8$lambda$A_5cvkQNLS8XI24cvwdBPCiXQ(this.f$0, activity, showListener);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$A_5cvkQNLS8XI24cvwd--BPCiXQ, reason: not valid java name */
    public static /* synthetic */ void m2495$r8$lambda$A_5cvkQNLS8XI24cvwdBPCiXQ(InternalGAMFullscreenAd internalGAMFullscreenAd, Activity activity, InternalGAMFullscreenAdPresentListener internalGAMFullscreenAdPresentListener) {
        internalGAMFullscreenAd.getClass();
        try {
            internalGAMFullscreenAd.setStatus(InternalGAMAd.Status.Showing);
            internalGAMFullscreenAd.showAd(activity, internalGAMFullscreenAdPresentListener);
        } catch (Throwable th) {
            Logger.w(th);
            internalGAMFullscreenAdPresentListener.onAdShowFailed(BMError.throwable("Exception showing InternalGAM object", th));
        }
    }
}
