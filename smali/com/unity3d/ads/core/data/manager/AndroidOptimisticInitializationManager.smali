###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager)
.class public final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;
.super Ljava/lang/Object;
.source "AndroidOptimisticInitializationManager.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;

.field private static final DIAGNOSTIC_EVENT:Ljava/lang/String; = "native_initialize_success_optimistically"

.field private static final KEY_LAST_SUCCESS:Ljava/lang/String; = "last_init_success"

.field private static final PREFERENCES_FILE:Ljava/lang/String; = "unityads-optimistic-init"


# instance fields
.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final optimisticScope:Lkotlinx/coroutines/CoroutineScope;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

.field private final staticDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

.field private final terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile timerJob:Lkotlinx/coroutines/Job;

.field private final triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->Companion:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/log/Logger;)V
    .registers 8

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerInitializeListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optimisticScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticDeviceInfoDataSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 27
    iput-object p2, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    .line 28
    iput-object p3, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 29
    iput-object p4, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->optimisticScope:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    iput-object p5, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->staticDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

    .line 31
    iput-object p6, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$sendOptimistic(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sendOptimistic()V

    return-void
.end method

.method public static final synthetic access$storeKey(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->storeKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final computeKey()Ljava/lang/String;
    .registers 11

    .line 116
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getGameId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, ""

    .line 118
    :cond_a
    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->staticDeviceInfoDataSource:Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

    invoke-interface {v1}, Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;->fetchCached()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getBundleVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4.20.1"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 119
    const-string v2, "|"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final sendOptimistic()V
    .registers 12

    .line 94
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_45

    .line 96
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Optimistic init: timer fired, sending success callback"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->triggerInitializeListener:Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;->success()V

    .line 98
    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    const-string v2, "native_initialize_success_optimistically"

    const/16 v9, 0x7e

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    .line 100
    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Optimistic init: failed to send success callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_45
    return-void
.end method

.method private final storeKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_34

    if-ne v2, v3, :cond_2c

    :try_start_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_68

    :catch_2a
    move-exception p1

    goto :goto_4d

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    :try_start_37
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->computeKey()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v5, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;

    invoke-direct {v5, p1, v4}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_2a

    if-ne p1, v1, :cond_68

    return-object v1

    .line 111
    :goto_4d
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Optimistic init: failed to store key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, p1, v4, v1, v4}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 113
    :cond_68
    :goto_68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public onInitializationFinished(Z)V
    .registers 11

    .line 87
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->timerJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_e
    if-eqz p1, :cond_1e

    .line 90
    iget-object v3, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->optimisticScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;

    invoke-direct {v6, p0, v2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1e
    return-void
.end method

.method public tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;

    iget v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 46
    iget v2, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_4b

    if-eq v2, v4, :cond_3d

    if-ne v2, v5, :cond_35

    iget v1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->I$0:I

    :try_start_2c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_31

    goto/16 :goto_cc

    :catch_31
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b2

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    iget v2, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->I$0:I

    iget-object v7, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    :try_start_43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_8a

    :catch_47
    move-exception v0

    move-object p1, v0

    goto/16 :goto_fd

    :cond_4b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->timerJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_55

    invoke-static {p1, v6, v4, v6}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 48
    :cond_55
    iput-object v6, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->timerJob:Lkotlinx/coroutines/Job;

    .line 49
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getOptimisticInitDelayMs()I

    move-result p1

    if-gtz p1, :cond_6d

    .line 52
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 57
    :cond_6d
    :try_start_6d
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->computeKey()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v8, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;

    invoke-direct {v8, v6}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v7, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->I$0:I

    iput v4, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    invoke-static {v2, v8, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_87

    goto :goto_ac

    :cond_87
    move-object v13, v2

    move v2, p1

    move-object p1, v13

    :goto_8a
    check-cast p1, Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8c} :catch_47

    .line 66
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 70
    :cond_97
    :try_start_97
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v3, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;

    invoke-direct {v3, v6}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->I$0:I

    iput v5, v0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    invoke-static {p1, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_aa} :catch_af

    if-ne p1, v1, :cond_ad

    :goto_ac
    return-object v1

    :cond_ad
    move v1, v2

    goto :goto_cc

    :catch_af
    move-exception v0

    move-object p1, v0

    move v1, v2

    .line 74
    :goto_b2
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Optimistic init: failed to delete key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6, v5, v6}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 78
    :goto_cc
    iget-object v7, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->optimisticScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;

    invoke-direct {v10, v1, p0, v6}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;-><init>(ILcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->timerJob:Lkotlinx/coroutines/Job;

    .line 82
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Optimistic init: timer armed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6, v5, v6}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 83
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 62
    :goto_fd
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Optimistic init: failed to read key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v6, v5, v6}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 63
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.Companion (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$Companion)
.class public final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;
.super Ljava/lang/Object;
.source "AndroidOptimisticInitializationManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.AnonymousClass1 (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$onInitializationFinished$1)
.class final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidOptimisticInitializationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->onInitializationFinished(Z)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$onInitializationFinished$1"
    f = "AndroidOptimisticInitializationManager.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

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
    new-instance p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;

    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;-><init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_25

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    iput v2, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$onInitializationFinished$1;->label:I

    invoke-static {p1, p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->access$storeKey(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    :cond_25
    :goto_25
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.C40091 (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$1)
.class final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidOptimisticInitializationManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->storeKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager"
    f = "AndroidOptimisticInitializationManager.kt"
    l = {
        0x6b
    }
    m = "storeKey"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$1;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    invoke-static {p1, p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->access$storeKey(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.AnonymousClass2 (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$2)
.class final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidOptimisticInitializationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->storeKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$storeKey$2"
    f = "AndroidOptimisticInitializationManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;->$key:Ljava/lang/String;

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
    new-instance p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;->$key:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 107
    iget v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;->label:I

    if-nez v0, :cond_16

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    const-string p1, "last_init_success"

    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$storeKey$2;->$key:Ljava/lang/String;

    const-string v1, "unityads-optimistic-init"

    invoke-static {v1, p1, v0}, Lcom/unity3d/services/core/preferences/AndroidPreferences;->setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 107
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.C40101 (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$1)
.class final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AndroidOptimisticInitializationManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager"
    f = "AndroidOptimisticInitializationManager.kt"
    l = {
        0x3a,
        0x46
    }
    m = "tryOptimisticCompletion"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$1;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    invoke-virtual {p1, p0}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.C40112 (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$2)
.class final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidOptimisticInitializationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$2"
    f = "AndroidOptimisticInitializationManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 3
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
    new-instance p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;

    invoke-direct {p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 58
    iget v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$2;->label:I

    if-nez v0, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    const-string p1, "unityads-optimistic-init"

    const-string v0, "last_init_success"

    invoke-static {p1, v0}, Lcom/unity3d/services/core/preferences/AndroidPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.AnonymousClass3 (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$3)
.class final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidOptimisticInitializationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$3"
    f = "AndroidOptimisticInitializationManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;",
            ">;)V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 3
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
    new-instance p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;

    invoke-direct {p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 70
    iget v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$3;->label:I

    if-nez v0, :cond_14

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    const-string p1, "unityads-optimistic-init"

    const-string v0, "last_init_success"

    invoke-static {p1, v0}, Lcom/unity3d/services/core/preferences/AndroidPreferences;->removeKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 70
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager.AnonymousClass4 (com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$4)
.class final Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidOptimisticInitializationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager$tryOptimisticCompletion$4"
    f = "AndroidOptimisticInitializationManager.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $delayMs:I

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;


# direct methods
.method public constructor <init>(ILcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->$delayMs:I

    iput-object p2, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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
    new-instance p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;

    iget v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->$delayMs:I

    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;-><init>(ILcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 78
    iget v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_26

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    iget p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->$delayMs:I

    int-to-long v3, p1

    iput v2, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_26

    return-object v0

    .line 80
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager$tryOptimisticCompletion$4;->this$0:Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;->access$sendOptimistic(Lcom/unity3d/ads/core/data/manager/AndroidOptimisticInitializationManager;)V

    .line 81
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
