###### Class io.bidmachine.util.viewabilityhandler.ViewabilityHandler (io.bidmachine.util.viewabilityhandler.ViewabilityHandler)
.class public final Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;
.super Ljava/lang/Object;
.source "ViewabilityHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$ViewabilityListener;,
        Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$VisibilityListener;
    }
.end annotation


# instance fields
.field public final isViewabilityTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isViewable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final viewabilityHandlerListener:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;

.field public final viewabilityTracker:Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;

.field public final visibilityTracker:Lio/bidmachine/util/visibilitytracking/VisibilityTracker;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;Lio/bidmachine/util/visibilitytracking/VisibilityParams;Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;)V
    .registers 5

    const-string v0, "visibilityParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewabilityHandlerListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p3, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityHandlerListener:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;

    if-eqz p1, :cond_1c

    .line 24
    new-instance p3, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;

    .line 26
    new-instance v0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$ViewabilityListener;

    invoke-direct {v0, p0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$ViewabilityListener;-><init>(Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;)V

    .line 24
    invoke-direct {p3, p1, v0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerImpl;-><init>(Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;)V

    goto :goto_1d

    :cond_1c
    const/4 p3, 0x0

    .line 23
    :goto_1d
    iput-object p3, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityTracker:Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;

    .line 29
    new-instance p1, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;

    .line 31
    new-instance p3, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$VisibilityListener;

    invoke-direct {p3, p0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$VisibilityListener;-><init>(Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;)V

    .line 29
    invoke-direct {p1, p2, p3}, Lio/bidmachine/util/visibilitytracking/VisibilityTrackerImpl;-><init>(Lio/bidmachine/util/visibilitytracking/VisibilityParams;Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->visibilityTracker:Lio/bidmachine/util/visibilitytracking/VisibilityTracker;

    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->isViewabilityTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->isViewable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 52
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityTracker:Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;->destroy()V

    .line 53
    :cond_7
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->visibilityTracker:Lio/bidmachine/util/visibilitytracking/VisibilityTracker;

    invoke-interface {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityTracker;->destroy()V

    return-void
.end method

.method public final isViewabilityTracked()Z
    .registers 2

    .line 36
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->isViewabilityTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isViewable()Z
    .registers 2

    .line 38
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->isViewable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final notifyOnVerifyingFailed(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 4

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityHandlerListener:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;->onViewabilityError(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public final notifyOnViewabilityChanged(Z)V
    .registers 4

    .line 89
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->isViewabilityTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 90
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->isViewable:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    .line 93
    :cond_13
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityHandlerListener:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;

    invoke-interface {v0, p1}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;->onViewabilityChanged(Z)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final notifyOnViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V
    .registers 3

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityHandlerListener:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;

    invoke-interface {v0, p1}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;->onViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V

    return-void
.end method

.method public final notifyOnViewabilityTracked()V
    .registers 4

    .line 75
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->isViewabilityTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 79
    :cond_b
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityHandlerListener:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;

    invoke-interface {v0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;->onViewabilityTracked()V

    return-void
.end method

.method public final processOnViewOnScreen()V
    .registers 2

    .line 67
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityTracker:Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;

    if-nez v0, :cond_7

    .line 68
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->notifyOnViewabilityTracked()V

    :cond_7
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->notifyOnViewabilityChanged(Z)V

    return-void
.end method

.method public final processOnViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V
    .registers 3

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->notifyOnViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V

    .line 59
    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->isBillable()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 60
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->notifyOnViewabilityTracked()V

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->notifyOnViewabilityChanged(Z)V

    :cond_15
    return-void
.end method

.method public final start(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityTracker:Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;->start(Landroid/view/View;)V

    .line 42
    :cond_c
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->visibilityTracker:Lio/bidmachine/util/visibilitytracking/VisibilityTracker;

    invoke-interface {v0, p1}, Lio/bidmachine/util/visibilitytracking/VisibilityTracker;->start(Landroid/view/View;)V

    return-void
.end method

.method public final stop()V
    .registers 3

    .line 46
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->viewabilityTracker:Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/bidmachine/util/viewabilitytracker/ViewabilityTracker;->stop()V

    .line 47
    :cond_7
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->visibilityTracker:Lio/bidmachine/util/visibilitytracking/VisibilityTracker;

    invoke-interface {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityTracker;->stop()V

    .line 48
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->isViewable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

###### Class io.bidmachine.util.viewabilityhandler.ViewabilityHandler.ViewabilityListener (io.bidmachine.util.viewabilityhandler.ViewabilityHandler$ViewabilityListener)
.class public final Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$ViewabilityListener;
.super Ljava/lang/Object;
.source "ViewabilityHandler.kt"

# interfaces
.implements Lio/bidmachine/util/viewabilitytracker/ViewabilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewabilityListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$ViewabilityListener;->this$0:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifyingFailed(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 4

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$ViewabilityListener;->this$0:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->notifyOnVerifyingFailed(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onVerifyingSuccess(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V
    .registers 3

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$ViewabilityListener;->this$0:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->processOnViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V

    return-void
.end method

###### Class io.bidmachine.util.viewabilityhandler.ViewabilityHandler.VisibilityListener (io.bidmachine.util.viewabilityhandler.ViewabilityHandler$VisibilityListener)
.class public final Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$VisibilityListener;
.super Ljava/lang/Object;
.source "ViewabilityHandler.kt"

# interfaces
.implements Lio/bidmachine/util/visibilitytracking/VisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VisibilityListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$VisibilityListener;->this$0:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewOnScreen()V
    .registers 2

    .line 113
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$VisibilityListener;->this$0:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    invoke-virtual {v0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->processOnViewOnScreen()V

    return-void
.end method

.method public onViewOutOfScreen()V
    .registers 3

    .line 115
    iget-object v0, p0, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler$VisibilityListener;->this$0:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->notifyOnViewabilityChanged(Z)V

    return-void
.end method
