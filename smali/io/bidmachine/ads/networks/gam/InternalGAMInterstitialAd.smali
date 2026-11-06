###### Class io.bidmachine.ads.networks.gam.InternalGAMInterstitialAd (io.bidmachine.ads.networks.gam.InternalGAMInterstitialAd)
.class public abstract Lio/bidmachine/ads/networks/gam/InternalGAMInterstitialAd;
.super Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;
.source "InternalGAMInterstitialAd.java"


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gamLoader",
            "adsFormat",
            "gamUnitData"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V

    return-void
.end method
