###### Class com.ironsource.adapters.unityads.interstitial.UnityAdsInterstitialLoadListener (com.ironsource.adapters.unityads.interstitial.UnityAdsInterstitialLoadListener)
.class public final Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialLoadListener;
.super Ljava/lang/Object;
.source "UnityAdsInterstitialLoadListener.kt"

# interfaces
.implements Lcom/unity3d/ads/LoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity3d/ads/LoadListener<",
        "Lcom/unity3d/ads/InterstitialAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    .line 17
    iput-object p2, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialLoadListener;->adapter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/unity3d/ads/InterstitialAd;Lcom/unity3d/ads/UnityAdsError;)V
    .registers 7

    if-eqz p1, :cond_1a

    .line 22
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 23
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialLoadListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialAdapter;

    if-eqz p2, :cond_14

    invoke-virtual {p2, p1}, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialAdapter;->setInterstitialAd$unityadsadapter_release(Lcom/unity3d/ads/InterstitialAd;)V

    .line 24
    :cond_14
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadSuccess()V

    return-void

    :cond_1a
    if-eqz p2, :cond_21

    .line 26
    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result p1

    goto :goto_23

    :cond_21
    const/16 p1, 0x3e8

    :goto_23
    if-eqz p2, :cond_2a

    .line 27
    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-nez v0, :cond_2f

    const-string v0, ""

    .line 28
    :cond_2f
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to load, errorCode = %s, errorMessage = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    sget-object v2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->Companion:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

    invoke-virtual {v2, p2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;->getLoadErrorType(Lcom/unity3d/ads/UnityAdsError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object p2

    invoke-interface {v1, p2, p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V
    .registers 3

    .line 14
    check-cast p1, Lcom/unity3d/ads/InterstitialAd;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialLoadListener;->onAdLoaded(Lcom/unity3d/ads/InterstitialAd;Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method
