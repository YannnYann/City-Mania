###### Class io.bidmachine.ads.networks.gam_dynamic.GAMFullscreenAdListener (io.bidmachine.ads.networks.gam_dynamic.GAMFullscreenAdListener)
.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAdListener;
.super Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener;
.source "GAMFullscreenAdListener.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener;
.implements Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InternalAdType:",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;",
        ">",
        "Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener<",
        "TInternalAdType;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdCallback;",
        ">;",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalAdLoadListener<",
        "TInternalAdType;>;",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;"
    }
.end annotation


# instance fields
.field public final gamFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "gamFullscreenAd"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    .line 18
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAdListener;->gamFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "internalAd"
        }
    .end annotation

    .line 7
    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAdListener;->onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;)V
    .registers 3
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

    .line 23
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAdListener;->gamFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;

    iput-object p1, v0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method
