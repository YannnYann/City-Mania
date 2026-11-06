###### Class io.bidmachine.tracking.EventTrackerImpl (io.bidmachine.tracking.EventTrackerImpl)
.class public Lio/bidmachine/tracking/EventTrackerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/tracking/EventTracker;


# instance fields
.field public defaultEventConfiguration:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;


# direct methods
.method public static synthetic $r8$lambda$bNVsJzUPj87-G4lsYFlB17VtVZ8(ILio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/tracking/EventTrackerImpl;->trySendEvent$lambda$1(ILio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b_RVlZDiPZLHOxVLP0uMnW3EyCU(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/tracking/EventTrackerImpl;->trySendEvent$lambda$0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/bidmachine/tracking/EventTrackerImpl;-><init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/tracking/EventTrackerImpl;->setDefaultEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    return-void
.end method

.method public static final trySendEvent$lambda$0(I)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending event to server - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trySendEvent$lambda$1(ILio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending error event to server - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", error - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final setDefaultEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    if-eq p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 2
    :goto_8
    iput-object p1, p0, Lio/bidmachine/tracking/EventTrackerImpl;->defaultEventConfiguration:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-void
.end method

.method public final toErrorData(Lio/bidmachine/utils/BMError;)Lio/bidmachine/protobuf/sdk/Error$Data;
    .registers 4

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error$Data;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setCode(I)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setDescription(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->build()Lio/bidmachine/protobuf/sdk/Error$Data;

    move-result-object p1

    const-string v0, "newBuilder()\n           \u2026age)\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V
    .registers 25

    const-string v0, "trackingObject"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackEventType"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_17

    .line 1
    invoke-virtual/range {p5 .. p5}, Lio/bidmachine/utils/BMError;->isTrackError()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_68

    :cond_17
    if-eqz p3, :cond_24

    .line 8
    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/tracking/TrackEventInfo;->getStartTimeMs()J

    move-result-wide v3

    .line 9
    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/tracking/TrackEventInfo;->getFinishTimeMs()J

    move-result-wide v5

    move-wide v9, v3

    move-wide v11, v5

    goto :goto_2a

    .line 11
    :cond_24
    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v3

    move-wide v9, v3

    move-wide v11, v9

    :goto_2a
    if-eqz p6, :cond_42

    .line 19
    invoke-virtual/range {p6 .. p6}, Lio/bidmachine/tracking/EventData;->isBillable()Z

    move-result v0

    .line 20
    invoke-virtual/range {p6 .. p6}, Lio/bidmachine/tracking/EventData;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual/range {p6 .. p6}, Lio/bidmachine/tracking/EventData;->getPrice()Ljava/lang/Double;

    move-result-object v4

    .line 22
    invoke-virtual/range {p6 .. p6}, Lio/bidmachine/tracking/EventData;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v5

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    :goto_40
    move v8, v0

    goto :goto_49

    :cond_42
    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v14, v3

    move-object v15, v14

    move-object/from16 v16, v15

    goto :goto_40

    .line 24
    :goto_49
    invoke-virtual {v2}, Lio/bidmachine/TrackEventType;->getActionValue()I

    move-result v7

    .line 27
    invoke-interface {v1}, Lio/bidmachine/tracking/TrackingObject;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v6

    move-object/from16 v5, p0

    move-object/from16 v13, p4

    move-object/from16 v17, p5

    .line 28
    invoke-virtual/range {v5 .. v17}, Lio/bidmachine/tracking/EventTrackerImpl;->trySendEvent(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;IZJJLio/bidmachine/AdsType;Ljava/lang/String;Ljava/lang/Double;Lcom/explorestack/protobuf/Struct;Lio/bidmachine/utils/BMError;)Z

    move-result v0

    if-nez v0, :cond_68

    move-object/from16 v5, p0

    .line 42
    iget-object v6, v5, Lio/bidmachine/tracking/EventTrackerImpl;->defaultEventConfiguration:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-object/from16 v13, p4

    move-object/from16 v17, p5

    .line 43
    invoke-virtual/range {v5 .. v17}, Lio/bidmachine/tracking/EventTrackerImpl;->trySendEvent(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;IZJJLio/bidmachine/AdsType;Ljava/lang/String;Ljava/lang/Double;Lcom/explorestack/protobuf/Struct;Lio/bidmachine/utils/BMError;)Z

    :cond_68
    :goto_68
    return-void
.end method

.method public final trySendEvent(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;IZJJLio/bidmachine/AdsType;Ljava/lang/String;Ljava/lang/Double;Lcom/explorestack/protobuf/Struct;Lio/bidmachine/utils/BMError;)Z
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_d2

    .line 1
    :try_start_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getActionsList()Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_d2

    .line 4
    :cond_13
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ce

    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_ce

    :cond_21
    if-nez p12, :cond_2f

    .line 10
    new-instance v2, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    goto :goto_37

    :catchall_2c
    move-exception p1

    goto/16 :goto_cf

    .line 14
    :cond_2f
    new-instance v2, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p12}, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda1;-><init>(ILio/bidmachine/utils/BMError;)V

    invoke-static {v2}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 19
    :goto_37
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->newBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v2

    .line 20
    invoke-virtual {v2, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setAction(I)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setBillable(Z)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setContext(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    .line 23
    invoke-static {p4, p5}, Lio/bidmachine/utils/ProtoUtils;->msToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setStartTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    .line 24
    invoke-static {p6, p7}, Lio/bidmachine/utils/ProtoUtils;->msToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setFinishTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    if-eqz p8, :cond_68

    .line 26
    invoke-virtual {p8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setAdType(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    :cond_68
    if-eqz p9, :cond_78

    .line 28
    invoke-interface {p9}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_71

    goto :goto_78

    .line 29
    :cond_71
    invoke-static {p9}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setNetwork(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    :cond_78
    :goto_78
    if-eqz p10, :cond_81

    .line 32
    invoke-virtual {p10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setPrice(D)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    :cond_81
    if-eqz p11, :cond_86

    .line 35
    invoke-virtual {p1, p11}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setCustomParams(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    :cond_86
    if-eqz p12, :cond_a9

    .line 38
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object p2

    .line 39
    invoke-virtual {p0, p12}, Lio/bidmachine/tracking/EventTrackerImpl;->toErrorData(Lio/bidmachine/utils/BMError;)Lio/bidmachine/protobuf/sdk/Error$Data;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error$Data;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object p2

    const-string p3, "newBuilder()\n           \u2026or(bmError.toErrorData())"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p12}, Lio/bidmachine/utils/BMError;->getErrorExtension()Lio/bidmachine/utils/BMError;

    move-result-object p3

    if-eqz p3, :cond_a6

    .line 43
    invoke-virtual {p0, p3}, Lio/bidmachine/tracking/EventTrackerImpl;->toErrorData(Lio/bidmachine/utils/BMError;)Lio/bidmachine/protobuf/sdk/Error$Data;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setReason(Lio/bidmachine/protobuf/sdk/Error$Data;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 46
    :cond_a6
    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error$Builder;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 49
    :cond_a9
    new-instance p2, Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {p2}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 50
    invoke-virtual {p2, v1}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p2

    .line 51
    sget-object p3, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    invoke-virtual {p2, p3}, Lio/bidmachine/ApiRequest$Builder;->setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p2

    .line 52
    new-instance p3, Lio/bidmachine/ApiRequest$ApiEventDataBinder;

    invoke-direct {p3}, Lio/bidmachine/ApiRequest$ApiEventDataBinder;-><init>()V

    invoke-virtual {p2, p3}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/ApiRequest$Builder;->setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;
    :try_end_cc
    .catchall {:try_start_3 .. :try_end_cc} :catchall_2c

    const/4 p1, 0x1

    return p1

    :cond_ce
    :goto_ce
    return v0

    .line 58
    :goto_cf
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_d2
    :goto_d2
    return v0
.end method

###### Class io.bidmachine.tracking.EventTrackerImpl$$ExternalSyntheticLambda0 (io.bidmachine.tracking.EventTrackerImpl$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Lio/bidmachine/tracking/EventTrackerImpl;->$r8$lambda$b_RVlZDiPZLHOxVLP0uMnW3EyCU(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.tracking.EventTrackerImpl$$ExternalSyntheticLambda1 (io.bidmachine.tracking.EventTrackerImpl$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(ILio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lio/bidmachine/tracking/EventTrackerImpl$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/utils/BMError;

    invoke-static {v0, v1}, Lio/bidmachine/tracking/EventTrackerImpl;->$r8$lambda$bNVsJzUPj87-G4lsYFlB17VtVZ8(ILio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
