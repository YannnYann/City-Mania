###### Class com.ironsource.I9 (com.ironsource.I9)
.class public final Lcom/ironsource/I9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Jb;


# instance fields
.field private final a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

.field private final b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;

.field private final c:Lcom/ironsource/e1;

.field private final d:Lcom/ironsource/q1;


# direct methods
.method public constructor <init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;Lcom/ironsource/e1;Lcom/ironsource/q1;)V
    .registers 6

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterConfigProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/I9;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    .line 3
    iput-object p2, p0, Lcom/ironsource/I9;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;

    .line 4
    iput-object p3, p0, Lcom/ironsource/I9;->c:Lcom/ironsource/e1;

    .line 5
    iput-object p4, p0, Lcom/ironsource/I9;->d:Lcom/ironsource/q1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;Lcom/ironsource/e1;Lcom/ironsource/q1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    .line 6
    new-instance p4, Lcom/ironsource/p1;

    sget-object p5, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p4, p5}, Lcom/ironsource/p1;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 7
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/I9;-><init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;Lcom/ironsource/e1;Lcom/ironsource/q1;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/Gb;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/I9;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    const-string v0, "getSDKVersion(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 4
    new-instance v1, Lcom/ironsource/l1;

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/l1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$a;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/I9;->d:Lcom/ironsource/q1;

    invoke-interface {v0, v1}, Lcom/ironsource/q1;->a(Lcom/ironsource/m1;)Lcom/ironsource/r1;

    move-result-object v8

    .line 10
    :try_start_22
    sget-object v0, Lcom/ironsource/pc;->e:Lcom/ironsource/pc$a;

    invoke-virtual {v0}, Lcom/ironsource/pc$a;->a()Lcom/ironsource/pc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pc;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 12
    new-instance v1, Lcom/ironsource/Ib;

    .line 13
    iget-object v2, p0, Lcom/ironsource/I9;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    invoke-virtual {v2}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;->getAdm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/I9;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    invoke-virtual {v3}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;->getProviderName$mediationsdk_release()Lcom/ironsource/Jd;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/I9;->c:Lcom/ironsource/e1;

    .line 14
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ironsource/Ib;-><init>(Ljava/lang/String;Lcom/ironsource/Jd;Lcom/ironsource/e1;Z)V

    .line 16
    invoke-virtual {v1}, Lcom/ironsource/Ib;->b()Lcom/ironsource/Hb;

    move-result-object v4

    .line 18
    new-instance v0, Lcom/ironsource/G9;

    invoke-direct {v0, v4}, Lcom/ironsource/G9;-><init>(Lcom/ironsource/Hb;)V

    invoke-virtual {v0}, Lcom/ironsource/G9;->a()V

    .line 20
    new-instance v7, Lcom/ironsource/Bc;

    invoke-direct {v7}, Lcom/ironsource/Bc;-><init>()V

    .line 22
    new-instance v6, Lcom/ironsource/w2;

    .line 23
    iget-object v0, p0, Lcom/ironsource/I9;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;->getAdm()Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/ironsource/I9;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    invoke-virtual {v1}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;->getProviderName$mediationsdk_release()Lcom/ironsource/Jd;

    move-result-object v1

    .line 25
    invoke-direct {v6, v0, v1}, Lcom/ironsource/w2;-><init>(Ljava/lang/String;Lcom/ironsource/Jd;)V

    .line 31
    iget-object v3, p0, Lcom/ironsource/I9;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    .line 33
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    new-instance v5, Lcom/ironsource/H9;

    .line 38
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    .line 39
    iget-object v1, p0, Lcom/ironsource/I9;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;

    .line 40
    invoke-direct {v5, v0, v1}, Lcom/ironsource/H9;-><init>(Lcom/ironsource/hg;Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;)V

    .line 45
    new-instance v9, Lcom/ironsource/B9;

    .line 47
    invoke-virtual {v0}, Lcom/ironsource/V7;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 48
    invoke-direct {v9, v8, v0}, Lcom/ironsource/B9;-><init>(Lcom/ironsource/r1;Ljava/util/concurrent/Executor;)V

    .line 49
    new-instance v2, Lcom/ironsource/F9;

    const/16 v12, 0x180

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/ironsource/F9;-><init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;Lcom/ironsource/Hb;Lcom/ironsource/U;Lcom/ironsource/x2;Lcom/ironsource/Ac;Lcom/ironsource/r1;Lcom/ironsource/d0;Lcom/ironsource/ig$c;Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_86} :catch_87

    return-object v2

    :catch_87
    move-exception v0

    .line 67
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 70
    instance-of v1, v0, Lcom/ironsource/ve;

    if-eqz v1, :cond_9a

    check-cast v0, Lcom/ironsource/ve;

    invoke-virtual {v0}, Lcom/ironsource/ve;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    goto :goto_a8

    .line 71
    :cond_9a
    sget-object v1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a4

    const-string v0, "unknown error"

    :cond_a4
    invoke-virtual {v1, v0}, Lcom/ironsource/z5;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 74
    :goto_a8
    iget-object v1, p0, Lcom/ironsource/I9;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    .line 77
    new-instance v2, Lcom/ironsource/H9;

    .line 78
    sget-object v3, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    .line 79
    iget-object v4, p0, Lcom/ironsource/I9;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;

    .line 80
    invoke-direct {v2, v3, v4}, Lcom/ironsource/H9;-><init>(Lcom/ironsource/hg;Lcom/unity3d/ironsourceads/interstitial/InterstitialAdLoaderListener;)V

    .line 81
    new-instance v3, Lcom/ironsource/A5;

    invoke-direct {v3, v1, v2, v8, v0}, Lcom/ironsource/A5;-><init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;Lcom/ironsource/H9;Lcom/ironsource/r1;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-object v3
.end method
