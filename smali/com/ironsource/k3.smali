###### Class com.ironsource.C3683k3 (com.ironsource.k3)
.class public final Lcom/ironsource/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Jb;


# instance fields
.field private final a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

.field private final b:Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;

.field private final c:Lcom/ironsource/e1;

.field private final d:Lcom/ironsource/q1;


# direct methods
.method public constructor <init>(Lcom/unity3d/ironsourceads/banner/BannerAdRequest;Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;Lcom/ironsource/e1;Lcom/ironsource/q1;)V
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
    iput-object p1, p0, Lcom/ironsource/k3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    .line 3
    iput-object p2, p0, Lcom/ironsource/k3;->b:Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;

    .line 4
    iput-object p3, p0, Lcom/ironsource/k3;->c:Lcom/ironsource/e1;

    .line 5
    iput-object p4, p0, Lcom/ironsource/k3;->d:Lcom/ironsource/q1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/banner/BannerAdRequest;Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;Lcom/ironsource/e1;Lcom/ironsource/q1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    .line 6
    new-instance p4, Lcom/ironsource/p1;

    sget-object p5, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {p4, p5}, Lcom/ironsource/p1;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 7
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/k3;-><init>(Lcom/unity3d/ironsourceads/banner/BannerAdRequest;Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;Lcom/ironsource/e1;Lcom/ironsource/q1;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/Gb;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/k3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    const-string v0, "getSDKVersion(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 4
    new-instance v1, Lcom/ironsource/l1;

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/l1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$a;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/k3;->d:Lcom/ironsource/q1;

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
    iget-object v2, p0, Lcom/ironsource/k3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v2}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getAdm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/k3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v3}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getProviderName$mediationsdk_release()Lcom/ironsource/Jd;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/k3;->c:Lcom/ironsource/e1;

    .line 14
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ironsource/Ib;-><init>(Ljava/lang/String;Lcom/ironsource/Jd;Lcom/ironsource/e1;Z)V

    .line 16
    invoke-virtual {v1}, Lcom/ironsource/Ib;->b()Lcom/ironsource/Hb;

    move-result-object v6

    .line 17
    new-instance v0, Lcom/ironsource/i3;

    iget-object v1, p0, Lcom/ironsource/k3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v1}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getSize()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/ironsource/i3;-><init>(Lcom/ironsource/Hb;Lcom/unity3d/ironsourceads/AdSize;)V

    invoke-virtual {v0}, Lcom/ironsource/i3;->a()V

    .line 19
    new-instance v7, Lcom/ironsource/Bc;

    invoke-direct {v7}, Lcom/ironsource/Bc;-><init>()V

    .line 21
    new-instance v5, Lcom/ironsource/w2;

    .line 22
    iget-object v0, p0, Lcom/ironsource/k3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v0}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getAdm()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/ironsource/k3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    invoke-virtual {v1}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getProviderName$mediationsdk_release()Lcom/ironsource/Jd;

    move-result-object v1

    .line 24
    invoke-direct {v5, v0, v1}, Lcom/ironsource/w2;-><init>(Ljava/lang/String;Lcom/ironsource/Jd;)V

    .line 29
    new-instance v2, Lcom/ironsource/h3;

    .line 30
    iget-object v3, p0, Lcom/ironsource/k3;->a:Lcom/unity3d/ironsourceads/banner/BannerAdRequest;

    .line 31
    invoke-virtual {v3}, Lcom/unity3d/ironsourceads/banner/BannerAdRequest;->getSize()Lcom/unity3d/ironsourceads/AdSize;

    move-result-object v4

    .line 33
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    new-instance v9, Lcom/ironsource/j3;

    .line 38
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    .line 39
    iget-object v1, p0, Lcom/ironsource/k3;->b:Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;

    .line 40
    invoke-direct {v9, v0, v1}, Lcom/ironsource/j3;-><init>(Lcom/ironsource/hg;Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;)V

    .line 45
    new-instance v10, Lcom/ironsource/P2;

    .line 47
    invoke-virtual {v0}, Lcom/ironsource/V7;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 48
    invoke-direct {v10, v8, v0}, Lcom/ironsource/P2;-><init>(Lcom/ironsource/r1;Ljava/util/concurrent/Executor;)V

    const/16 v13, 0x300

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 49
    invoke-direct/range {v2 .. v14}, Lcom/ironsource/h3;-><init>(Lcom/unity3d/ironsourceads/banner/BannerAdRequest;Lcom/unity3d/ironsourceads/AdSize;Lcom/ironsource/x2;Lcom/ironsource/Hb;Lcom/ironsource/Ac;Lcom/ironsource/r1;Lcom/ironsource/U;Lcom/ironsource/O2;Lcom/ironsource/ig$c;Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_90} :catch_91

    return-object v2

    :catch_91
    move-exception v0

    .line 68
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 71
    instance-of v1, v0, Lcom/ironsource/ve;

    if-eqz v1, :cond_a4

    check-cast v0, Lcom/ironsource/ve;

    invoke-virtual {v0}, Lcom/ironsource/ve;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    goto :goto_b2

    .line 72
    :cond_a4
    sget-object v1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ae

    const-string v0, "Unknown error"

    :cond_ae
    invoke-virtual {v1, v0}, Lcom/ironsource/z5;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 74
    :goto_b2
    new-instance v1, Lcom/ironsource/y5;

    .line 77
    new-instance v2, Lcom/ironsource/j3;

    .line 78
    sget-object v3, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    .line 79
    iget-object v4, p0, Lcom/ironsource/k3;->b:Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;

    .line 80
    invoke-direct {v2, v3, v4}, Lcom/ironsource/j3;-><init>(Lcom/ironsource/hg;Lcom/unity3d/ironsourceads/banner/BannerAdLoaderListener;)V

    .line 81
    invoke-direct {v1, v0, v2, v8}, Lcom/ironsource/y5;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/j3;Lcom/ironsource/r1;)V

    return-object v1
.end method
