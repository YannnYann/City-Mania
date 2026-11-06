###### Class com.vungle.ads.internal.j2 (com.vungle.ads.internal.j2)
.class public final Lcom/vungle/ads/internal/j2;
.super Lcom/vungle/ads/internal/e1;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .registers 3

    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/e1;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    return-void
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method
