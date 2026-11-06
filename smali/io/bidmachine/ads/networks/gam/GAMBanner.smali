###### Class io.bidmachine.ads.networks.gam.GAMBanner (io.bidmachine.ads.networks.gam.GAMBanner)
.class public Lio/bidmachine/ads/networks/gam/GAMBanner;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "GAMBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/GAMBanner$Listener;
    }
.end annotation


# instance fields
.field public gamBannerAd:Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;

.field public final gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

.field public listener:Lio/bidmachine/ads/networks/gam/InternalGAMBannerAdListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMNetwork;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamNetwork"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

    .line 25
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    return-void
.end method

.method public static synthetic access$102(Lio/bidmachine/ads/networks/gam/GAMBanner;Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;)Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;
    .registers 2

    .line 14
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->gamBannerAd:Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;

    return-object p1
.end method


# virtual methods
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

    .line 14
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam/GAMBanner;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

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

    .line 34
    new-instance p1, Lio/bidmachine/ads/networks/gam/GAMParams;

    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/gam/GAMParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 35
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/gam/GAMParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 42
    :cond_c
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->isOverrideCallbacks()Z

    move-result p1

    if-nez p1, :cond_19

    .line 43
    sget-object p1, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 46
    :cond_19
    new-instance p1, Lio/bidmachine/ads/networks/gam/GAMBanner$Listener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lio/bidmachine/ads/networks/gam/GAMBanner$Listener;-><init>(Lio/bidmachine/ads/networks/gam/GAMBanner;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/gam/GAMBanner$1;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->listener:Lio/bidmachine/ads/networks/gam/InternalGAMBannerAdListener;

    .line 47
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    invoke-virtual {p2, p5, p1}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->loadBanner(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMBannerAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->listener:Lio/bidmachine/ads/networks/gam/InternalGAMBannerAdListener;

    .line 62
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->gamBannerAd:Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;

    if-eqz v1, :cond_c

    .line 63
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->destroy()V

    .line 64
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->gamBannerAd:Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;

    :cond_c
    return-void
.end method

.method public onShown()V
    .registers 2

    .line 52
    invoke-super {p0}, Lio/bidmachine/unified/UnifiedAd;->onShown()V

    .line 54
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMBanner;->gamBannerAd:Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;

    if-eqz v0, :cond_a

    .line 55
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->onAdShown()V

    :cond_a
    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.GAMBanner.AnonymousClass1 (io.bidmachine.ads.networks.gam.GAMBanner$1)
.class public synthetic Lio/bidmachine/ads/networks/gam/GAMBanner$1;
.super Ljava/lang/Object;
.source "GAMBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/GAMBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ads.networks.gam.GAMBanner.Listener (io.bidmachine.ads.networks.gam.GAMBanner$Listener)
.class public final Lio/bidmachine/ads/networks/gam/GAMBanner$Listener;
.super Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;
.source "GAMBanner.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/InternalGAMBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/GAMBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/gam/GAMBaseAdListener<",
        "Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;",
        "Lio/bidmachine/unified/UnifiedBannerAdCallback;",
        ">;",
        "Lio/bidmachine/ads/networks/gam/InternalGAMBannerAdListener;"
    }
.end annotation


# instance fields
.field public final gamBanner:Lio/bidmachine/ads/networks/gam/GAMBanner;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMBanner;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gamBanner",
            "callback"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p2}, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    .line 80
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMBanner$Listener;->gamBanner:Lio/bidmachine/ads/networks/gam/GAMBanner;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/GAMBanner;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/gam/GAMBanner$1;)V
    .registers 4

    .line 69
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/GAMBanner$Listener;-><init>(Lio/bidmachine/ads/networks/gam/GAMBanner;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdLoaded(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "gamAd"
        }
    .end annotation

    .line 69
    check-cast p1, Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMBanner$Listener;->onAdLoaded(Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamAd"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMBanner$Listener;->gamBanner:Lio/bidmachine/ads/networks/gam/GAMBanner;

    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/gam/GAMBanner;->access$102(Lio/bidmachine/ads/networks/gam/GAMBanner;Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;)Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;

    .line 87
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/InternalGAMBannerAd;->getAdView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
