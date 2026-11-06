###### Class io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager (io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager)
.class public Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;
.super Lio/bidmachine/util/taskmanager/BaseTaskManager;
.source "CoroutineTaskManager.kt"


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Runnable;",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .registers 3

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .registers 3

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lio/bidmachine/util/taskmanager/BaseTaskManager;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 16
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->jobs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public cancelTask(Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->jobs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public scheduleTask(Ljava/lang/Runnable;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;

    const/4 v9, 0x0

    move-object v8, p0

    move-object v7, p1

    move-wide v5, p2

    invoke-direct/range {v4 .. v9}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;-><init>(JLjava/lang/Runnable;Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 40
    iget-object p2, v8, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->jobs:Ljava/util/Map;

    invoke-interface {p2, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z

    return-void
.end method
