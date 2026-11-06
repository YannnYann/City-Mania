###### Class com.ironsource.mediationsdk.AbstractAdapter (com.ironsource.mediationsdk.AbstractAdapter)
.class public abstract Lcom/ironsource/mediationsdk/AbstractAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;
.implements Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;
.implements Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterNetworkDataInterface;


# static fields
.field private static mAdapterDebug:Ljava/lang/Boolean;


# instance fields
.field private final mAdUnitAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/mediationsdk/sdk/AdUnitAdapterInterface;",
            ">;"
        }
    .end annotation
.end field

.field protected mBannerLoadWhileShowSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

.field protected mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

.field private mPluginType:Ljava/lang/String;

.field private final mProviderName:Ljava/lang/String;

.field private mProviderNetworkKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    .line 4
    sget-object v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_INSTANCE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerLoadWhileShowSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    .line 10
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->BANNER:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    return-object v0
.end method

.method private b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    return-object v0
.end method

.method private c()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->NATIVE_AD:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;

    return-object v0
.end method

.method private d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    return-object v0
.end method

.method public static postBackgroundThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v0, p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postAdapterBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnUIThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v0, p0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)Lcom/ironsource/Ff$a;

    return-void
.end method


# virtual methods
.method public collectBannerBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->collectBannerBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    return-void

    .line 4
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getBannerBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 7
    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    .line 9
    :cond_14
    const-string p1, "bidding data map is null"

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public collectInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->collectInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    return-void

    .line 4
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 7
    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    .line 9
    :cond_14
    const-string p1, "bidding data map is null"

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public collectNativeAdBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->c()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;->collectNativeAdBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    return-void

    .line 4
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getNativeAdBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 7
    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    .line 9
    :cond_14
    const-string p1, "bidding data map is null"

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public collectRewardedVideoBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->collectRewardedVideoBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    return-void

    .line 4
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 7
    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    .line 9
    :cond_14
    const-string p1, "bidding data map is null"

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public destroyBanner(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->destroyBanner(Lorg/json/JSONObject;)V

    :cond_9
    return-void
.end method

.method public destroyInterstitialAd(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->destroyInterstitialAd(Lorg/json/JSONObject;)V

    :cond_9
    return-void
.end method

.method public destroyNativeAd(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->c()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;->destroyNativeAd(Lorg/json/JSONObject;)V

    :cond_9
    return-void
.end method

.method public destroyRewardedVideoAd(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->destroyRewardedVideoAd(Lorg/json/JSONObject;)V

    :cond_9
    return-void
.end method

.method public earlyInit(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 0
    return-void
.end method

.method public getAdaptiveHeight(I)I
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->getAdaptiveHeight(I)I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method public getBannerBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->getBannerBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBannerLoadWhileShowSupportState(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerLoadWhileShowSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-object p1
.end method

.method public abstract getCoreSDKVersion()Ljava/lang/String;
.end method

.method public getDynamicUserId()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->getInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLoadWhileShowSupportState(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-object p1
.end method

.method public getNativeAdBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->c()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;->getNativeAdBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPluginType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderNetworkKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderNetworkKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->getRewardedVideoBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public initAndLoadRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 14

    const/4 v1, 0x0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_5} :catch_1a

    if-eqz v2, :cond_13

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2
    :try_start_c
    invoke-interface/range {v2 .. v7}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->initAndLoadRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    return-void

    :catch_10
    move-exception v0

    :goto_11
    move-object p1, v0

    goto :goto_1d

    :cond_13
    move-object v7, p5

    if-eqz v7, :cond_4b

    .line 4
    invoke-interface {v7, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_19
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_19} :catch_10

    return-void

    :catch_1a
    move-exception v0

    move-object v7, p5

    goto :goto_11

    .line 7
    :goto_1d
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 8
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "provider -"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " error - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 9
    invoke-interface {v7, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_4b
    return-void
.end method

.method public initBannerForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 7

    const/16 v0, 0x1fe

    .line 1
    :try_start_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->initBannerForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    return-void

    :catch_c
    move-exception p1

    goto :goto_1b

    :cond_e
    if-eqz p4, :cond_63

    .line 4
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p2, "method not implemented"

    invoke-direct {p1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_1a} :catch_c

    return-void

    .line 8
    :goto_1b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider -"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-interface {p4, p2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_63
    return-void
.end method

.method public initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 7

    const/16 v0, 0x1fe

    .line 1
    :try_start_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    return-void

    :catch_c
    move-exception p1

    goto :goto_1b

    :cond_e
    if-eqz p4, :cond_63

    .line 4
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p2, "method not implemented"

    invoke-direct {p1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_1a} :catch_c

    return-void

    .line 8
    :goto_1b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider -"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-interface {p4, p2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_63
    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 7

    const/16 v0, 0x1fe

    .line 1
    :try_start_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void

    :catch_c
    move-exception p1

    goto :goto_1b

    :cond_e
    if-eqz p4, :cond_63

    .line 4
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p2, "method not implemented"

    invoke-direct {p1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_1a} :catch_c

    return-void

    .line 8
    :goto_1b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider -"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-interface {p4, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_63
    return-void
.end method

.method public initInterstitialForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 7

    const/16 v0, 0x1fe

    .line 1
    :try_start_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->initInterstitialForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void

    :catch_c
    move-exception p1

    goto :goto_1b

    :cond_e
    if-eqz p4, :cond_63

    .line 4
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p2, "method not implemented"

    invoke-direct {p1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_1a} :catch_c

    return-void

    .line 8
    :goto_1b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider -"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-interface {p4, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_63
    return-void
.end method

.method public initNativeAdForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->c()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;->initNativeAdForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V

    :cond_9
    return-void
.end method

.method public initNativeAds(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->c()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;->initNativeAds(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V

    :cond_9
    return-void
.end method

.method public initRewardedVideoForDemandOnly(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->initRewardedVideoForDemandOnly(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    :cond_9
    return-void
.end method

.method public initRewardedVideoWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 7

    const/16 v0, 0x1fe

    .line 1
    :try_start_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->initRewardedVideoWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    return-void

    :catch_c
    move-exception p1

    goto :goto_1b

    :cond_e
    if-eqz p4, :cond_63

    .line 4
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p2, "method not implemented"

    invoke-direct {p1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_1a} :catch_c

    return-void

    .line 8
    :goto_1b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider -"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-interface {p4, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_63
    return-void
.end method

.method public isAdaptersDebugEnabled()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdapterDebug:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->isInterstitialReady(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->isRewardedVideoAvailable(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public isUsingActivityBeforeImpression(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public loadBanner(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->loadBanner(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    :cond_9
    return-void
.end method

.method public loadBannerForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->loadBannerForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    :cond_e
    return-void
.end method

.method public loadBannerForDemandOnlyForBidding(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->loadBannerForDemandOnlyForBidding(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    :cond_9
    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->loadInterstitial(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    :cond_9
    return-void
.end method

.method public loadInterstitialForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->loadInterstitialForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    :cond_9
    return-void
.end method

.method public loadNativeAd(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->c()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;->loadNativeAd(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V

    :cond_9
    return-void
.end method

.method public loadNativeAdForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->c()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;->loadNativeAdForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V

    :cond_9
    return-void
.end method

.method public loadRewardedVideo(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->loadRewardedVideo(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    :cond_9
    return-void
.end method

.method public loadRewardedVideoForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->loadRewardedVideoForBidding(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    :cond_9
    return-void
.end method

.method public onBannerViewBound(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->onBannerViewBound(Lorg/json/JSONObject;)V

    :cond_9
    return-void
.end method

.method public onBannerViewWillBind(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->a()Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;->onBannerViewWillBind(Lorg/json/JSONObject;)V

    :cond_9
    return-void
.end method

.method public onNetworkInitCallbackFailed(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 2
    invoke-interface {v1, p1}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackFailed(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public onNetworkInitCallbackSuccess()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 2
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public setAdapterDebug(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    sput-object p1, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdapterDebug:Ljava/lang/Boolean;

    return-void
.end method

.method public setBannerAdapter(Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->BANNER:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setConsent(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public setInterstitialAdapter(Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setNativeAdAdapter(Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->NATIVE_AD:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNetworkData(Lcom/ironsource/mediationsdk/AdapterNetworkData;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkData not implemented | adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", networkData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public setNewConsent(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    return-void
.end method

.method public setPluginData(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginType:Ljava/lang/String;

    return-void
.end method

.method public setProviderNetworkKey(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderNetworkKey:Ljava/lang/String;

    return-void
.end method

.method public setRewardedVideoAdapter(Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitAdapters:Ljava/util/Map;

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTestMode(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->b()Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    :cond_9
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->d()Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    :cond_9
    return-void
.end method
