###### Class ads_mobile_sdk.am1 (ads_mobile_sdk.am1)
.class public final Lads_mobile_sdk/am1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/cm1;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/cm1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/am1;->b:Lads_mobile_sdk/cm1;

    iput-object p2, p0, Lads_mobile_sdk/am1;->c:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/am1;

    iget-object v0, p0, Lads_mobile_sdk/am1;->b:Lads_mobile_sdk/cm1;

    iget-object v1, p0, Lads_mobile_sdk/am1;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/am1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/am1;

    iget-object v0, p0, Lads_mobile_sdk/am1;->b:Lads_mobile_sdk/cm1;

    iget-object v1, p0, Lads_mobile_sdk/am1;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/am1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/am1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 127
    iget v1, p0, Lads_mobile_sdk/am1;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_39

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    iget-object p1, p0, Lads_mobile_sdk/am1;->b:Lads_mobile_sdk/cm1;

    .line 129
    iget-object p1, p1, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    .line 130
    iput v3, p0, Lads_mobile_sdk/am1;->a:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2e

    goto :goto_38

    .line 131
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lads_mobile_sdk/am1;->c:Lkotlin/jvm/functions/Function1;

    iput v2, p0, Lads_mobile_sdk/am1;->a:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    :goto_38
    return-object v0

    .line 132
    :cond_39
    :goto_39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
