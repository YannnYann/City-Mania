package io.bidmachine.ads.networks.gam;

import android.content.Context;
import io.bidmachine.AdsFormat;
import io.bidmachine.ExpirationHandler;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class InternalGAMAd implements ExpirationHandler.Listener {
    public final AdsFormat adsFormat;
    public final ExpirationHandler expirationHandler;
    public final GAMLoader gamLoader;
    public final GAMUnitData gamUnitData;
    public volatile Status status = Status.Idle;
    public final Tag tag;
    public WeakReference<InternalGAMAdPresentListener> weakAdPresentListener;

    public enum Status {
        Idle,
        Loading,
        Loaded,
        Showing,
        Shown,
        Expired
    }

    public abstract void destroyAd() throws Throwable;

    public abstract void loadAd(Context applicationContext, final InternalLoadListener loadListener) throws Throwable;

    public InternalGAMAd(GAMLoader gamLoader, AdsFormat adsFormat, GAMUnitData gamUnitData) {
        this.tag = new Tag(gamLoader.getNetworkName() + "Ad");
        this.gamLoader = gamLoader;
        this.adsFormat = adsFormat;
        this.gamUnitData = gamUnitData;
        this.expirationHandler = new ExpirationHandler(gamLoader.getExpirationTimeMs(), this);
    }

    public GAMLoader getGamLoader() {
        return this.gamLoader;
    }

    public AdsFormat getAdsFormat() {
        return this.adsFormat;
    }

    public GAMUnitData getGamUnitData() {
        return this.gamUnitData;
    }

    public String getAdUnitId() {
        return getGamUnitData().getAdUnitId();
    }

    public float getScope() {
        return getGamUnitData().getScore();
    }

    public InternalGAMAdPresentListener getAdPresentListener() {
        WeakReference<InternalGAMAdPresentListener> weakReference = this.weakAdPresentListener;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void setAdPresentListener(InternalGAMAdPresentListener adPresentListener) {
        this.weakAdPresentListener = new WeakReference<>(adPresentListener);
    }

    public void onAdShown() {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda4
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("onAdShown (%s)", this.f$0.gamUnitData);
            }
        });
        this.gamLoader.onGAMAdShown(this);
        setStatus(Status.Shown);
        this.expirationHandler.stop();
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        if (isShown()) {
            return;
        }
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("onExpired (%s)", this.f$0.gamUnitData);
            }
        });
        setStatus(Status.Expired);
        InternalGAMAdPresentListener adPresentListener = getAdPresentListener();
        if (adPresentListener != null) {
            adPresentListener.onAdExpired();
        }
        destroy(true);
        this.gamLoader.load(this.adsFormat);
    }

    public void destroy() {
        destroy(isShown());
    }

    private void destroy(boolean canRemoveAd) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda1
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("destroy (%s)", this.f$0.gamUnitData);
            }
        });
        WeakReference<InternalGAMAdPresentListener> weakReference = this.weakAdPresentListener;
        if (weakReference != null) {
            weakReference.clear();
            this.weakAdPresentListener = null;
        }
        this.expirationHandler.stop();
        this.gamLoader.onGAMAdDestroy(this, canRemoveAd);
    }

    public final void load(Context context, final InternalLoadListener loadListener) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda2
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("load (%s)", this.f$0.gamUnitData);
            }
        });
        final Context applicationContext = context.getApplicationContext();
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                InternalGAMAd.m2492$r8$lambda$GAZ82UytRm6q8GfvlYTfgryaPg(this.f$0, applicationContext, loadListener);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$GAZ82UytRm6q8-GfvlYTfgryaPg, reason: not valid java name */
    public static /* synthetic */ void m2492$r8$lambda$GAZ82UytRm6q8GfvlYTfgryaPg(InternalGAMAd internalGAMAd, Context context, InternalLoadListener internalLoadListener) {
        internalGAMAd.getClass();
        try {
            internalGAMAd.setStatus(Status.Loading);
            internalGAMAd.loadAd(context, internalLoadListener);
        } catch (Throwable th) {
            Logger.w(th);
            internalLoadListener.onAdLoadFailed(internalGAMAd, BMError.throwable("Exception loading InternalGAM object", th));
        }
    }

    public final void release() {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.gam.InternalGAMAd$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                InternalGAMAd.$r8$lambda$Rh5BC5NfmkcQmT1z9oYE50f6UP0(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Rh5BC5NfmkcQmT1z9oYE50f6UP0(InternalGAMAd internalGAMAd) {
        internalGAMAd.getClass();
        try {
            internalGAMAd.destroyAd();
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
        return this.tag + ", " + getGamUnitData();
    }
}
