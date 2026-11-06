package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import io.bidmachine.AdsFormat;
import io.bidmachine.ExpirationHandler;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.Waterfall;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class InternalAd implements InternalAdData, ExpirationHandler.Listener {
    public final Waterfall.Configuration.AdUnit adUnit;
    public final AdsFormat adsFormat;
    public final ExpirationHandler expirationHandler;
    public final InternalAdListener internalAdListener;
    public final Tag tag;
    public final TaskExecutor taskExecutor;
    public WeakReference<InternalAdPresentListener> weakAdPresentListener;
    public volatile Status status = Status.Idle;
    public final Map<String, Object> customParamsMap = new ConcurrentHashMap();

    public enum Status {
        Idle,
        Loading,
        Loaded,
        Showing,
        Shown,
        Expired
    }

    public abstract void destroyAd() throws Throwable;

    public InternalAdLoadData getInternalAdLoadData() {
        return null;
    }

    public abstract void loadAd(Context applicationContext, final InternalLoadListener internalLoadListener) throws Throwable;

    public InternalAd(NetworkParams networkParams, TaskExecutor taskExecutor, AdsFormat adsFormat, Waterfall.Configuration.AdUnit adUnit, InternalAdListener internalAdListener) {
        this.tag = new Tag(networkParams.getNetworkName() + "Ad");
        this.taskExecutor = taskExecutor;
        this.adsFormat = adsFormat;
        this.adUnit = adUnit;
        this.internalAdListener = internalAdListener;
        this.expirationHandler = new ExpirationHandler(adUnit.getExpirationTime(), this);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAdData
    public String getAdUnitId() {
        return getAdUnit().getAdUnitId();
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAdData
    public double getPrice() {
        return getAdUnit().getPrice();
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAdData
    public Map<String, Object> getCustomParamsMap() {
        return this.customParamsMap;
    }

    public AdsFormat getAdsFormat() {
        return this.adsFormat;
    }

    public Waterfall.Configuration.AdUnit getAdUnit() {
        return this.adUnit;
    }

    public InternalAdPresentListener getAdPresentListener() {
        WeakReference<InternalAdPresentListener> weakReference = this.weakAdPresentListener;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void setAdPresentListener(InternalAdPresentListener adPresentListener) {
        this.weakAdPresentListener = new WeakReference<>(adPresentListener);
    }

    public void setCustomParam(String key, Object value) {
        this.customParamsMap.put(key, value);
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        if (isShown()) {
            return;
        }
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("onExpired (%s)", GAMUtils.toString(this.f$0.adUnit));
            }
        });
        this.internalAdListener.onAdExpired(this);
        setStatus(Status.Expired);
        InternalAdPresentListener adPresentListener = getAdPresentListener();
        if (adPresentListener != null) {
            adPresentListener.onAdExpired();
        }
        destroy(true);
    }

    public void onAdShown() {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda2
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("onAdShown (%s)", GAMUtils.toString(this.f$0.adUnit));
            }
        });
        this.internalAdListener.onAdShown(this);
        setStatus(Status.Shown);
        this.expirationHandler.stop();
    }

    public void destroy() {
        destroy(isShown());
    }

    public void destroy(boolean canReleaseAd) {
        try {
            Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("destroy (%s)", GAMUtils.toString(this.f$0.adUnit));
                }
            });
            WeakReference<InternalAdPresentListener> weakReference = this.weakAdPresentListener;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.weakAdPresentListener = null;
            if (canReleaseAd) {
                release();
            }
            this.internalAdListener.onAdDestroyed(this, canReleaseAd);
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public final void load(Context context, final InternalLoadListener internalLoadListener) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda4
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("load (%s)", GAMUtils.toString(this.f$0.adUnit));
            }
        });
        final Context applicationContext = context.getApplicationContext();
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                InternalAd.$r8$lambda$_SoYTIANHWCzF3GAvbfFQHzXjrE(this.f$0, applicationContext, internalLoadListener);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$_SoYTIANHWCzF3GAvbfFQHzXjrE(InternalAd internalAd, Context context, InternalLoadListener internalLoadListener) {
        internalAd.getClass();
        try {
            internalAd.setStatus(Status.Loading);
            internalAd.loadAd(context, internalLoadListener);
        } catch (Throwable th) {
            Logger.w(th);
            internalLoadListener.onAdLoadFailed(internalAd, BMError.throwable("Exception loading InternalAd object", th));
        }
    }

    public void release() {
        this.expirationHandler.stop();
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.gam_dynamic.InternalAd$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                InternalAd.m2498$r8$lambda$kWqPEjSQ2Fej0qYm9IO6unOEWs(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-kWqPEjSQ2Fej0qYm9IO6unOEWs, reason: not valid java name */
    public static /* synthetic */ void m2498$r8$lambda$kWqPEjSQ2Fej0qYm9IO6unOEWs(InternalAd internalAd) {
        internalAd.getClass();
        try {
            internalAd.destroyAd();
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public boolean isLoaded() {
        return this.status == Status.Loaded;
    }

    public boolean isShown() {
        Status status = this.status;
        return status != null && status.ordinal() >= Status.Shown.ordinal();
    }

    public boolean isExpired() {
        return this.status == Status.Expired;
    }

    public String toString() {
        return this.tag + ", " + GAMUtils.toString(this.adUnit);
    }
}
