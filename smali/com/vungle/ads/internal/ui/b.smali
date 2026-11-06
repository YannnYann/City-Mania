###### Class com.vungle.ads.internal.ui.b (com.vungle.ads.internal.ui.b)
.class public final Lcom/vungle/ads/internal/ui/b;
.super Lcom/vungle/ads/internal/util/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/l;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ui/l;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/b;->a:Lcom/vungle/ads/internal/ui/l;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/b;->a:Lcom/vungle/ads/internal/ui/l;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/ui/l;->a:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_11

    .line 3
    iget-boolean v0, v0, Lcom/vungle/ads/internal/presenter/r;->j:Z

    if-nez v0, :cond_11

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 4
    :goto_12
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App is in background, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdActivity"

    invoke-static {v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3e

    .line 5
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/b;->a:Lcom/vungle/ads/internal/ui/l;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 6
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 7
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_BACKGROUND_BEFORE_IMPRESSION:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 8
    iget-object v6, v1, Lcom/vungle/ads/internal/ui/l;->f:Lcom/vungle/ads/internal/util/t;

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 9
    invoke-static/range {v2 .. v8}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;I)V

    :cond_3e
    return-void
.end method

.method public final b()V
    .registers 1

    .line 0
    return-void
.end method
