###### Class ads_mobile_sdk.p14 (ads_mobile_sdk.p14)
.class public final Lads_mobile_sdk/p14;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/r14;

.field public c:Ljava/lang/String;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/r14;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/p14;->e:Lads_mobile_sdk/r14;

    iput-object p2, p0, Lads_mobile_sdk/p14;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/p14;

    iget-object v0, p0, Lads_mobile_sdk/p14;->e:Lads_mobile_sdk/r14;

    iget-object v1, p0, Lads_mobile_sdk/p14;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/p14;-><init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/p14;

    iget-object v0, p0, Lads_mobile_sdk/p14;->e:Lads_mobile_sdk/r14;

    iget-object v1, p0, Lads_mobile_sdk/p14;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/p14;-><init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/p14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 269
    iget v1, p0, Lads_mobile_sdk/p14;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2c

    if-eq v1, v3, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lads_mobile_sdk/p14;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_5c

    :catchall_15
    move-exception p1

    goto :goto_62

    .line 270
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    iget-object v1, p0, Lads_mobile_sdk/p14;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/p14;->b:Lads_mobile_sdk/r14;

    iget-object v5, p0, Lads_mobile_sdk/p14;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v5, v1

    move-object v1, v7

    goto :goto_45

    :cond_2c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 271
    iget-object p1, p0, Lads_mobile_sdk/p14;->e:Lads_mobile_sdk/r14;

    .line 272
    iget-object v1, p1, Lads_mobile_sdk/r14;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 273
    iget-object v5, p0, Lads_mobile_sdk/p14;->f:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lads_mobile_sdk/p14;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/p14;->b:Lads_mobile_sdk/r14;

    iput-object v5, p0, Lads_mobile_sdk/p14;->c:Ljava/lang/String;

    iput v3, p0, Lads_mobile_sdk/p14;->d:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_44

    goto :goto_5a

    :cond_44
    move-object v3, p1

    .line 292
    :goto_45
    :try_start_45
    iget-object p1, v3, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    .line 293
    new-instance v6, Lads_mobile_sdk/o14;

    invoke-direct {v6, v3, v5, v4}, Lads_mobile_sdk/o14;-><init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lads_mobile_sdk/p14;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v4, p0, Lads_mobile_sdk/p14;->b:Lads_mobile_sdk/r14;

    iput-object v4, p0, Lads_mobile_sdk/p14;->c:Ljava/lang/String;

    iput v2, p0, Lads_mobile_sdk/p14;->d:I

    invoke-static {p1, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_64

    if-ne p1, v0, :cond_5b

    :goto_5a
    return-object v0

    :cond_5b
    move-object v0, v1

    .line 300
    :goto_5c
    :try_start_5c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_15

    .line 314
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_62
    move-object v1, v0

    goto :goto_65

    :catchall_64
    move-exception p1

    .line 315
    :goto_65
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
