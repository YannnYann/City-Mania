###### Class com.ironsource.adapters.facebook.FacebookAdapter (com.ironsource.adapters.facebook.FacebookAdapter)
.class public Lcom/ironsource/adapters/facebook/FacebookAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;
    }
.end annotation


# static fields
.field private static final GitHash:Ljava/lang/String; = "effca81"

.field private static final MEDIATION_NAME:Ljava/lang/String; = "ironSource"

.field protected static final META_NETWORK_NAME:Ljava/lang/String; = "Facebook"

.field private static final NETWORK_DATA_CACHE_FLAG:Ljava/lang/String; = "CacheFlag"

.field private static final VERSION:Ljava/lang/String; = "5.4.0"

.field protected static initCallbackListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field protected static mInitState:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

.field protected static mInterstitialFacebookCacheFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field protected static mWasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field protected final ALL_PLACEMENT_IDS:Ljava/lang/String;

.field protected final FACEBOOK_INTERSTITIAL_CACHE_FLAG:Ljava/lang/String;

.field protected final META_INTERSTITIAL_CACHE_FLAG:Ljava/lang/String;

.field protected final META_MIXED_AUDIENCE:Ljava/lang/String;

.field protected final PLACEMENT_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    const-class v0, Lcom/facebook/ads/CacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialFacebookCacheFlags:Ljava/util/EnumSet;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;

    .line 77
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInitState:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mWasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 53
    const-string p1, "placementId"

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->PLACEMENT_ID:Ljava/lang/String;

    .line 54
    const-string p1, "placementIds"

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->ALL_PLACEMENT_IDS:Ljava/lang/String;

    .line 58
    const-string p1, "facebook_is_cacheflag"

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->FACEBOOK_INTERSTITIAL_CACHE_FLAG:Ljava/lang/String;

    .line 59
    const-string p1, "meta_is_cacheflag"

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->META_INTERSTITIAL_CACHE_FLAG:Ljava/lang/String;

    .line 60
    const-string p1, "meta_mixed_audience"

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->META_MIXED_AUDIENCE:Ljava/lang/String;

    .line 88
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 89
    new-instance p1, Lcom/ironsource/adapters/facebook/rewardedvideo/FacebookRewardedVideoAdapter;

    invoke-direct {p1, p0}, Lcom/ironsource/adapters/facebook/rewardedvideo/FacebookRewardedVideoAdapter;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedVideoAdapter(Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;)V

    .line 90
    new-instance p1, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;

    invoke-direct {p1, p0}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setInterstitialAdapter(Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;)V

    .line 91
    new-instance p1, Lcom/ironsource/adapters/facebook/banner/FacebookBannerAdapter;

    invoke-direct {p1, p0}, Lcom/ironsource/adapters/facebook/banner/FacebookBannerAdapter;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setBannerAdapter(Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;)V

    .line 92
    new-instance p1, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdAdapter;

    invoke-direct {p1, p0}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdAdapter;-><init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setNativeAdAdapter(Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;)V

    .line 94
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_INSTANCE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-void
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .registers 1

    .line 115
    const-string v0, "6.22.0"

    return-object v0
.end method

.method private getFacebookAllCacheFlags()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 248
    const-class v0, Lcom/facebook/ads/CacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method private getFacebookCacheFlag(Ljava/lang/String;)Lcom/facebook/ads/CacheFlag;
    .registers 5

    .line 242
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/CacheFlag;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/CacheFlag;

    move-result-object p1

    return-object p1
.end method

.method public static getIntegrationData(Landroid/content/Context;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 3

    .line 99
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "Facebook"

    const-string v1, "5.4.0"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getMediationServiceInfo()Ljava/lang/String;
    .registers 5

    .line 266
    invoke-static {}, Lcom/unity3d/mediation/LevelPlay;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5.4.0"

    const-string v2, "ironSource"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s_%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediationServiceInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isNoFillError(Lcom/facebook/ads/AdError;)Z
    .registers 2

    .line 273
    invoke-virtual {p0}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private isValidMixedAudienceMetaData(Ljava/lang/String;)Z
    .registers 2

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static networkAdapterVersion()Ljava/lang/String;
    .registers 1

    .line 119
    const-string v0, "5.4.0"

    return-object v0
.end method

.method private processCacheFlags(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", values = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 224
    sget-object p1, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialFacebookCacheFlags:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 227
    :try_start_23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 228
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getFacebookCacheFlag(Ljava/lang/String;)Lcom/facebook/ads/CacheFlag;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 230
    sget-object p2, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialFacebookCacheFlags:Ljava/util/EnumSet;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5e} :catch_5f

    goto :goto_27

    .line 233
    :catch_5f
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "flag is unknown or all, set all as default"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getFacebookAllCacheFlags()Ljava/util/EnumSet;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialFacebookCacheFlags:Ljava/util/EnumSet;

    .line 237
    :cond_6c
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "all flags:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialFacebookCacheFlags:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private processCacheFlags(Lorg/json/JSONArray;)V
    .registers 5

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 216
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 217
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 219
    :cond_16
    const-string p1, "CacheFlag"

    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->processCacheFlags(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private setMixedAudience(Z)V
    .registers 5

    .line 252
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMixedAudience = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 253
    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setMixedAudience(Z)V

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/facebook/FacebookAdapter;
    .registers 2

    .line 83
    new-instance v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAllPlacementIdsKey()Ljava/lang/String;
    .registers 2

    .line 300
    const-string v0, "placementIds"

    return-object v0
.end method

.method public getBiddingData()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInitState:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sget-object v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    if-ne v0, v1, :cond_f

    .line 278
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "returning null as token since init failed"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_f
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_24

    :cond_22
    const-string v0, ""

    .line 284
    :goto_24
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 285
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 286
    const-string v2, "token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getCacheFlags()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialFacebookCacheFlags:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .line 111
    invoke-static {}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getAdapterSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitState()Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;
    .registers 2

    .line 176
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInitState:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    return-object v0
.end method

.method public getPlacementIdKey()Ljava/lang/String;
    .registers 2

    .line 295
    const-string v0, "placementId"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 105
    const-string v0, "5.4.0"

    return-object v0
.end method

.method public initSDK(Ljava/lang/String;)V
    .registers 5

    .line 137
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInitState:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sget-object v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInitState:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sget-object v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    if-ne v0, v1, :cond_11

    .line 138
    :cond_c
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_11
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mWasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 143
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 144
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize Meta with placement ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object v0

    .line 146
    invoke-interface {v0, p0}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object v0

    .line 147
    invoke-direct {p0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getMediationServiceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withMediationService(Ljava/lang/String;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object v0

    .line 148
    invoke-interface {v0, p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withPlacementIds(Ljava/util/List;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    :cond_5e
    return-void
.end method

.method public isUsingActivityBeforeImpression(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .registers 5

    .line 155
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init SDK is completed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 158
    sget-object p1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sput-object p1, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInitState:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    .line 160
    sget-object p1, Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 161
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_36

    .line 165
    :cond_46
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInitState:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    .line 167
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 168
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackFailed(Ljava/lang/String;)V

    goto :goto_50

    .line 172
    :cond_64
    sget-object p1, Lcom/ironsource/adapters/facebook/FacebookAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 183
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_78

    .line 187
    :cond_9
    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7a

    goto :goto_39

    :sswitch_19
    const-string v3, "facebook_is_cacheflag"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_39

    :cond_22
    const/4 v2, 0x2

    goto :goto_39

    :sswitch_24
    const-string v3, "meta_is_cacheflag"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_39

    :cond_2d
    const/4 v2, 0x1

    goto :goto_39

    :sswitch_2f
    const-string v3, "meta_mixed_audience"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_39

    :cond_38
    move v2, v0

    :goto_39
    packed-switch v2, :pswitch_data_88

    goto :goto_78

    .line 190
    :pswitch_3d
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->processCacheFlags(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 195
    :pswitch_41
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 196
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 198
    sget-object p1, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {p2, p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->isValidMixedAudienceMetaData(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 200
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->setMixedAudience(Z)V

    :cond_78
    :goto_78
    return-void

    nop

    :sswitch_data_7a
    .sparse-switch
        -0x7e5338be -> :sswitch_2f
        -0x4927c2ed -> :sswitch_24
        0x5539f2 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method public setNetworkData(Lcom/ironsource/mediationsdk/AdapterNetworkData;)V
    .registers 4

    .line 208
    const-string v0, "CacheFlag"

    const-class v1, Lorg/json/JSONArray;

    invoke-interface {p1, v0, v1}, Lcom/ironsource/mediationsdk/AdapterNetworkData;->dataByKeyIgnoreCase(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-eqz p1, :cond_f

    .line 210
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->processCacheFlags(Lorg/json/JSONArray;)V

    :cond_f
    return-void
.end method

.method public setTestMode(Z)V
    .registers 5

    .line 128
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTestMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setTestMode(Z)V

    return-void
.end method

###### Class com.ironsource.adapters.facebook.FacebookAdapter.InitState (com.ironsource.adapters.facebook.FacebookAdapter$InitState)
.class public final enum Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;
.super Ljava/lang/Enum;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

.field public static final enum INIT_STATE_FAILED:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

.field public static final enum INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

.field public static final enum INIT_STATE_NONE:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

.field public static final enum INIT_STATE_SUCCESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;


# direct methods
.method private static synthetic $values()[Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;
    .registers 4

    .line 67
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sget-object v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sget-object v2, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    sget-object v3, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 68
    new-instance v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    const-string v1, "INIT_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    .line 69
    new-instance v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    .line 70
    new-instance v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    const-string v1, "INIT_STATE_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    .line 71
    new-instance v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    const-string v1, "INIT_STATE_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    .line 67
    invoke-static {}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->$values()[Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->$VALUES:[Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;
    .registers 2

    .line 67
    const-class v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;
    .registers 1

    .line 67
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->$VALUES:[Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    return-object v0
.end method
