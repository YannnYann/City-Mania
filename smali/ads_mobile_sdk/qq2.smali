###### Class ads_mobile_sdk.qq2 (ads_mobile_sdk.qq2)
.class public final Lads_mobile_sdk/qq2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/rq2;

.field public c:J

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/rq2;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(JLads_mobile_sdk/rq2;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/qq2;->f:Lads_mobile_sdk/rq2;

    iput-wide p1, p0, Lads_mobile_sdk/qq2;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/qq2;

    iget-object v1, p0, Lads_mobile_sdk/qq2;->f:Lads_mobile_sdk/rq2;

    iget-wide v2, p0, Lads_mobile_sdk/qq2;->g:J

    invoke-direct {v0, v2, v3, v1, p2}, Lads_mobile_sdk/qq2;-><init>(JLads_mobile_sdk/rq2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/qq2;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/qq2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/qq2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/qq2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget v1, p0, Lads_mobile_sdk/qq2;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2e

    if-eq v1, v3, :cond_25

    if-ne v1, v2, :cond_1d

    iget-wide v0, p0, Lads_mobile_sdk/qq2;->c:J

    iget-object v2, p0, Lads_mobile_sdk/qq2;->b:Lads_mobile_sdk/rq2;

    iget-object v5, p0, Lads_mobile_sdk/qq2;->a:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, p0, Lads_mobile_sdk/qq2;->e:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    iget-object v1, p0, Lads_mobile_sdk/qq2;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    goto :goto_50

    :cond_2e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/qq2;->e:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 91
    iget-object v1, p0, Lads_mobile_sdk/qq2;->f:Lads_mobile_sdk/rq2;

    .line 92
    iget-object v1, v1, Lads_mobile_sdk/rq2;->a:Lads_mobile_sdk/tq2;

    .line 93
    iput-object p1, p0, Lads_mobile_sdk/qq2;->e:Ljava/lang/Object;

    iput v3, p0, Lads_mobile_sdk/qq2;->d:I

    check-cast v1, Lads_mobile_sdk/pt2;

    .line 94
    invoke-virtual {v1, p0}, Lads_mobile_sdk/pt2;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_4a

    goto :goto_4c

    :cond_4a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4c
    if-ne v1, v0, :cond_4f

    goto :goto_66

    :cond_4f
    move-object v6, p1

    .line 96
    :goto_50
    iget-object p1, p0, Lads_mobile_sdk/qq2;->f:Lads_mobile_sdk/rq2;

    .line 97
    iget-object v5, p1, Lads_mobile_sdk/rq2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 98
    iget-wide v7, p0, Lads_mobile_sdk/qq2;->g:J

    .line 128
    iput-object v6, p0, Lads_mobile_sdk/qq2;->e:Ljava/lang/Object;

    iput-object v5, p0, Lads_mobile_sdk/qq2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/qq2;->b:Lads_mobile_sdk/rq2;

    iput-wide v7, p0, Lads_mobile_sdk/qq2;->c:J

    iput v2, p0, Lads_mobile_sdk/qq2;->d:I

    invoke-interface {v5, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_67

    :goto_66
    return-object v0

    :cond_67
    move-object v2, p1

    move-wide v0, v7

    .line 129
    :goto_69
    :try_start_69
    iget-object p1, v2, Lads_mobile_sdk/rq2;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_a0

    .line 131
    iget-object p1, v2, Lads_mobile_sdk/rq2;->g:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_7c

    .line 132
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_7c

    :catchall_79
    move-exception v0

    move-object p1, v0

    goto :goto_a6

    .line 133
    :cond_7c
    :goto_7c
    new-instance p1, Lads_mobile_sdk/pq2;

    invoke-direct {p1, v0, v1, v2, v4}, Lads_mobile_sdk/pq2;-><init>(JLads_mobile_sdk/rq2;Lkotlin/coroutines/Continuation;)V

    .line 134
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 135
    const-string v0, "<this>"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, p1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 394
    iput-object p1, v2, Lads_mobile_sdk/rq2;->g:Lkotlinx/coroutines/Job;

    .line 395
    :cond_a0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a2
    .catchall {:try_start_69 .. :try_end_a2} :catchall_79

    .line 410
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 411
    :goto_a6
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
