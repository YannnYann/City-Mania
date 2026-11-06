###### Class com.vungle.ads.BaseAd (com.vungle.ads.BaseAd)
.class public abstract Lcom/vungle/ads/BaseAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/Ad;
.implements Lcom/vungle/ads/VungleAdType;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vungle/ads/AdConfig;

.field public d:Lcom/vungle/ads/BaseAdListener;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;

.field public final g:Lcom/vungle/ads/internal/util/t;

.field public final h:Lcom/vungle/ads/internal/p1;

.field public final i:Lcom/vungle/ads/internal/p1;

.field public final j:Lcom/vungle/ads/internal/p1;

.field public final k:Lcom/vungle/ads/internal/p1;

.field public final l:Lcom/vungle/ads/internal/j2;

.field public final m:Lcom/vungle/ads/internal/j2;

.field public final n:Lcom/vungle/ads/internal/p1;

.field public o:Lcom/vungle/ads/internal/signals/m;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/BaseAd;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/BaseAd;->c:Lcom/vungle/ads/AdConfig;

    .line 5
    new-instance p3, Lcom/vungle/ads/BaseAd$adInternal$2;

    invoke-direct {p3, p0}, Lcom/vungle/ads/BaseAd$adInternal$2;-><init>(Lcom/vungle/ads/BaseAd;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/vungle/ads/BaseAd;->e:Lkotlin/Lazy;

    .line 6
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;

    invoke-direct {v0, p1}, Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {p3, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->f:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/vungle/ads/internal/util/t;

    invoke-direct {p1}, Lcom/vungle/ads/internal/util/t;-><init>()V

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/util/t;->g(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->g:Lcom/vungle/ads/internal/util/t;

    .line 9
    new-instance p1, Lcom/vungle/ads/internal/p1;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_RESPONSE_TO_SHOW_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/p1;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->h:Lcom/vungle/ads/internal/p1;

    .line 11
    new-instance p1, Lcom/vungle/ads/internal/p1;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_PRESENT_TO_DISPLAY_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/p1;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->i:Lcom/vungle/ads/internal/p1;

    .line 13
    new-instance p1, Lcom/vungle/ads/internal/p1;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_SHOW_TO_FAIL_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/p1;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->j:Lcom/vungle/ads/internal/p1;

    .line 15
    new-instance p1, Lcom/vungle/ads/internal/p1;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_DISPLAY_TO_CLICK_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/p1;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->k:Lcom/vungle/ads/internal/p1;

    .line 17
    new-instance p1, Lcom/vungle/ads/internal/j2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_LEAVE_APPLICATION:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->l:Lcom/vungle/ads/internal/j2;

    .line 19
    new-instance p1, Lcom/vungle/ads/internal/j2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_REWARD_USER:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->m:Lcom/vungle/ads/internal/j2;

    .line 21
    new-instance p1, Lcom/vungle/ads/internal/p1;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_SHOW_TO_CLOSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/p1;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->n:Lcom/vungle/ads/internal/p1;

    return-void
.end method

.method public static synthetic sendLossURL$default(Lcom/vungle/ads/BaseAd;DILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    const-wide/16 p1, 0x0

    .line 1
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/BaseAd;->sendLossURL(D)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendLossURL"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic sendWinURL$default(Lcom/vungle/ads/BaseAd;DILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    const-wide/16 p1, 0x0

    .line 1
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/BaseAd;->sendWinURL(D)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendWinURL"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public canPlayAd()Ljava/lang/Boolean;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/internal/r;->o:Lkotlinx/serialization/json/Json;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r;->a(Z)Lcom/vungle/ads/VungleError;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x1

    .line 3
    :cond_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public abstract constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/r;
.end method

.method public final getAdConfig()Lcom/vungle/ads/AdConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->c:Lcom/vungle/ads/AdConfig;

    return-object v0
.end method

.method public final getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/r;

    return-object v0
.end method

.method public final getAdListener()Lcom/vungle/ads/BaseAdListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->d:Lcom/vungle/ads/BaseAdListener;

    return-object v0
.end method

.method public getAdapterAdFormat()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getCreativeId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->k:Lcom/vungle/ads/internal/p1;

    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getLeaveApplicationMetric$vungle_ads_release()Lcom/vungle/ads/internal/j2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->l:Lcom/vungle/ads/internal/j2;

    return-object v0
.end method

.method public final getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->g:Lcom/vungle/ads/internal/util/t;

    return-object v0
.end method

.method public getMediationPartnerName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->i:Lcom/vungle/ads/internal/p1;

    return-object v0
.end method

.method public final getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->h:Lcom/vungle/ads/internal/p1;

    return-object v0
.end method

.method public final getRewardedMetric$vungle_ads_release()Lcom/vungle/ads/internal/j2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->m:Lcom/vungle/ads/internal/j2;

    return-object v0
.end method

.method public final getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->n:Lcom/vungle/ads/internal/p1;

    return-object v0
.end method

.method public final getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->j:Lcom/vungle/ads/internal/p1;

    return-object v0
.end method

.method public final getSignalManager$vungle_ads_release()Lcom/vungle/ads/internal/signals/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/signals/j;

    return-object v0
.end method

.method public final getSignaledAd$vungle_ads_release()Lcom/vungle/ads/internal/signals/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->o:Lcom/vungle/ads/internal/signals/m;

    return-object v0
.end method

.method public final getWinningPrice()D
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/r;->c:Lcom/vungle/ads/internal/model/i0;

    if-eqz v0, :cond_1d

    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->i()Lcom/vungle/ads/internal/model/s;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/s;->c:Lcom/vungle/ads/internal/model/l;

    if-eqz v0, :cond_15

    .line 5
    iget-object v0, v0, Lcom/vungle/ads/internal/model/l;->a:Ljava/lang/Double;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1d

    .line 6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public load()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/vungle/ads/BaseAd;->load(Ljava/lang/String;)V

    return-void
.end method

.method public load(Lcom/vungle/ads/VungleCSBData;)V
    .registers 6

    const-string v0, "csbData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/vungle/ads/BaseAd;->b:Ljava/lang/String;

    .line 9
    new-instance v2, Lcom/vungle/ads/BaseAd$load$2;

    invoke-direct {v2, p0}, Lcom/vungle/ads/BaseAd$load$2;-><init>(Lcom/vungle/ads/BaseAd;)V

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/vungle/ads/internal/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/VungleCSBData;Lcom/vungle/ads/internal/load/a;)V

    return-void
.end method

.method public load(Ljava/lang/String;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/vungle/ads/BaseAd;->b:Ljava/lang/String;

    .line 5
    new-instance v2, Lcom/vungle/ads/BaseAd$load$1;

    invoke-direct {v2, p0, p1}, Lcom/vungle/ads/BaseAd$load$1;-><init>(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/vungle/ads/internal/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/VungleCSBData;Lcom/vungle/ads/internal/load/a;)V

    return-void
.end method

.method public onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/i0;)V
    .registers 3

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->c:Lcom/vungle/ads/AdConfig;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/model/i0;->a(Lcom/vungle/ads/AdConfig;)V

    .line 2
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/BaseAd;->p:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->q:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->o:Lcom/vungle/ads/internal/signals/m;

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/signals/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFailure$vungle_ads_release(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .registers 4

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vungleError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/BaseAd;->h:Lcom/vungle/ads/internal/p1;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    .line 2
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/BaseAd$onLoadFailure$1;

    invoke-direct {p1, p0, p2}, Lcom/vungle/ads/BaseAd$onLoadFailure$1;-><init>(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onLoadSuccess$vungle_ads_release(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V
    .registers 3

    const-string p2, "baseAd"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/BaseAd;->h:Lcom/vungle/ads/internal/p1;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    .line 2
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;

    invoke-direct {p1, p0}, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;-><init>(Lcom/vungle/ads/BaseAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final sendLossURL()V
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/vungle/ads/BaseAd;->sendLossURL$default(Lcom/vungle/ads/BaseAd;DILjava/lang/Object;)V

    return-void
.end method

.method public final sendLossURL(D)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/vungle/ads/internal/r;->c:Lcom/vungle/ads/internal/model/i0;

    if-eqz v1, :cond_21

    .line 3
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i0;->i()Lcom/vungle/ads/internal/model/s;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 4
    iget-object v1, v1, Lcom/vungle/ads/internal/model/s;->c:Lcom/vungle/ads/internal/model/l;

    if-eqz v1, :cond_15

    .line 5
    iget-object v1, v1, Lcom/vungle/ads/internal/model/l;->c:Ljava/util/List;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-nez v1, :cond_19

    goto :goto_21

    .line 6
    :cond_19
    const-string v2, "${AUCTION_PRICE}"

    const-string v5, "lurl"

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/ads/internal/r;->a(Ljava/util/List;Ljava/lang/String;DLjava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final sendWinURL()V
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/vungle/ads/BaseAd;->sendWinURL$default(Lcom/vungle/ads/BaseAd;DILjava/lang/Object;)V

    return-void
.end method

.method public final sendWinURL(D)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/vungle/ads/internal/r;->c:Lcom/vungle/ads/internal/model/i0;

    if-eqz v1, :cond_21

    .line 3
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i0;->i()Lcom/vungle/ads/internal/model/s;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 4
    iget-object v1, v1, Lcom/vungle/ads/internal/model/s;->c:Lcom/vungle/ads/internal/model/l;

    if-eqz v1, :cond_15

    .line 5
    iget-object v1, v1, Lcom/vungle/ads/internal/model/l;->b:Ljava/util/List;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-nez v1, :cond_19

    goto :goto_21

    .line 6
    :cond_19
    const-string v2, "${AUCTION_MIN_TO_WIN}"

    const-string v5, "nurl"

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/ads/internal/r;->a(Ljava/util/List;Ljava/lang/String;DLjava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final setAdListener(Lcom/vungle/ads/BaseAdListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->d:Lcom/vungle/ads/BaseAdListener;

    return-void
.end method

.method public setAdapterAdFormat(Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->r:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->g:Lcom/vungle/ads/internal/util/t;

    .line 3
    iput-object p1, v0, Lcom/vungle/ads/internal/util/t;->l:Ljava/lang/String;

    return-void
.end method

.method public setMediationPartnerName(Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->s:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseAd;->g:Lcom/vungle/ads/internal/util/t;

    .line 3
    iput-object p1, v0, Lcom/vungle/ads/internal/util/t;->m:Ljava/lang/String;

    return-void
.end method

.method public final setSignaledAd$vungle_ads_release(Lcom/vungle/ads/internal/signals/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/BaseAd;->o:Lcom/vungle/ads/internal/signals/m;

    return-void
.end method

###### Class com.vungle.ads.BaseAd.AnonymousClass1 (com.vungle.ads.BaseAd$load$1)
.class public final Lcom/vungle/ads/BaseAd$load$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/load/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseAd;->load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseAd;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/BaseAd$load$1;->a:Lcom/vungle/ads/BaseAd;

    iput-object p2, p0, Lcom/vungle/ads/BaseAd$load$1;->b:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd$load$1;->a:Lcom/vungle/ads/BaseAd;

    invoke-virtual {v0, v0, p1}, Lcom/vungle/ads/BaseAd;->onLoadFailure$vungle_ads_release(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method public onSuccess(Lcom/vungle/ads/internal/model/i0;)V
    .registers 3

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd$load$1;->a:Lcom/vungle/ads/BaseAd;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/i0;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/BaseAd$load$1;->a:Lcom/vungle/ads/BaseAd;

    iget-object v0, p0, Lcom/vungle/ads/BaseAd$load$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p1, v0}, Lcom/vungle/ads/BaseAd;->onLoadSuccess$vungle_ads_release(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.ads.BaseAd.AnonymousClass2 (com.vungle.ads.BaseAd$load$2)
.class public final Lcom/vungle/ads/BaseAd$load$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/load/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseAd;->load(Lcom/vungle/ads/VungleCSBData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseAd;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/BaseAd$load$2;->a:Lcom/vungle/ads/BaseAd;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd$load$2;->a:Lcom/vungle/ads/BaseAd;

    invoke-virtual {v0, v0, p1}, Lcom/vungle/ads/BaseAd;->onLoadFailure$vungle_ads_release(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method public onSuccess(Lcom/vungle/ads/internal/model/i0;)V
    .registers 3

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BaseAd$load$2;->a:Lcom/vungle/ads/BaseAd;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/i0;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/BaseAd$load$2;->a:Lcom/vungle/ads/BaseAd;

    const/4 v0, 0x0

    invoke-virtual {p1, p1, v0}, Lcom/vungle/ads/BaseAd;->onLoadSuccess$vungle_ads_release(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.ads.BaseAd$adInternal$2 (com.vungle.ads.BaseAd$adInternal$2)
.class final Lcom/vungle/ads/BaseAd$adInternal$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseAd$adInternal$2;->a:Lcom/vungle/ads/BaseAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vungle/ads/internal/r;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseAd$adInternal$2;->a:Lcom/vungle/ads/BaseAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseAd;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/r;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/BaseAd$adInternal$2;->a:Lcom/vungle/ads/BaseAd;

    .line 3
    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/vungle/ads/internal/r;->m:Lcom/vungle/ads/internal/util/t;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd$adInternal$2;->invoke()Lcom/vungle/ads/internal/r;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.BaseAd$onLoadFailure$1 (com.vungle.ads.BaseAd$onLoadFailure$1)
.class final Lcom/vungle/ads/BaseAd$onLoadFailure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseAd;->onLoadFailure$vungle_ads_release(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
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
.field public final synthetic a:Lcom/vungle/ads/BaseAd;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseAd$onLoadFailure$1;->a:Lcom/vungle/ads/BaseAd;

    iput-object p2, p0, Lcom/vungle/ads/BaseAd$onLoadFailure$1;->b:Lcom/vungle/ads/VungleError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd$onLoadFailure$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseAd$onLoadFailure$1;->a:Lcom/vungle/ads/BaseAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/vungle/ads/BaseAd$onLoadFailure$1;->a:Lcom/vungle/ads/BaseAd;

    iget-object v2, p0, Lcom/vungle/ads/BaseAd$onLoadFailure$1;->b:Lcom/vungle/ads/VungleError;

    invoke-interface {v0, v1, v2}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_f
    return-void
.end method

###### Class com.vungle.ads.BaseAd$onLoadSuccess$1 (com.vungle.ads.BaseAd$onLoadSuccess$1)
.class final Lcom/vungle/ads/BaseAd$onLoadSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseAd;->onLoadSuccess$vungle_ads_release(Lcom/vungle/ads/BaseAd;Ljava/lang/String;)V
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
.field public final synthetic a:Lcom/vungle/ads/BaseAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;->a:Lcom/vungle/ads/BaseAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;->a:Lcom/vungle/ads/BaseAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/BaseAd$onLoadSuccess$1;->a:Lcom/vungle/ads/BaseAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdLoaded(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.BaseAd$special$$inlined$inject$1 (com.vungle.ads.BaseAd$special$$inlined$inject$1)
.class public final Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/signals/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/signals/j;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    iget-object v1, p0, Lcom/vungle/ads/BaseAd$special$$inlined$inject$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/signals/j;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
