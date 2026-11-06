###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingBannerAdListener (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingBannerAdListener)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/ad/view/AdViewListener;


# instance fields
.field public final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    return-void
.end method


# virtual methods
.method public onAdAppeared(Lio/bidmachine/rendering/ad/view/AdView;)V
    .registers 3

    .line 1
    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdAppeared(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdAppeared(Lio/bidmachine/rendering/ad/view/AdView;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 5

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p1, p2, p3}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public bridge synthetic onAdClicked(Ljava/lang/Object;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdClicked(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public onAdDisappeared(Lio/bidmachine/rendering/ad/view/AdView;)V
    .registers 3

    .line 1
    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdDisappeared(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdDisappeared(Lio/bidmachine/rendering/ad/view/AdView;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/rendering/ad/view/AdView;)V
    .registers 3

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdExpired()V

    return-void
.end method

.method public bridge synthetic onAdExpired(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdExpired(Lio/bidmachine/rendering/ad/view/AdView;)V

    return-void
.end method

.method public onAdFailToLoad(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

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
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdFailToLoad(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onAdFailToShow(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

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
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdFailToShow(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onAdFinished(Lio/bidmachine/rendering/ad/view/AdView;)V
    .registers 3

    .line 1
    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdFinished(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdFinished(Lio/bidmachine/rendering/ad/view/AdView;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/rendering/ad/view/AdView;)V
    .registers 3

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdLoaded(Lio/bidmachine/rendering/ad/view/AdView;)V

    return-void
.end method

.method public onAdShown(Lio/bidmachine/rendering/ad/view/AdView;)V
    .registers 3

    .line 1
    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdShown(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onAdShown(Lio/bidmachine/rendering/ad/view/AdView;)V

    return-void
.end method

.method public onBrokenCreativeEvent(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 4

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "brokenCreativeEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-static {p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->toEventParams(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onBrokenCreativeEvent(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic onBrokenCreativeEvent(Ljava/lang/Object;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onBrokenCreativeEvent(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public onOpenPrivacySheet(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 5

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacySheetParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->Companion:Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lio/bidmachine/core/Utils;->findDialogContext(Landroid/content/Context;Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "findDialogContext(adView.context, adView)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;->show(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;

    return-void
.end method

.method public bridge synthetic onOpenPrivacySheet(Ljava/lang/Object;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onOpenPrivacySheet(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public onViewabilityEvent(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "actionEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

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
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAdListener;->onViewabilityEvent(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V

    return-void
.end method
