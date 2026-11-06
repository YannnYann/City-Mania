###### Class com.ironsource.adapters.admob.AdMobAdapter (com.ironsource.adapters.admob.AdMobAdapter)
.class public Lcom/ironsource/adapters/admob/AdMobAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;,
        Lcom/ironsource/adapters/admob/AdMobAdapter$AdMobMetaDataFlags;,
        Lcom/ironsource/adapters/admob/AdMobAdapter$AdMobMaxContentRating;
    }
.end annotation


# static fields
.field private static final AD_UNIT_ID:Ljava/lang/String; = "adUnitId"

.field public static final CREATIVE_ID_KEY:Ljava/lang/String; = "creativeId"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final GitHash:Ljava/lang/String; = "8ccbcb8"

.field private static final NETWORK_DATA_CONTENT_MAPPING:Ljava/lang/String; = "ContentMapping"

.field private static final NETWORK_DATA_CONTENT_RATING:Ljava/lang/String; = "MaxAdContentRating"

.field private static final VERSION:Ljava/lang/String; = "5.15.0"

.field private static final initCallbackListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mCCPAValue:Ljava/lang/Boolean;

.field private static mConsent:Ljava/lang/Boolean;

.field private static mContentMappingURLValue:Ljava/lang/String;

.field private static mCoppaValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

.field private static mEuValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

.field public static mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field private static mNeighboringContentMappingURLValue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRatingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

.field private static final mWasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final INIT_RESPONSE_REQUIRED:Ljava/lang/String;

.field private final NETWORK_ONLY_INIT:Ljava/lang/String;

.field private final PLATFORM_NAME:Ljava/lang/String;

.field private final REQUEST_AGENT:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6pmdMnwK87mSkYsoC2yXoCItH-M(Lcom/ironsource/adapters/admob/AdMobAdapter;ZLcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1d

    .line 210
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "init and wait for callback"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V

    return-void

    .line 226
    :cond_1d
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "init without callback"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V

    .line 228
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initializationSuccess()V

    return-void
.end method

.method public static synthetic $r8$lambda$WGVPHZlKVlBiLOV-HE386euRQb0(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "com.google.android.gms.ads.MobileAds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    if-eqz p1, :cond_37

    .line 214
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob initialization state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :cond_37
    if-eqz p1, :cond_45

    .line 217
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    if-ne v0, v1, :cond_45

    .line 218
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initializationSuccess()V

    return-void

    :cond_45
    if-eqz p1, :cond_4c

    .line 220
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_4e

    :cond_4c
    const-string p1, "AdMob adapter status not found"

    .line 221
    :goto_4e
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob init failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initializationFailure()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    .line 92
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mWasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 129
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 67
    const-string p1, "unity"

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->REQUEST_AGENT:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->PLATFORM_NAME:Ljava/lang/String;

    .line 77
    const-string p1, "networkOnlyInit"

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->NETWORK_ONLY_INIT:Ljava/lang/String;

    .line 78
    const-string p1, "initResponseRequired"

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->INIT_RESPONSE_REQUIRED:Ljava/lang/String;

    .line 130
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 132
    new-instance p1, Lcom/ironsource/adapters/admob/rewardedvideo/AdMobRewardedVideoAdapter;

    invoke-direct {p1, p0}, Lcom/ironsource/adapters/admob/rewardedvideo/AdMobRewardedVideoAdapter;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedVideoAdapter(Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterInterface;)V

    .line 133
    new-instance p1, Lcom/ironsource/adapters/admob/interstitial/AdMobInterstitialAdapter;

    invoke-direct {p1, p0}, Lcom/ironsource/adapters/admob/interstitial/AdMobInterstitialAdapter;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setInterstitialAdapter(Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterInterface;)V

    .line 134
    new-instance p1, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;

    invoke-direct {p1, p0}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setBannerAdapter(Lcom/ironsource/mediationsdk/sdk/BannerAdapterInterface;)V

    .line 135
    new-instance p1, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;

    invoke-direct {p1, p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setNativeAdAdapter(Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdAdapterInterface;)V

    .line 138
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_INSTANCE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLWSSupportState:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    return-void
.end method

.method private createExtrasBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 7

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 574
    const-string v1, "platform_name"

    const-string v2, "unity"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_47

    .line 578
    const-string v2, "requestId"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 579
    const-string v3, "isHybrid"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 581
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4e

    .line 582
    const-string p1, "placement_req_id"

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adData requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isHybrid = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_4e

    .line 586
    :cond_47
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "adData is null, using default hybridMode = false"

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 589
    :cond_4e
    :goto_4e
    const-string p1, "is_hybrid_setup"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    if-nez p1, :cond_5f

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    if-eqz v1, :cond_ad

    :cond_5f
    if-eqz p1, :cond_86

    .line 593
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_86

    .line 594
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConsent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 595
    const-string p1, "npa"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_86
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    if-eqz p1, :cond_ad

    .line 600
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCCPAValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 601
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "rdp"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_ad
    return-object v0
.end method

.method private createSignalRequest(Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;
    .registers 5

    .line 553
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->$SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "requester_type_2"

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_32

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    const/4 p2, 0x4

    if-eq p1, p2, :cond_18

    const/4 p1, 0x0

    return-object p1

    .line 565
    :cond_18
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    move-result-object p1

    return-object p1

    .line 561
    :cond_22
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;

    .line 563
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;

    move-result-object p1

    return-object p1

    .line 558
    :cond_32
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest;

    move-result-object p1

    return-object p1

    .line 555
    :cond_3c
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest;

    move-result-object p1

    return-object p1
.end method

.method private getAdMobCoppaValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;
    .registers 2

    .line 373
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 374
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    return-object p1

    .line 375
    :cond_9
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    return-object p1
.end method

.method private getAdMobEuValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;
    .registers 2

    .line 379
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 380
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    return-object p1

    .line 381
    :cond_9
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    return-object p1
.end method

.method private getAdMobRatingValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;
    .registers 6

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 386
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "The ratingValue is null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 391
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_72

    goto :goto_46

    :sswitch_1b
    const-string v2, "max_ad_content_rating_t"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_46

    :cond_24
    const/4 v0, 0x3

    goto :goto_46

    :sswitch_26
    const-string v2, "max_ad_content_rating_g"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_46

    :cond_2f
    const/4 v0, 0x2

    goto :goto_46

    :sswitch_31
    const-string v2, "max_ad_content_rating_pg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_46

    :cond_3a
    const/4 v0, 0x1

    goto :goto_46

    :sswitch_3c
    const-string v2, "max_ad_content_rating_ma"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    packed-switch v0, :pswitch_data_84

    .line 405
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The ratingValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is undefine"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 399
    :pswitch_65
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_T:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p1

    .line 393
    :pswitch_68
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_G:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p1

    .line 396
    :pswitch_6b
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_PG:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p1

    .line 402
    :pswitch_6e
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_MA:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p1

    nop

    :sswitch_data_72
    .sparse-switch
        -0x3dec05f1 -> :sswitch_3c
        -0x3dec058e -> :sswitch_31
        0x37cf188c -> :sswitch_26
        0x37cf1899 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
    .end packed-switch
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .registers 1

    .line 159
    invoke-static {}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->getVersion()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegrationData(Landroid/content/Context;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 3

    .line 143
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "AdMob"

    const-string v1, "5.15.0"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private initializationFailure()V
    .registers 4

    .line 246
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 248
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 249
    const-string v2, "AdMob sdk init failed"

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackFailed(Ljava/lang/String;)V

    goto :goto_a

    .line 252
    :cond_1c
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private initializationSuccess()V
    .registers 3

    .line 235
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 238
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;

    .line 239
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;->onNetworkInitCallbackSuccess()V

    goto :goto_a

    .line 242
    :cond_1a
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public static isNoFillError(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;)Z
    .registers 2

    .line 512
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->NO_FILL:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static networkAdapterVersion()Ljava/lang/String;
    .registers 1

    .line 163
    const-string v0, "5.15.0"

    return-object v0
.end method

.method private processContentMapping(Ljava/lang/String;)V
    .registers 4

    .line 314
    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    .line 315
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key = ContentMapping, contentMappingValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private processContentMapping(Lorg/json/JSONArray;)V
    .registers 5

    .line 319
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 320
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 321
    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 323
    :cond_18
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key = ContentMapping, contentMappingValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private processContentRating(Ljava/lang/String;)V
    .registers 5

    .line 327
    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobRatingValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRatingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    .line 328
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = MaxAdContentRating, inputValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ratingValue = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRatingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    return-void
.end method

.method private setAdMobMetaDataValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 340
    const-string v0, "admob_tfua"

    const-string v1, "admob_tfcd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_13

    :cond_11
    move-object v2, p2

    goto :goto_3e

    .line 342
    :cond_13
    :goto_13
    sget-object v2, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {p2, v2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 345
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetaData value for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 350
    :cond_3e
    :goto_3e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "key = "

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_10c

    goto :goto_73

    :sswitch_4c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_73

    :cond_53
    const/4 v4, 0x3

    goto :goto_73

    :sswitch_55
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_73

    :cond_5c
    const/4 v4, 0x2

    goto :goto_73

    :sswitch_5e
    const-string v0, "admob_maxcontentrating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_73

    :cond_67
    const/4 v4, 0x1

    goto :goto_73

    :sswitch_69
    const-string v0, "google_content_mapping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    :goto_73
    packed-switch v4, :pswitch_data_11e

    goto/16 :goto_107

    .line 356
    :pswitch_78
    invoke-direct {p0, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobEuValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object p2

    sput-object p2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mEuValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    .line 357
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", euValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mEuValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_107

    .line 352
    :pswitch_9d
    invoke-direct {p0, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobCoppaValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object p2

    sput-object p2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCoppaValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    .line 353
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", coppaValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCoppaValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_107

    .line 360
    :pswitch_c2
    invoke-direct {p0, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobRatingValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object p2

    sput-object p2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRatingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    .line 361
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ratingValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRatingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_107

    .line 364
    :pswitch_e7
    sput-object p2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    .line 365
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", contentMappingValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 369
    :goto_107
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    return-void

    nop

    :sswitch_data_10c
    .sparse-switch
        -0x7a5d72fe -> :sswitch_69
        -0x84ca38c -> :sswitch_5e
        0x51eef155 -> :sswitch_55
        0x51eef380 -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_c2
        :pswitch_9d
        :pswitch_78
    .end packed-switch
.end method

.method private setCCPAValue(Z)V
    .registers 5

    .line 333
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCCPAValue:Ljava/lang/Boolean;

    return-void
.end method

.method private setRequestConfiguration()V
    .registers 4

    .line 490
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;-><init>()V

    .line 493
    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mCoppaValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    if-eqz v1, :cond_12

    .line 494
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 497
    :goto_13
    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mEuValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    if-eqz v2, :cond_1f

    .line 498
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v1

    .line 501
    :cond_1f
    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRatingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    if-eqz v2, :cond_2b

    .line 502
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setMaxAdContentRating(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v1

    :cond_2b
    if-eqz v1, :cond_30

    .line 506
    invoke-static {v1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->setRequestConfiguration(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V

    :cond_30
    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/admob/AdMobAdapter;
    .registers 2

    .line 125
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)V
    .registers 7

    .line 516
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v2, " - AdMob"

    if-ne v0, v1, :cond_22

    .line 518
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "returning null as token since init hasn\'t started"

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 523
    :cond_22
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0, p2, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createSignalRequest(Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    move-result-object p3

    if-nez p3, :cond_5a

    .line 527
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported ad format for signal generation: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 528
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 529
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 533
    :cond_5a
    new-instance p2, Lcom/ironsource/adapters/admob/AdMobAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$1;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    invoke-static {p3, p2}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->generateSignal(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;)V

    return-void
.end method

.method public createAdRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;
    .registers 6

    .line 420
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 421
    const-string p1, "unity"

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 424
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 425
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContentMappingURLValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 426
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 430
    :cond_2f
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_54

    .line 431
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeighboringContentMappingURLValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 432
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setNeighboringContentUrls(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 435
    :cond_54
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    .line 437
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createExtrasBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 439
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method public createBannerAdRequest(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lorg/json/JSONObject;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;
    .registers 6

    .line 443
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 444
    const-string p1, "unity"

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 447
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 448
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentMappingURLValue = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 449
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 453
    :cond_2f
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_54

    .line 454
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeighboringContentMappingURLValue = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 455
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setNeighboringContentUrls(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 458
    :cond_54
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    .line 460
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createExtrasBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 462
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    move-result-object p1

    return-object p1
.end method

.method public createNativeAdRequest(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lorg/json/JSONObject;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;
    .registers 6

    .line 466
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 467
    const-string p1, "unity"

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 468
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 471
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 472
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentMappingURLValue = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 473
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContentMappingURLValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 477
    :cond_38
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 478
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeighboringContentMappingURLValue = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 479
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setNeighboringContentUrls(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 482
    :cond_5d
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    .line 484
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createExtrasBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 486
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAdUnitIdKey()Ljava/lang/String;
    .registers 2

    .line 416
    const-string v0, "adUnitId"

    return-object v0
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .line 155
    invoke-static {}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdapterSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitState()Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;
    .registers 2

    .line 256
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 149
    const-string v0, "5.15.0"

    return-object v0
.end method

.method public initSDK(Lorg/json/JSONObject;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 175
    const-string v0, "appId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 177
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "appId is missing from config"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initializationFailure()V

    return-void

    .line 183
    :cond_19
    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    if-eq v1, v2, :cond_25

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    if-ne v1, v2, :cond_2a

    .line 184
    :cond_25
    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->initCallbackListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_2a
    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mWasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 188
    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sput-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInitState:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 190
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 192
    const-string v4, "networkOnlyInit"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 195
    const-string v4, "initResponseRequired"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 198
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_69

    .line 201
    const-string v0, "disableMediationAdapterInitialization"

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->disableMediationAdapterInitialization()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;

    .line 206
    :cond_69
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;ZLcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 230
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_7a
    return-void
.end method

.method public isUsingActivityBeforeImpression(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public setConsent(Z)V
    .registers 5

    .line 263
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 273
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "key = "

    if-le v0, v1, :cond_3c

    const-string v0, "google_content_mapping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 275
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mNeighboringContentMappingURLValue:Ljava/util/Set;

    .line 276
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", values = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_3c
    const/4 v0, 0x0

    .line 281
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 282
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 284
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 285
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setCCPAValue(Z)V

    return-void

    .line 287
    :cond_6d
    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setAdMobMetaDataValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNetworkData(Lcom/ironsource/mediationsdk/AdapterNetworkData;)V
    .registers 5

    .line 293
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/AdapterNetworkData;->allData()Lorg/json/JSONObject;

    .line 296
    const-string v0, "ContentMapping"

    const-class v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/ironsource/mediationsdk/AdapterNetworkData;->dataByKeyIgnoreCase(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 298
    invoke-direct {p0, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->processContentMapping(Ljava/lang/String;)V

    .line 302
    :cond_12
    const-class v2, Lorg/json/JSONArray;

    invoke-interface {p1, v0, v2}, Lcom/ironsource/mediationsdk/AdapterNetworkData;->dataByKeyIgnoreCase(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1f

    .line 304
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->processContentMapping(Lorg/json/JSONArray;)V

    .line 307
    :cond_1f
    const-string v0, "MaxAdContentRating"

    invoke-interface {p1, v0, v1}, Lcom/ironsource/mediationsdk/AdapterNetworkData;->dataByKeyIgnoreCase(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2c

    .line 309
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->processContentRating(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass1 (com.ironsource.adapters.admob.AdMobAdapter$1)
.class Lcom/ironsource/adapters/admob/AdMobAdapter$1;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->collectBiddingData(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;


# direct methods
.method public constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->val$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;)V
    .registers 5

    .line 547
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->val$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to receive token - AdMob "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;)V
    .registers 6

    .line 536
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;->getSignalString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;->getSignalString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_b
    const-string p1, ""

    .line 537
    :goto_d
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 538
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sdkVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 539
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 540
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string p1, "sdkVersion"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$1;->val$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    invoke-interface {p1, v1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AnonymousClass2 (com.ironsource.adapters.admob.AdMobAdapter$2)
.class synthetic Lcom/ironsource/adapters/admob/AdMobAdapter$2;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 553
    invoke-static {}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->values()[Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->$SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat:[I

    :try_start_9
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->INTERSTITIAL:Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->$SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat:[I

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->REWARDED:Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->$SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat:[I

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->$SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat:[I

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter.AdMobMaxContentRating (com.ironsource.adapters.admob.AdMobAdapter$AdMobMaxContentRating)
.class interface abstract Lcom/ironsource/adapters/admob/AdMobAdapter$AdMobMaxContentRating;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdMobMaxContentRating"
.end annotation


# static fields
.field public static final ADMOB_MAX_AD_CONTENT_RATING_G:Ljava/lang/String; = "max_ad_content_rating_g"

.field public static final ADMOB_MAX_AD_CONTENT_RATING_MA:Ljava/lang/String; = "max_ad_content_rating_ma"

.field public static final ADMOB_MAX_AD_CONTENT_RATING_PG:Ljava/lang/String; = "max_ad_content_rating_pg"

.field public static final ADMOB_MAX_AD_CONTENT_RATING_T:Ljava/lang/String; = "max_ad_content_rating_t"

###### Class com.ironsource.adapters.admob.AdMobAdapter.AdMobMetaDataFlags (com.ironsource.adapters.admob.AdMobAdapter$AdMobMetaDataFlags)
.class interface abstract Lcom/ironsource/adapters/admob/AdMobAdapter$AdMobMetaDataFlags;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdMobMetaDataFlags"
.end annotation


# static fields
.field public static final ADMOB_CONTENT_MAPPING_KEY:Ljava/lang/String; = "google_content_mapping"

.field public static final ADMOB_MAX_RATING_KEY:Ljava/lang/String; = "admob_maxcontentrating"

.field public static final ADMOB_TFCD_KEY:Ljava/lang/String; = "admob_tfcd"

.field public static final ADMOB_TFUA_KEY:Ljava/lang/String; = "admob_tfua"

###### Class com.ironsource.adapters.admob.AdMobAdapter.InitState (com.ironsource.adapters.admob.AdMobAdapter$InitState)
.class public final enum Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;
.super Ljava/lang/Enum;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field public static final enum INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field public static final enum INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field public static final enum INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field public static final enum INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;


# direct methods
.method private static synthetic $values()[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;
    .registers 4

    .line 96
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sget-object v3, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 97
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v1, "INIT_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 98
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 99
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v1, "INIT_STATE_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 100
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v1, "INIT_STATE_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 96
    invoke-static {}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->$values()[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->$VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;
    .registers 2

    .line 96
    const-class v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;
    .registers 1

    .line 96
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->$VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    return-object v0
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter$$ExternalSyntheticLambda0 (com.ironsource.adapters.admob.AdMobAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;ZLcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-boolean p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-boolean v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->$r8$lambda$6pmdMnwK87mSkYsoC2yXoCItH-M(Lcom/ironsource/adapters/admob/AdMobAdapter;ZLcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V

    return-void
.end method

###### Class com.ironsource.adapters.admob.AdMobAdapter$$ExternalSyntheticLambda1 (com.ironsource.adapters.admob.AdMobAdapter$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/adapters/admob/AdMobAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    return-void
.end method


# virtual methods
.method public final onAdapterInitializationComplete(Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->$r8$lambda$WGVPHZlKVlBiLOV-HE386euRQb0(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;)V

    return-void
.end method
