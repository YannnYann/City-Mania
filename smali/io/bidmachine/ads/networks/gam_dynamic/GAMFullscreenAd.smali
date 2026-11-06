###### Class io.bidmachine.ads.networks.gam_dynamic.GAMFullscreenAd (io.bidmachine.ads.networks.gam_dynamic.GAMFullscreenAd)
.class public abstract Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "GAMFullscreenAd.java"


# instance fields
.field public final gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

.field public internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;


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

    .line 27
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    .line 28
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->gamNetwork:Lio/bidmachine/ads/networks/gam_dynamic/GAMNetwork;

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

    .line 82
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    if-eqz v0, :cond_9

    .line 83
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPresentListener()Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;
.end method

.method public onDestroy()V
    .registers 2

    .line 73
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    if-eqz v0, :cond_a

    .line 74
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->destroy()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    :cond_a
    return-void
.end method

.method public onShown()V
    .registers 2

    .line 63
    invoke-super {p0}, Lio/bidmachine/unified/UnifiedAd;->onShown()V

    .line 65
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    if-eqz v0, :cond_a

    .line 66
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->onAdShown()V

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

    .line 35
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_10

    .line 37
    const-string p1, "Activity is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 40
    :cond_10
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    if-nez p3, :cond_1e

    .line 41
    const-string p1, "Fullscreen object is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 44
    :cond_1e
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->isExpired()Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 45
    const-string p1, "Fullscreen object is expired"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 48
    :cond_2e
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->isLoaded()Z

    move-result p3

    if-nez p3, :cond_40

    .line 49
    const-string p1, "Fullscreen object not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 52
    :cond_40
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->getPresentListener()Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;

    move-result-object p3

    if-nez p3, :cond_50

    .line 54
    const-string p1, "Fullscreen listener is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 58
    :cond_50
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMFullscreenAd;->internalFullscreenAd:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    invoke-virtual {p2, p1, p3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;->show(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V

    return-void
.end method
