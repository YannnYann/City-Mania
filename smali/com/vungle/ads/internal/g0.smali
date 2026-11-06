###### Class com.vungle.ads.internal.g0 (com.vungle.ads.internal.g0)
.class public final Lcom/vungle/ads/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/presenter/b;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/h0;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/h0;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/internal/a0;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/a0;-><init>(Lcom/vungle/ads/internal/h0;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 5
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdEnd(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/internal/b0;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/b0;-><init>(Lcom/vungle/ads/internal/h0;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 5
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdImpression(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/internal/c0;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/c0;-><init>(Lcom/vungle/ads/internal/h0;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 5
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    return-void
.end method

.method public final onAdLeftApplication(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/internal/d0;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/d0;-><init>(Lcom/vungle/ads/internal/h0;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLeaveApplicationMetric$vungle_ads_release()Lcom/vungle/ads/internal/j2;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    return-void
.end method

.method public final onAdRewarded(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onAdStart(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

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
    .catchall {:try_start_7 .. :try_end_f} :catchall_46

    monitor-exit p1

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/vungle/ads/internal/r;->l:Lcom/vungle/ads/internal/p1;

    .line 7
    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 8
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/vungle/ads/internal/r;->l:Lcom/vungle/ads/internal/p1;

    .line 10
    iget-object v1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    .line 14
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/internal/e0;

    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/e0;-><init>(Lcom/vungle/ads/internal/h0;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void

    :catchall_46
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final onFailure(Lcom/vungle/ads/VungleError;)V
    .registers 7

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v0, Lcom/vungle/ads/internal/f0;

    iget-object v1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-direct {v0, v1, p1}, Lcom/vungle/ads/internal/f0;-><init>(Lcom/vungle/ads/internal/h0;Lcom/vungle/ads/VungleError;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->d()V

    .line 6
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/ads/internal/g0;->a:Lcom/vungle/ads/internal/h0;

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
