###### Class ads_mobile_sdk.nx2 (ads_mobile_sdk.nx2)
.class public final Lads_mobile_sdk/nx2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ei1;

.field public final synthetic b:Lads_mobile_sdk/sx2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/nx2;->a:Lads_mobile_sdk/ei1;

    iput-object p2, p0, Lads_mobile_sdk/nx2;->b:Lads_mobile_sdk/sx2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/nx2;

    iget-object v0, p0, Lads_mobile_sdk/nx2;->a:Lads_mobile_sdk/ei1;

    iget-object v1, p0, Lads_mobile_sdk/nx2;->b:Lads_mobile_sdk/sx2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/nx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/nx2;

    iget-object v0, p0, Lads_mobile_sdk/nx2;->a:Lads_mobile_sdk/ei1;

    iget-object v1, p0, Lads_mobile_sdk/nx2;->b:Lads_mobile_sdk/sx2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/nx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/nx2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 248
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    sget-object p1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object p1, p0, Lads_mobile_sdk/nx2;->a:Lads_mobile_sdk/ei1;

    iget-object v0, p0, Lads_mobile_sdk/nx2;->b:Lads_mobile_sdk/sx2;

    .line 336
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 337
    sget-object v2, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 338
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 339
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 340
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 346
    new-instance v5, Lads_mobile_sdk/mx2;

    const/4 v1, 0x0

    invoke-direct {v5, p1, v0, v1}, Lads_mobile_sdk/mx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 347
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
