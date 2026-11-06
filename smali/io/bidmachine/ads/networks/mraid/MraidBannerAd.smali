###### Class io.bidmachine.ads.networks.mraid.MraidBannerAd (io.bidmachine.ads.networks.mraid.MraidBannerAd)
.class public final Lio/bidmachine/ads/networks/mraid/MraidBannerAd;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "SourceFile"


# instance fields
.field public final isPrepareToShowExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

.field public mraidView:Lio/bidmachine/iab/mraid/MraidView;


# direct methods
.method public static synthetic $r8$lambda$OkGg6Ui1K1ssbKDj3et0OBoeRQU(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Z)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->onViewabilityChanged$lambda$2(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$liAp-TJ71nvc1SUi-QaLzVRod4Q(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->onDestroy$lambda$3(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ovDtrik5-czj89ZFiybHE807ESk(Lio/bidmachine/ads/networks/mraid/MraidParams;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->load$lambda$1(Lio/bidmachine/ads/networks/mraid/MraidParams;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->isPrepareToShowExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final load$lambda$1(Lio/bidmachine/ads/networks/mraid/MraidParams;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string v0, "$mraidParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$applicationContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$creativeAdm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_19
    new-instance v0, Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidView$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCacheControl()Lio/bidmachine/iab/CacheControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getPlaceholderTimeoutSec()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setPlaceholderTimeoutSec(F)Lio/bidmachine/iab/mraid/MraidView$Builder;

    move-result-object v0

    .line 4
    new-instance v1, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;

    invoke-direct {v1, p1}, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;-><init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setListener(Lio/bidmachine/iab/mraid/MraidViewListener;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    move-result-object v0

    .line 5
    iget-object v1, p2, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->createEngagedClickParams(Lio/bidmachine/unified/UnifiedAdCallback;)Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setEngagedClickParams(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p3}, Lio/bidmachine/iab/mraid/MraidView$Builder;->build(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidView;

    move-result-object p0

    .line 9
    iput-object p0, p2, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidView:Lio/bidmachine/iab/mraid/MraidView;

    .line 11
    invoke-virtual {p0, p4}, Lio/bidmachine/iab/mraid/MraidView;->load(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_19 .. :try_end_4e} :catchall_4f

    return-void

    :catchall_4f
    move-exception p0

    .line 13
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 14
    const-string p2, "Exception loading MRAID banner object"

    invoke-static {p2, p0}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    const-string p2, "throwable(\"Exception loa\u2026 MRAID banner object\", t)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static final onDestroy$lambda$3(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->destroyMraidView()V

    return-void
.end method

.method public static final onViewabilityChanged$lambda$2(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Z)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    iget-object p0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidView:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->onViewabilityChanged(Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception p0

    .line 3
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public final destroyMraidView()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidView:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->destroy()V
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
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidView:Lio/bidmachine/iab/mraid/MraidView;

    return-void
.end method

.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 6

    .line 1
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
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
    new-instance v1, Lio/bidmachine/ads/networks/mraid/MraidParams;

    invoke-direct {v1, p4}, Lio/bidmachine/ads/networks/mraid/MraidParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 3
    invoke-virtual {v1, p2}, Lio/bidmachine/ads/networks/mraid/MraidParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p3

    if-nez p3, :cond_25

    return-void

    .line 6
    :cond_25
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCreativeAdm()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_71

    .line 9
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCacheControl()Lio/bidmachine/iab/CacheControl;

    move-result-object p3

    sget-object p4, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    if-ne p3, p4, :cond_36

    .line 10
    sget-object p3, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    goto :goto_38

    .line 12
    :cond_36
    sget-object p3, Lio/bidmachine/core/VisibilitySource;->All:Lio/bidmachine/core/VisibilitySource;

    .line 13
    :goto_38
    invoke-interface {p2, p3}, Lio/bidmachine/unified/UnifiedAdCallback;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 21
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "contextProvider.getApplicationContext()"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getOmsdkEnabled()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 23
    new-instance p1, Lio/bidmachine/internal/q;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Lio/bidmachine/internal/q;-><init>(Z)V

    .line 24
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    .line 25
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCreativeAdm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/bidmachine/internal/q;->prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    const-string p3, "{\n            val mraidO\u2026ms.creativeAdm)\n        }"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5f
    move-object v5, p1

    goto :goto_66

    .line 31
    :cond_61
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/mraid/MraidParams;->getCreativeAdm()Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    .line 33
    :goto_66
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/mraid/MraidParams;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void

    .line 34
    :cond_71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    if-eqz v0, :cond_10

    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/q;->destroy(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    return-void

    .line 8
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->destroyMraidView()V

    return-void
.end method

.method public onShown()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/unified/UnifiedAd;->onShown()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/bidmachine/internal/r;->c()V

    :cond_a
    return-void
.end method

.method public onViewabilityChanged(Z)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Z)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareToShow(Lio/bidmachine/RendererConfiguration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/unified/UnifiedViewAd;->prepareToShow(Lio/bidmachine/RendererConfiguration;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->isPrepareToShowExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_16

    .line 7
    :cond_e
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->mraidView:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/MraidView;->show(Landroid/app/Activity;)V

    :cond_16
    :goto_16
    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->$r8$lambda$liAp-TJ71nvc1SUi-QaLzVRod4Q(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/mraid/MraidParams;

.field public final synthetic f$1:Lio/bidmachine/unified/UnifiedBannerAdCallback;

.field public final synthetic f$2:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/mraid/MraidParams;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

    iput-object p4, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    iput-object p5, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

    iget-object v3, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    iget-object v4, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->$r8$lambda$ovDtrik5-czj89ZFiybHE807ESk(Lio/bidmachine/ads/networks/mraid/MraidParams;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.mraid.MraidBannerAd$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

    iput-boolean p2, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

    iget-boolean v1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;->$r8$lambda$OkGg6Ui1K1ssbKDj3et0OBoeRQU(Lio/bidmachine/ads/networks/mraid/MraidBannerAd;Z)V

    return-void
.end method
