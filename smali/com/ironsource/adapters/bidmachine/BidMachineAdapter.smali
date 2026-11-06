###### Class com.ironsource.adapters.bidmachine.BidMachineAdapter (com.ironsource.adapters.bidmachine.BidMachineAdapter)
.class public final Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;
.source "BidMachineAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBidMachineAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BidMachineAdapter.kt\ncom/ironsource/adapters/bidmachine/BidMachineAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n1#2:195\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;

.field private static final GitHash:Ljava/lang/String; = "4ee0027"

.field private static final initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static initState:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

.field private static final wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$7rGH-yUTjbsbQVgmcfRWws7qM0A(Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->init$lambda$1(Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YXvs-OIXYzbwOjy8aiyR2BviFo8(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->collectBiddingData$lambda$2(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->Companion:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initState:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;-><init>()V

    return-void
.end method

.method private static final collectBiddingData$lambda$2(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V
    .registers 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "format(...)"

    const/4 v3, 0x1

    if-nez v1, :cond_2a

    .line 180
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "failed to receive token - returned null/empty token"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 181
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s - BidMachine"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 185
    :cond_2a
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "token = %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 187
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-interface {p0, v1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public static final getLoadErrorType(Lio/bidmachine/utils/BMError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .registers 2

    .line 0
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->Companion:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;->getLoadErrorType(Lio/bidmachine/utils/BMError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object p0

    return-object p0
.end method

.method private static final init$lambda$1(Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;)V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initializationSuccess()V

    return-void
.end method

.method private final initializationSuccess()V
    .registers 3

    .line 105
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 107
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initState:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    .line 110
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    .line 111
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    goto :goto_14

    .line 114
    :cond_24
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public static final networkAdapterVersion()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->Companion:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;

    invoke-virtual {v0}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;->networkAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final setCCPAValue(Z)V
    .registers 5

    if-eqz p1, :cond_5

    .line 150
    const-string p1, "1YY-"

    goto :goto_7

    .line 152
    :cond_5
    const-string p1, "1YN-"

    .line 154
    :goto_7
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "value = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 155
    invoke-static {p1}, Lio/bidmachine/BidMachine;->setUSPrivacyString(Ljava/lang/String;)V

    return-void
.end method

.method private final setCOPPAValue(Z)V
    .registers 5

    .line 159
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isCoppa = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/BidMachine;->setCoppa(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final collectBiddingData$bidmachineadapter_release(Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lio/bidmachine/AdPlacementConfig;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingDataCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlacementConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initState:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sget-object v1, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    if-eq v0, v1, :cond_34

    .line 173
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "returning null as token since init isn\'t completed"

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 174
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%s - BidMachine"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "format(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    invoke-static {p1, p3, v0}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/BidTokenCallback;)V

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 51
    const-string v0, "5.8.0"

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, "3.8.0"

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .registers 8

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v0, "sourceId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    const-string v1, "format(...)"

    const/4 v2, 0x1

    if-eqz p1, :cond_72

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_72

    .line 72
    :cond_1c
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initState:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    if-ne v0, v3, :cond_28

    if-eqz p3, :cond_8f

    .line 73
    invoke-interface {p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    return-void

    .line 78
    :cond_28
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initState:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    if-eq v0, v3, :cond_34

    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initState:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    if-ne v0, v3, :cond_3b

    :cond_34
    if-eqz p3, :cond_3b

    .line 79
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_3b
    sget-object p3, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p3

    if-eqz p3, :cond_8f

    .line 84
    sget-object p3, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sput-object p3, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->initState:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    .line 86
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "sourceId = %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;->isAdaptersDebugEnabled()Z

    move-result p3

    invoke-static {p3}, Lio/bidmachine/BidMachine;->setLoggingEnabled(Z)V

    .line 92
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;)V

    invoke-static {p2, p1, p3}, Lio/bidmachine/BidMachine;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void

    .line 65
    :cond_72
    :goto_72
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing params - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_8f

    const/16 p2, 0x67

    .line 67
    invoke-interface {p3, p2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_8f
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

    .line 143
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

    .line 144
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->setSubjectToGDPR(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 145
    invoke-static {p1, v0}, Lio/bidmachine/BidMachine;->setConsentConfig(ZLjava/lang/String;)V

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

    .line 122
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5d

    :cond_c
    const/4 v0, 0x0

    .line 127
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_16

    goto :goto_5d

    .line 128
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

    .line 130
    sget-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatValueForType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 134
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->setCCPAValue(Z)V

    return-void

    .line 136
    :cond_4e
    const-string p2, "BidMachine_COPPA"

    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 137
    invoke-static {v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->setCOPPAValue(Z)V

    :cond_5d
    :goto_5d
    return-void
.end method

###### Class com.ironsource.adapters.bidmachine.BidMachineAdapter.Companion (com.ironsource.adapters.bidmachine.BidMachineAdapter$Companion)
.class public final Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;
.super Ljava/lang/Object;
.source "BidMachineAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLoadErrorType(Lio/bidmachine/utils/BMError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result p1

    const/16 v0, 0x67

    if-ne p1, v0, :cond_10

    .line 39
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1

    .line 40
    :cond_10
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1
.end method

.method public final networkAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 46
    const-string v0, "5.8.0"

    return-object v0
.end method

###### Class com.ironsource.adapters.bidmachine.BidMachineAdapter.Companion.InitState (com.ironsource.adapters.bidmachine.BidMachineAdapter$Companion$InitState)
.class public final enum Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;
.super Ljava/lang/Enum;
.source "BidMachineAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

.field public static final enum INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

.field public static final enum INIT_STATE_NONE:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

.field public static final enum INIT_STATE_SUCCESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;


# direct methods
.method private static final synthetic $values()[Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;
    .registers 3

    .line 0
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sget-object v1, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    sget-object v2, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    filled-new-array {v0, v1, v2}, [Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    .line 25
    new-instance v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    .line 26
    new-instance v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    invoke-static {}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->$values()[Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->$VALUES:[Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;
    .registers 2

    const-class v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 27
    check-cast p0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;
    .registers 1

    sget-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;->$VALUES:[Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, [Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion$InitState;

    return-object v0
.end method

###### Class com.ironsource.adapters.bidmachine.BidMachineAdapter$$ExternalSyntheticLambda0 (com.ironsource.adapters.bidmachine.BidMachineAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/InitializationCallback;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;

    return-void
.end method


# virtual methods
.method public final onInitialized()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->$r8$lambda$7rGH-yUTjbsbQVgmcfRWws7qM0A(Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;)V

    return-void
.end method

###### Class com.ironsource.adapters.bidmachine.BidMachineAdapter$$ExternalSyntheticLambda1 (com.ironsource.adapters.bidmachine.BidMachineAdapter$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/BidTokenCallback;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    return-void
.end method


# virtual methods
.method public final onCollected(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    invoke-static {v0, p1}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->$r8$lambda$YXvs-OIXYzbwOjy8aiyR2BviFo8(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V

    return-void
.end method
