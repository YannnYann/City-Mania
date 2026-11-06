###### Class io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl (io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl)
.class public final Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;
.super Ljava/lang/Object;
.source "ViewabilityTrackerImpl.kt"

# interfaces
.implements Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$ViewPreDrawListener;,
        Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$CheckerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewabilityTrackerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewabilityTrackerImpl.kt\nio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,146:1\n1549#2:147\n1620#2,3:148\n1851#2,2:151\n1851#2,2:153\n1851#2,2:155\n*S KotlinDebug\n*F\n+ 1 ViewabilityTrackerImpl.kt\nio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl\n*L\n25#1:147\n25#1:148,3\n71#1:151,2\n82#1:153,2\n99#1:155,2\n*E\n"
.end annotation


# instance fields
.field public volatile isBillableCheckPassed:Z

.field public final isCheckerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final lock:Ljava/lang/Object;

.field public final logger:Lio/bidmachine/util/log/TagLogger;

.field public final notTrackedCheckerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;",
            ">;"
        }
    .end annotation
.end field

.field public final onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public final viewabilityCheckerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;",
            ">;"
        }
    .end annotation
.end field

.field public final viewabilityTrackerListener:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;

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
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;)V
    .registers 6

    const-string v0, "viewabilityTrackerParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewabilityTrackerListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->viewabilityTrackerListener:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;

    .line 23
    new-instance p2, Lio/bidmachine/util/log/TagLogger;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "ViewabilityTracker"

    invoke-direct {p2, v2, v0, v1, v0}, Lio/bidmachine/util/log/TagLogger;-><init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    .line 24
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->lock:Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;->getViewabilityRuleList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 147
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 149
    check-cast v0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    .line 26
    new-instance v1, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;

    .line 28
    new-instance v2, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$CheckerListener;

    invoke-direct {v2, p0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$CheckerListener;-><init>(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;)V

    .line 26
    invoke-direct {v1, v0, v2}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerImpl;-><init>(Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;)V

    .line 149
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 25
    :cond_50
    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->viewabilityCheckerList:Ljava/util/List;

    .line 31
    new-instance p1, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$ViewPreDrawListener;

    invoke-direct {p1, p0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$ViewPreDrawListener;-><init>(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->isCheckerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->notTrackedCheckerList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$processCheckFailed(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 4

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->processCheckFailed(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public static final synthetic access$processCheckPassed(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->processCheckPassed(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V

    return-void
.end method

.method public static final synthetic access$processOnPreDraw(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;J)V
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->processOnPreDraw(J)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 79
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->stop()V

    .line 80
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->weakView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_a
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->weakView:Ljava/lang/ref/WeakReference;

    .line 82
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->viewabilityCheckerList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;

    .line 83
    invoke-interface {v1}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;->destroy()V

    goto :goto_15

    :cond_25
    return-void
.end method

.method public final getView()Landroid/view/View;
    .registers 2

    .line 87
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->weakView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final processCheckFailed(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 5

    .line 117
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->notTrackedCheckerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 121
    :cond_9
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->viewabilityTrackerListener:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;

    invoke-interface {p1, p2, p3}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;->onVerifyingFailed(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public final processCheckPassed(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V
    .registers 4

    .line 105
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->notTrackedCheckerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 109
    :cond_9
    invoke-virtual {p2}, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->isBillable()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->isBillableCheckPassed:Z

    .line 112
    :cond_12
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->notTrackedCheckerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->viewabilityTrackerListener:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;

    invoke-interface {p1, p2}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;->onVerifyingSuccess(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V

    return-void
.end method

.method public final processOnPreDraw(J)V
    .registers 6

    .line 90
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->isCheckerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2d

    .line 93
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_15

    .line 95
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->stop()V

    return-void

    .line 99
    :cond_15
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->notTrackedCheckerList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 155
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;

    .line 100
    invoke-interface {v2, v0, p1, p2}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;->start(Landroid/view/View;J)V

    goto :goto_1d

    :cond_2d
    :goto_2d
    return-void
.end method

.method public start(Landroid/view/View;)V
    .registers 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->notTrackedCheckerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_18

    .line 46
    :cond_e
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_18
    return-void

    .line 50
    :cond_19
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_1c
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$start$1$1;

    invoke-direct {v3, p1}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$start$1$1;-><init>(Landroid/view/View;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v2, v4}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 55
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->weakView:Ljava/lang/ref/WeakReference;

    .line 56
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {p1, v1}, Lio/bidmachine/util/ViewUtilsKt;->addOnPreDrawListenerSafely(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_37

    .line 50
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public stop()V
    .registers 8

    .line 61
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 65
    iget-object v3, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->logger:Lio/bidmachine/util/log/TagLogger;

    new-instance v4, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$stop$1$1;

    invoke-direct {v4, v1}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$stop$1$1;-><init>(Landroid/view/View;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5, v6}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 69
    iget-object v3, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {v1, v3}, Lio/bidmachine/util/ViewUtilsKt;->removeOnPreDrawListenerSafely(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_23

    :catchall_21
    move-exception v1

    goto :goto_44

    .line 71
    :cond_23
    :goto_23
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->viewabilityCheckerList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 151
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;

    .line 72
    invoke-interface {v3}, Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;->stop()V

    goto :goto_2b

    .line 74
    :cond_3b
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->isCheckerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_21

    .line 61
    monitor-exit v0

    return-void

    :goto_44
    monitor-exit v0

    throw v1
.end method

###### Class io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl.CheckerListener (io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl$CheckerListener)
.class public final Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$CheckerListener;
.super Ljava/lang/Object;
.source "ViewabilityTrackerImpl.kt"

# interfaces
.implements Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityCheckerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckerListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$CheckerListener;->this$0:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckFailed(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "viewabilityChecker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$CheckerListener;->this$0:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;

    invoke-static {v0, p1, p2, p3}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->access$processCheckFailed(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onCheckPassed(Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V
    .registers 4

    const-string v0, "viewabilityChecker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$CheckerListener;->this$0:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;

    invoke-static {v0, p1, p2}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->access$processCheckPassed(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;Lio/bidmachine/util/viewabilitytracker/checker/ViewabilityChecker;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V

    return-void
.end method

###### Class io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl.ViewPreDrawListener (io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl$ViewPreDrawListener)
.class public final Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$ViewPreDrawListener;
.super Ljava/lang/Object;
.source "ViewabilityTrackerImpl.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewPreDrawListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$ViewPreDrawListener;->this$0:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 128
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$ViewPreDrawListener;->this$0:Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->access$processOnPreDraw(Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;J)V

    const/4 v0, 0x1

    return v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl$start$1$1 (io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl$start$1$1)
.class public final Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$start$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityTrackerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->start(Landroid/view/View;)V
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
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$start$1$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$start$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start tracking - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$start$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl$stop$1$1 (io.bidmachine.util.viewabilitytracker.ViewabilityTrackerImpl$stop$1$1)
.class public final Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$stop$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityTrackerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;->stop()V
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
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$stop$1$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$stop$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop tracking - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl$stop$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
