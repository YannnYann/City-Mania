###### Class com.vungle.ads.internal.ui.h (com.vungle.ads.internal.ui.h)
.class public final Lcom/vungle/ads/internal/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/f;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/l;

.field public final synthetic b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ui/l;Lkotlin/Lazy;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/h;->a:Lcom/vungle/ads/internal/ui/l;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/h;->b:Lkotlin/Lazy;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/h;->a:Lcom/vungle/ads/internal/ui/l;

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

    :goto_12
    if-eqz v0, :cond_26

    .line 4
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/h;->a:Lcom/vungle/ads/internal/ui/l;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 5
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 6
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_CLOSED_BEFORE_IMPRESSION:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 7
    iget-object v6, v1, Lcom/vungle/ads/internal/ui/l;->f:Lcom/vungle/ads/internal/util/t;

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 8
    invoke-static/range {v2 .. v8}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;I)V

    .line 13
    :cond_26
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/h;->a:Lcom/vungle/ads/internal/ui/l;

    .line 14
    iget-object v0, v0, Lcom/vungle/ads/internal/ui/l;->b:Lcom/vungle/ads/internal/model/s3;

    if-eqz v0, :cond_35

    .line 15
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/h;->b:Lkotlin/Lazy;

    invoke-static {v1}, Lcom/vungle/ads/internal/ui/l;->a(Lkotlin/Lazy;)Lcom/vungle/ads/internal/signals/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/signals/j;->b(Lcom/vungle/ads/internal/model/s3;)V

    .line 16
    :cond_35
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/h;->a:Lcom/vungle/ads/internal/ui/l;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
