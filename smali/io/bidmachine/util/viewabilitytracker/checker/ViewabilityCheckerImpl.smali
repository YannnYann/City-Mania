###### Class io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl (io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl)
.class public final Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;
.super Ljava/lang/Object;
.source "ViewabilityCheckerImpl.kt"

# interfaces
.implements Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewabilityCheckerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewabilityCheckerImpl.kt\nio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,159:1\n1851#2:160\n1852#2:165\n846#3,4:161\n*S KotlinDebug\n*F\n+ 1 ViewabilityCheckerImpl.kt\nio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl\n*L\n75#1:160\n75#1:165\n76#1:161,4\n*E\n"
.end annotation


# instance fields
.field public final checkCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final lock:Ljava/lang/Object;

.field public final logger:Lio/bidmachine/util/log/TagLogger;

.field public final uiScope:Lkotlinx/coroutines/CoroutineScope;

.field public final viewabilityCheckerListener:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;

.field public final viewabilityRule:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

.field public weakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;)V
    .registers 5

    const-string v0, "viewabilityRule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewabilityCheckerListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityRule:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    .line 23
    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityCheckerListener:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;

    .line 26
    new-instance p1, Lio/bidmachine/util/log/TagLogger;

    const/4 p2, 0x2

    const-string v0, "ViewabilityChecker"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2, v1}, Lio/bidmachine/util/log/TagLogger;-><init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    .line 27
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->lock:Ljava/lang/Object;

    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->checkCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x1

    .line 32
    invoke-static {v1, p1, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    invoke-virtual {p2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;)Lio/bidmachine/util/log/TagLogger;
    .registers 1

    .line 21
    iget-object p0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    return-object p0
.end method

.method public static final synthetic access$getViewabilityRule$p(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;)Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;
    .registers 1

    .line 21
    iget-object p0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityRule:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    return-object p0
.end method


# virtual methods
.method public final check(Landroid/view/View;)Z
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityRule:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    invoke-virtual {v0}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->getMetrics()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/util/viewabilitytracker/metric/Metric;

    .line 77
    :try_start_1d
    invoke-interface {v1, p1}, Lio/bidmachine/util/viewabilitytracker/metric/Metric;->check(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 p1, 0x0

    return p1

    .line 80
    :cond_25
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_11

    goto :goto_11

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .registers 2

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->stop()V

    .line 66
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->weakView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_a
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->weakView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final getCheckCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .line 31
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->checkCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .registers 2

    .line 71
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->weakView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final notifyCheckFailed(Lio/bidmachine/util/Error;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityCheckerListener:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityRule:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->getActionEvent()Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;->onCheckFailed(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public final notifyCheckSuccessful()V
    .registers 3

    .line 146
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityCheckerListener:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityRule:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->getActionEvent()Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;->onCheckPassed(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V

    return-void
.end method

.method public final processCheckFail()V
    .registers 6

    .line 134
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->viewabilityRule:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    invoke-virtual {v0}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->getViewabilityMeasurement()Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->getFailureTimeoutMs()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 135
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1e

    .line 136
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->startCheck(J)V

    return-void

    .line 138
    :cond_1e
    new-instance v0, Lio/bidmachine/util/Error;

    const-string v1, "Can\'t restart check - failureTimeoutMs must be greater than 0"

    invoke-direct {v0, v1}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2, v3}, Lio/bidmachine/util/log/LoggerInstance;->e$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lio/bidmachine/util/Error;ILjava/lang/Object;)V

    .line 140
    invoke-virtual {p0, v0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->notifyCheckFailed(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public final reset()V
    .registers 3

    .line 156
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->checkCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final scheduleCheck(J)V
    .registers 9

    .line 98
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->stopCheck()V

    .line 99
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, p0, v2}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;-><init>(JLio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public start(Landroid/view/View;J)V
    .registers 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 41
    :cond_10
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_13
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$start$1$1;

    invoke-direct {v3, p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$start$1$1;-><init>(Landroid/view/View;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v2, v4}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 46
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->weakView:Ljava/lang/ref/WeakReference;

    .line 47
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->startCheck(J)V

    .line 48
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2c

    .line 41
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final startCheck(J)V
    .registers 3

    .line 87
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->reset()V

    .line 88
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->scheduleCheck(J)V

    return-void
.end method

.method public stop()V
    .registers 6

    .line 52
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 56
    iget-object v2, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$stop$1$1;

    invoke-direct {v3, v1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$stop$1$1;-><init>(Landroid/view/View;)V

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v1, v4}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_1e

    :catchall_1c
    move-exception v1

    goto :goto_25

    .line 60
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->stopCheck()V

    .line 61
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1c

    .line 52
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0

    throw v1
.end method

.method public final stopCheck()V
    .registers 4

    .line 93
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl.AnonymousClass1 (io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$scheduleCheck$1)
.class public final Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ViewabilityCheckerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->scheduleCheck(J)V
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
    c = "io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$scheduleCheck$1"
    f = "ViewabilityCheckerImpl.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $delayMs:J

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;


# direct methods
.method public constructor <init>(JLio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-wide p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->$delayMs:J

    iput-object p3, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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
    new-instance p1, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;

    iget-wide v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->$delayMs:J

    iget-object v2, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;-><init>(JLio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 99
    iget v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->label:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v4, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_33

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    iget-wide v5, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->$delayMs:J

    cmp-long p1, v5, v2

    if-lez p1, :cond_33

    .line 101
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iput v4, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_33

    return-object v0

    .line 104
    :cond_33
    :goto_33
    :try_start_33
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_43

    .line 106
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->stopCheck()V

    .line 107
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 109
    :cond_43
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->check(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 110
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-static {p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->access$getViewabilityRule$p(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;)Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;->getViewabilityMeasurement()Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {v0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->getCheckCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_6b

    .line 112
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->notifyCheckSuccessful()V

    goto :goto_9b

    .line 114
    :cond_6b
    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;->getIntervalMs()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_79

    .line 116
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->scheduleCheck(J)V

    goto :goto_9b

    .line 118
    :cond_79
    new-instance p1, Lio/bidmachine/util/Error;

    const-string v0, "Can\'t schedule check - intervalMs must be greater than 0"

    invoke-direct {p1, v0}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-static {v0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->access$getLogger$p(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;)Lio/bidmachine/util/log/TagLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v4, v1}, Lio/bidmachine/util/log/LoggerInstance;->e$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lio/bidmachine/util/Error;ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->notifyCheckFailed(Lio/bidmachine/util/Error;)V

    goto :goto_9b

    .line 124
    :cond_90
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->processCheckFail()V
    :try_end_95
    .catchall {:try_start_33 .. :try_end_95} :catchall_96

    goto :goto_9b

    .line 127
    :catchall_96
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$scheduleCheck$1;->this$0:Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->processCheckFail()V

    .line 129
    :goto_9b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$start$1$1 (io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$start$1$1)
.class public final Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$start$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityCheckerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->start(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$start$1$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$start$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start tracking - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$start$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$stop$1$1 (io.bidmachine.util.viewabilitytracker.checker.ViewabilityCheckerImpl$stop$1$1)
.class public final Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$stop$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityCheckerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$stop$1$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$stop$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop tracking - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl$stop$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
