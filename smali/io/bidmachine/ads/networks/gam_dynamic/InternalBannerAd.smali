###### Class io.bidmachine.ads.networks.gam_dynamic.InternalBannerAd (io.bidmachine.ads.networks.gam_dynamic.InternalBannerAd)
.class public abstract Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;
.super Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
.source "InternalBannerAd.java"


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "networkParams",
            "taskExecutor",
            "adsFormat",
            "adUnit",
            "internalAdListener"
        }
    .end annotation

    .line 18
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V

    return-void
.end method


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method
