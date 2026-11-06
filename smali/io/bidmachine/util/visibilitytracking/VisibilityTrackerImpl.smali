###### Class io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl (io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;
.super Ljava/lang/Object;
.source "VisibilityTrackerImpl.kt"

# interfaces
.implements Lio/bidmachine/util/visibilitytracking/VisibilityTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$Companion;,
        Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$ViewPreDrawListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisibilityTrackerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityTrackerImpl.kt\nio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,190:1\n1851#2:191\n1852#2:196\n846#3,4:192\n*S KotlinDebug\n*F\n+ 1 VisibilityTrackerImpl.kt\nio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl\n*L\n118#1:191\n118#1:196\n119#1:192,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$Companion;


# instance fields
.field public final isCheckerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isViewOnScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final lock:Ljava/lang/Object;

.field public final logger:Lio/bidmachine/util/log/TagLogger;

.field public final metricList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/bidmachine/util/viewabilitytracker/metric/Metric;",
            ">;"
        }
    .end annotation
.end field

.field public final onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public final uiScope:Lkotlinx/coroutines/CoroutineScope;

.field public final visibilityTrackerListener:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;

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
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->Companion:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/util/visibilitytracking/VisibilityParams;Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;)V
    .registers 6

    const-string v0, "visibilityParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityTrackerListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->visibilityTrackerListener:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;

    .line 29
    new-instance p2, Lio/bidmachine/util/log/TagLogger;

    const/4 v0, 0x2

    const-string v1, "VisibilityTracker"

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v0, v2}, Lio/bidmachine/util/log/TagLogger;-><init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    .line 30
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->lock:Ljava/lang/Object;

    .line 31
    new-instance p2, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$ViewPreDrawListener;

    invoke-direct {p2, p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$ViewPreDrawListener;-><init>(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)V

    iput-object p2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 32
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isCheckerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isViewOnScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    .line 36
    invoke-static {v2, p2, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 44
    invoke-direct {v1, p2, v2, v2, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;-><init>(ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->isIgnoreWindowFocus()Z

    move-result p2

    if-nez p2, :cond_7c

    .line 53
    new-instance p2, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;

    .line 54
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;->HAS_WINDOW_FOCUS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 53
    invoke-direct {p2, v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;-><init>(Ljava/util/List;)V

    .line 52
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_7c
    new-instance p2, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    .line 60
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->PARENT_VIEW:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    .line 61
    invoke-virtual {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->getMinVisiblePercentage()F

    move-result v2

    .line 59
    invoke-direct {p2, v1, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;-><init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;F)V

    .line 58
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->isIgnoreOverlap()Z

    move-result p2

    if-nez p2, :cond_9e

    .line 66
    new-instance p2, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    .line 67
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->VIEW_SIBLINGS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    .line 68
    invoke-virtual {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->getMinVisiblePercentage()F

    move-result p1

    .line 66
    invoke-direct {p2, v1, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;-><init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;F)V

    .line 65
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_9e
    iput-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->metricList:Ljava/util/Collection;

    return-void
.end method

.method public static final synthetic access$check(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;Landroid/view/View;)Z
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->check(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getView(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)Landroid/view/View;
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isCheckerScheduled$p(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isCheckerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$isStarted$p(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$notifyViewOnScreen(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->notifyViewOnScreen()V

    return-void
.end method

.method public static final synthetic access$notifyViewOutOfScreen(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->notifyViewOutOfScreen()V

    return-void
.end method

.method public static final synthetic access$processOnPreDraw(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->processOnPreDraw()V

    return-void
.end method


# virtual methods
.method public final check(Landroid/view/View;)Z
    .registers 4

    .line 118
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->metricList:Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    .line 191
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/util/viewabilitytracker/metric/Metric;

    .line 120
    :try_start_14
    invoke-interface {v1, p1}, Lio/bidmachine/util/viewabilitytracker/metric/Metric;->check(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_1c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_8

    goto :goto_8

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .registers 2

    .line 110
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->stop()V

    .line 111
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->weakView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_a
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->weakView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final getView()Landroid/view/View;
    .registers 2

    .line 115
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->weakView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final notifyViewOnScreen()V
    .registers 4

    .line 159
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isViewOnScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 163
    :cond_b
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->visibilityTrackerListener:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;

    invoke-interface {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;->onViewOnScreen()V

    return-void
.end method

.method public final notifyViewOutOfScreen()V
    .registers 4

    .line 167
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isViewOnScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 171
    :cond_b
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->visibilityTrackerListener:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;

    invoke-interface {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;->onViewOutOfScreen()V

    return-void
.end method

.method public final processOnPreDraw()V
    .registers 8

    .line 133
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {v0, v1}, Lio/bidmachine/util/ViewUtilsKt;->removeOnPreDrawListenerSafely(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 134
    :cond_b
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isCheckerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    .line 138
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->stopCheck()V

    .line 139
    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;-><init>(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public start(Landroid/view/View;)V
    .registers 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 82
    :cond_10
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_13
    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$start$1$1;

    invoke-direct {v3, p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$start$1$1;-><init>(Landroid/view/View;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v2, v4}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 87
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->weakView:Ljava/lang/ref/WeakReference;

    .line 88
    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {p1, v1}, Lio/bidmachine/util/ViewUtilsKt;->addOnPreDrawListenerSafely(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2e

    .line 82
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public stop()V
    .registers 8

    .line 93
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 97
    iget-object v3, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    new-instance v4, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$stop$1$1;

    invoke-direct {v4, v1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$stop$1$1;-><init>(Landroid/view/View;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5, v6}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 101
    iget-object v3, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {v1, v3}, Lio/bidmachine/util/ViewUtilsKt;->removeOnPreDrawListenerSafely(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_23

    :catchall_21
    move-exception v1

    goto :goto_34

    .line 103
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->stopCheck()V

    .line 104
    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isCheckerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->isViewOnScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_21

    .line 93
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0

    throw v1
.end method

.method public final stopCheck()V
    .registers 4

    .line 129
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.Companion (io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$Companion)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$Companion;
.super Ljava/lang/Object;
.source "VisibilityTrackerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.ViewPreDrawListener (io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$ViewPreDrawListener)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$ViewPreDrawListener;
.super Ljava/lang/Object;
.source "VisibilityTrackerImpl.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewPreDrawListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$ViewPreDrawListener;->this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .line 184
    iget-object v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$ViewPreDrawListener;->this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;

    invoke-static {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->access$processOnPreDraw(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)V

    const/4 v0, 0x1

    return v0
.end method

###### Class io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl.AnonymousClass1 (io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$processOnPreDraw$1)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VisibilityTrackerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->processOnPreDraw()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisibilityTrackerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityTrackerImpl.kt\nio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,190:1\n846#2,4:191\n*S KotlinDebug\n*F\n+ 1 VisibilityTrackerImpl.kt\nio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1\n*L\n142#1:191,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$processOnPreDraw$1"
    f = "VisibilityTrackerImpl.kt"
    l = {
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;

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
    new-instance v0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;

    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;

    invoke-direct {v0, v1, p2}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;-><init>(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iget v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_48

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    .line 140
    :catchall_23
    :goto_23
    iget-object p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;

    invoke-static {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->access$isStarted$p(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_66

    iget-object p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;

    invoke-static {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->access$isCheckerScheduled$p(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 141
    iput-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->label:I

    const-wide/16 v3, 0x64

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_48

    return-object v0

    .line 142
    :cond_48
    :goto_48
    iget-object p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$processOnPreDraw$1;->this$0:Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;

    .line 143
    :try_start_4a
    invoke-static {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->access$getView(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_56

    .line 145
    invoke-virtual {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->stop()V

    .line 146
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 148
    :cond_56
    invoke-static {p1, v3}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->access$check(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 149
    invoke-static {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->access$notifyViewOnScreen(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)V

    goto :goto_63

    .line 151
    :cond_60
    invoke-static {p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->access$notifyViewOutOfScreen(Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;)V

    .line 153
    :goto_63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_23

    goto :goto_23

    .line 155
    :cond_66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$start$1$1 (io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$start$1$1)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$start$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VisibilityTrackerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->start(Landroid/view/View;)V
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
    iput-object p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$start$1$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$start$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start tracking - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$start$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$stop$1$1 (io.bidmachine.util.visibilitytracking.VisibilityTrackerImpl$stop$1$1)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$stop$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VisibilityTrackerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;->stop()V
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
    iput-object p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$stop$1$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$stop$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop tracking - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl$stop$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
