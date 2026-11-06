###### Class com.ironsource.environment.workerthread.WorkerManager (com.ironsource.environment.workerthread.WorkerManager)
.class public Lcom/ironsource/environment/workerthread/WorkerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;
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
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->a:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public addCallable(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startWork(Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;JLjava/util/concurrent/TimeUnit;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    const-string p2, "can not start work, executor has been shut down"

    invoke-interface {p1, p2}, Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;->onWorkFailed(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_e
    iget-object v0, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7
    const-string p2, "can not start work, callable list is empty"

    invoke-interface {p1, p2}, Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;->onWorkFailed(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :try_start_25
    iget-object v3, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->a:Ljava/util/List;

    invoke-interface {v3, v4, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_aa

    const/4 p3, 0x0

    .line 28
    :goto_2e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_9c

    .line 29
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/concurrent/Future;

    .line 30
    invoke-interface {p4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {p4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_89

    .line 32
    :try_start_46
    invoke-interface {p4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p4

    .line 33
    new-instance v3, Lcom/ironsource/environment/workerthread/WorkerResult$Completed;

    invoke-direct {v3, p4}, Lcom/ironsource/environment/workerthread/WorkerResult$Completed;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/util/concurrent/CancellationException; {:try_start_46 .. :try_end_52} :catch_57
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_46 .. :try_end_52} :catch_55
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_52} :catch_53

    goto :goto_99

    :catch_53
    move-exception p4

    goto :goto_59

    :catch_55
    move-exception p4

    goto :goto_59

    :catch_57
    move-exception p4

    goto :goto_71

    .line 38
    :goto_59
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 39
    new-instance v3, Lcom/ironsource/environment/workerthread/WorkerResult$Failed;

    iget-object v4, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->a:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Callable;

    invoke-direct {v3, v4, p4}, Lcom/ironsource/environment/workerthread/WorkerResult$Failed;-><init>(Ljava/util/concurrent/Callable;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 40
    :goto_71
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 41
    new-instance p4, Lcom/ironsource/environment/workerthread/WorkerResult$Canceled;

    iget-object v3, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->a:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-direct {p4, v3}, Lcom/ironsource/environment/workerthread/WorkerResult$Canceled;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 47
    :cond_89
    new-instance p4, Lcom/ironsource/environment/workerthread/WorkerResult$Canceled;

    iget-object v3, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->a:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-direct {p4, v3}, Lcom/ironsource/environment/workerthread/WorkerResult$Canceled;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_99
    add-int/lit8 p3, p3, 0x1

    goto :goto_2e

    .line 50
    :cond_9c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    .line 52
    invoke-interface {p1, v2, p2, p3}, Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;->onWorkCompleted(Ljava/util/List;J)V

    .line 54
    iget-object p1, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    :catch_aa
    move-exception p2

    .line 55
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 56
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to invoke callables, error= "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;->onWorkFailed(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/ironsource/environment/workerthread/WorkerManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

###### Class com.ironsource.environment.workerthread.WorkerManager.WorkEndedListener (com.ironsource.environment.workerthread.WorkerManager$WorkEndedListener)
.class public interface abstract Lcom/ironsource/environment/workerthread/WorkerManager$WorkEndedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/workerthread/WorkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WorkEndedListener"
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
.method public abstract onWorkCompleted(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/environment/workerthread/WorkerResult<",
            "TT;>;>;J)V"
        }
    .end annotation
.end method

.method public abstract onWorkFailed(Ljava/lang/String;)V
.end method
