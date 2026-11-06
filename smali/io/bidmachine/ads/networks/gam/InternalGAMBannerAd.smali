###### Class io.bidmachine.ads.networks.gam.InternalGAMBannerAd (io.bidmachine.ads.networks.gam.InternalGAMBannerAd)
.class public abstract Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;
.super Lio/bidmachine/ads/networks/gam/InternalGAMAd;
.source "InternalGAMBannerAd.java"


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

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V

    return-void
.end method


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method
