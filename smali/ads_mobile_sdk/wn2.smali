###### Class ads_mobile_sdk.wn2 (ads_mobile_sdk.wn2)
.class public final Lads_mobile_sdk/wn2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ao2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/wn2;->b:Lads_mobile_sdk/ao2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/wn2;

    iget-object v0, p0, Lads_mobile_sdk/wn2;->b:Lads_mobile_sdk/ao2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/wn2;-><init>(Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/wn2;

    iget-object v0, p0, Lads_mobile_sdk/wn2;->b:Lads_mobile_sdk/ao2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/wn2;-><init>(Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/wn2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 309
    iget v1, p0, Lads_mobile_sdk/wn2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_86

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 310
    iget-object p1, p0, Lads_mobile_sdk/wn2;->b:Lads_mobile_sdk/ao2;

    .line 311
    iget-object p1, p1, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 312
    iget-object v3, p1, Lads_mobile_sdk/do2;->i:Lads_mobile_sdk/sn2;

    if-eqz v3, :cond_2b

    .line 313
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 314
    iput-object v1, p1, Lads_mobile_sdk/do2;->i:Lads_mobile_sdk/sn2;

    .line 315
    :cond_2b
    iget-object v3, p0, Lads_mobile_sdk/wn2;->b:Lads_mobile_sdk/ao2;

    .line 316
    iget-object v4, v3, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    if-nez v4, :cond_32

    goto :goto_40

    .line 317
    :cond_32
    iget-object v3, v3, Lads_mobile_sdk/ao2;->b:Lads_mobile_sdk/ao0;

    const/4 v5, 0x0

    .line 318
    invoke-virtual {v3, v4, v5}, Lads_mobile_sdk/ao0;->a(Landroid/view/View;Z)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 319
    iget-object v3, p0, Lads_mobile_sdk/wn2;->b:Lads_mobile_sdk/ao2;

    .line 320
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/do2;)V

    :cond_40
    :goto_40
    const/16 v3, 0x8

    .line 321
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_45
    iget-object p1, p0, Lads_mobile_sdk/wn2;->b:Lads_mobile_sdk/ao2;

    .line 324
    iget-object p1, p1, Lads_mobile_sdk/ao2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 325
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/fm0;

    if-eqz p1, :cond_86

    iput v2, p0, Lads_mobile_sdk/wn2;->a:I

    .line 326
    sget-object v2, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 464
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 465
    sget-object v3, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 466
    sget-object v3, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 467
    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 468
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 474
    new-instance v6, Lads_mobile_sdk/tl0;

    invoke-direct {v6, p1, v1}, Lads_mobile_sdk/tl0;-><init>(Lads_mobile_sdk/fm0;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 475
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p1, v0, :cond_86

    return-object v0

    .line 476
    :cond_86
    :goto_86
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
