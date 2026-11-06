###### Class io.bidmachine.SessionParams (io.bidmachine.SessionParams)
.class public final Lio/bidmachine/SessionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createContextualDataBuilder(Lio/bidmachine/AdsType;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->newBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setMediatorName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object p2

    const-string v0, "newBuilder()\n           \u2026   .setMediatorName(name)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_16

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setPlacement(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 7
    :cond_16
    invoke-direct {p0, p3}, Lio/bidmachine/SessionParams;->createImpressionDataBuilder(Ljava/util/Map;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 8
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setData(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    :cond_1f
    return-object p2

    :catchall_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private final createImpressionDataBuilder(Ljava/util/Map;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->newBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v2, "imimd"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lio/bidmachine/core/Utils;->convertToIntOrDefault(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_a1

    const-string v3, "it"

    if-eqz v2, :cond_22

    .line 3
    :try_start_18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImimd(I)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 5
    :cond_22
    const-string v2, "imd"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lio/bidmachine/core/Utils;->convertToIntOrDefault(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImd(I)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 8
    :cond_38
    const-string v2, "imwp"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lio/bidmachine/core/Utils;->convertToFloatOrDefault(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImwp(F)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 11
    :cond_4e
    const-string v2, "wp"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lio/bidmachine/core/Utils;->convertToFloatOrDefault(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setWp(F)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 14
    :cond_64
    const-string v2, "imagency"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImagency(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 17
    :cond_73
    const-string v2, "agency"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setAgency(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 20
    :cond_82
    const-string v2, "imcurl"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImcurl(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 23
    :cond_91
    const-string v2, "clcurl"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setClcurl(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    :try_end_a0
    .catchall {:try_start_18 .. :try_end_a0} :catchall_a1

    :cond_a0
    return-object v1

    :catchall_a1
    return-object v0
.end method

.method private final createSessionBuilder(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->newBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p2

    const-string v0, "newBuilder()\n           \u2026 .setSessionId(sessionId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p3}, Lio/bidmachine/SessionParams;->createSessionContextBuilder(Landroid/content/Context;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 7
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setContext(Lio/bidmachine/protobuf/sdk/Session$Context$Builder;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-object p2

    :catchall_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private final createSessionContextBuilder(Landroid/content/Context;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .registers 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Lio/bidmachine/n;->D(Landroid/content/Context;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object p1

    const-string v1, "get()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->newBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lio/bidmachine/SessionManager;->getSessionDurationSec()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setSessionduration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/bidmachine/SessionManager;->getLastSessionDurationSec()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setLastSessionDuration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/SessionManager;->getSessionCount()I

    move-result p1

    invoke-virtual {v1, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setSc(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    .line 12
    sget-object v1, Lio/bidmachine/core/TimeManager;->INSTANCE:Lio/bidmachine/core/TimeManager;

    invoke-virtual {v1}, Lio/bidmachine/core/TimeManager;->currentDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/util/DateUtilsKt;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setRetention(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    const-string v0, "newBuilder()\n           \u2026meManager.currentDate()))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_50

    .line 14
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-static {p2}, Lio/bidmachine/SessionParamsKt;->access$getAdsTypeId(Lio/bidmachine/AdsType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/BidMachineAnalytics;->getImpData(I)Ljava/util/Map;

    move-result-object v0

    goto :goto_54

    .line 16
    :cond_50
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 18
    :goto_54
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 20
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-direct {p0, p2, v1, v2}, Lio/bidmachine/SessionParams;->createContextualDataBuilder(Lio/bidmachine/AdsType;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 29
    invoke-virtual {p1, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->addData(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    goto :goto_5c

    .line 33
    :cond_84
    sget-object p2, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    const-string v0, "iap"

    invoke-virtual {p2, v0}, Lio/bidmachine/analytics/BidMachineAnalytics;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9f

    .line 34
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9f

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->of(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setIap(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 38
    :cond_9f
    const-string v0, "iaa"

    invoke-virtual {p2, v0}, Lio/bidmachine/analytics/BidMachineAnalytics;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_b8

    .line 39
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_b8

    .line 40
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lcom/explorestack/protobuf/BoolValue;->of(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setIaa(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    :try_end_b8
    .catchall {:try_start_0 .. :try_end_b8} :catchall_b9

    :cond_b8
    return-object p1

    :catchall_b9
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Ljava/lang/String;Lio/bidmachine/AdsType;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userContextBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p3, p4}, Lio/bidmachine/SessionParams;->createSessionBuilder(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 12
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->pack(Lcom/explorestack/protobuf/Message$Builder;)Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    :cond_1c
    return-void
.end method

.method public final build(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Ljava/lang/String;Lio/bidmachine/AdsType;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTokenPayloadBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lio/bidmachine/SessionParams;->createSessionBuilder(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 6
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setSession(Lio/bidmachine/protobuf/sdk/Session$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    :cond_18
    return-void
.end method
