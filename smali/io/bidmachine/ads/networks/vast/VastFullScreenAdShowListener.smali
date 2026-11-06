###### Class io.bidmachine.ads.networks.vast.VastFullScreenAdShowListener (io.bidmachine.ads.networks.vast.VastFullScreenAdShowListener)
.class public final Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/VastActivityListener;


# instance fields
.field public final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field public final postBannerAdMeasurer:Lio/bidmachine/internal/q;

.field public final vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/internal/P;Lio/bidmachine/internal/q;)V
    .registers 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

    .line 4
    iput-object p3, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->postBannerAdMeasurer:Lio/bidmachine/internal/q;

    return-void
.end method


# virtual methods
.method public onVastClick(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .registers 6

    const-string v0, "vastActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "iabClickCallback"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "url"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lio/bidmachine/utils/ClickPostMethod;

    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-direct {p2, v0, p3}, Lio/bidmachine/utils/ClickPostMethod;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/iab/utils/IabClickCallback;)V

    .line 2
    invoke-static {p1, p4, p2}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public onVastComplete(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 4

    const-string v0, "vastActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vastRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lio/bidmachine/internal/r;->a()V

    .line 2
    :cond_11
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    return-void
.end method

.method public onVastDismiss(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Z)V
    .registers 4

    const-string p2, "vastActivity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->postBannerAdMeasurer:Lio/bidmachine/internal/q;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lio/bidmachine/internal/r;->a()V

    .line 2
    :cond_c
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onVastShowFailed(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 3

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {p2}, Lio/bidmachine/utils/IabUtilsKt;->toBMError(Lio/bidmachine/iab/IabError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onVastShown(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 4

    const-string v0, "vastActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vastRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShown()V

    return-void
.end method
