###### Class com.vungle.ads.internal.p1 (com.vungle.ads.internal.p1)
.class public final Lcom/vungle/ads/internal/p1;
.super Lcom/vungle/ads/internal/k2;
.source "SourceFile"


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .registers 3

    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/k2;->d:Ljava/lang/Long;

    if-nez v0, :cond_7

    .line 2
    invoke-super {p0}, Lcom/vungle/ads/internal/k2;->d()V

    :cond_7
    return-void
.end method

.method public final e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/k2;->c:Ljava/lang/Long;

    if-nez v0, :cond_7

    .line 2
    invoke-super {p0}, Lcom/vungle/ads/internal/k2;->e()V

    :cond_7
    return-void
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/p1;->e:Z

    return v0
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/vungle/ads/internal/p1;->e:Z

    return-void
.end method
