###### Class io.bidmachine.ads.networks.vast.VastFullScreenAd (io.bidmachine.ads.networks.vast.VastFullScreenAd)
.class public final Lio/bidmachine/ads/networks/vast/VastFullScreenAd;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "SourceFile"


# instance fields
.field public postBannerAdMeasurer:Lio/bidmachine/internal/q;

.field public vastAdLoadListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

.field public vastAdShowListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

.field public vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

.field public vastRequest:Lio/bidmachine/iab/vast/VastRequest;

.field public vastView:Lio/bidmachine/iab/vast/activity/VastView;

.field public final videoType:Lio/bidmachine/iab/vast/VideoType;


# direct methods
.method public static synthetic $r8$lambda$ACaR59kcLz7DxLG1RmOLknMXIaw(Lio/bidmachine/ads/networks/vast/VastFullScreenAd;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->onDestroy$lambda$0(Lio/bidmachine/ads/networks/vast/VastFullScreenAd;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/vast/VideoType;)V
    .registers 3

    const-string v0, "videoType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->videoType:Lio/bidmachine/iab/vast/VideoType;

    return-void
.end method

.method public static final onDestroy$lambda$0(Lio/bidmachine/ads/networks/vast/VastFullScreenAd;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->destroyVastView()V

    return-void
.end method


# virtual methods
.method public final destroyVastView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastView:Lio/bidmachine/iab/vast/activity/VastView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->destroy()V

    :cond_7
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastView:Lio/bidmachine/iab/vast/activity/VastView;

    return-void
.end method

.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 6

    .line 1
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

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
    new-instance p3, Lio/bidmachine/ads/networks/vast/VastParams;

    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/vast/VastParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 3
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/vast/VastParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_25

    goto :goto_99

    .line 6
    :cond_25
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/vast/VastParams;->getCreativeAdm()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_9a

    .line 8
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/vast/VastParams;->getOmsdkEnabled()Z

    move-result p4

    if-eqz p4, :cond_3f

    .line 9
    new-instance p4, Lio/bidmachine/internal/P;

    invoke-direct {p4}, Lio/bidmachine/internal/P;-><init>()V

    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

    .line 10
    new-instance p4, Lio/bidmachine/internal/q;

    invoke-direct {p4}, Lio/bidmachine/internal/q;-><init>()V

    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->postBannerAdMeasurer:Lio/bidmachine/internal/q;

    .line 12
    :cond_3f
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "contextProvider.getApplicationContext()"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance p4, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

    invoke-direct {p4, p2}, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdLoadListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

    .line 14
    new-instance p2, Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/activity/VastView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastView:Lio/bidmachine/iab/vast/activity/VastView;

    .line 15
    invoke-static {}, Lio/bidmachine/iab/vast/VastRequest;->newBuilder()Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 16
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/vast/VastParams;->getCacheControl()Lio/bidmachine/iab/CacheControl;

    move-result-object p4

    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/VastRequest$Builder;->setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 17
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/vast/VastParams;->getPlaceholderTimeoutSec()F

    move-result p4

    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/VastRequest$Builder;->setPlaceholderTimeoutSec(F)Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 18
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/vast/VastParams;->getSkipOffset()I

    move-result p4

    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/VastRequest$Builder;->setVideoCloseTime(I)Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 19
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/vast/VastParams;->getCompanionSkipOffset()I

    move-result p4

    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/VastRequest$Builder;->setCompanionCloseTime(I)Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 20
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/vast/VastParams;->getUseNativeClose()Z

    move-result p4

    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/VastRequest$Builder;->forceUseNativeCloseTime(Z)Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 21
    iget-object p4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/VastRequest$Builder;->setAdMeasurer(Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/VastRequest$Builder;->build()Lio/bidmachine/iab/vast/VastRequest;

    move-result-object p2

    .line 23
    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz p2, :cond_99

    .line 33
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/vast/VastParams;->getCreativeAdm()Ljava/lang/String;

    move-result-object p3

    .line 34
    iget-object p4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdLoadListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

    .line 35
    invoke-virtual {p2, p1, p3, p4}, Lio/bidmachine/iab/vast/VastRequest;->loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/iab/vast/VastRequestListener;)V

    :cond_99
    :goto_99
    return-void

    .line 36
    :cond_9a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdLoadListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdShowListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

    .line 3
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lio/bidmachine/internal/r;->a()V

    .line 4
    :cond_c
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

    .line 5
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->postBannerAdMeasurer:Lio/bidmachine/internal/q;

    if-eqz v1, :cond_1d

    new-instance v2, Lio/bidmachine/ads/networks/vast/VastFullScreenAd$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/vast/VastFullScreenAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/vast/VastFullScreenAd;)V

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/q;->destroy(Ljava/lang/Runnable;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1e

    :cond_1d
    move-object v1, v0

    :goto_1e
    if-nez v1, :cond_23

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->destroyVastView()V

    .line 8
    :cond_23
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->postBannerAdMeasurer:Lio/bidmachine/internal/q;

    .line 9
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v1, :cond_2b

    .line 10
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lio/bidmachine/iab/vast/VastRequest;

    :cond_2b
    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/RendererConfiguration;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p3, "contextProvider"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callback"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lio/bidmachine/iab/vast/VastRequest;

    if-eqz v0, :cond_32

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/VastRequest;->canDisplay()Z

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_32

    .line 3
    new-instance p3, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

    iget-object v2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->postBannerAdMeasurer:Lio/bidmachine/internal/q;

    invoke-direct {p3, p2, v1, v2}, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/internal/P;Lio/bidmachine/internal/q;)V

    iput-object p3, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdShowListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

    .line 5
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->videoType:Lio/bidmachine/iab/vast/VideoType;

    .line 7
    iget-object v3, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdShowListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

    .line 8
    iget-object v4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastView:Lio/bidmachine/iab/vast/activity/VastView;

    .line 9
    iget-object v5, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/internal/P;

    .line 10
    iget-object v6, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->postBannerAdMeasurer:Lio/bidmachine/internal/q;

    .line 11
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/iab/vast/VastRequest;->display(Landroid/content/Context;Lio/bidmachine/iab/vast/VideoType;Lio/bidmachine/iab/vast/VastActivityListener;Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastPlaybackListener;Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V

    return-void

    .line 20
    :cond_32
    const-string p1, "VAST fullscreen object is null or can not find video file"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string p3, "internal(\"VAST fullscree\u2026can not find video file\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.vast.VastFullScreenAd$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.vast.VastFullScreenAd$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/vast/VastFullScreenAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/vast/VastFullScreenAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/vast/VastFullScreenAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/vast/VastFullScreenAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/vast/VastFullScreenAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->$r8$lambda$ACaR59kcLz7DxLG1RmOLknMXIaw(Lio/bidmachine/ads/networks/vast/VastFullScreenAd;)V

    return-void
.end method
