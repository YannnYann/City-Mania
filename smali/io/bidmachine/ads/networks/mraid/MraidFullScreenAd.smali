###### Class io.bidmachine.ads.networks.mraid.MraidFullScreenAd (io.bidmachine.ads.networks.mraid.MraidFullScreenAd)
.class public final Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "SourceFile"


# instance fields
.field public mraidInterstitial:Lio/bidmachine/iab/mraid/MraidInterstitial;

.field public mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

.field public final mraidType:Lio/bidmachine/iab/mraid/MraidType;


# direct methods
.method public static synthetic $r8$lambda$4boXXb0jJmnPe02SfOS6cxnlzmA(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lio/bidmachine/ads/networks/mraid/MraidParams;Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->load$lambda$0(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lio/bidmachine/ads/networks/mraid/MraidParams;Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxrravV8AejM7Zf-8hUKl7_dDdY(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->onDestroy$lambda$1(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidType;)V
    .registers 3

    const-string v0, "mraidType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidType:Lio/bidmachine/iab/mraid/MraidType;

    return-void
.end method

.method public static final load$lambda$0(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lio/bidmachine/ads/networks/mraid/MraidParams;Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mraidParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$applicationContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$creativeAdm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_19
    invoke-static {}, Lio/bidmachine/iab/mraid/MraidInterstitial;->newBuilder()Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCacheControl()Lio/bidmachine/iab/CacheControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getPlaceholderTimeoutSec()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setPlaceholderTimeoutSec(F)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getSkipOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setCloseTime(F)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getUseNativeClose()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;

    .line 10
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    .line 11
    invoke-direct {v1, p2, p3, v2}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;-><init>(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/internal/q;)V

    .line 12
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setListener(Lio/bidmachine/iab/mraid/MraidInterstitialListener;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getR1()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setR1(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getR2()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setR2(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getProgressDuration()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setDurationSec(F)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setProductLink(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCloseableViewStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCountDownStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getProgressStyle()Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setProgressStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setAutoViewabilityCheck(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p1, p3}, Lio/bidmachine/ads/networks/mraid/MraidParams;->createEngagedClickParams(Lio/bidmachine/unified/UnifiedAdCallback;)Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->setEngagedClickParams(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->build(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidInterstitial;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lio/bidmachine/iab/mraid/MraidInterstitial;

    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Lio/bidmachine/iab/mraid/MraidInterstitial;->load(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_19 .. :try_end_a1} :catchall_a2

    return-void

    :catchall_a2
    move-exception p0

    .line 55
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 56
    const-string p1, "Exception loading MRAID fullscreen object"

    invoke-static {p1, p0}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    const-string p1, "throwable(\"Exception loa\u2026ID fullscreen object\", t)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static final onDestroy$lambda$1(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->destroyMraidInterstitial()V

    return-void
.end method


# virtual methods
.method public final destroyMraidInterstitial()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->destroy()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lio/bidmachine/iab/mraid/MraidInterstitial;

    return-void
.end method

.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 6

    .line 1
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 12
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
    new-instance v2, Lio/bidmachine/ads/networks/mraid/MraidParams;

    invoke-direct {v2, p4}, Lio/bidmachine/ads/networks/mraid/MraidParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 3
    invoke-virtual {v2, p2}, Lio/bidmachine/ads/networks/mraid/MraidParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p3

    if-nez p3, :cond_25

    return-void

    .line 6
    :cond_25
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCreativeAdm()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_60

    .line 8
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string p1, "contextProvider.getApplicationContext()"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getOmsdkEnabled()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 10
    new-instance p1, Lio/bidmachine/internal/q;

    invoke-direct {p1}, Lio/bidmachine/internal/q;-><init>()V

    .line 11
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    .line 12
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCreativeAdm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/bidmachine/internal/q;->prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    const-string p3, "{\n            val mraidO\u2026ms.creativeAdm)\n        }"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4e
    move-object v5, p1

    goto :goto_55

    .line 18
    :cond_50
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCreativeAdm()Ljava/lang/String;

    move-result-object p1

    goto :goto_4e

    .line 20
    :goto_55
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lio/bidmachine/ads/networks/mraid/MraidParams;Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void

    .line 21
    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    if-eqz v0, :cond_10

    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/q;->destroy(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    return-void

    .line 8
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->destroyMraidInterstitial()V

    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/RendererConfiguration;)V
    .registers 5
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
    iget-object p3, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-nez p3, :cond_1d

    .line 3
    const-string p1, "MRAID fullscreen object is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string p3, "internal(\"MRAID fullscreen object is null\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 6
    :cond_1d
    invoke-virtual {p3}, Lio/bidmachine/iab/mraid/MraidInterstitial;->isReady()Z

    move-result v0

    if-nez v0, :cond_32

    .line 7
    const-string p1, "MRAID fullscreen object is not ready"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string p3, "internal(\"MRAID fullscreen object is not ready\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 10
    :cond_32
    invoke-virtual {p3}, Lio/bidmachine/iab/mraid/MraidInterstitial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 11
    const-string p1, "MRAID fullscreen object is already was shown"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const-string p3, "internal(\"MRAID fullscre\u2026ct is already was shown\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 15
    :cond_47
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidType:Lio/bidmachine/iab/mraid/MraidType;

    invoke-virtual {p3, p1, p2}, Lio/bidmachine/iab/mraid/MraidInterstitial;->show(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidType;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidFullScreenAd$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.mraid.MraidFullScreenAd$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

.field public final synthetic f$1:Lio/bidmachine/ads/networks/mraid/MraidParams;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lio/bidmachine/ads/networks/mraid/MraidParams;Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    iput-object p5, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    iget-object v4, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->$r8$lambda$4boXXb0jJmnPe02SfOS6cxnlzmA(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lio/bidmachine/ads/networks/mraid/MraidParams;Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidFullScreenAd$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.mraid.MraidFullScreenAd$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->$r8$lambda$rxrravV8AejM7Zf-8hUKl7_dDdY(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)V

    return-void
.end method
