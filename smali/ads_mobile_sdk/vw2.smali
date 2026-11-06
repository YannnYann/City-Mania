###### Class ads_mobile_sdk.vw2 (ads_mobile_sdk.vw2)
.class public final Lads_mobile_sdk/vw2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/px2;

.field public final synthetic c:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/px2;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vw2;->b:Lads_mobile_sdk/px2;

    iput-object p2, p0, Lads_mobile_sdk/vw2;->c:Lkotlinx/coroutines/Job;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/vw2;

    iget-object v0, p0, Lads_mobile_sdk/vw2;->b:Lads_mobile_sdk/px2;

    iget-object v1, p0, Lads_mobile_sdk/vw2;->c:Lkotlinx/coroutines/Job;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/vw2;-><init>(Lads_mobile_sdk/px2;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/vw2;

    iget-object v0, p0, Lads_mobile_sdk/vw2;->b:Lads_mobile_sdk/px2;

    iget-object v1, p0, Lads_mobile_sdk/vw2;->c:Lkotlinx/coroutines/Job;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/vw2;-><init>(Lads_mobile_sdk/px2;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/vw2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 100
    iget v1, p0, Lads_mobile_sdk/vw2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-eq v1, v2, :cond_13

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lads_mobile_sdk/vw2;->b:Lads_mobile_sdk/px2;

    .line 102
    iget-object p1, p1, Lads_mobile_sdk/px2;->l:Lkotlinx/coroutines/flow/SharedFlow;

    .line 103
    new-instance v1, Lads_mobile_sdk/uw2;

    iget-object v3, p0, Lads_mobile_sdk/vw2;->c:Lkotlinx/coroutines/Job;

    invoke-direct {v1, v3}, Lads_mobile_sdk/uw2;-><init>(Lkotlinx/coroutines/Job;)V

    iput v2, p0, Lads_mobile_sdk/vw2;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2e

    return-object v0

    .line 104
    :cond_2e
    :goto_2e
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method
