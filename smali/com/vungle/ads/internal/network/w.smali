###### Class com.vungle.ads.internal.network.w (com.vungle.ads.internal.network.w)
.class public final Lcom/vungle/ads/internal/network/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/network/VungleApiClient;

.field public final synthetic b:Lcom/vungle/ads/internal/k2;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/k2;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/network/w;->a:Lcom/vungle/ads/internal/network/VungleApiClient;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/w;->b:Lcom/vungle/ads/internal/k2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    :cond_a
    iget-object v0, p0, Lcom/vungle/ads/internal/network/w;->a:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/network/VungleApiClient;->i:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 5
    :cond_16
    iget-object p1, p0, Lcom/vungle/ads/internal/network/w;->a:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 6
    iget-object p1, p1, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    .line 7
    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p1, "http.agent"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_25
    if-eqz p1, :cond_41

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_41

    .line 14
    :cond_2e
    iget-object v0, p0, Lcom/vungle/ads/internal/network/w;->b:Lcom/vungle/ads/internal/k2;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->d()V

    .line 15
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/w;->b:Lcom/vungle/ads/internal/k2;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    .line 16
    iget-object v0, p0, Lcom/vungle/ads/internal/network/w;->a:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 17
    iput-object p1, v0, Lcom/vungle/ads/internal/network/VungleApiClient;->i:Ljava/lang/String;

    return-void

    .line 10
    :cond_41
    :goto_41
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "VungleApiClient"

    const-string v0, "All UA sources failed, logging USER_AGENT_ERROR"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance p1, Lcom/vungle/ads/UserAgentError;

    invoke-direct {p1}, Lcom/vungle/ads/UserAgentError;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void
.end method
