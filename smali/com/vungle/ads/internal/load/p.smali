###### Class com.vungle.ads.internal.load.p (com.vungle.ads.internal.load.p)
.class public final Lcom/vungle/ads/internal/load/p;
.super Lcom/vungle/ads/internal/load/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/d;Lcom/vungle/ads/internal/omsdk/c;Lcom/vungle/ads/internal/downloader/n;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/load/b;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vungleApiClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkExecutors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omInjector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/vungle/ads/internal/load/i;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/d;Lcom/vungle/ads/internal/omsdk/c;Lcom/vungle/ads/internal/downloader/n;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/load/b;)V

    return-void
.end method


# virtual methods
.method public final i()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->q:Ljava/util/List;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_18

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    return-void

    .line 5
    :cond_18
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->d()Landroid/content/Context;

    move-result-object v1

    .line 6
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lcom/vungle/ads/internal/load/o;

    invoke-direct {v3, v1}, Lcom/vungle/ads/internal/load/o;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    if-eqz v0, :cond_5a

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    new-instance v3, Lcom/vungle/ads/internal/network/p;

    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/network/p;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v2, "win-notification"

    invoke-virtual {v3, v2}, Lcom/vungle/ads/internal/network/p;->b(Ljava/lang/String;)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/network/p;->a(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/p;->a()Lcom/vungle/ads/internal/network/q;

    move-result-object v2

    .line 12
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/network/r;

    .line 13
    invoke-static {v3, v2}, Lcom/vungle/ads/internal/network/r;->a(Lcom/vungle/ads/internal/network/r;Lcom/vungle/ads/internal/network/q;)V

    goto :goto_2d

    :cond_5a
    return-void
.end method

.method public final k()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->b()Lcom/vungle/ads/internal/load/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/b;->a()Lcom/vungle/ads/internal/model/q0;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 4
    new-instance v0, Lcom/vungle/ads/InvalidBidPayloadError;

    invoke-direct {v0}, Lcom/vungle/ads/InvalidBidPayloadError;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/load/i;->a(Lcom/vungle/ads/VungleError;)V

    return-void

    .line 8
    :cond_1f
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->s()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 10
    :try_start_2a
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/q0;->b()Ljava/lang/String;

    move-result-object v1

    .line 11
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "RTA_DEBUGGER"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->d()Landroid/content/Context;

    move-result-object v2

    .line 13
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v4, Lcom/vungle/ads/internal/load/n;

    invoke-direct {v4, v2}, Lcom/vungle/ads/internal/load/n;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    if-eqz v1, :cond_58

    .line 14
    new-instance v3, Lcom/vungle/ads/internal/load/m;

    .line 15
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 16
    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/load/m;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V

    invoke-virtual {v3, v1}, Lcom/vungle/ads/internal/load/m;->a(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_2a .. :try_end_58} :catchall_58

    .line 22
    :catchall_58
    :cond_58
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/q0;->a()Lcom/vungle/ads/internal/model/i0;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/q0;->c()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_63

    goto :goto_78

    :cond_63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_78

    if-nez v1, :cond_6d

    goto :goto_78

    .line 34
    :cond_6d
    new-instance v0, Lcom/vungle/ads/internal/j2;

    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->CONFIG_LOADED_FROM_ADM_LOAD:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/vungle/ads/internal/load/i;->a(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/j2;)V

    return-void

    .line 36
    :cond_78
    :goto_78
    new-instance v0, Lcom/vungle/ads/AdMarkupInvalidError;

    const-string v1, "The ad response did not contain valid ad markup"

    invoke-direct {v0, v1}, Lcom/vungle/ads/AdMarkupInvalidError;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/load/i;->a(Lcom/vungle/ads/VungleError;)V

    return-void
.end method
