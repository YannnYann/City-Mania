package io.bidmachine.ads.networks.gam_dynamic;

import android.app.Activity;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.InternalAd;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.Waterfall;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public abstract class InternalFullscreenAd extends InternalAd {
    public abstract void showAd(Activity activity, final InternalFullscreenAdPresentListener showListener) throws Throwable;

    public InternalFullscreenAd(NetworkParams networkParams, TaskExecutor taskExecutor, AdsFormat adsFormat, Waterfall.Configuration.AdUnit adUnit, InternalAdListener internalAdListener) {
        super(networkParams, taskExecutor, adsFormat, adUnit, internalAdListener);
    }

    public final void show(final Activity activity, final InternalFullscreenAdPresentListener showListener) {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.gam_dynamic.InternalFullscreenAd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InternalFullscreenAd.$r8$lambda$AM1D99HishGXExMrczqKRilQHMg(this.f$0, activity, showListener);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$AM1D99HishGXExMrczqKRilQHMg(InternalFullscreenAd internalFullscreenAd, Activity activity, InternalFullscreenAdPresentListener internalFullscreenAdPresentListener) {
        internalFullscreenAd.getClass();
        try {
            internalFullscreenAd.setStatus(InternalAd.Status.Showing);
            internalFullscreenAd.showAd(activity, internalFullscreenAdPresentListener);
        } catch (Throwable th) {
            Logger.w(th);
            internalFullscreenAdPresentListener.onAdShowFailed(BMError.throwable("Exception showing InternalAd object", th));
        }
    }
}
