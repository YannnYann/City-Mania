###### Class com.vungle.ads.internal.k2 (com.vungle.ads.internal.k2)
.class public Lcom/vungle/ads/internal/k2;
.super Lcom/vungle/ads/internal/e1;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .registers 3

    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/e1;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    return-void
.end method


# virtual methods
.method public final c()J
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/vungle/ads/internal/k2;->d:Ljava/lang/Long;

    if-eqz v2, :cond_d

    .line 3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_e

    :cond_d
    move-wide v2, v0

    .line 4
    :goto_e
    iget-object v4, p0, Lcom/vungle/ads/internal/k2;->c:Ljava/lang/Long;

    if-eqz v4, :cond_16

    .line 5
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_16
    sub-long/2addr v2, v0

    const v0, 0xf4240

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public d()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/vungle/ads/internal/k2;->d:Ljava/lang/Long;

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/vungle/ads/internal/k2;->c:Ljava/lang/Long;

    return-void
.end method
