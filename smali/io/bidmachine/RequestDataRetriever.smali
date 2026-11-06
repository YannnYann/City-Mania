###### Class io.bidmachine.RequestDataRetriever (io.bidmachine.RequestDataRetriever)
.class public final Lio/bidmachine/RequestDataRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/RequestDataRetriever;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/RequestDataRetriever;

    invoke-direct {v0}, Lio/bidmachine/RequestDataRetriever;-><init>()V

    sput-object v0, Lio/bidmachine/RequestDataRetriever;->INSTANCE:Lio/bidmachine/RequestDataRetriever;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createContext(Landroid/content/Context;Lio/bidmachine/k;Lio/bidmachine/internal/u;Lio/bidmachine/TargetingParams;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lcom/explorestack/protobuf/adcom/ConnectionType;Lio/bidmachine/AdsType;)Lcom/explorestack/protobuf/adcom/Context;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "bidMachineImpl"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "privacyContext"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "targetingParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "maskedSignalsBuilder"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {v7}, Lio/bidmachine/internal/u;->d()Lio/bidmachine/internal/w;

    move-result-object v3

    .line 2
    invoke-virtual {v7}, Lio/bidmachine/internal/u;->c()Lio/bidmachine/internal/v;

    move-result-object v5

    .line 3
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v6

    const-string v8, "newBuilder()"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lio/bidmachine/k;->l()Lio/bidmachine/Publisher;

    move-result-object v10

    if-eqz v10, :cond_44

    invoke-virtual {v10, v9}, Lio/bidmachine/Publisher;->build(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    .line 10
    :cond_44
    invoke-virtual {v0}, Lio/bidmachine/k;->e()Lio/bidmachine/AppParams;

    move-result-object v10

    invoke-virtual {v10, v1, v9}, Lio/bidmachine/AppParams;->build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    .line 11
    invoke-static {v9, v2}, Lio/bidmachine/internal/M;->a(Lcom/explorestack/protobuf/adcom/Context$App$Builder;Lio/bidmachine/TargetingParams;)V

    .line 14
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->newBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v10, v2}, Lio/bidmachine/internal/M;->a(Lio/bidmachine/protobuf/sdk/App$Builder;Lio/bidmachine/TargetingParams;)V

    .line 18
    invoke-virtual {v0}, Lio/bidmachine/k;->h()Lio/bidmachine/InstallInfoProvider;

    move-result-object v11

    invoke-virtual {v11, v10}, Lio/bidmachine/InstallInfoProvider;->fill(Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 19
    invoke-virtual {v0, v1}, Lio/bidmachine/k;->h(Landroid/content/Context;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_70

    .line 22
    invoke-static {v11, v12}, Lio/bidmachine/utils/ProtoUtils;->msToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/bidmachine/protobuf/sdk/App$Builder;->setFirstLaunchTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 24
    :cond_70
    invoke-virtual {v0, v1}, Lio/bidmachine/k;->c(Landroid/content/Context;)J

    move-result-wide v11

    cmp-long v13, v11, v13

    if-lez v13, :cond_7f

    .line 27
    invoke-static {v11, v12}, Lio/bidmachine/utils/ProtoUtils;->msToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/bidmachine/protobuf/sdk/App$Builder;->setSdkInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 29
    :cond_7f
    invoke-virtual {v10}, Lio/bidmachine/protobuf/sdk/App$Builder;->build()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v10

    invoke-static {v10}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 31
    invoke-virtual {v6, v9}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setApp(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 34
    invoke-virtual {v2}, Lio/bidmachine/TargetingParams;->getBlockedParams$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/BlockedParams;

    move-result-object v9

    if-eqz v9, :cond_9d

    .line 36
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v10

    .line 38
    invoke-virtual {v9, v10}, Lio/bidmachine/BlockedParams;->build(Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;)V

    .line 39
    invoke-virtual {v6, v10}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setRestrictions(Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 43
    :cond_9d
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {v2, v9, v4, v3, v5}, Lio/bidmachine/internal/L;->a(Lio/bidmachine/TargetingParams;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V

    .line 54
    invoke-virtual {v0}, Lio/bidmachine/k;->o()Lio/bidmachine/SessionParams;

    move-result-object v2

    .line 57
    invoke-virtual {v7}, Lio/bidmachine/internal/u;->h()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p6

    .line 58
    invoke-virtual {v2, v1, v9, v10, v11}, Lio/bidmachine/SessionParams;->build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Ljava/lang/String;Lio/bidmachine/AdsType;)V

    .line 64
    invoke-virtual {v6, v9}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setUser(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 67
    invoke-virtual {v0}, Lio/bidmachine/k;->f()Lio/bidmachine/DeviceParams;

    move-result-object v0

    move-object v2, v6

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/DeviceParams;->build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V

    .line 77
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {v0, v7, v4}, Lio/bidmachine/RequestDataRetrieverKt;->fill(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;Lio/bidmachine/internal/u;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;)V

    .line 80
    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setRegs(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 82
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    const-string v1, "contextBuilder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
