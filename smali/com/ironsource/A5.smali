###### Class com.ironsource.A5 (com.ironsource.A5)
.class public final Lcom/ironsource/A5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Gb;


# instance fields
.field private final a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

.field private final b:Lcom/ironsource/H9;

.field private final c:Lcom/ironsource/r1;

.field private final d:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method public constructor <init>(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;Lcom/ironsource/H9;Lcom/ironsource/r1;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadTaskListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/A5;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    .line 3
    iput-object p2, p0, Lcom/ironsource/A5;->b:Lcom/ironsource/H9;

    .line 4
    iput-object p3, p0, Lcom/ironsource/A5;->c:Lcom/ironsource/r1;

    .line 5
    iput-object p4, p0, Lcom/ironsource/A5;->d:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A5;->d:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-object v0
.end method

.method public start()V
    .registers 5

    .line 1
    new-instance v0, Lcom/ironsource/w5;

    .line 2
    iget-object v1, p0, Lcom/ironsource/A5;->c:Lcom/ironsource/r1;

    .line 3
    iget-object v2, p0, Lcom/ironsource/A5;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    invoke-virtual {v2}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;->getAdId$mediationsdk_release()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/ironsource/A5;->a:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;

    invoke-virtual {v3}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdRequest;->getProviderName$mediationsdk_release()Lcom/ironsource/Jd;

    move-result-object v3

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/w5;-><init>(Lcom/ironsource/r1;Ljava/lang/String;Lcom/ironsource/Jd;)V

    .line 11
    invoke-virtual {v0}, Lcom/ironsource/w5;->a()V

    .line 12
    iget-object v1, p0, Lcom/ironsource/A5;->d:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0, v1}, Lcom/ironsource/w5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 14
    iget-object v0, p0, Lcom/ironsource/A5;->b:Lcom/ironsource/H9;

    iget-object v1, p0, Lcom/ironsource/A5;->d:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0, v1}, Lcom/ironsource/H9;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
