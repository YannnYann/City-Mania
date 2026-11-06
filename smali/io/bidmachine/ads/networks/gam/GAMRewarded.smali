###### Class io.bidmachine.ads.networks.gam.GAMRewarded (io.bidmachine.ads.networks.gam.GAMRewarded)
.class public Lio/bidmachine/ads/networks/gam/GAMRewarded;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "GAMRewarded.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;
    }
.end annotation


# instance fields
.field public final gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

.field public gamRewardedAd:Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

.field public listener:Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;


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

    .line 27
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    .line 28
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    return-void
.end method

.method public static synthetic access$102(Lio/bidmachine/ads/networks/gam/GAMRewarded;Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;)Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;
    .registers 2

    .line 17
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamRewardedAd:Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

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

    .line 17
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam/GAMRewarded;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

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

    .line 37
    new-instance p1, Lio/bidmachine/ads/networks/gam/GAMParams;

    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/gam/GAMParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 38
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/gam/GAMParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 45
    :cond_c
    new-instance p1, Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/gam/GAMRewarded;Lio/bidmachine/ads/networks/gam/GAMRewarded$1;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->listener:Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;

    .line 46
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamNetwork:Lio/bidmachine/ads/networks/gam/GAMNetwork;

    invoke-virtual {p2, p5, p1}, Lio/bidmachine/ads/networks/gam/GAMNetwork;->loadRewarded(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->listener:Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;

    .line 90
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamRewardedAd:Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

    if-eqz v1, :cond_c

    .line 91
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->destroy()V

    .line 92
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamRewardedAd:Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

    :cond_c
    return-void
.end method

.method public onShown()V
    .registers 2

    .line 80
    invoke-super {p0}, Lio/bidmachine/unified/UnifiedAd;->onShown()V

    .line 82
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamRewardedAd:Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

    if-eqz v0, :cond_a

    .line 83
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->onAdShown()V

    :cond_a
    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/RendererConfiguration;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contextProvider",
            "callback",
            "rendererConfiguration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_10

    .line 55
    const-string p1, "Activity is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 58
    :cond_10
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamRewardedAd:Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

    if-nez p3, :cond_1e

    .line 59
    const-string p1, "InternalGAM rewarded object is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 62
    :cond_1e
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->isExpired()Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 63
    const-string p1, "InternalGAM rewarded object is expired"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 66
    :cond_2e
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamRewardedAd:Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->isLoaded()Z

    move-result p3

    if-nez p3, :cond_40

    .line 67
    const-string p1, "InternalGAM rewarded object not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 70
    :cond_40
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->listener:Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;

    if-nez p3, :cond_4e

    .line 71
    const-string p1, "InternalGAM rewarded listener is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 75
    :cond_4e
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded;->gamRewardedAd:Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

    invoke-virtual {p2, p1, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;->show(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.GAMRewarded.AnonymousClass1 (io.bidmachine.ads.networks.gam.GAMRewarded$1)
.class public synthetic Lio/bidmachine/ads/networks/gam/GAMRewarded$1;
.super Ljava/lang/Object;
.source "GAMRewarded.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/GAMRewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ads.networks.gam.GAMRewarded.Listener (io.bidmachine.ads.networks.gam.GAMRewarded$Listener)
.class public final Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;
.super Lio/bidmachine/ads/networks/gam/GAMFullscreenAdListener;
.source "GAMRewarded.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/GAMRewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/gam/GAMFullscreenAdListener<",
        "Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;",
        ">;",
        "Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAdListener;"
    }
.end annotation


# instance fields
.field public final gamRewarded:Lio/bidmachine/ads/networks/gam/GAMRewarded;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/gam/GAMRewarded;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "gamRewarded"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMFullscreenAdListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    .line 107
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;->gamRewarded:Lio/bidmachine/ads/networks/gam/GAMRewarded;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/gam/GAMRewarded;Lio/bidmachine/ads/networks/gam/GAMRewarded$1;)V
    .registers 4

    .line 97
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/gam/GAMRewarded;)V

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
            "gamRewardedAd"
        }
    .end annotation

    .line 97
    check-cast p1, Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;->onAdLoaded(Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamRewardedAd"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMRewarded$Listener;->gamRewarded:Lio/bidmachine/ads/networks/gam/GAMRewarded;

    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/gam/GAMRewarded;->access$102(Lio/bidmachine/ads/networks/gam/GAMRewarded;Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;)Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;

    .line 114
    invoke-super {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMFullscreenAdListener;->onAdLoaded(Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;)V

    return-void
.end method
