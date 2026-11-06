###### Class com.unity3d.ads.core.domain.AndroidDeliverModuleConfigs (com.unity3d.ads.core.domain.AndroidDeliverModuleConfigs)
.class public final Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;
.super Ljava/lang/Object;
.source "AndroidDeliverModuleConfigs.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidDeliverModuleConfigs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDeliverModuleConfigs.kt\ncom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1869#2,2:191\n1869#2,2:193\n295#2,2:198\n72#3,2:195\n1#4:197\n1#4:200\n*S KotlinDebug\n*F\n+ 1 AndroidDeliverModuleConfigs.kt\ncom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs\n*L\n58#1:191,2\n75#1:193,2\n112#1:198,2\n83#1:195,2\n83#1:197\n*E\n"
.end annotation


# instance fields
.field private final getInitModuleListeners:Lcom/unity3d/ads/core/domain/GetInitModuleListeners;

.field private final getIsModulesInitEnabled:Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final listenerLocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/unity3d/ads/UnityAdsInitModuleListener;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetInitModuleListeners;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;)V
    .registers 8

    const-string v0, "getInitModuleListeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getIsModulesInitEnabled"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->getInitModuleListeners:Lcom/unity3d/ads/core/domain/GetInitModuleListeners;

    .line 29
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 30
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 31
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 33
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->getIsModulesInitEnabled:Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;

    .line 39
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->listenerLocks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$deliver(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/util/Map;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->deliver(Lcom/unity3d/ads/UnityAdsInitModuleListener;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$fail(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->fail(Lcom/unity3d/ads/UnityAdsInitModuleListener;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$lockFor(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;)Lkotlinx/coroutines/sync/Mutex;
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->lockFor(Lcom/unity3d/ads/UnityAdsInitModuleListener;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p0

    return-object p0
.end method

.method private final deliver(Lcom/unity3d/ads/UnityAdsInitModuleListener;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/UnityAdsInitModuleListener;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 105
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 109
    :try_start_b
    invoke-interface {v1}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->moduleName()Ljava/lang/String;

    move-result-object v9
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_b3

    .line 111
    :try_start_f
    sget-object v8, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_STARTED:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const/16 v13, 0x1c

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    .line 110
    invoke-static/range {v7 .. v14}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sendModuleDiagnostic$default(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;->getModulesList()Ljava/util/List;

    move-result-object v0

    const-string v7, "getModulesList(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 198
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    .line 113
    invoke-virtual {v8}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_4a

    :catchall_43
    move-exception v0

    :goto_44
    move-object v7, v0

    move v0, v6

    :goto_46
    move-object v12, v9

    goto/16 :goto_b7

    :cond_49
    move-object v7, v4

    .line 112
    :goto_4a
    check-cast v7, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    if-eqz v7, :cond_53

    .line 114
    invoke-virtual {v7}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_54

    :cond_53
    move-object v0, v4

    :goto_54
    if-eqz v0, :cond_88

    .line 115
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v7
    :try_end_5a
    .catchall {:try_start_f .. :try_end_5a} :catchall_43

    if-eqz v7, :cond_5d

    goto :goto_88

    .line 130
    :cond_5d
    :try_start_5d
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    const-string v7, "toByteArray(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p3

    invoke-interface {v1, v0, v7}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->onSuccess([BLjava/util/Map;)V

    .line 132
    sget-object v8, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_SUCCESS:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 134
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/16 v13, 0x18

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    .line 131
    invoke-static/range {v7 .. v14}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sendModuleDiagnostic$default(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_5d .. :try_end_83} :catchall_84

    return-void

    :catchall_84
    move-exception v0

    move-object v7, v0

    move v0, v5

    goto :goto_46

    .line 116
    :cond_88
    :goto_88
    :try_start_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no config for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_43

    const/4 v0, 0x2

    .line 118
    :try_start_9a
    invoke-interface {v1, v12, v0}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->onFailure(Ljava/lang/String;I)V

    .line 120
    sget-object v8, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 122
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 123
    const-string v11, "no_config"

    move-object/from16 v7, p0

    .line 119
    invoke-direct/range {v7 .. v12}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sendModuleDiagnostic(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_84

    return-void

    :catchall_b3
    move-exception v0

    .line 136
    const-string v9, ""

    goto :goto_44

    .line 141
    :goto_b7
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_bf

    const-string v8, "module init failed"

    :cond_bf
    if-nez v0, :cond_d7

    .line 142
    :try_start_c1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x3

    .line 143
    invoke-interface {v1, v8, v0}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->onFailure(Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 142
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catchall {:try_start_c1 .. :try_end_cc} :catchall_cd

    goto :goto_d7

    :catchall_cd
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_d7
    :goto_d7
    sget-object v11, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 148
    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 149
    const-string v14, "uncaught_exception"

    .line 150
    invoke-static {v7, v6, v5, v4}, Lcom/unity3d/ads/core/extensions/ExceptionExtensionsKt;->getShortenedStackTrace$default(Ljava/lang/Throwable;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p0

    .line 145
    invoke-direct/range {v10 .. v15}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sendModuleDiagnostic(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final fail(Lcom/unity3d/ads/UnityAdsInitModuleListener;Ljava/lang/String;)V
    .registers 12

    .line 160
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x1

    .line 161
    invoke-interface {p1, p2, v0}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->onFailure(Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 160
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_16

    :catchall_c
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_16
    :try_start_16
    invoke-interface {p1}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->moduleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1f

    goto :goto_2b

    :catchall_1f
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2b
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p1, "unknown"

    :cond_33
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 165
    sget-object v2, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_FAILURE:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 164
    const-string v5, "failed"

    move-object v1, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sendModuleDiagnostic$default(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final lockFor(Lcom/unity3d/ads/UnityAdsInitModuleListener;)Lkotlinx/coroutines/sync/Mutex;
    .registers 6

    .line 83
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->listenerLocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 195
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 83
    invoke-static {v3, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    .line 196
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_17

    :cond_16
    move-object v1, p1

    .line 83
    :cond_17
    :goto_17
    const-string p1, "getOrPut(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    return-object v1
.end method

.method private final sendModuleDiagnostic(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 179
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 182
    invoke-static {}, Lkotlin/collections/MapsKt__MapsJVMKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v1

    .line 183
    const-string v2, "module_name"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_15

    .line 184
    const-string p2, "reason"

    invoke-interface {v1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_15
    if-eqz p5, :cond_1c

    .line 185
    const-string p2, "reason_debug"

    invoke-interface {v1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_1c
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 182
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    const/16 v8, 0x78

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p3

    .line 179
    invoke-static/range {v0 .. v9}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic sendModuleDiagnostic$default(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 9

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_10

    move-object p5, v0

    .line 172
    :cond_10
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sendModuleDiagnostic(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final sessionExtras()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 89
    const-string v0, "sessionId"

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toUUID(Lcom/google/protobuf/ByteString;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 90
    const-string v1, "sessionToken"

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    goto :goto_3e

    :catchall_33
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :goto_3e
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move-object v0, v1

    :cond_49
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public invoke(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 15

    const-string v0, "initResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->getIsModulesInitEnabled:Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;->invoke()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_47

    .line 52
    :cond_e
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->getInitModuleListeners:Lcom/unity3d/ads/core/domain/GetInitModuleListeners;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetInitModuleListeners;->invoke()Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_47

    .line 57
    :cond_1b
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->sessionExtras()Ljava/util/Map;

    move-result-object v6

    .line 58
    check-cast v0, Ljava/lang/Iterable;

    .line 191
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/unity3d/ads/UnityAdsInitModuleListener;

    .line 59
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    move-object v10, v2

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_25

    :cond_47
    :goto_47
    return-void
.end method

.method public notifyFailure(Ljava/lang/String;)V
    .registers 10

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->getIsModulesInitEnabled:Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;->invoke()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3d

    .line 72
    :cond_e
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->getInitModuleListeners:Lcom/unity3d/ads/core/domain/GetInitModuleListeners;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetInitModuleListeners;->invoke()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_3d

    .line 75
    :cond_1b
    check-cast v0, Ljava/lang/Iterable;

    .line 193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/UnityAdsInitModuleListener;

    .line 76
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$notifyFailure$1$1;

    const/4 v4, 0x0

    invoke-direct {v5, p0, v1, p1, v4}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$notifyFailure$1$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_21

    :cond_3d
    :goto_3d
    return-void
.end method
