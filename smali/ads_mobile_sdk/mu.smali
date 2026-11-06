###### Class ads_mobile_sdk.mu (ads_mobile_sdk.mu)
.class public final Lads_mobile_sdk/mu;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/ou;

.field public c:I

.field public final synthetic d:J

.field public final synthetic e:Lads_mobile_sdk/ou;


# direct methods
.method public constructor <init>(JLads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lads_mobile_sdk/mu;->d:J

    iput-object p3, p0, Lads_mobile_sdk/mu;->e:Lads_mobile_sdk/ou;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/mu;

    iget-wide v0, p0, Lads_mobile_sdk/mu;->d:J

    iget-object v2, p0, Lads_mobile_sdk/mu;->e:Lads_mobile_sdk/ou;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/mu;-><init>(JLads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/mu;

    iget-wide v0, p0, Lads_mobile_sdk/mu;->d:J

    iget-object v2, p0, Lads_mobile_sdk/mu;->e:Lads_mobile_sdk/ou;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/mu;-><init>(JLads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/mu;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 180
    iget v1, p0, Lads_mobile_sdk/mu;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    if-eq v1, v3, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lads_mobile_sdk/mu;->b:Lads_mobile_sdk/ou;

    iget-object v1, p0, Lads_mobile_sdk/mu;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_43

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_31

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    iget-wide v5, p0, Lads_mobile_sdk/mu;->d:J

    iput v3, p0, Lads_mobile_sdk/mu;->c:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_31

    goto :goto_41

    .line 182
    :cond_31
    :goto_31
    iget-object p1, p0, Lads_mobile_sdk/mu;->e:Lads_mobile_sdk/ou;

    .line 183
    iget-object v1, p1, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 184
    iput-object v1, p0, Lads_mobile_sdk/mu;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/mu;->b:Lads_mobile_sdk/ou;

    iput v2, p0, Lads_mobile_sdk/mu;->c:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_42

    :goto_41
    return-object v0

    :cond_42
    move-object v0, p1

    .line 185
    :goto_43
    :try_start_43
    invoke-virtual {v0}, Lads_mobile_sdk/ou;->g()Lads_mobile_sdk/iu;

    move-result-object p1

    .line 186
    iput-object p1, v0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 187
    iput-object v4, v0, Lads_mobile_sdk/ou;->k:Lkotlinx/coroutines/Job;

    .line 188
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_51

    .line 316
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_51
    move-exception p1

    .line 317
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
