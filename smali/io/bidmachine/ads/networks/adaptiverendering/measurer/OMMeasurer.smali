###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer (io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer)
.class public abstract Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/measurer/Measurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdView:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/rendering/measurer/Measurer<",
        "TAdView;>;"
    }
.end annotation


# instance fields
.field public adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

.field public adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

.field public final isImpressionPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isLoadedTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mediaEvents:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

.field public final tag:Lio/bidmachine/utils/Tag;


# direct methods
.method public static synthetic $r8$lambda$172tYvTs8d_mRi76Ax2XvAxVm8o(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->onClicked$lambda$1(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$my1TVNwOQzhufrCjS3lxWiQAR4o(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->registerView$lambda$8(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oOj7zOSXWyG135e4WEPLp1Wzsis(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->trackError$lambda$6(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ttwsInlhK4PQq6GPdefRf0xMJos(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->trackImpression$lambda$4(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVz_CvyzNzIhxK10HqT5hEQhE1Q(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->trackLoaded$lambda$3(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNjjpWu9Lxr3NM_gqfxfeAbZmFA(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->destroy$lambda$2(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/utils/Tag;

    const-string v1, "OMMeasurer"

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->tag:Lio/bidmachine/utils/Tag;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isLoadedTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isImpressionPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final destroy$lambda$2(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_b
    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->mediaEvents:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 5
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->finish()V

    .line 7
    :cond_16
    const-string v0, "destroy"

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->getDestroyDelayMs()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception p0

    .line 13
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_29
    return-void
.end method

.method public static final onClicked$lambda$1(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->mediaEvents:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    if-eqz v0, :cond_18

    .line 2
    sget-object v1, Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;)V

    .line 4
    const-string v0, "onAdClicked"

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_18
    return-void
.end method

.method public static final registerView$lambda$8(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Landroid/view/View;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_a
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 4
    const-string p1, "registerView"

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1b
    return-void
.end method

.method public static final trackError$lambda$6(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_f
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    if-eqz v0, :cond_20

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->error(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    .line 4
    const-string p1, "error"

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->log(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_20
    return-void
.end method

.method public static final trackImpression$lambda$4(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isSessionPrepared()Z

    move-result v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isLoadedTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_30

    .line 5
    :cond_18
    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isImpressionPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_30

    .line 9
    :cond_23
    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->impressionOccurred()V

    .line 11
    const-string v0, "onAdShown"

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->log(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception p0

    .line 13
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public static final trackLoaded$lambda$3(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isSessionPrepared()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez v0, :cond_10

    goto :goto_1b

    .line 6
    :cond_10
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->onAdLoaded(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V

    .line 8
    const-string v0, "onAdLoaded"

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->log(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception v0

    goto :goto_1c

    :cond_1b
    :goto_1b
    return-void

    .line 10
    :goto_1c
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 12
    :goto_1f
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->trackImpression()V

    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/bidmachine/util/Utils;->createHandlerWithMyOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    .line 2
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-static {v1}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDestroyDelayMs()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getMediaEvents()Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->mediaEvents:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    return-object v0
.end method

.method public final isSessionPrepared()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final log(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->tag:Lio/bidmachine/utils/Tag;

    invoke-static {v0, p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onAdLoaded(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onClicked()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lio/bidmachine/util/Error;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/util/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->trackError(Ljava/lang/String;)V

    return-void
.end method

.method public onShown()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isImpressionPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->trackImpression()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdView;)V"
        }
    .end annotation

    .line 0
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final prepareAdSession(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)V
    .registers 4

    const-string v0, "adSessionConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSessionContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_a
    invoke-static {p1, p2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 2
    invoke-static {p2}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 3
    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;->isNativeMediaEventsOwner()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 4
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    invoke-static {p1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->mediaEvents:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_34

    .line 6
    :cond_27
    :goto_27
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->start()V

    .line 8
    :cond_2e
    const-string p1, "prepareAdSession"

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->log(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_25

    return-void

    .line 10
    :goto_34
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final registerView(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Landroid/view/View;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final trackError(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
    .registers 4

    .line 2
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final trackError(Ljava/lang/String;)V
    .registers 3

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/ErrorType;->GENERIC:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->trackError(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public final trackImpression()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final trackLoaded()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->isLoadedTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

.field public final synthetic f$1:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;->f$1:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    iput-object p3, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;->f$1:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    iget-object v2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->$r8$lambda$oOj7zOSXWyG135e4WEPLp1Wzsis(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda1 (io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->$r8$lambda$zNjjpWu9Lxr3NM_gqfxfeAbZmFA(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda2 (io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->$r8$lambda$ttwsInlhK4PQq6GPdefRf0xMJos(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda3 (io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->$r8$lambda$uVz_CvyzNzIhxK10HqT5hEQhE1Q(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda4 (io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->$r8$lambda$my1TVNwOQzhufrCjS3lxWiQAR4o(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda5 (io.bidmachine.ads.networks.adaptiverendering.measurer.OMMeasurer$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->$r8$lambda$172tYvTs8d_mRi76Ax2XvAxVm8o(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    return-void
.end method
