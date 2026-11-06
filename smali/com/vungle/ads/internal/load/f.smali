###### Class com.vungle.ads.internal.load.f (com.vungle.ads.internal.load.f)
.class public final Lcom/vungle/ads/internal/load/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/i;

.field public final synthetic b:Lcom/vungle/ads/internal/model/i0;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/load/i;Lcom/vungle/ads/internal/model/i0;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/f;->b:Lcom/vungle/ads/internal/model/i0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/load/i;->y:Lcom/vungle/ads/internal/k2;

    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->d()V

    .line 4
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    .line 5
    iget-object v2, v1, Lcom/vungle/ads/internal/load/i;->y:Lcom/vungle/ads/internal/k2;

    .line 6
    iget-object v1, v1, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    const/4 v3, 0x4

    .line 7
    invoke-static {v0, v2, v1, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    .line 8
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "BaseAdLoader"

    const-string v1, "fail to load ad"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/i;->i()V

    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    .line 11
    iget-object v0, v0, Lcom/vungle/ads/internal/load/i;->k:Lcom/vungle/ads/internal/load/a;

    if-eqz v0, :cond_2c

    .line 12
    iget-object v1, p0, Lcom/vungle/ads/internal/load/f;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/load/a;->onSuccess(Lcom/vungle/ads/internal/model/i0;)V

    :cond_2c
    return-void
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/load/i;->y:Lcom/vungle/ads/internal/k2;

    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->d()V

    .line 4
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    .line 5
    iget-object v2, v1, Lcom/vungle/ads/internal/load/i;->y:Lcom/vungle/ads/internal/k2;

    .line 6
    iget-object v1, v1, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    const/4 v3, 0x4

    .line 7
    invoke-static {v0, v2, v1, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    .line 11
    iget-object v0, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/i;->i()V

    .line 12
    iget-object v0, p0, Lcom/vungle/ads/internal/load/f;->a:Lcom/vungle/ads/internal/load/i;

    .line 13
    iget-object v0, v0, Lcom/vungle/ads/internal/load/i;->k:Lcom/vungle/ads/internal/load/a;

    if-eqz v0, :cond_23

    .line 14
    iget-object v1, p0, Lcom/vungle/ads/internal/load/f;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/load/a;->onSuccess(Lcom/vungle/ads/internal/model/i0;)V

    :cond_23
    return-void
.end method
