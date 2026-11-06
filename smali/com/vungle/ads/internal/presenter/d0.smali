###### Class com.vungle.ads.internal.presenter.d0 (com.vungle.ads.internal.presenter.d0)
.class public final Lcom/vungle/ads/internal/presenter/d0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/vungle/ads/internal/model/i0;

.field public final synthetic c:Lcom/vungle/ads/internal/model/j3;

.field public final synthetic d:Lcom/vungle/ads/internal/load/f;

.field public final synthetic e:Ljava/lang/Long;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/vungle/ads/internal/model/f0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/load/f;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/f0;)V
    .registers 9

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/d0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/d0;->b:Lcom/vungle/ads/internal/model/i0;

    iput-object p3, p0, Lcom/vungle/ads/internal/presenter/d0;->c:Lcom/vungle/ads/internal/model/j3;

    iput-object p4, p0, Lcom/vungle/ads/internal/presenter/d0;->d:Lcom/vungle/ads/internal/load/f;

    iput-object p5, p0, Lcom/vungle/ads/internal/presenter/d0;->e:Ljava/lang/Long;

    iput-object p6, p0, Lcom/vungle/ads/internal/presenter/d0;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vungle/ads/internal/presenter/d0;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vungle/ads/internal/presenter/d0;->h:Lcom/vungle/ads/internal/model/f0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    .line 1
    const-string v2, "WebViewManager"

    sget-object v0, Lcom/vungle/ads/internal/presenter/f0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/d0;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/vungle/ads/internal/presenter/d0;->b:Lcom/vungle/ads/internal/model/i0;

    iget-object v5, v1, Lcom/vungle/ads/internal/presenter/d0;->c:Lcom/vungle/ads/internal/model/j3;

    iget-object v8, v1, Lcom/vungle/ads/internal/presenter/d0;->d:Lcom/vungle/ads/internal/load/f;

    iget-object v9, v1, Lcom/vungle/ads/internal/presenter/d0;->e:Ljava/lang/Long;

    iget-object v10, v1, Lcom/vungle/ads/internal/presenter/d0;->f:Ljava/lang/String;

    iget-object v11, v1, Lcom/vungle/ads/internal/presenter/d0;->g:Ljava/lang/String;

    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/d0;->h:Lcom/vungle/ads/internal/model/f0;

    :try_start_16
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    new-instance v12, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v12, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v12, v3}, Lcom/vungle/ads/internal/platform/g;->a(Landroid/webkit/WebView;Lcom/vungle/ads/internal/model/f0;)V

    .line 5
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/vungle/ads/internal/presenter/b0;

    invoke-direct {v6, v0}, Lcom/vungle/ads/internal/presenter/b0;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v6}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v6

    .line 6
    new-instance v7, Lcom/vungle/ads/internal/presenter/c0;

    invoke-direct {v7, v0}, Lcom/vungle/ads/internal/presenter/c0;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v7}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 7
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/executor/a;

    .line 8
    check-cast v3, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/executor/d;->f()Lcom/vungle/ads/internal/executor/j;

    move-result-object v6

    .line 11
    new-instance v3, Lcom/vungle/ads/internal/ui/x;

    .line 12
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vungle/ads/internal/platform/f;

    .line 13
    invoke-direct/range {v3 .. v9}, Lcom/vungle/ads/internal/ui/x;-><init>(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/platform/f;Lcom/vungle/ads/internal/load/f;Ljava/lang/Long;)V

    .line 22
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->m()Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, "unknown"

    sget-object v5, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x1

    :goto_6d
    move v14, v0

    goto :goto_73

    :catchall_6f
    move-exception v0

    goto :goto_df

    :cond_71
    const/4 v0, 0x0

    goto :goto_6d

    .line 25
    :goto_73
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->l()Ljava/lang/String;

    move-result-object v15

    .line 26
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->k()Ljava/lang/String;

    move-result-object v16

    .line 27
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->i()Ljava/lang/String;

    move-result-object v17

    .line 28
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->j()Ljava/lang/String;

    move-result-object v18

    move-object v13, v3

    .line 29
    invoke-virtual/range {v13 .. v18}, Lcom/vungle/ads/internal/ui/x;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v13

    .line 36
    invoke-virtual {v12, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 37
    invoke-virtual {v12, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/vungle/ads/internal/presenter/f0;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vungle/ads/internal/presenter/a0;

    invoke-direct {v6, v3, v12}, Lcom/vungle/ads/internal/presenter/a0;-><init>(Lcom/vungle/ads/internal/ui/x;Landroid/webkit/WebView;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v13, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 41
    sget-object v14, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->CONCURRENT_CACHED_WEBVIEW_COUNT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 42
    invoke-static {}, Lcom/vungle/ads/internal/presenter/f0;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    int-to-long v5, v0

    .line 43
    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/i0;->q()Lcom/vungle/ads/internal/util/t;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x8

    move-wide v15, v5

    .line 44
    invoke-static/range {v13 .. v19}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;I)V

    .line 49
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preload complete. Cache size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vungle/ads/internal/presenter/f0;->b()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_de
    .catchall {:try_start_16 .. :try_end_de} :catchall_6f

    goto :goto_e9

    :goto_df
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    :goto_e9
    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/d0;->d:Lcom/vungle/ads/internal/load/f;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 89
    sget-boolean v4, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v4, "Preload webview failed"

    invoke-static {v2, v4, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {v3}, Lcom/vungle/ads/internal/load/f;->b()V

    .line 91
    :cond_fb
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
