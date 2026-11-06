###### Class ads_mobile_sdk.ed2 (ads_mobile_sdk.ed2)
.class public final Lads_mobile_sdk/ed2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/kd2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ed2;->b:Lads_mobile_sdk/kd2;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/ed2;

    iget-object v1, p0, Lads_mobile_sdk/ed2;->b:Lads_mobile_sdk/kd2;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ed2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/ed2;

    iget-object v1, p0, Lads_mobile_sdk/ed2;->b:Lads_mobile_sdk/kd2;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ed2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ed2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget v1, p0, Lads_mobile_sdk/ed2;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_43

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    sget-object p1, Lads_mobile_sdk/au;->a:Lads_mobile_sdk/bu;

    .line 74
    sget-object v1, Lads_mobile_sdk/bu;->d:Lads_mobile_sdk/bu;

    if-eq p1, v1, :cond_4a

    .line 78
    iput v3, p0, Lads_mobile_sdk/ed2;->a:I

    invoke-static {p0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30

    goto :goto_42

    .line 79
    :cond_30
    :goto_30
    iget-object p1, p0, Lads_mobile_sdk/ed2;->b:Lads_mobile_sdk/kd2;

    .line 80
    iget-object v1, p1, Lads_mobile_sdk/kd2;->d:Lkotlin/coroutines/CoroutineContext;

    .line 81
    new-instance v3, Lads_mobile_sdk/dd2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lads_mobile_sdk/dd2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lads_mobile_sdk/ed2;->a:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_43

    :goto_42
    return-object v0

    .line 82
    :cond_43
    :goto_43
    iget-object p1, p0, Lads_mobile_sdk/ed2;->b:Lads_mobile_sdk/kd2;

    .line 83
    iget-object p1, p1, Lads_mobile_sdk/kd2;->i:Lkotlinx/coroutines/CompletableJob;

    .line 84
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 86
    :cond_4a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
