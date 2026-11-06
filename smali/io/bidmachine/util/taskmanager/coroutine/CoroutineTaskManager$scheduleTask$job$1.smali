###### Class io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager$scheduleTask$job$1 (io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager$scheduleTask$job$1)
.class public final Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutineTaskManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->scheduleTask(Ljava/lang/Runnable;J)V
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
    value = "SMAP\nCoroutineTaskManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineTaskManager.kt\nio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,51:1\n846#2,4:52\n846#2,4:56\n*S KotlinDebug\n*F\n+ 1 CoroutineTaskManager.kt\nio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1\n*L\n27#1:52,4\n35#1:56,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager$scheduleTask$job$1"
    f = "CoroutineTaskManager.kt"
    l = {
        0x19,
        0x1d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $delayMs:J

.field public final synthetic $task:Ljava/lang/Runnable;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Runnable;",
            "Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-wide p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->$delayMs:J

    iput-object p3, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->$task:Ljava/lang/Runnable;

    iput-object p4, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->this$0:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
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
    new-instance v0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;

    iget-wide v1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->$delayMs:J

    iget-object v3, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->$task:Ljava/lang/Runnable;

    iget-object v4, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->this$0:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;-><init>(JLjava/lang/Runnable;Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 22
    iget v1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    if-eq v1, v3, :cond_1e

    if-ne v1, v2, :cond_16

    iget-object v0, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_5f

    goto :goto_5d

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_43

    :catchall_26
    move-exception p1

    goto :goto_6b

    :cond_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    :try_start_30
    iget-wide v4, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->$delayMs:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_43

    .line 25
    iput-object v1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_43

    goto :goto_59

    .line 27
    :cond_43
    :goto_43
    iget-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->$task:Ljava/lang/Runnable;
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_26

    .line 28
    :try_start_45
    instance-of v3, p1, Lio/bidmachine/util/taskmanager/SuspendCancellableTask;

    if-eqz v3, :cond_5a

    .line 29
    check-cast p1, Lio/bidmachine/util/taskmanager/SuspendCancellableTask;

    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    iput-object v1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->label:I

    invoke-virtual {p1, v3, p0}, Lio/bidmachine/util/taskmanager/SuspendCancellableTask;->runSuspend(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5d

    :goto_59
    return-object v0

    .line 31
    :cond_5a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 33
    :cond_5d
    :goto_5d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_5f

    .line 35
    :catchall_5f
    iget-object p1, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->this$0:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    iget-object v0, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->$task:Ljava/lang/Runnable;

    .line 36
    :try_start_63
    invoke-virtual {p1, v0}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->cancelTask(Ljava/lang/Runnable;)V

    .line 37
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_68

    .line 39
    :catchall_68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 35
    :goto_6b
    iget-object v0, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->this$0:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    iget-object v2, p0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager$scheduleTask$job$1;->$task:Ljava/lang/Runnable;

    .line 847
    :try_start_6f
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 36
    invoke-virtual {v0, v2}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;->cancelTask(Ljava/lang/Runnable;)V

    .line 37
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_76

    .line 846
    :catchall_76
    throw p1
.end method
