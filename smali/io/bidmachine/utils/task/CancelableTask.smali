###### Class io.bidmachine.utils.task.CancelableTask (io.bidmachine.utils.task.CancelableTask)
.class public abstract Lio/bidmachine/utils/task/CancelableTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/utils/task/CancelableTask;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isCanceled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/task/CancelableTask;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/utils/task/CancelableTask;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/utils/task/CancelableTask;->runTask()V

    return-void
.end method

.method public abstract runTask()V
.end method

.method public setCancel(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/task/CancelableTask;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
