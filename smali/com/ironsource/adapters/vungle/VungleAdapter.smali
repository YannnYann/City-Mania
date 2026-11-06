###### Class com.ironsource.adapters.vungle.VungleAdapter (com.ironsource.adapters.vungle.VungleAdapter)
.class public final Lcom/ironsource/adapters/vungle/VungleAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;
.source "VungleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVungleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VungleAdapter.kt\ncom/ironsource/adapters/vungle/VungleAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,211:1\n1#2:212\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;

.field private static final GitHash:Ljava/lang/String; = "7bd8c3d"

.field private static final initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

.field private static final wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->Companion:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;-><init>()V

    return-void
.end method

.method public static final synthetic access$initializationFailure(Lcom/ironsource/adapters/vungle/VungleAdapter;ILjava/lang/String;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initializationFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$initializationSuccess(Lcom/ironsource/adapters/vungle/VungleAdapter;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initializationSuccess()V

    return-void
.end method

.method public static final getLoadErrorType(Lcom/vungle/ads/VungleError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .registers 2

    .line 0
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->Companion:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;->getLoadErrorType(Lcom/vungle/ads/VungleError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object p0

    return-object p0
.end method

.method private final initializationFailure(ILjava/lang/String;)V
    .registers 6

    .line 180
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Failed to initialize SDK, errorCode = %s, errorMessage = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    .line 185
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 186
    invoke-interface {v1, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    goto :goto_2c

    .line 189
    :cond_41
    sget-object p1, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private final initializationSuccess()V
    .registers 4

    .line 167
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Succeeded to initialize SDK"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    .line 172
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    .line 173
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    goto :goto_16

    .line 176
    :cond_2b
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public static final networkAdapterVersion()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->Companion:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;

    invoke-virtual {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;->networkAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final setCCPAValue(Z)V
    .registers 5

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 153
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ccpa = %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Lcom/vungle/ads/VunglePrivacySettings;->setCCPAStatus(Z)V

    return-void
.end method

.method private final setCOPPAValue(Z)V
    .registers 5

    .line 158
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

    .line 159
    invoke-static {p1}, Lcom/vungle/ads/VunglePrivacySettings;->setCOPPAStatus(Z)V

    return-void
.end method


# virtual methods
.method public final collectBiddingData$vungleadapter_release(Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingDataCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/adapters/vungle/VungleAdapter$collectBiddingData$1;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter$collectBiddingData$1;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/VungleAds$Companion;->getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/BidTokenCallback;)V

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 60
    const-string v0, "5.16.0"

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 62
    sget-object v0, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleAds$Companion;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .registers 8

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-string v0, "AppID"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string v1, "format(...)"

    const/4 v2, 0x1

    if-eqz p1, :cond_8e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_8e

    .line 81
    :cond_1c
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    if-ne v0, v3, :cond_28

    if-eqz p3, :cond_ab

    .line 82
    invoke-interface {p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    return-void

    .line 87
    :cond_28
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    if-ne v0, v3, :cond_3d

    .line 88
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "SDK initialization failed"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_ab

    const/16 p1, 0x3e8

    .line 89
    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    return-void

    .line 97
    :cond_3d
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    if-eq v0, v3, :cond_49

    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    if-ne v0, v3, :cond_50

    :cond_49
    if-eqz p3, :cond_50

    .line 98
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter;->initCallbackListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_50
    sget-object p3, Lcom/ironsource/adapters/vungle/VungleAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p3

    if-eqz p3, :cond_ab

    .line 102
    sget-object p3, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sput-object p3, Lcom/ironsource/adapters/vungle/VungleAdapter;->initState:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    .line 103
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "appId = %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 105
    sget-object p3, Lcom/vungle/ads/VungleAds;->Companion:Lcom/vungle/ads/VungleAds$Companion;

    const-string v0, "ironsource"

    const-string v1, "5.16.0"

    invoke-virtual {p3, v0, v1}, Lcom/vungle/ads/VungleAds$Companion;->setIntegrationName(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getApplicationContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$init$2;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter$init$2;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;)V

    invoke-virtual {p3, p2, p1, v0}, Lcom/vungle/ads/VungleAds$Companion;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/InitializationListener;)V

    return-void

    .line 74
    :cond_8e
    :goto_8e
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing params - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_ab

    const/16 p2, 0x3ea

    .line 76
    invoke-interface {p3, p2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_ab
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

    .line 145
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gdpr = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 146
    const-string v0, "1.0.0"

    invoke-static {p1, v0}, Lcom/vungle/ads/VunglePrivacySettings;->setGDPRStatus(ZLjava/lang/String;)V

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

    .line 124
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5d

    :cond_c
    const/4 v0, 0x0

    .line 129
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_16

    goto :goto_5d

    .line 130
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

    .line 131
    sget-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatValueForType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 135
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setCCPAValue(Z)V

    return-void

    .line 138
    :cond_4e
    const-string p2, "Vungle_COPPA"

    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 139
    invoke-static {v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setCOPPAValue(Z)V

    :cond_5d
    :goto_5d
    return-void
.end method

###### Class com.ironsource.adapters.vungle.VungleAdapter.Companion (com.ironsource.adapters.vungle.VungleAdapter$Companion)
.class public final Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;
.super Ljava/lang/Object;
.source "VungleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLoadErrorType(Lcom/vungle/ads/VungleError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .registers 3

    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result p1

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_10

    .line 47
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1

    .line 49
    :cond_10
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1
.end method

.method public final networkAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, "5.16.0"

    return-object v0
.end method

###### Class com.ironsource.adapters.vungle.VungleAdapter.Companion.InitState (com.ironsource.adapters.vungle.VungleAdapter$Companion$InitState)
.class public final enum Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;
.super Ljava/lang/Enum;
.source "VungleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

.field public static final enum INIT_STATE_FAILED:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

.field public static final enum INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

.field public static final enum INIT_STATE_NONE:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

.field public static final enum INIT_STATE_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;


# direct methods
.method private static final synthetic $values()[Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;
    .registers 4

    .line 0
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sget-object v2, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    .line 32
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    .line 33
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    .line 34
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    invoke-static {}, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->$values()[Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->$VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;
    .registers 2

    const-class v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 35
    check-cast p0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;
    .registers 1

    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;->$VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, [Lcom/ironsource/adapters/vungle/VungleAdapter$Companion$InitState;

    return-object v0
.end method

###### Class com.ironsource.adapters.vungle.VungleAdapter.AnonymousClass2 (com.ironsource.adapters.vungle.VungleAdapter$init$2)
.class public final Lcom/ironsource/adapters/vungle/VungleAdapter$init$2;
.super Ljava/lang/Object;
.source "VungleAdapter.kt"

# interfaces
.implements Lcom/vungle/ads/InitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;


# direct methods
.method public constructor <init>(Lcom/ironsource/adapters/vungle/VungleAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$init$2;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vungle/ads/VungleError;)V
    .registers 4

    const-string v0, "vungleError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$init$2;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$initializationFailure(Lcom/ironsource/adapters/vungle/VungleAdapter;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$init$2;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$initializationSuccess(Lcom/ironsource/adapters/vungle/VungleAdapter;)V

    return-void
.end method

###### Class com.ironsource.adapters.vungle.VungleAdapter$collectBiddingData$1 (com.ironsource.adapters.vungle.VungleAdapter$collectBiddingData$1)
.class public final Lcom/ironsource/adapters/vungle/VungleAdapter$collectBiddingData$1;
.super Ljava/lang/Object;
.source "VungleAdapter.kt"

# interfaces
.implements Lcom/vungle/ads/BidTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->collectBiddingData$vungleadapter_release(Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

.field final synthetic this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;


# direct methods
.method public constructor <init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$collectBiddingData$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$collectBiddingData$1;->$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBidTokenCollected(Ljava/lang/String;)V
    .registers 7

    const-string v0, "bidToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$collectBiddingData$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v1

    .line 197
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v3, 0x2

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "sdkVersion = %s, token = %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 198
    const-string v2, "sdkVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$collectBiddingData$1;->$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onBidTokenError(Ljava/lang/String;)V
    .registers 4

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$collectBiddingData$1;->$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    const/4 v1, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "failed to receive token - Vungle , error = %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
