###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingFullscreenAd (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingFullscreenAd)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "SourceFile"


# instance fields
.field public fullScreenAd:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 6

    .line 1
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "contextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "unifiedMediationParams"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "networkAdUnit"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "contextProvider.getApplicationContext()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p3, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;

    invoke-direct {p3, p4, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/unified/UnifiedAdCallback;)V

    .line 7
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_2e

    return-void

    .line 10
    :cond_2e
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;->getAdParams()Lio/bidmachine/rendering/model/AdParams;

    move-result-object p4

    if-eqz p4, :cond_4b

    .line 12
    new-instance p4, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;->getAdParams()Lio/bidmachine/rendering/model/AdParams;

    move-result-object p3

    invoke-direct {p4, p1, p3}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/AdParams;)V

    .line 13
    new-instance p3, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;

    invoke-direct {p3, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;-><init>(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    invoke-virtual {p4, p3}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->setFullScreenAdListener(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAdListener;)V

    .line 14
    iput-object p4, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;->fullScreenAd:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    .line 17
    invoke-virtual {p4}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->load()V

    return-void

    .line 18
    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;->fullScreenAd:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->destroy()V

    :cond_7
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;->fullScreenAd:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/RendererConfiguration;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "contextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;->fullScreenAd:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    if-nez v0, :cond_1d

    .line 3
    const-string p1, "AdaptiveRendering fullscreen object is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string p3, "internal(\"AdaptiveRender\u2026llscreen object is null\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 6
    :cond_1d
    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_32

    .line 7
    const-string p1, "AdaptiveRendering fullscreen object not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string p3, "internal(\"AdaptiveRender\u2026creen object not loaded\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 10
    :cond_32
    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 11
    const-string p1, "AdaptiveRendering fullscreen object already is finished"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string p3, "internal(\"AdaptiveRender\u2026ect already is finished\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    :cond_47
    if-eqz p3, :cond_5b

    .line 14
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "contextProvider.applicationContext"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lio/bidmachine/RendererConfiguration;->getWatermarkDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_5b

    .line 15
    invoke-virtual {v0, p2}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->setWatermark(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_5b
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "contextProvider.getApplicationContext()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->show(Landroid/content/Context;)V

    return-void
.end method
