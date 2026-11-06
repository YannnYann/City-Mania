###### Class io.bidmachine.ads.networks.gam.InternalGAMAdLoadListener (io.bidmachine.ads.networks.gam.InternalGAMAdLoadListener)
.class public interface abstract Lio/bidmachine/ads/networks/gam/InternalGAMAdLoadListener;
.super Ljava/lang/Object;
.source "InternalGAMAdLoadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GAMAdType:",
        "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
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

.method public abstract onAdLoaded(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalGAMAd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGAMAdType;)V"
        }
    .end annotation
.end method
