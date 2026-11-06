###### Class com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource (com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource)
.class public final Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;
.super Ljava/lang/Object;
.source "AndroidModuleInitParamsDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/ModuleInitParamsDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidModuleInitParamsDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidModuleInitParamsDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ModuleInitParamsKt.kt\ngatewayprotocol/v1/ModuleInitParamsKtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1869#2:82\n1870#2:86\n10#3:83\n1#4:84\n1#4:85\n*S KotlinDebug\n*F\n+ 1 AndroidModuleInitParamsDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource\n*L\n44#1:82\n44#1:86\n54#1:83\n54#1:84\n*E\n"
.end annotation


# instance fields
.field private final getInitModuleListeners:Lcom/unity3d/ads/core/domain/GetInitModuleListeners;

.field private final getIsModulesInitEnabled:Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;

.field private final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetInitModuleListeners;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;)V
    .registers 6

    const-string v0, "getInitModuleListeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getIsModulesInitEnabled"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->getInitModuleListeners:Lcom/unity3d/ads/core/domain/GetInitModuleListeners;

    .line 30
    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 31
    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    iput-object p4, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->getIsModulesInitEnabled:Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;

    return-void
.end method

.method public static final synthetic access$collectInitParams(Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;)Ljava/util/List;
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->collectInitParams()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final collectInitParams()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 42
    const-string v2, "module_name"

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object v3

    .line 43
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 44
    iget-object v0, v1, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->getInitModuleListeners:Lcom/unity3d/ads/core/domain/GetInitModuleListeners;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetInitModuleListeners;->invoke()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/unity3d/ads/UnityAdsInitModuleListener;

    .line 45
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v7

    .line 46
    :try_start_2b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 47
    invoke-interface {v6}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->moduleName()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v9, v1, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 49
    sget-object v10, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_STARTED:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 50
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    const/16 v17, 0x7a

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 48
    invoke-static/range {v9 .. v18}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 52
    invoke-interface {v6, v4}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->initParams(Ljava/util/Map;)[B

    move-result-object v9

    if-eqz v9, :cond_83

    .line 10
    sget-object v10, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->Companion:Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->newBuilder()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    move-result-object v11

    const-string v12, "newBuilder(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;

    move-result-object v10

    .line 55
    invoke-virtual {v10, v0}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->setName(Ljava/lang/String;)V

    .line 56
    invoke-static {v9}, Lcom/google/protobuf/kotlin/ByteStringsKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v10, v9}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->setParams(Lcom/google/protobuf/ByteString;)V

    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "getName(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->setClassName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v10}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_build()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    move-result-object v9

    .line 53
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :catchall_81
    move-exception v0

    goto :goto_ae

    .line 61
    :cond_83
    :goto_83
    iget-object v9, v1, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 62
    sget-object v10, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_SUCCESS_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 63
    invoke-static {v7, v8}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v11

    invoke-static {v11}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 64
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    const/16 v17, 0x78

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 61
    invoke-static/range {v9 .. v18}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ad
    .catchall {:try_start_2b .. :try_end_ad} :catchall_81

    goto :goto_b8

    :goto_ae
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    :goto_b8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 67
    :try_start_be
    invoke-interface {v6}, Lcom/unity3d/ads/UnityAdsInitModuleListener;->moduleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_c7

    goto :goto_d2

    :catchall_c7
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_d2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    const-string v0, ""

    :cond_da
    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object v10, v1, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 69
    sget-object v11, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_MODULE_INIT_PARAMS_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 70
    invoke-static {v7, v8}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 72
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 73
    const-string v6, "reason"

    const-string v7, "uncaught_exception"

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 74
    invoke-static {v9, v13, v7, v8}, Lcom/unity3d/ads/core/extensions/ExceptionExtensionsKt;->getShortenedStackTrace$default(Ljava/lang/Throwable;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "reason_debug"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    filled-new-array {v0, v6, v7}, [Lkotlin/Pair;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const/16 v18, 0x78

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 68
    invoke-static/range {v10 .. v19}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V

    goto/16 :goto_18

    .line 42
    :cond_11c
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->getIsModulesInitEnabled:Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;->invoke()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 39
    :cond_d
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource.AnonymousClass2 (com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource$invoke$2)
.class final Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidModuleInitParamsDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource$invoke$2"
    f = "AndroidModuleInitParamsDataSource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 39
    iget v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;->label:I

    if-nez v0, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource$invoke$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;->access$collectInitParams(Lcom/unity3d/ads/core/data/datasource/AndroidModuleInitParamsDataSource;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
