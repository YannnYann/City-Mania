###### Class com.facebook.ads.redexgen.X.C2686jb (com.facebook.ads.redexgen.X.jb)
.class public final Lcom/facebook/ads/redexgen/X/jb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkAdsApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdFormatForPlacement(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V
    .registers 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v2, p0

    .line 98801
    .local v0, "this":Lcom/facebook/ads/redexgen/X/jb;
    .local p1, "context":Landroid/content/Context;
    .local p2, "initSettings":Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
    .local p3, "initListener":Lcom/facebook/ads/AudienceNetworkAds$InitListener;
    if-nez p3, :cond_f

    .line 98802
    :try_start_a
    new-instance p3, Lcom/facebook/ads/redexgen/X/ja;

    invoke-direct {p3, v2}, Lcom/facebook/ads/redexgen/X/ja;-><init>(Lcom/facebook/ads/redexgen/X/jb;)V

    .line 98803
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/jb;
    :cond_f
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 98804
    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    .line 98805
    const/4 v0, 0x1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/facebook/ads/internal/api/InitApi;->initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 98806
    return-void
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1c

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "initSettings":Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
    .end local p3    # "initListener":Lcom/facebook/ads/AudienceNetworkAds$InitListener;
    :catchall_1c
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final isInitialized()Z
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    move-object v1, p0

    .line 98807
    .local v0, "this":Lcom/facebook/ads/redexgen/X/jb;
    :try_start_9
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->getDynamicLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 98808
    .local v2, "ldr":Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
    if-nez v0, :cond_10

    .line 98809
    return v2

    .line 98810
    :cond_10
    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/InitApi;->isInitialized()Z

    move-result v0

    return v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_19

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/jb;
    .end local v2    # "ldr":Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
    :catchall_19
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public final onContentProviderCreated(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v1, p0

    .line 98811
    .local v0, "this":Lcom/facebook/ads/redexgen/X/jb;
    .local p1, "context":Landroid/content/Context;
    :try_start_8
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/InitApi;->onContentProviderCreated(Landroid/content/Context;)V

    .line 98812
    return-void
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_14

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/jb;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_14
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
