###### Class io.bidmachine.media3.common.util.ListenerSet (io.bidmachine.media3.common.util.ListenerSet)
.class public final Lio/bidmachine/media3/common/util/ListenerSet;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;,
        Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;,
        Lio/bidmachine/media3/common/util/ListenerSet$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public final flushingEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final iterationFinishedEvent:Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final queuedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public released:Z

.field public final releasedLock:Ljava/lang/Object;

.field public throwsWhenUsingWrongThread:Z


# direct methods
.method public static synthetic $r8$lambda$nVakSWO5e8oMBLxcdYhVorrjABY(Ljava/util/concurrent/CopyOnWriteArraySet;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V
    .registers 4

    .line 225
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;

    .line 226
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->invoke(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static synthetic $r8$lambda$zJNhpbMmtTm4THxV9epXIFy82nc(Lio/bidmachine/media3/common/util/ListenerSet;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ListenerSet;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lio/bidmachine/media3/common/util/Clock;",
            "Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lio/bidmachine/media3/common/util/Clock;",
            "Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p3, p0, Lio/bidmachine/media3/common/util/ListenerSet;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 117
    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 118
    iput-object p4, p0, Lio/bidmachine/media3/common/util/ListenerSet;->iterationFinishedEvent:Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 119
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    .line 120
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    .line 121
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    .line 124
    new-instance p1, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/util/ListenerSet;)V

    invoke-interface {p3, p2, p1}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p1

    .line 125
    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 126
    iput-boolean p5, p0, Lio/bidmachine/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 172
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_6
    iget-boolean v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->released:Z

    if-eqz v1, :cond_e

    .line 175
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    goto :goto_1a

    .line 177
    :cond_e
    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;

    invoke-direct {v2, p1}, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_c

    throw p1
.end method

.method public copy(Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)Lio/bidmachine/media3/common/util/ListenerSet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lio/bidmachine/media3/common/util/Clock;",
            "Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)",
            "Lio/bidmachine/media3/common/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 158
    new-instance v0, Lio/bidmachine/media3/common/util/ListenerSet;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-boolean v5, p0, Lio/bidmachine/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    return-object v0
.end method

.method public copy(Landroid/os/Looper;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)Lio/bidmachine/media3/common/util/ListenerSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)",
            "Lio/bidmachine/media3/common/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/media3/common/util/ListenerSet;->copy(Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object p1

    return-object p1
.end method

.method public flushEvents()V
    .registers 4

    .line 233
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 234
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4c

    .line 237
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 238
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(I)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Lio/bidmachine/media3/common/util/HandlerWrapper$Message;)Z

    .line 240
    :cond_1e
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    .line 241
    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lio/bidmachine/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-nez v0, :cond_33

    goto :goto_4c

    .line 247
    :cond_33
    :goto_33
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 248
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 249
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_33

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 296
    iget-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;

    .line 297
    iget-object v2, p0, Lio/bidmachine/media3/common/util/ListenerSet;->iterationFinishedEvent:Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->iterationFinished(Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 298
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_20
    return v1
.end method

.method public queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 222
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 223
    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    new-instance v2, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1, p2}, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .registers 4

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 273
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 274
    :try_start_7
    iput-boolean v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->released:Z

    .line 275
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    .line 276
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;

    .line 277
    iget-object v2, p0, Lio/bidmachine/media3/common/util/ListenerSet;->iterationFinishedEvent:Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->release(Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    goto :goto_10

    .line 279
    :cond_22
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_28
    move-exception v1

    .line 275
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 190
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;

    .line 191
    iget-object v2, v1, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 192
    iget-object v2, p0, Lio/bidmachine/media3/common/util/ListenerSet;->iterationFinishedEvent:Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->release(Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 193
    iget-object v2, p0, Lio/bidmachine/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_28
    return-void
.end method

.method public sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 263
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public final verifyCurrentThread()V
    .registers 3

    .line 309
    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    if-nez v0, :cond_5

    return-void

    .line 312
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.ListenerSet.Event (io.bidmachine.media3.common.util.ListenerSet$Event)
.class public interface abstract Lio/bidmachine/media3/common/util/ListenerSet$Event;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/ListenerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract invoke(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.common.util.ListenerSet.IterationFinishedEvent (io.bidmachine.media3.common.util.ListenerSet$IterationFinishedEvent)
.class public interface abstract Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/ListenerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IterationFinishedEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract invoke(Ljava/lang/Object;Lio/bidmachine/media3/common/FlagSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/media3/common/FlagSet;",
            ")V"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.common.util.ListenerSet.ListenerHolder (io.bidmachine.media3.common.util.ListenerSet$ListenerHolder)
.class public final Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/ListenerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

.field public final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public needsIterationFinishedEvent:Z

.field public released:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    .line 325
    new-instance p1, Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/common/FlagSet$Builder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;

    if-eq v1, v0, :cond_f

    goto :goto_1a

    .line 365
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;

    iget-object p1, p1, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 370
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 337
    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_14

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 339
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet$Builder;->add(I)Lio/bidmachine/media3/common/FlagSet$Builder;

    :cond_c
    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 342
    iget-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/common/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public iterationFinished(Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 347
    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_1d

    .line 350
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/FlagSet$Builder;->build()Lio/bidmachine/media3/common/FlagSet;

    move-result-object v0

    .line 351
    new-instance v1, Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/FlagSet$Builder;-><init>()V

    iput-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    const/4 v1, 0x0

    .line 352
    iput-boolean v1, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 353
    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lio/bidmachine/media3/common/FlagSet;)V

    :cond_1d
    return-void
.end method

.method public release(Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    .line 330
    iget-boolean v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 332
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lio/bidmachine/media3/common/FlagSet$Builder;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/FlagSet$Builder;->build()Lio/bidmachine/media3/common/FlagSet;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lio/bidmachine/media3/common/FlagSet;)V

    :cond_15
    return-void
.end method

###### Class io.bidmachine.media3.common.util.ListenerSet$$ExternalSyntheticLambda0 (io.bidmachine.media3.common.util.ListenerSet$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/ListenerSet;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/ListenerSet;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/ListenerSet;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/ListenerSet;->$r8$lambda$zJNhpbMmtTm4THxV9epXIFy82nc(Lio/bidmachine/media3/common/util/ListenerSet;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.common.util.ListenerSet$$ExternalSyntheticLambda1 (io.bidmachine.media3.common.util.ListenerSet$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lio/bidmachine/media3/common/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/media3/common/util/ListenerSet$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lio/bidmachine/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/media3/common/util/ListenerSet$Event;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/ListenerSet;->$r8$lambda$nVakSWO5e8oMBLxcdYhVorrjABY(Ljava/util/concurrent/CopyOnWriteArraySet;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method
