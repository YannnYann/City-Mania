package io.bidmachine.ads.networks.adaptiverendering.measurer;

import android.os.Handler;
import android.view.View;
import com.iab.omid.library.appodeal.adsession.AdEvents;
import com.iab.omid.library.appodeal.adsession.AdSession;
import com.iab.omid.library.appodeal.adsession.AdSessionConfiguration;
import com.iab.omid.library.appodeal.adsession.AdSessionContext;
import com.iab.omid.library.appodeal.adsession.ErrorType;
import com.iab.omid.library.appodeal.adsession.media.InteractionType;
import com.iab.omid.library.appodeal.adsession.media.MediaEvents;
import com.ironsource.Cc;
import com.ironsource.Yf;
import io.bidmachine.core.Logger;
import io.bidmachine.rendering.measurer.Measurer;
import io.bidmachine.util.Error;
import io.bidmachine.util.Utils;
import io.bidmachine.utils.Tag;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OMMeasurer<AdView extends View> implements Measurer<AdView> {
    public AdEvents adEvents;
    public AdSession adSession;
    public MediaEvents mediaEvents;
    public final Tag tag = new Tag("OMMeasurer");
    public final AtomicBoolean isLoadedTracked = new AtomicBoolean(false);
    public final AtomicBoolean isShownTracked = new AtomicBoolean(false);
    public final AtomicBoolean isImpressionPending = new AtomicBoolean(false);

    public static final void destroy$lambda$2(OMMeasurer this$0, Runnable runnable, Handler handler) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        try {
            this$0.mediaEvents = null;
            this$0.adEvents = null;
            AdSession adSession = this$0.adSession;
            if (adSession != null) {
                adSession.finish();
            }
            this$0.log("destroy");
            if (runnable != null) {
                handler.postDelayed(runnable, this$0.getDestroyDelayMs());
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public static final void onClicked$lambda$1(OMMeasurer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            MediaEvents mediaEvents = this$0.mediaEvents;
            if (mediaEvents != null) {
                mediaEvents.adUserInteraction(InteractionType.CLICK);
                this$0.log(Yf.f);
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public static final void registerView$lambda$8(OMMeasurer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "$view");
        try {
            AdSession adSession = this$0.adSession;
            if (adSession != null) {
                adSession.registerAdView(view);
                this$0.log("registerView");
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public static final void trackError$lambda$6(OMMeasurer this$0, ErrorType errorType, String errorMessage) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(errorType, "$errorType");
        Intrinsics.checkNotNullParameter(errorMessage, "$errorMessage");
        try {
            AdSession adSession = this$0.adSession;
            if (adSession != null) {
                adSession.error(errorType, errorMessage);
                this$0.log(Cc.a.g);
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public static final void trackImpression$lambda$4(OMMeasurer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            AdEvents adEvents = this$0.adEvents;
            if (this$0.isSessionPrepared() && adEvents != null && this$0.isLoadedTracked.get() && this$0.isImpressionPending.compareAndSet(true, false)) {
                adEvents.impressionOccurred();
                this$0.log("onAdShown");
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public static final void trackLoaded$lambda$3(OMMeasurer this$0) {
        AdEvents adEvents;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            adEvents = this$0.adEvents;
        } catch (Throwable th) {
            Logger.w(th);
        }
        if (this$0.isSessionPrepared() && adEvents != null) {
            this$0.onAdLoaded(adEvents);
            this$0.log(Yf.j);
            this$0.trackImpression();
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void destroy(final Runnable runnable) {
        final Handler handlerCreateHandlerWithMyOrMainLooper = Utils.createHandlerWithMyOrMainLooper();
        io.bidmachine.core.Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                OMMeasurer.destroy$lambda$2(this.f$0, runnable, handlerCreateHandlerWithMyOrMainLooper);
            }
        });
    }

    public long getDestroyDelayMs() {
        return 0L;
    }

    public final MediaEvents getMediaEvents() {
        return this.mediaEvents;
    }

    public final boolean isSessionPrepared() {
        return this.adSession != null;
    }

    public final void log(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Logger.d(this.tag, message);
    }

    public abstract void onAdLoaded(AdEvents adEvents) throws Throwable;

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onClicked() {
        io.bidmachine.core.Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                OMMeasurer.onClicked$lambda$1(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onError(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        trackError(error.getMessage());
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onShown() {
        if (this.isShownTracked.compareAndSet(false, true)) {
            this.isImpressionPending.set(true);
            trackImpression();
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onViewCreated(AdView view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public final void prepareAdSession(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        Intrinsics.checkNotNullParameter(adSessionConfiguration, "adSessionConfiguration");
        Intrinsics.checkNotNullParameter(adSessionContext, "adSessionContext");
        try {
            AdSession adSessionCreateAdSession = AdSession.createAdSession(adSessionConfiguration, adSessionContext);
            this.adSession = adSessionCreateAdSession;
            this.adEvents = AdEvents.createAdEvents(adSessionCreateAdSession);
            if (adSessionConfiguration.isNativeMediaEventsOwner()) {
                this.mediaEvents = MediaEvents.createMediaEvents(this.adSession);
            }
            AdSession adSession = this.adSession;
            if (adSession != null) {
                adSession.start();
            }
            log("prepareAdSession");
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public final void registerView(final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        io.bidmachine.core.Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                OMMeasurer.registerView$lambda$8(this.f$0, view);
            }
        });
    }

    public final void trackError(String errorMessage) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        trackError(ErrorType.GENERIC, errorMessage);
    }

    public final void trackImpression() {
        io.bidmachine.core.Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                OMMeasurer.trackImpression$lambda$4(this.f$0);
            }
        });
    }

    public final void trackLoaded() {
        if (this.isLoadedTracked.compareAndSet(false, true)) {
            io.bidmachine.core.Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    OMMeasurer.trackLoaded$lambda$3(this.f$0);
                }
            });
        }
    }

    public final void trackError(final ErrorType errorType, final String str) {
        io.bidmachine.core.Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                OMMeasurer.trackError$lambda$6(this.f$0, errorType, str);
            }
        });
    }
}
