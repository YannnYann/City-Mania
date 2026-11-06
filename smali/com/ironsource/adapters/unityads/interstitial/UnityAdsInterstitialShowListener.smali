###### Class com.ironsource.adapters.unityads.interstitial.UnityAdsInterstitialShowListener (com.ironsource.adapters.unityads.interstitial.UnityAdsInterstitialShowListener)
.class public final Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;
.super Ljava/lang/Object;
.source "UnityAdsInterstitialShowListener.kt"

# interfaces
.implements Lcom/unity3d/ads/InterstitialShowListener;


# instance fields
.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/unity3d/ads/InterstitialAd;)V
    .registers 3

    const-string v0, "unityAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 29
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdClicked()V

    return-void
.end method

.method public bridge synthetic onClicked(Ljava/lang/Object;)V
    .registers 2

    .line 12
    check-cast p1, Lcom/unity3d/ads/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->onClicked(Lcom/unity3d/ads/InterstitialAd;)V

    return-void
.end method

.method public onCompleted(Lcom/unity3d/ads/InterstitialAd;Lcom/unity3d/ads/ShowFinishState;)V
    .registers 4

    const-string v0, "unityAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 34
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;->onAdClosed()V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;Lcom/unity3d/ads/ShowFinishState;)V
    .registers 3

    .line 12
    check-cast p1, Lcom/unity3d/ads/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->onCompleted(Lcom/unity3d/ads/InterstitialAd;Lcom/unity3d/ads/ShowFinishState;)V

    return-void
.end method

.method public onFailed(Lcom/unity3d/ads/InterstitialAd;Lcom/unity3d/ads/UnityAdsError;)V
    .registers 6

    const-string v0, "unityAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1d

    move-object v1, v2

    :cond_1d
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to show, errorCode = %s, errorMessage = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_41

    goto :goto_42

    :cond_41
    move-object v2, p2

    :goto_42
    invoke-interface {p1, v0, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V
    .registers 3

    .line 12
    check-cast p1, Lcom/unity3d/ads/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->onFailed(Lcom/unity3d/ads/InterstitialAd;Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method

.method public onStarted(Lcom/unity3d/ads/InterstitialAd;)V
    .registers 3

    const-string v0, "unityAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 19
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdOpened()V

    return-void
.end method

.method public bridge synthetic onStarted(Ljava/lang/Object;)V
    .registers 2

    .line 12
    check-cast p1, Lcom/unity3d/ads/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;->onStarted(Lcom/unity3d/ads/InterstitialAd;)V

    return-void
.end method
