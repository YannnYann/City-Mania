###### Class com.vungle.ads.VungleBannerView (com.vungle.ads.VungleBannerView)
.class public final Lcom/vungle/ads/VungleBannerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/VungleAdType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/VungleBannerView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/VungleBannerView$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vungle/ads/VungleAdSize;

.field public final c:Lcom/vungle/ads/internal/util/x;

.field public d:Lcom/vungle/ads/BannerAdListener;

.field public final e:Lcom/vungle/ads/internal/h0;

.field public f:I

.field public g:I

.field public h:Lcom/vungle/ads/internal/ui/view/j;

.field public i:Lcom/vungle/ads/internal/presenter/r;

.field public j:Lcom/vungle/ads/internal/ui/y;

.field public k:Z

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Lkotlin/Lazy;

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/vungle/ads/VungleBannerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/VungleBannerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/VungleBannerView;->Companion:Lcom/vungle/ads/VungleBannerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/vungle/ads/VungleBannerView;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/VungleBannerView;->b:Lcom/vungle/ads/VungleAdSize;

    .line 3
    new-instance v0, Lcom/vungle/ads/internal/util/x;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/x;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/VungleBannerView;->c:Lcom/vungle/ads/internal/util/x;

    .line 31
    new-instance v0, Lcom/vungle/ads/internal/h0;

    new-instance v1, Lcom/vungle/ads/AdConfig;

    invoke-direct {v1}, Lcom/vungle/ads/AdConfig;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/vungle/ads/internal/h0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;)V

    iput-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    sget-object p1, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;->INSTANCE:Lcom/vungle/ads/VungleBannerView$impressionTracker$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->q:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lcom/vungle/ads/VungleBannerView$1;

    invoke-direct {p1, p0}, Lcom/vungle/ads/VungleBannerView$1;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/BaseAdListener;)V

    return-void
.end method

.method public static final access$checkHardwareAcceleration(Lcom/vungle/ads/VungleBannerView;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 3
    const-string v0, "hardwareAccelerated = "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleBannerView"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_33

    .line 6
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 7
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->HARDWARE_ACCELERATE_DISABLED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 8
    iget-object p0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xa

    const-wide/16 v3, 0x0

    .line 9
    invoke-static/range {v1 .. v7}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;I)V

    :cond_33
    return-void
.end method

.method public static final access$finishAdInternal(Lcom/vungle/ads/VungleBannerView;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_68

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x4

    goto :goto_15

    :cond_14
    move p1, v0

    :goto_15
    or-int/lit8 p1, p1, 0x2

    .line 8
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->i:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v1, :cond_2e

    .line 9
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "MRAIDPresenter"

    const-string v3, "stop()"

    invoke-static {v2, v3}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/ui/view/j;->b()V

    .line 11
    iget-object v1, v1, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    .line 15
    :cond_2e
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->i:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/r;->a(I)V

    .line 16
    :cond_35
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->getImpressionTracker()Lcom/vungle/ads/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/c1;->a()V

    .line 18
    :try_start_3c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 19
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4b

    .line 20
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_4b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p0

    .line 25
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing webView error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VungleBannerView"

    invoke-static {p1, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    return-void
.end method

.method public static final synthetic access$getPresenter$p(Lcom/vungle/ads/VungleBannerView;)Lcom/vungle/ads/internal/presenter/r;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/VungleBannerView;->i:Lcom/vungle/ads/internal/presenter/r;

    return-object p0
.end method

.method public static final access$logViewInvisibleOnPlay(Lcom/vungle/ads/VungleBannerView;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 4
    const-string v0, "ImpressionTracker checked the banner view invisible on play, log AD_VISIBILITY_INVISIBLE. "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "VungleBannerView"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 11
    new-instance v1, Lcom/vungle/ads/internal/j2;

    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v1, v2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-wide/16 v2, 0x1

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 13
    iput-object v2, v1, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 14
    iget-object p0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object p0

    const/4 v2, 0x4

    .line 15
    invoke-static {v0, v1, p0, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    :cond_3c
    return-void
.end method

.method public static final access$logViewVisibleOnPlay(Lcom/vungle/ads/VungleBannerView;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x3

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x2

    .line 3
    :goto_d
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 4
    new-instance v3, Lcom/vungle/ads/internal/j2;

    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v3, v4}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5
    iput-object v4, v3, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 6
    iget-object p0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object p0

    const/4 v4, 0x4

    .line 7
    invoke-static {v2, v3, p0, v4}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 11
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log metric AD_VISIBILITY: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VungleBannerView"

    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final access$onBannerAdLoaded(Lcom/vungle/ads/VungleBannerView;Lcom/vungle/ads/BaseAd;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 3
    new-instance v1, Lcom/vungle/ads/internal/j2;

    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PLAY_AD_API:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v1, v2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iget-object v2, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    const/4 v3, 0x4

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 7
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 8
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    .line 9
    iget-object v3, v1, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lcom/vungle/ads/internal/r;->k:Lcom/vungle/ads/internal/p1;

    .line 13
    invoke-virtual {v1}, Lcom/vungle/ads/internal/p1;->e()V

    .line 14
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/p1;->e()V

    .line 15
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/p1;->e()V

    .line 17
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/r;->a(Z)Lcom/vungle/ads/VungleError;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 19
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/r;->a(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 20
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    sget-object v2, Lcom/vungle/ads/internal/h;->g:Lcom/vungle/ads/internal/a;

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 22
    :cond_75
    iget-object p0, p0, Lcom/vungle/ads/VungleBannerView;->d:Lcom/vungle/ads/BannerAdListener;

    if-eqz p0, :cond_f7

    invoke-interface {p0, p1, v1}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    return-void

    .line 26
    :cond_7d
    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v1

    .line 27
    iget-object v1, v1, Lcom/vungle/ads/internal/r;->c:Lcom/vungle/ads/internal/model/i0;

    .line 28
    iget-object v3, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v3}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v3

    .line 29
    iget-object v3, v3, Lcom/vungle/ads/internal/r;->d:Lcom/vungle/ads/internal/model/j3;

    if-eqz v1, :cond_db

    if-nez v3, :cond_92

    goto :goto_db

    .line 30
    :cond_92
    iget-object v4, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v4}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/ads/internal/r;->a()V

    .line 32
    iget-object v4, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v4}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v4

    .line 33
    iget-object v4, v4, Lcom/vungle/ads/internal/r;->k:Lcom/vungle/ads/internal/p1;

    .line 34
    invoke-virtual {v4}, Lcom/vungle/ads/internal/p1;->d()V

    .line 35
    iget-object v4, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v4}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v4

    .line 36
    iget-object v4, v4, Lcom/vungle/ads/internal/r;->k:Lcom/vungle/ads/internal/p1;

    .line 37
    iget-object v5, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v5}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v5

    .line 38
    iget-object v6, v4, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v4, v5, v6}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/vungle/ads/internal/r;->l:Lcom/vungle/ads/internal/p1;

    .line 42
    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->e()V

    .line 45
    :try_start_c4
    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView;->getAdViewSize()Lcom/vungle/ads/VungleAdSize;

    move-result-object v0

    invoke-virtual {p0, v1, v3, v0}, Lcom/vungle/ads/VungleBannerView;->a(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/VungleAdSize;)V
    :try_end_cb
    .catch Ljava/lang/InstantiationException; {:try_start_c4 .. :try_end_cb} :catch_f7

    .line 50
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->d:Lcom/vungle/ads/BannerAdListener;

    if-eqz v0, :cond_d7

    invoke-interface {v0, p1}, Lcom/vungle/ads/BaseAdListener;->onAdLoaded(Lcom/vungle/ads/BaseAd;)V

    .line 54
    :cond_d7
    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView;->a()V

    return-void

    .line 55
    :cond_db
    :goto_db
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->d:Lcom/vungle/ads/BannerAdListener;

    if-eqz v0, :cond_f7

    .line 57
    new-instance v1, Lcom/vungle/ads/AdNotLoadedCantPlay;

    const-string v2, "Ad or Placement is null"

    invoke-direct {v1, v2}, Lcom/vungle/ads/AdNotLoadedCantPlay;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p0

    .line 59
    invoke-interface {v0, p1, p0}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :catch_f7
    :cond_f7
    return-void
.end method

.method public static final synthetic access$setOnImpressionCalled$p(Lcom/vungle/ads/VungleBannerView;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/VungleBannerView;->k:Z

    return-void
.end method

.method private final getImpressionTracker()Lcom/vungle/ads/internal/c1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->q:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/c1;

    return-object v0
.end method

.method public static synthetic load$default(Lcom/vungle/ads/VungleBannerView;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1}, Lcom/vungle/ads/VungleBannerView;->load(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendLossURL$default(Lcom/vungle/ads/VungleBannerView;DILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, 0x0

    .line 1
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/VungleBannerView;->sendLossURL(D)V

    return-void
.end method

.method public static synthetic sendWinURL$default(Lcom/vungle/ads/VungleBannerView;DILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, 0x0

    .line 1
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/VungleBannerView;->sendWinURL(D)V

    return-void
.end method

.method private final setAdVisibility(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/VungleBannerView;->k:Z

    if-nez v0, :cond_5

    goto :goto_16

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->i:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_16

    .line 8
    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "VungleBannerView"

    if-eqz v0, :cond_12

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "renderAd() - destroyed"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_12
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_22

    .line 7
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "renderAd() - not ready: not downloaded."

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_22
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_32

    .line 12
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "renderAd() - not ready: not attached."

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_32
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 17
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->i:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/r;->h()V

    .line 19
    :cond_42
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView;->getImpressionTracker()Lcom/vungle/ads/internal/c1;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/VungleBannerView$renderAd$1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/VungleBannerView$renderAd$1;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    invoke-virtual {v0, p0, v1}, Lcom/vungle/ads/internal/c1;->a(Landroid/view/View;Lcom/vungle/ads/internal/z0;)V

    .line 35
    :cond_4e
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->h:Lcom/vungle/ads/internal/ui/view/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_68

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_69

    :cond_68
    move-object v2, v1

    :goto_69
    if-eqz v2, :cond_6e

    .line 38
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    :cond_6e
    iget v2, p0, Lcom/vungle/ads/VungleBannerView;->f:I

    iget v3, p0, Lcom/vungle/ads/VungleBannerView;->g:I

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 43
    :cond_75
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->j:Lcom/vungle/ads/internal/ui/y;

    if-eqz v0, :cond_9d

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_8e

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :cond_8e
    if-eqz v1, :cond_93

    .line 46
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    :cond_93
    iget v1, p0, Lcom/vungle/ads/VungleBannerView;->f:I

    iget v2, p0, Lcom/vungle/ads/VungleBannerView;->g:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 52
    :cond_9d
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 55
    iget v1, p0, Lcom/vungle/ads/VungleBannerView;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    iget v1, p0, Lcom/vungle/ads/VungleBannerView;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_ae
    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/VungleAdSize;)V
    .registers 15

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/vungle/ads/VungleBannerView;->g:I

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result p3

    invoke-static {v0, p3}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/vungle/ads/VungleBannerView;->f:I

    .line 61
    new-instance p3, Lcom/vungle/ads/internal/presenter/a;

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/h0;->a()Lcom/vungle/ads/internal/i0;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/internal/r;->f()Lcom/vungle/ads/internal/model/j3;

    move-result-object v2

    invoke-direct {p3, v0, v2}, Lcom/vungle/ads/internal/presenter/a;-><init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/j3;)V

    .line 65
    :try_start_39
    new-instance v4, Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lcom/vungle/ads/internal/ui/view/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/InstantiationException; {:try_start_39 .. :try_end_49} :catch_f6

    .line 73
    iput-object v4, p0, Lcom/vungle/ads/VungleBannerView;->h:Lcom/vungle/ads/internal/ui/view/j;

    .line 75
    new-instance v0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$1;

    invoke-direct {v0, p0}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$1;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    invoke-virtual {v4, v0}, Lcom/vungle/ads/internal/ui/view/j;->setCloseDelegate(Lcom/vungle/ads/internal/ui/view/f;)V

    .line 81
    new-instance v0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$2;

    invoke-direct {v0, p0}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$2;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    invoke-virtual {v4, v0}, Lcom/vungle/ads/internal/ui/view/j;->setOnViewTouchListener(Lcom/vungle/ads/internal/ui/view/h;)V

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$1;

    invoke-direct {v3, v0}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v5, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$2;

    invoke-direct {v5, v3}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 86
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/omsdk/d;

    .line 87
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->z()Z

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vungle/ads/internal/omsdk/d;->a(Z)Lcom/vungle/ads/internal/omsdk/e;

    move-result-object v9

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v5, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$3;

    invoke-direct {v5, v3}, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 90
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/executor/a;

    .line 91
    check-cast v3, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/executor/d;->f()Lcom/vungle/ads/internal/executor/j;

    move-result-object v3

    .line 93
    sget-object v5, Lcom/vungle/ads/internal/presenter/f0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 94
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/ads/internal/platform/f;

    .line 95
    invoke-static {p1, p2, v3, v5}, Lcom/vungle/ads/internal/presenter/f0;->a(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/platform/f;)Lcom/vungle/ads/internal/ui/x;

    move-result-object v7

    .line 100
    iget-object v3, p0, Lcom/vungle/ads/VungleBannerView;->c:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v3, v7}, Lcom/vungle/ads/internal/util/x;->a(Lcom/vungle/ads/internal/util/w;)V

    .line 101
    invoke-virtual {v7, v9}, Lcom/vungle/ads/internal/ui/x;->a(Lcom/vungle/ads/internal/omsdk/e;)V

    .line 104
    new-instance v3, Lcom/vungle/ads/internal/presenter/r;

    .line 105
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/executor/a;

    .line 106
    check-cast v0, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/executor/d;->d()Lcom/vungle/ads/internal/executor/j;

    move-result-object v8

    .line 107
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vungle/ads/internal/platform/f;

    move-object v5, p1

    move-object v6, p2

    .line 108
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/presenter/r;-><init>(Lcom/vungle/ads/internal/ui/view/j;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/ui/x;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/omsdk/e;Lcom/vungle/ads/internal/platform/f;)V

    .line 117
    invoke-virtual {v3, p3}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/internal/presenter/a;)V

    .line 118
    iput-object v3, p0, Lcom/vungle/ads/VungleBannerView;->i:Lcom/vungle/ads/internal/presenter/r;

    .line 131
    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView;->getAdConfig()Lcom/vungle/ads/AdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/AdConfig;->getWatermark$vungle_ads_release()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f5

    .line 132
    new-instance p2, Lcom/vungle/ads/internal/ui/y;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3, p1}, Lcom/vungle/ads/internal/ui/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/vungle/ads/VungleBannerView;->j:Lcom/vungle/ads/internal/ui/y;

    :cond_f5
    return-void

    :catch_f6
    move-exception v0

    move-object p1, v0

    .line 133
    new-instance p2, Lcom/vungle/ads/AdCantPlayWithoutWebView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/vungle/ads/AdCantPlayWithoutWebView;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->a:Ljava/lang/String;

    .line 135
    invoke-virtual {p3, p2, v0}, Lcom/vungle/ads/internal/presenter/a;->a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 139
    throw p1
.end method

.method public final finishAd()V
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v0, Lcom/vungle/ads/VungleBannerView$finishAd$1;

    invoke-direct {v0, p0}, Lcom/vungle/ads/VungleBannerView$finishAd$1;-><init>(Lcom/vungle/ads/VungleBannerView;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final getAdConfig()Lcom/vungle/ads/AdConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdConfig()Lcom/vungle/ads/AdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getAdListener()Lcom/vungle/ads/BannerAdListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->d:Lcom/vungle/ads/BannerAdListener;

    return-object v0
.end method

.method public final getAdSize()Lcom/vungle/ads/VungleAdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->b:Lcom/vungle/ads/VungleAdSize;

    return-object v0
.end method

.method public final getAdViewSize()Lcom/vungle/ads/VungleAdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/h0;->getAdViewSize()Lcom/vungle/ads/VungleAdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterAdFormat()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdapterAdFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCreativeId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getEventId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    return-object v0
.end method

.method public getMediationPartnerName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getMediationPartnerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getWinningPrice()D
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getWinningPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public final load()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->load()V

    return-void
.end method

.method public final load(Lcom/vungle/ads/VungleCSBData;)V
    .registers 3

    const-string v0, "csbData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->load(Lcom/vungle/ads/VungleCSBData;)V

    return-void
.end method

.method public final load(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->load(Ljava/lang/String;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 3
    const-string v0, "onAttachedToWindow(): "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleBannerView"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 163
    iget-object v0, v0, Lcom/vungle/ads/internal/r;->d:Lcom/vungle/ads/internal/model/j3;

    if-eqz v0, :cond_73

    .line 164
    :try_start_2b
    iget-boolean v0, p0, Lcom/vungle/ads/VungleBannerView;->r:Z

    if-nez v0, :cond_73

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/ads/VungleBannerView;->c:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iput-boolean v2, p0, Lcom/vungle/ads/VungleBannerView;->r:Z

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/ads/VungleBannerView;->c:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5b} :catch_5c

    goto :goto_73

    :catch_5c
    move-exception v0

    .line 171
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 172
    const-string v2, "registerReceiver error: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 341
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView;->a()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 3
    const-string v0, "onDetachedFromWindow(): "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleBannerView"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 184
    iget-object v0, v0, Lcom/vungle/ads/internal/r;->d:Lcom/vungle/ads/internal/model/j3;

    if-eqz v0, :cond_52

    .line 185
    :try_start_2b
    iget-boolean v0, p0, Lcom/vungle/ads/VungleBannerView;->r:Z

    if-eqz v0, :cond_52

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/ads/VungleBannerView;->c:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    iput-boolean v2, p0, Lcom/vungle/ads/VungleBannerView;->r:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v0

    .line 190
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 191
    const-string v2, "unregisterReceiver error: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 3
    :goto_8
    invoke-direct {p0, p1}, Lcom/vungle/ads/VungleBannerView;->setAdVisibility(Z)V

    return-void
.end method

.method public final sendLossURL()V
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/vungle/ads/VungleBannerView;->sendLossURL$default(Lcom/vungle/ads/VungleBannerView;DILjava/lang/Object;)V

    return-void
.end method

.method public final sendLossURL(D)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/ads/BaseAd;->sendLossURL(D)V

    return-void
.end method

.method public final sendWinURL()V
    .registers 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/vungle/ads/VungleBannerView;->sendWinURL$default(Lcom/vungle/ads/VungleBannerView;DILjava/lang/Object;)V

    return-void
.end method

.method public final sendWinURL(D)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/ads/BaseAd;->sendWinURL(D)V

    return-void
.end method

.method public final setAdListener(Lcom/vungle/ads/BannerAdListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView;->d:Lcom/vungle/ads/BannerAdListener;

    return-void
.end method

.method public setAdapterAdFormat(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->setAdapterAdFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setMediationPartnerName(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView;->e:Lcom/vungle/ads/internal/h0;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseAd;->setMediationPartnerName(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.ads.VungleBannerView.AnonymousClass1 (com.vungle.ads.VungleBannerView$1)
.class public final Lcom/vungle/ads/VungleBannerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/VungleBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/VungleBannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/vungle/ads/BaseAd;)V
    .registers 3

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lcom/vungle/ads/BaseAdListener;->onAdClicked(Lcom/vungle/ads/BaseAd;)V

    :cond_10
    return-void
.end method

.method public onAdEnd(Lcom/vungle/ads/BaseAd;)V
    .registers 3

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lcom/vungle/ads/BaseAdListener;->onAdEnd(Lcom/vungle/ads/BaseAd;)V

    :cond_10
    return-void
.end method

.method public onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .registers 4

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0, p1, p2}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_15
    return-void
.end method

.method public onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .registers 4

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0, p1, p2}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_15
    return-void
.end method

.method public onAdImpression(Lcom/vungle/ads/BaseAd;)V
    .registers 3

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lcom/vungle/ads/BaseAdListener;->onAdImpression(Lcom/vungle/ads/BaseAd;)V

    :cond_10
    return-void
.end method

.method public onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V
    .registers 3

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lcom/vungle/ads/BaseAdListener;->onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V

    :cond_10
    return-void
.end method

.method public onAdLoaded(Lcom/vungle/ads/BaseAd;)V
    .registers 3

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-static {v0, p1}, Lcom/vungle/ads/VungleBannerView;->access$onBannerAdLoaded(Lcom/vungle/ads/VungleBannerView;Lcom/vungle/ads/BaseAd;)V

    return-void
.end method

.method public onAdStart(Lcom/vungle/ads/BaseAd;)V
    .registers 3

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lcom/vungle/ads/BaseAdListener;->onAdStart(Lcom/vungle/ads/BaseAd;)V

    :cond_10
    return-void
.end method

###### Class com.vungle.ads.VungleBannerView.Companion (com.vungle.ads.VungleBannerView$Companion)
.class public final Lcom/vungle/ads/VungleBannerView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/VungleBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/vungle/ads/VungleBannerView$Companion;-><init>()V

    return-void
.end method

###### Class com.vungle.ads.VungleBannerView.C40991 (com.vungle.ads.VungleBannerView$finishAd$1)
.class final Lcom/vungle/ads/VungleBannerView$finishAd$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/VungleBannerView;->finishAd()V
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
.field public final synthetic a:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/VungleBannerView;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$finishAd$1;->a:Lcom/vungle/ads/VungleBannerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView$finishAd$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$finishAd$1;->a:Lcom/vungle/ads/VungleBannerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/ads/VungleBannerView;->access$finishAdInternal(Lcom/vungle/ads/VungleBannerView;Z)V

    return-void
.end method

###### Class com.vungle.ads.VungleBannerView$impressionTracker$2 (com.vungle.ads.VungleBannerView$impressionTracker$2)
.class final Lcom/vungle/ads/VungleBannerView$impressionTracker$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/VungleBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/c1;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/VungleBannerView$impressionTracker$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;

    invoke-direct {v0}, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;-><init>()V

    sput-object v0, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;->INSTANCE:Lcom/vungle/ads/VungleBannerView$impressionTracker$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vungle/ads/internal/c1;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/c1;

    invoke-direct {v0}, Lcom/vungle/ads/internal/c1;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView$impressionTracker$2;->invoke()Lcom/vungle/ads/internal/c1;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.VungleBannerView$renderAd$1 (com.vungle.ads.VungleBannerView$renderAd$1)
.class public final Lcom/vungle/ads/VungleBannerView$renderAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/z0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/VungleBannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$renderAd$1;->a:Lcom/vungle/ads/VungleBannerView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpression(Landroid/view/View;)V
    .registers 5

    .line 1
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "VungleBannerView"

    const-string v0, "ImpressionTracker checked the banner view become visible."

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$renderAd$1;->a:Lcom/vungle/ads/VungleBannerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vungle/ads/VungleBannerView;->access$setOnImpressionCalled$p(Lcom/vungle/ads/VungleBannerView;Z)V

    .line 3
    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$renderAd$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-static {p1}, Lcom/vungle/ads/VungleBannerView;->access$logViewVisibleOnPlay(Lcom/vungle/ads/VungleBannerView;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$renderAd$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-static {p1}, Lcom/vungle/ads/VungleBannerView;->access$checkHardwareAcceleration(Lcom/vungle/ads/VungleBannerView;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$renderAd$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-static {p1}, Lcom/vungle/ads/VungleBannerView;->access$getPresenter$p(Lcom/vungle/ads/VungleBannerView;)Lcom/vungle/ads/internal/presenter/r;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 6
    const-string v1, "MRAIDPresenter"

    const-string v2, "start()"

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ui/view/j;->d()V

    .line 8
    iget-object p1, p1, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    :cond_32
    return-void
.end method

.method public onViewInvisible(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/VungleBannerView$renderAd$1;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-static {p1}, Lcom/vungle/ads/VungleBannerView;->access$logViewInvisibleOnPlay(Lcom/vungle/ads/VungleBannerView;)V

    return-void
.end method

###### Class com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$1 (com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$1)
.class public final Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/executor/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$1;->a:Landroid/content/Context;

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
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$2 (com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$2)
.class public final Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/omsdk/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$2;->a:Landroid/content/Context;

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
            "Lcom/vungle/ads/internal/omsdk/d;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/omsdk/d;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$3 (com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$3)
.class public final Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/platform/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$3;->a:Landroid/content/Context;

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
            "Lcom/vungle/ads/internal/platform/f;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    iget-object v1, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$$inlined$inject$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/platform/f;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.VungleBannerView$willPresentAdView$1 (com.vungle.ads.VungleBannerView$willPresentAdView$1)
.class public final Lcom/vungle/ads/VungleBannerView$willPresentAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/f;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/VungleBannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$1;->a:Lcom/vungle/ads/VungleBannerView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$1;->a:Lcom/vungle/ads/VungleBannerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/ads/VungleBannerView;->access$finishAdInternal(Lcom/vungle/ads/VungleBannerView;Z)V

    return-void
.end method

###### Class com.vungle.ads.VungleBannerView$willPresentAdView$2 (com.vungle.ads.VungleBannerView$willPresentAdView$2)
.class public final Lcom/vungle/ads/VungleBannerView$willPresentAdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/h;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/VungleBannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$2;->a:Lcom/vungle/ads/VungleBannerView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$willPresentAdView$2;->a:Lcom/vungle/ads/VungleBannerView;

    invoke-static {v0}, Lcom/vungle/ads/VungleBannerView;->access$getPresenter$p(Lcom/vungle/ads/VungleBannerView;)Lcom/vungle/ads/internal/presenter/r;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/r;->a(Landroid/view/MotionEvent;)V

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
