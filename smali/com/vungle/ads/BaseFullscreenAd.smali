###### Class com.vungle.ads.BaseFullscreenAd (com.vungle.ads.BaseFullscreenAd)
.class public abstract Lcom/vungle/ads/BaseFullscreenAd;
.super Lcom/vungle/ads/BaseAd;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/FullscreenAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getSignalManager$vungle_ads_release()Lcom/vungle/ads/internal/signals/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/signals/j;->a(Ljava/lang/String;)Lcom/vungle/ads/internal/signals/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/BaseAd;->setSignaledAd$vungle_ads_release(Lcom/vungle/ads/internal/signals/m;)V

    .line 2
    invoke-super {p0, p1}, Lcom/vungle/ads/BaseAd;->load(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/i0;)V
    .registers 4

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/vungle/ads/BaseAd;->onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/i0;)V

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getSignaledAd$vungle_ads_release()Lcom/vungle/ads/internal/signals/m;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/signals/m;->a(J)V

    return-void
.end method

.method public play(Landroid/content/Context;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 2
    new-instance v1, Lcom/vungle/ads/internal/j2;

    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PLAY_AD_API:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v1, v2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    const/4 v3, 0x4

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 5
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;)V

    .line 7
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->e()V

    .line 8
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->e()V

    .line 9
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getSignaledAd$vungle_ads_release()Lcom/vungle/ads/internal/signals/m;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 11
    iput-wide v1, v0, Lcom/vungle/ads/internal/signals/m;->i:J

    .line 12
    iget-wide v1, v0, Lcom/vungle/ads/internal/signals/m;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v0, Lcom/vungle/ads/internal/signals/m;->i:J

    invoke-static {v1, v2, v3}, Lcom/vungle/ads/internal/signals/m;->a(Ljava/lang/Long;J)J

    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lcom/vungle/ads/internal/signals/m;->f:J

    .line 14
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getSignalManager$vungle_ads_release()Lcom/vungle/ads/internal/signals/j;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/vungle/ads/internal/signals/j;->a(Landroid/content/Context;Lcom/vungle/ads/internal/signals/m;)V

    .line 15
    :cond_52
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.vungle.ads.internal.FullscreenAdInternal"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/vungle/ads/internal/x0;

    .line 16
    new-instance v1, Lcom/vungle/ads/BaseFullscreenAd$play$2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/BaseFullscreenAd$play$2;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/x0;->a(Landroid/content/Context;Lcom/vungle/ads/BaseFullscreenAd$play$2;)V

    return-void
.end method

###### Class com.vungle.ads.BaseFullscreenAd.AnonymousClass2 (com.vungle.ads.BaseFullscreenAd$play$2)
.class public final Lcom/vungle/ads/BaseFullscreenAd$play$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/presenter/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd;->play(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 6
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 5
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 6
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLeaveApplicationMetric$vungle_ads_release()Lcom/vungle/ads/internal/j2;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 6
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getRewardedMetric$vungle_ads_release()Lcom/vungle/ads/internal/j2;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getSignalManager$vungle_ads_release()Lcom/vungle/ads/internal/signals/j;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_7
    iget-object v0, p1, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 3
    iget v1, v0, Lcom/vungle/ads/internal/signals/c;->f:I

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, v0, Lcom/vungle/ads/internal/signals/c;->f:I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_26

    monitor-exit p1

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    .line 6
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;

    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .registers 7

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-direct {v0, v1, p1}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;-><init>(Lcom/vungle/ads/BaseFullscreenAd;Lcom/vungle/ads/VungleError;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->d()V

    .line 5
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.ads.BaseFullscreenAd$play$2$onAdClick$1 (com.vungle.ads.BaseFullscreenAd$play$2$onAdClick$1)
.class final Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd$play$2;->onAdClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdClick$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdClicked(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.BaseFullscreenAd$play$2$onAdEnd$1 (com.vungle.ads.BaseFullscreenAd$play$2$onAdEnd$1)
.class final Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd$play$2;->onAdEnd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdEnd$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdEnd(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.BaseFullscreenAd$play$2$onAdImpression$1 (com.vungle.ads.BaseFullscreenAd$play$2$onAdImpression$1)
.class final Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd$play$2;->onAdImpression(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdImpression$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdImpression(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.BaseFullscreenAd$play$2$onAdLeftApplication$1 (com.vungle.ads.BaseFullscreenAd$play$2$onAdLeftApplication$1)
.class final Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd$play$2;->onAdLeftApplication(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdLeftApplication$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.BaseFullscreenAd$play$2$onAdRewarded$1 (com.vungle.ads.BaseFullscreenAd$play$2$onAdRewarded$1)
.class final Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd$play$2;->onAdRewarded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    instance-of v1, v0, Lcom/vungle/ads/RewardedAdListener;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/vungle/ads/RewardedAdListener;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_15

    .line 3
    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdRewarded$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/RewardedAdListener;->onAdRewarded(Lcom/vungle/ads/BaseAd;)V

    :cond_15
    return-void
.end method

###### Class com.vungle.ads.BaseFullscreenAd$play$2$onAdStart$1 (com.vungle.ads.BaseFullscreenAd$play$2$onAdStart$1)
.class final Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd$play$2;->onAdStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onAdStart$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdStart(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.BaseFullscreenAd$play$2$onFailure$1 (com.vungle.ads.BaseFullscreenAd$play$2$onFailure$1)
.class final Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseFullscreenAd$play$2;->onFailure(Lcom/vungle/ads/VungleError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseFullscreenAd;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd;Lcom/vungle/ads/VungleError;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    iput-object p2, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;->b:Lcom/vungle/ads/VungleError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;->a:Lcom/vungle/ads/BaseFullscreenAd;

    iget-object v2, p0, Lcom/vungle/ads/BaseFullscreenAd$play$2$onFailure$1;->b:Lcom/vungle/ads/VungleError;

    invoke-interface {v0, v1, v2}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_f
    return-void
.end method
