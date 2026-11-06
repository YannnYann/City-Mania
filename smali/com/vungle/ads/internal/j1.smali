###### Class com.vungle.ads.internal.j1 (com.vungle.ads.internal.j1)
.class public final Lcom/vungle/ads/internal/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/z0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/o1;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/o1;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/j1;->a:Lcom/vungle/ads/internal/o1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImpression(Landroid/view/View;)V
    .registers 8

    .line 1
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "ImpressionTracker checked the native ad view become visible."

    const-string v0, "NativeAdInternal"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/j1;->a:Lcom/vungle/ads/internal/o1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v1, "checkpoint.0"

    invoke-static {p1, v1}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v1, v2}, Lcom/vungle/ads/internal/o1;->a(ILjava/util/Map;)V

    .line 8
    iget-object p1, p0, Lcom/vungle/ads/internal/j1;->a:Lcom/vungle/ads/internal/o1;

    .line 9
    iget-object v1, p1, Lcom/vungle/ads/internal/o1;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_26

    const-wide/16 v1, 0x3

    goto :goto_28

    :cond_26
    const-wide/16 v1, 0x2

    .line 11
    :goto_28
    sget-object v3, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 12
    new-instance v4, Lcom/vungle/ads/internal/j2;

    sget-object v5, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v4, v5}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 13
    iput-object v5, v4, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 14
    iget-object p1, p1, Lcom/vungle/ads/internal/r;->m:Lcom/vungle/ads/internal/util/t;

    const/4 v5, 0x4

    .line 15
    invoke-static {v3, v4, p1, v5}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log metric AD_VISIBILITY: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onViewInvisible(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/internal/j1;->a:Lcom/vungle/ads/internal/o1;

    .line 2
    iget-object p1, p1, Lcom/vungle/ads/internal/o1;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 4
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "NativeAdInternal"

    const-string v0, "ImpressionTracker checked the native ad view invisible on play, log AD_VISIBILITY_INVISIBLE."

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 9
    new-instance v0, Lcom/vungle/ads/internal/j2;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-wide/16 v1, 0x1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 12
    iget-object v1, p0, Lcom/vungle/ads/internal/j1;->a:Lcom/vungle/ads/internal/o1;

    .line 13
    iget-object v1, v1, Lcom/vungle/ads/internal/r;->m:Lcom/vungle/ads/internal/util/t;

    const/4 v2, 0x4

    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    :cond_2d
    return-void
.end method
