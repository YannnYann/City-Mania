###### Class io.bidmachine.ads.networks.gam_dynamic.GAMBannerAd (io.bidmachine.ads.networks.gam_dynamic.GAMBannerAd)
.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "GAMBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd$Listener;
    }
.end annotation


# instance fields
.field public final gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

.field public internalBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

.field public listener:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAdListener;


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

    .line 29
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

    .line 30
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    return-void
.end method


# virtual methods
.method public getCustomParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->internalBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

    if-eqz v0, :cond_9

    .line 65
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

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

    .line 17
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
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

    .line 39
    new-instance p1, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd$Listener;

    invoke-direct {p1, p2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd$Listener;-><init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->listener:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAdListener;

    .line 40
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

    invoke-interface {p2, p5, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;->loadBanner(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->listener:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAdListener;

    .line 55
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->internalBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

    if-eqz v1, :cond_c

    .line 56
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->destroy()V

    .line 57
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->internalBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

    :cond_c
    return-void
.end method

.method public onShown()V
    .registers 2

    .line 45
    invoke-super {p0}, Lio/bidmachine/unified/UnifiedAd;->onShown()V

    .line 47
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->internalBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

    if-eqz v0, :cond_a

    .line 48
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->onAdShown()V

    :cond_a
    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.GAMBannerAd.Listener (io.bidmachine.ads.networks.gam_dynamic.GAMBannerAd$Listener)
.class public final Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd$Listener;
.super Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener;
.source "GAMBannerAd.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener<",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;",
        "Lio/bidmachine/unified/UnifiedBannerAdCallback;",
        ">;",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAdListener;"
    }
.end annotation


# instance fields
.field public final gamBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unifiedBannerAdCallback",
            "gamBannerAd"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    .line 81
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd$Listener;->gamBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;

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
            "internalBannerAd"
        }
    .end annotation

    .line 70
    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd$Listener;->onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalBannerAd"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd$Listener;->gamBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;

    iput-object p1, v0, Lio/bidmachine/ads/networks/gam_dynamic/GAMBannerAd;->internalBannerAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;

    .line 88
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getOverrideCallbacks()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 89
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    sget-object v1, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    invoke-interface {v0, v1}, Lio/bidmachine/unified/UnifiedAdCallback;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 91
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMBaseAdListener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalBannerAd;->getAdView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
