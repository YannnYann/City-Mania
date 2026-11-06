###### Class io.bidmachine.ads.networks.gam.GAMFullscreenAdListener (io.bidmachine.ads.networks.gam.GAMFullscreenAdListener)
.class public Lio/bidmachine/ads/networks/gam/GAMFullscreenAdListener;
.super Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;
.source "GAMFullscreenAdListener.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/InternalGAMAdLoadListener;
.implements Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GAMAdType:",
        "Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;",
        ">",
        "Lio/bidmachine/ads/networks/gam/GAMBaseAdListener<",
        "TGAMAdType;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdCallback;",
        ">;",
        "Lio/bidmachine/ads/networks/gam/InternalGAMAdLoadListener<",
        "TGAMAdType;>;",
        "Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;)V
    .registers 2
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

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method
