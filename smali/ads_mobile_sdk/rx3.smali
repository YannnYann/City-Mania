###### Class ads_mobile_sdk.rx3 (ads_mobile_sdk.rx3)
.class public final Lads_mobile_sdk/rx3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/q41;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q41;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/rx3;->a:Lads_mobile_sdk/q41;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/rx3;

    iget-object v0, p0, Lads_mobile_sdk/rx3;->a:Lads_mobile_sdk/q41;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/rx3;-><init>(Lads_mobile_sdk/q41;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/rx3;

    iget-object v0, p0, Lads_mobile_sdk/rx3;->a:Lads_mobile_sdk/q41;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/rx3;-><init>(Lads_mobile_sdk/q41;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/rx3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 53
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lads_mobile_sdk/rx3;->a:Lads_mobile_sdk/q41;

    .line 54
    iget-object p1, v1, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    .line 55
    monitor-enter p1

    .line 56
    :try_start_b
    invoke-virtual {v1}, Lads_mobile_sdk/q41;->isMuted()Z

    move-result v4

    .line 57
    iget-object v2, v1, Lads_mobile_sdk/q41;->i:Lads_mobile_sdk/k41;

    .line 58
    sget-object v3, Lads_mobile_sdk/k41;->e:Lads_mobile_sdk/k41;

    iput-object v3, v1, Lads_mobile_sdk/q41;->i:Lads_mobile_sdk/k41;

    .line 59
    iget-object v7, v1, Lads_mobile_sdk/q41;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/l41;

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/l41;-><init>(Lads_mobile_sdk/q41;Lads_mobile_sdk/k41;Lads_mobile_sdk/k41;ZZLkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, v7

    const/4 v7, 0x0

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 60
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2b

    .line 61
    monitor-exit p1

    return-object v0

    :catchall_2b
    move-exception v0

    monitor-exit p1

    throw v0
.end method
