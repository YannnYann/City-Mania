###### Class com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver (com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver)
.class public final Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;
.super Ljava/lang/Object;
.source "AppForegroundDurationObserver.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppForegroundDurationObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppForegroundDurationObserver.kt\ncom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,83:1\n47#2,4:84\n214#3,5:88\n*S KotlinDebug\n*F\n+ 1 AppForegroundDurationObserver.kt\ncom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver\n*L\n27#1:84,4\n30#1:88,5\n*E\n"
.end annotation


# instance fields
.field private final accumulatedBackgroundMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final initTimeProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$3oP7kiVqfczvecyKGNmJv-70Kp4()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->_init_$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$5dvsuko93OlkoG470Yyt5bJgFVA()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->_init_$lambda$1()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycleDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elapsedRealtimeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initTimeProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    .line 17
    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    .line 19
    iput-object p4, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->initTimeProvider:Lkotlin/jvm/functions/Function0;

    .line 22
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 23
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p3, 0x0

    invoke-direct {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->accumulatedBackgroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance p3, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {p3, p1}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    .line 27
    invoke-virtual {p2, p3}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_9

    .line 18
    new-instance p3, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda0;-><init>()V

    :cond_9
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_12

    .line 19
    new-instance p4, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda1;-><init>()V

    .line 15
    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;-><init>(Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()J
    .registers 2

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final _init_$lambda$1()J
    .registers 2

    .line 19
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getInitializationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$onBackground(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->onBackground()V

    return-void
.end method

.method public static final synthetic access$onForeground(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->onForeground()V

    return-void
.end method

.method private final currentAccumulatedBackgroundMs(JJ)J
    .registers 9

    .line 58
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->accumulatedBackgroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 59
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_f

    return-wide v0

    .line 61
    :cond_f
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    sub-long/2addr p3, p1

    .line 62
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final onBackground()V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 67
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1b
    return-void
.end method

.method private final onForeground()V
    .registers 8

    .line 72
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 74
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->initTimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1d

    goto :goto_3d

    .line 77
    :cond_1d
    iget-object v4, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 78
    iget-object v4, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 79
    iget-object v6, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->accumulatedBackgroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public getSessionDurationInForegroundMs()J
    .registers 9

    .line 49
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->initTimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    return-wide v2

    .line 51
    :cond_13
    iget-object v4, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long v6, v4, v0

    .line 53
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->currentAccumulatedBackgroundMs(JJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    .line 54
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final invoke()V
    .registers 6

    .line 30
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 215
    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 216
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 217
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 33
    :cond_1b
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;->appIsForeground()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->initTimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 38
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_3e

    goto :goto_4a

    :cond_3e
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_4a
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 41
    :cond_4d
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;->getAppActive()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;-><init>(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver.AnonymousClass2 (com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$invoke$2)
.class final Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppForegroundDurationObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$invoke$2"
    f = "AppForegroundDurationObserver.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;

    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;-><init>(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->Z$0:Z

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 42
    iget v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->label:I

    if-nez v0, :cond_1c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->Z$0:Z

    if-eqz p1, :cond_14

    .line 43
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->access$onForeground(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;)V

    goto :goto_19

    :cond_14
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;->this$0:Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;

    invoke-static {p1}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->access$onBackground(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;)V

    .line 44
    :goto_19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 42
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$$ExternalSyntheticLambda0 (com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->$r8$lambda$3oP7kiVqfczvecyKGNmJv-70Kp4()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$$ExternalSyntheticLambda1 (com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->$r8$lambda$5dvsuko93OlkoG470Yyt5bJgFVA()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
