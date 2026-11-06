###### Class com.ironsource.adapters.unityads.UnityAdsAdapter (com.ironsource.adapters.unityads.UnityAdsAdapter)
.class public final Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;
.source "UnityAdsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnityAdsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnityAdsAdapter.kt\ncom/ironsource/adapters/unityads/UnityAdsAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,302:1\n1#2:303\n216#3,2:304\n*S KotlinDebug\n*F\n+ 1 UnityAdsAdapter.kt\ncom/ironsource/adapters/unityads/UnityAdsAdapter\n*L\n243#1:304,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

.field private static final GitHash:Ljava/lang/String; = "924c844"

.field private static final initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

.field private static final mediationInfo:Lcom/unity3d/ads/MediationInfo;

.field private static final wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final unityAdsStorageLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$RngAmuDeCy2CbIfz85uWVLmrsrA(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;Lcom/unity3d/ads/UnityAdsError;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->init$lambda$2(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wY3BX_RRhXVlD8PUwsoLlbKiFUw(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->collectBiddingData$lambda$10(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->Companion:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

    .line 42
    new-instance v0, Lcom/unity3d/ads/MediationInfo;

    .line 44
    invoke-static {}, Lcom/unity3d/mediation/LevelPlay;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "5.13.0"

    .line 42
    const-string v3, "ironSource"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/ads/MediationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->unityAdsStorageLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getMediationInfo$cp()Lcom/unity3d/ads/MediationInfo;
    .registers 1

    .line 28
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object v0
.end method

.method private final buildInitExtras(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 237
    const-string v1, "uads_init_blob"

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 238
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_16

    .line 239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_16
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object p1

    const-string v1, "traits"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    check-cast p1, Ljava/util/Map;

    goto :goto_29

    :cond_28
    move-object p1, v2

    :goto_29
    if-eqz p1, :cond_6d

    .line 304
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 244
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4e

    check-cast v3, Ljava/lang/String;

    goto :goto_4f

    :cond_4e
    move-object v3, v2

    .line 245
    :goto_4f
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_56

    check-cast v1, Ljava/lang/String;

    goto :goto_57

    :cond_56
    move-object v1, v2

    :goto_57
    if-eqz v3, :cond_33

    .line 246
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_60

    goto :goto_33

    :cond_60
    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_69

    goto :goto_33

    .line 247
    :cond_69
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_6d
    return-object v0
.end method

.method private static final collectBiddingData$lambda$10(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_30

    .line 288
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_30

    .line 289
    :cond_9
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "token = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 291
    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-interface {p0, v0}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    .line 294
    :cond_30
    :goto_30
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "failed to receive token - UnityAds"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 295
    invoke-interface {p0, v0}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic collectBiddingData$unityadsadapter_release$default(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/BannerSize;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 264
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->collectBiddingData$unityadsadapter_release(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/BannerSize;)V

    return-void
.end method

.method public static final getLoadErrorType(Lcom/unity3d/ads/UnityAdsError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .registers 2

    .line 0
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->Companion:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;->getLoadErrorType(Lcom/unity3d/ads/UnityAdsError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object p0

    return-object p0
.end method

.method private static final init$lambda$2(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;Lcom/unity3d/ads/UnityAdsError;)V
    .registers 3

    if-nez p1, :cond_6

    .line 132
    invoke-direct {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initializationSuccess()V

    return-void

    .line 134
    :cond_6
    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    const-string p1, ""

    :cond_12
    invoke-direct {p0, v0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initializationFailure(ILjava/lang/String;)V

    return-void
.end method

.method private final initializationFailure(ILjava/lang/String;)V
    .registers 6

    .line 154
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "init failed, errorCode = %s, errorMessage = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    .line 159
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    .line 160
    invoke-interface {v1, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    goto :goto_2c

    .line 163
    :cond_41
    sget-object p1, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private final initializationSuccess()V
    .registers 4

    .line 141
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 143
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    .line 146
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    .line 147
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    goto :goto_14

    .line 150
    :cond_29
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public static final networkAdapterVersion()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->Companion:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

    invoke-virtual {v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;->networkAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final setCCPAValue(Z)V
    .registers 5

    .line 202
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ccpa = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    .line 212
    const-string v1, "privacy.consent"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->setUnityAdsMetaData(Ljava/lang/String;Z)V

    .line 215
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->setUserOptOut(Ljava/lang/Boolean;)V

    return-void
.end method

.method private final setCOPPAValue(Z)V
    .registers 5

    .line 219
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "coppa = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 224
    const-string v0, "user.nonBehavioral"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->setUnityAdsMetaData(Ljava/lang/String;Z)V

    .line 227
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->setNonBehavioral(Ljava/lang/Boolean;)V

    return-void
.end method

.method private final setUnityAdsMetaData(Ljava/lang/String;Z)V
    .registers 7

    .line 255
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "key = %s, value = %s"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->unityAdsStorageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_20
    new-instance v1, Lcom/unity3d/ads/metadata/MetaData;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v1}, Lcom/unity3d/ads/metadata/MetaData;->commit()V

    .line 261
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_3b

    .line 257
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final collectBiddingData$unityadsadapter_release(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/BannerSize;)V
    .registers 7

    const-string v0, "biddingDataCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/unity3d/ads/TokenConfiguration$Builder;

    invoke-direct {v0, p3}, Lcom/unity3d/ads/TokenConfiguration$Builder;-><init>(Lcom/unity3d/ads/AdFormat;)V

    .line 271
    sget-object p3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    invoke-virtual {v0, p3}, Lcom/unity3d/ads/TokenConfiguration$Builder;->withMediationInfo(Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/TokenConfiguration$Builder;

    move-result-object p3

    if-eqz p1, :cond_28

    .line 273
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 274
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 275
    invoke-virtual {p3, v0}, Lcom/unity3d/ads/TokenConfiguration$Builder;->withPlacementId(Ljava/lang/String;)Lcom/unity3d/ads/TokenConfiguration$Builder;

    :cond_28
    const/4 v0, 0x0

    if-eqz p1, :cond_38

    .line 279
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_38

    const-string v1, "adUnitId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_39

    :cond_38
    move-object p1, v0

    :goto_39
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_40

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_40
    if-eqz v0, :cond_4b

    .line 280
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 281
    invoke-virtual {p3, v0}, Lcom/unity3d/ads/TokenConfiguration$Builder;->withMediationAdUnitId(Ljava/lang/String;)Lcom/unity3d/ads/TokenConfiguration$Builder;

    :cond_4b
    if-eqz p4, :cond_50

    .line 285
    invoke-virtual {p3, p4}, Lcom/unity3d/ads/TokenConfiguration$Builder;->withBannerSize(Lcom/unity3d/ads/BannerSize;)Lcom/unity3d/ads/TokenConfiguration$Builder;

    .line 287
    :cond_50
    invoke-virtual {p3}, Lcom/unity3d/ads/TokenConfiguration$Builder;->build()Lcom/unity3d/ads/TokenConfiguration;

    move-result-object p1

    new-instance p3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    invoke-static {p1, p3}, Lcom/unity3d/ads/UnityAds;->getToken(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;)V

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "5.13.0"

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 73
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .registers 8

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string p2, "sourceId"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "format(...)"

    const/4 v2, 0x1

    if-eqz v0, :cond_a8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_a8

    .line 92
    :cond_1d
    sget-object p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    if-ne p2, v3, :cond_29

    if-eqz p3, :cond_c5

    .line 93
    invoke-interface {p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    return-void

    .line 98
    :cond_29
    sget-object p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    if-ne p2, v3, :cond_3e

    .line 99
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "UnityAds SDK init failed"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_c5

    const/16 p1, 0x3e8

    .line 100
    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    return-void

    .line 108
    :cond_3e
    sget-object p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    if-eq p2, v3, :cond_4a

    sget-object p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    if-ne p2, v3, :cond_51

    :cond_4a
    if-eqz p3, :cond_51

    .line 109
    sget-object p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_51
    sget-object p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_c5

    .line 113
    sget-object p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sput-object p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initState:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    .line 114
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "sourceId = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 116
    new-instance p2, Lcom/unity3d/ads/InitializationConfiguration$Builder;

    invoke-direct {p2, v0}, Lcom/unity3d/ads/InitializationConfiguration$Builder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2, p3}, Lcom/unity3d/ads/InitializationConfiguration$Builder;->withTestMode(Z)Lcom/unity3d/ads/InitializationConfiguration$Builder;

    move-result-object p2

    .line 118
    sget-object p3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    invoke-virtual {p2, p3}, Lcom/unity3d/ads/InitializationConfiguration$Builder;->withMediationInfo(Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/InitializationConfiguration$Builder;

    move-result-object p2

    .line 120
    invoke-virtual {p0}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;->isAdaptersDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_8e

    .line 121
    sget-object p3, Lcom/unity3d/ads/LogLevel;->DEBUG:Lcom/unity3d/ads/LogLevel;

    invoke-virtual {p2, p3}, Lcom/unity3d/ads/InitializationConfiguration$Builder;->withLogLevel(Lcom/unity3d/ads/LogLevel;)Lcom/unity3d/ads/InitializationConfiguration$Builder;

    .line 123
    :cond_8e
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->buildInitExtras(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Ljava/util/Map;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9b

    .line 125
    invoke-virtual {p2, p1}, Lcom/unity3d/ads/InitializationConfiguration$Builder;->withExtras(Ljava/util/Map;)Lcom/unity3d/ads/InitializationConfiguration$Builder;

    .line 128
    :cond_9b
    invoke-virtual {p2}, Lcom/unity3d/ads/InitializationConfiguration$Builder;->build()Lcom/unity3d/ads/InitializationConfiguration;

    move-result-object p1

    .line 130
    new-instance p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;)V

    invoke-static {p1, p2}, Lcom/unity3d/ads/UnityAds;->initialize(Lcom/unity3d/ads/InitializationConfiguration;Lcom/unity3d/ads/InitializationListener;)V

    return-void

    .line 85
    :cond_a8
    :goto_a8
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing params - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_c5

    const/16 p2, 0x3ea

    .line 87
    invoke-interface {p3, p2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_c5
    return-void
.end method

.method public isUsingActivityBeforeImpression(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .registers 3

    .line 0
    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setConsent(Z)V
    .registers 5

    .line 171
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "consent = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 176
    const-string v0, "gdpr.consent"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->setUnityAdsMetaData(Ljava/lang/String;Z)V

    .line 179
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->setUserConsent(Ljava/lang/Boolean;)V

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

    .line 183
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_58

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_58

    :cond_c
    const/4 v0, 0x0

    .line 188
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_16

    goto :goto_58

    .line 189
    :cond_16
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez p1, :cond_1d

    const-string v1, ""

    goto :goto_1e

    :cond_1d
    move-object v1, p1

    :goto_1e
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "key = %s, value = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 191
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 192
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->setCCPAValue(Z)V

    return-void

    .line 194
    :cond_43
    sget-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;

    move-result-object p2

    .line 195
    const-string v0, "unityads_coppa"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 196
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->setCOPPAValue(Z)V

    :cond_58
    :goto_58
    return-void
.end method

###### Class com.ironsource.adapters.unityads.UnityAdsAdapter.Companion (com.ironsource.adapters.unityads.UnityAdsAdapter$Companion)
.class public final Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;
.super Ljava/lang/Object;
.source "UnityAdsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLoadErrorType(Lcom/unity3d/ads/UnityAdsError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .registers 3

    if-eqz p1, :cond_e

    .line 55
    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result p1

    const v0, 0xcb84

    if-ne p1, v0, :cond_e

    .line 56
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1

    .line 58
    :cond_e
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1
.end method

.method public final getMediationInfo$unityadsadapter_release()Lcom/unity3d/ads/MediationInfo;
    .registers 2

    .line 42
    invoke-static {}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->access$getMediationInfo$cp()Lcom/unity3d/ads/MediationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final networkAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "5.13.0"

    return-object v0
.end method

###### Class com.ironsource.adapters.unityads.UnityAdsAdapter.Companion.InitState (com.ironsource.adapters.unityads.UnityAdsAdapter$Companion$InitState)
.class public final enum Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;
.super Ljava/lang/Enum;
.source "UnityAdsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

.field public static final enum INIT_STATE_FAILED:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

.field public static final enum INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

.field public static final enum INIT_STATE_NONE:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

.field public static final enum INIT_STATE_SUCCESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;


# direct methods
.method private static final synthetic $values()[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;
    .registers 4

    .line 0
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sget-object v1, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sget-object v2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    .line 35
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    .line 36
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    .line 37
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    invoke-static {}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->$values()[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->$VALUES:[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;
    .registers 2

    const-class v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 38
    check-cast p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;
    .registers 1

    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;->$VALUES:[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, [Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;

    return-object v0
.end method

###### Class com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda0 (com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/unity3d/ads/InitializationListener;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/adapters/unityads/UnityAdsAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/unityads/UnityAdsAdapter;

    return-void
.end method


# virtual methods
.method public final onInitializationComplete(Lcom/unity3d/ads/UnityAdsError;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/unityads/UnityAdsAdapter;

    invoke-static {v0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->$r8$lambda$RngAmuDeCy2CbIfz85uWVLmrsrA(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method

###### Class com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda1 (com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsTokenListener;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    return-void
.end method


# virtual methods
.method public final onUnityAdsTokenReady(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    invoke-static {v0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->$r8$lambda$wY3BX_RRhXVlD8PUwsoLlbKiFUw(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V

    return-void
.end method
