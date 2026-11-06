###### Class ads_mobile_sdk.pq2 (ads_mobile_sdk.pq2)
.class public final Lads_mobile_sdk/pq2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/rq2;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:J

.field public final synthetic f:Lads_mobile_sdk/rq2;


# direct methods
.method public constructor <init>(JLads_mobile_sdk/rq2;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lads_mobile_sdk/pq2;->e:J

    iput-object p3, p0, Lads_mobile_sdk/pq2;->f:Lads_mobile_sdk/rq2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/pq2;

    iget-wide v1, p0, Lads_mobile_sdk/pq2;->e:J

    iget-object v3, p0, Lads_mobile_sdk/pq2;->f:Lads_mobile_sdk/rq2;

    invoke-direct {v0, v1, v2, v3, p2}, Lads_mobile_sdk/pq2;-><init>(JLads_mobile_sdk/rq2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/pq2;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/pq2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pq2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/pq2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 95
    iget v1, p0, Lads_mobile_sdk/pq2;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_37

    if-eq v1, v4, :cond_2f

    if-eq v1, v3, :cond_27

    if-ne v1, v2, :cond_1f

    iget-object v0, p0, Lads_mobile_sdk/pq2;->b:Lads_mobile_sdk/rq2;

    iget-object v1, p0, Lads_mobile_sdk/pq2;->a:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, p0, Lads_mobile_sdk/pq2;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_89

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    iget-object v1, p0, Lads_mobile_sdk/pq2;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_2f
    iget-object v1, p0, Lads_mobile_sdk/pq2;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/pq2;->d:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 96
    iget-wide v6, p0, Lads_mobile_sdk/pq2;->e:J

    iput-object v1, p0, Lads_mobile_sdk/pq2;->d:Ljava/lang/Object;

    iput v4, p0, Lads_mobile_sdk/pq2;->c:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4c

    goto :goto_85

    .line 99
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lads_mobile_sdk/pq2;->f:Lads_mobile_sdk/rq2;

    .line 100
    iget-object p1, p1, Lads_mobile_sdk/rq2;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    .line 101
    invoke-virtual {p1, v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 102
    iget-object p1, p0, Lads_mobile_sdk/pq2;->f:Lads_mobile_sdk/rq2;

    .line 103
    iget-object p1, p1, Lads_mobile_sdk/rq2;->a:Lads_mobile_sdk/tq2;

    .line 104
    sget-object v4, Lads_mobile_sdk/s11;->u1:Lads_mobile_sdk/s11;

    iput-object v1, p0, Lads_mobile_sdk/pq2;->d:Ljava/lang/Object;

    iput v3, p0, Lads_mobile_sdk/pq2;->c:I

    check-cast p1, Lads_mobile_sdk/pt2;

    .line 105
    invoke-virtual {p1, v4, p0}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/s11;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 106
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_6e

    goto :goto_70

    :cond_6e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_70
    if-ne p1, v0, :cond_73

    goto :goto_85

    .line 107
    :cond_73
    :goto_73
    iget-object p1, p0, Lads_mobile_sdk/pq2;->f:Lads_mobile_sdk/rq2;

    .line 108
    iget-object v3, p1, Lads_mobile_sdk/rq2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 109
    iput-object v1, p0, Lads_mobile_sdk/pq2;->d:Ljava/lang/Object;

    iput-object v3, p0, Lads_mobile_sdk/pq2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/pq2;->b:Lads_mobile_sdk/rq2;

    iput v2, p0, Lads_mobile_sdk/pq2;->c:I

    invoke-interface {v3, v5, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_86

    :goto_85
    return-object v0

    :cond_86
    move-object v0, p1

    move-object v2, v1

    move-object v1, v3

    .line 110
    :goto_89
    :try_start_89
    iget-object p1, v0, Lads_mobile_sdk/rq2;->g:Lkotlinx/coroutines/Job;

    .line 111
    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 112
    iput-object v5, v0, Lads_mobile_sdk/rq2;->g:Lkotlinx/coroutines/Job;

    goto :goto_a0

    :catchall_9e
    move-exception p1

    goto :goto_a6

    .line 113
    :cond_a0
    :goto_a0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a2
    .catchall {:try_start_89 .. :try_end_a2} :catchall_9e

    .line 130
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 131
    :goto_a6
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
