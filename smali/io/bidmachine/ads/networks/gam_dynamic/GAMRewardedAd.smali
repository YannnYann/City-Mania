###### Class io.bidmachine.ads.networks.gam_dynamic.GAMRewardedAd (io.bidmachine.ads.networks.gam_dynamic.GAMRewardedAd)
.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd;
.super Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;
.source "GAMRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd$Listener;
    }
.end annotation


# instance fields
.field public listener:Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamNetwork"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;)V

    return-void
.end method


# virtual methods
.method public getPresentListener()Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;
    .registers 2

    .line 43
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd;->listener:Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;

    return-object v0
.end method

.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "contextProvider",
            "callback",
            "requestParams",
            "unifiedMediationParams",
            "networkAdUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
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
            "contextProvider",
            "callback",
            "requestParams",
            "unifiedMediationParams",
            "networkAdUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    new-instance p1, Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd$Listener;

    invoke-direct {p1, p2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd$Listener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd;->listener:Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;

    .line 30
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    invoke-interface {p2, p5, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->loadRewarded(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd;->listener:Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;

    .line 37
    invoke-super {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->onDestroy()V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMRewardedAd.Listener (io.bidmachine.ads.networks.gam_dynamic.GAMRewardedAd$Listener)
.class public final Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd$Listener;
.super Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAdListener;
.source "GAMRewardedAd.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/GAMRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAdListener<",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAd;",
        ">;",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAdListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unifiedFullscreenAdCallback",
            "gamFullscreenAd"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAdListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;)V

    return-void
.end method
