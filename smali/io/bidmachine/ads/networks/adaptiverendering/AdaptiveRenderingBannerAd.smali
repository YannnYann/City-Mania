###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingBannerAd (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingBannerAd)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAd;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "SourceFile"


# instance fields
.field public adView:Lio/bidmachine/rendering/ad/view/AdView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 6

    .line 1
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
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
    new-instance p4, Lio/bidmachine/rendering/ad/view/AdView;

    .line 14
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;->getAdParams()Lio/bidmachine/rendering/model/AdParams;

    move-result-object p3

    .line 15
    invoke-direct {p4, p1, p3}, Lio/bidmachine/rendering/ad/view/AdView;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/AdParams;)V

    .line 19
    new-instance p1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;

    invoke-direct {p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;-><init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    invoke-virtual {p4, p1}, Lio/bidmachine/rendering/ad/view/AdView;->setAdViewListener(Lio/bidmachine/rendering/ad/view/AdViewListener;)V

    .line 20
    iput-object p4, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAd;->adView:Lio/bidmachine/rendering/ad/view/AdView;

    .line 26
    invoke-virtual {p4}, Lio/bidmachine/rendering/ad/view/AdView;->load()V

    return-void

    .line 27
    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAd;->adView:Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/view/AdView;->destroy()V

    :cond_7
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAd;->adView:Lio/bidmachine/rendering/ad/view/AdView;

    return-void
.end method

.method public prepareToShow(Lio/bidmachine/RendererConfiguration;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/unified/UnifiedViewAd;->prepareToShow(Lio/bidmachine/RendererConfiguration;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAd;->adView:Lio/bidmachine/rendering/ad/view/AdView;

    if-nez v0, :cond_8

    goto :goto_1c

    :cond_8
    if-eqz p1, :cond_1c

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "adView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/bidmachine/RendererConfiguration;->getWatermarkDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->setWatermark(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    :goto_1c
    return-void
.end method
