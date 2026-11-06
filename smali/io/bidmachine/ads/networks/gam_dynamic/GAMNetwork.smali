###### Class io.bidmachine.ads.networks.gam_dynamic.GAMNetwork (io.bidmachine.ads.networks.gam_dynamic.GAMNetwork)
.class public interface abstract Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;
.super Ljava/lang/Object;
.source "GAMNetwork.java"


# virtual methods
.method public abstract cache()V
.end method

.method public abstract cacheWaterfall(Lio/bidmachine/AdsFormat;Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adsFormat",
            "isForced"
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract loadBanner(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAdListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "gamListener"
        }
    .end annotation
.end method

.method public abstract loadInterstitial(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalInterstitialAdListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "gamListener"
        }
    .end annotation
.end method

.method public abstract loadRewarded(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "gamListener"
        }
    .end annotation
.end method

.method public abstract reserveMostExpensiveAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAdData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkAdUnit",
            "adsFormat"
        }
    .end annotation
.end method

.method public abstract unReserveAd(Lio/bidmachine/NetworkAdUnit;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkAdUnit"
        }
    .end annotation
.end method
