###### Class io.bidmachine.ads.networks.gam_dynamic.InternalAdListener (io.bidmachine.ads.networks.gam_dynamic.InternalAdListener)
.class public interface abstract Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;
.super Ljava/lang/Object;
.source "InternalAdListener.java"


# virtual methods
.method public abstract onAdDestroyed(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalAd",
            "isAdReleased"
        }
    .end annotation
.end method

.method public abstract onAdExpired(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation
.end method

.method public abstract onAdShown(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalAd"
        }
    .end annotation
.end method
