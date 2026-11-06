###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAdLoadListener (io.bidmachine.ads.networks.gam_dynamic.InternalAdLoadListener)
.class public interface abstract Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;
.super Ljava/lang/Object;
.source "InternalAdLoadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InternalAdType:",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAdLoadFailed(Lio/bidmachine/utils/BMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bmError"
        }
    .end annotation
.end method

.method public abstract onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInternalAdType;)V"
        }
    .end annotation
.end method
