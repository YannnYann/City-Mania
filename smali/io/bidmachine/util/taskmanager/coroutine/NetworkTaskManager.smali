###### Class io.bidmachine.util.taskmanager.coroutine.NetworkTaskManager (io.bidmachine.util.taskmanager.coroutine.NetworkTaskManager)
.class public final Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;
.super Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;
.source "NetworkTaskManager.kt"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 8
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "NetworkTaskManager"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method
