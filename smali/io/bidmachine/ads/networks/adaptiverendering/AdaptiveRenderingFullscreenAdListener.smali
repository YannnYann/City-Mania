###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingFullscreenAdListener (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingFullscreenAdListener)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/ad/fullscreen/FullScreenAdListener;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAdAppeared(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V
    .registers 3

    .line 1
    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdAppeared(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdAppeared(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 5

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1, p2, p3}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public bridge synthetic onAdClicked(Ljava/lang/Object;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdClicked(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public onAdDisappeared(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V
    .registers 3

    .line 1
    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdDisappeared(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdDisappeared(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V
    .registers 3

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdExpired()V

    return-void
.end method

.method public bridge synthetic onAdExpired(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdExpired(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V

    return-void
.end method

.method public onAdFailToLoad(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    sget-object v0, Lio/bidmachine/utils/BMError;->NoFill:Lio/bidmachine/utils/BMError;

    const-string v1, "NoFill"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->toBMError(Lio/bidmachine/util/Error;Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onAdFailToLoad(Ljava/lang/Object;Lio/bidmachine/util/Error;)V
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdFailToLoad(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onAdFailToShow(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    sget-object v0, Lio/bidmachine/utils/BMError;->InternalUnknownError:Lio/bidmachine/utils/BMError;

    const-string v1, "InternalUnknownError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->toBMError(Lio/bidmachine/util/Error;Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onAdFailToShow(Ljava/lang/Object;Lio/bidmachine/util/Error;)V
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdFailToShow(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onAdFinished(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V
    .registers 3

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    .line 5
    :cond_10
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public bridge synthetic onAdFinished(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdFinished(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V
    .registers 3

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdLoaded(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V

    return-void
.end method

.method public onAdShown(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V
    .registers 3

    .line 1
    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdShown(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onAdShown(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V

    return-void
.end method

.method public onBrokenCreativeEvent(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 4

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "brokenCreativeEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->toEventParams(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onBrokenCreativeEvent(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic onBrokenCreativeEvent(Ljava/lang/Object;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onBrokenCreativeEvent(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public onOpenPrivacySheet(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 5

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "privacySheetParams"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lio/bidmachine/rendering/view/PrivacySheetDialog;->Companion:Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;

    .line 3
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->findDialogContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "findDialogContext(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, p2}, Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;->show(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;

    return-void
.end method

.method public bridge synthetic onOpenPrivacySheet(Ljava/lang/Object;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onOpenPrivacySheet(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public onViewabilityEvent(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "fullScreenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "actionEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    if-eqz p3, :cond_13

    invoke-static {p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->toBMError(Lio/bidmachine/util/Error;)Lio/bidmachine/utils/BMError;

    move-result-object p3

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    :goto_14
    invoke-interface {p1, p2, p3}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onViewabilityEvent(Ljava/lang/Object;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 4

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAdListener;->onViewabilityEvent(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V

    return-void
.end method
