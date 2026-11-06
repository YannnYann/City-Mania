###### Class ads_mobile_sdk.yg3 (ads_mobile_sdk.yg3)
.class public final Lads_mobile_sdk/yg3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/eh3;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eh3;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yg3;->b:Lads_mobile_sdk/eh3;

    iput-object p2, p0, Lads_mobile_sdk/yg3;->c:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/yg3;

    iget-object v0, p0, Lads_mobile_sdk/yg3;->b:Lads_mobile_sdk/eh3;

    iget-object v1, p0, Lads_mobile_sdk/yg3;->c:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/yg3;-><init>(Lads_mobile_sdk/eh3;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/yg3;

    iget-object v0, p0, Lads_mobile_sdk/yg3;->b:Lads_mobile_sdk/eh3;

    iget-object v1, p0, Lads_mobile_sdk/yg3;->c:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/yg3;-><init>(Lads_mobile_sdk/eh3;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/yg3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 83
    iget v1, p0, Lads_mobile_sdk/yg3;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    if-eq v1, v4, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    goto :goto_1a

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_66

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_33

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lads_mobile_sdk/yg3;->b:Lads_mobile_sdk/eh3;

    iput v4, p0, Lads_mobile_sdk/yg3;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {p1, p0}, Lads_mobile_sdk/eh3;->a(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_33

    goto :goto_65

    .line 86
    :cond_33
    :goto_33
    check-cast p1, Lads_mobile_sdk/v01;

    .line 88
    instance-of v1, p1, Lads_mobile_sdk/q01;

    const/4 v4, 0x0

    if-eqz v1, :cond_4e

    .line 89
    iget-object v1, p0, Lads_mobile_sdk/yg3;->b:Lads_mobile_sdk/eh3;

    .line 90
    iget-object v1, v1, Lads_mobile_sdk/eh3;->b:Lkotlin/coroutines/CoroutineContext;

    .line 91
    new-instance v2, Lads_mobile_sdk/vg3;

    iget-object v5, p0, Lads_mobile_sdk/yg3;->c:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    invoke-direct {v2, p1, v5, v4}, Lads_mobile_sdk/vg3;-><init>(Lads_mobile_sdk/v01;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lads_mobile_sdk/yg3;->a:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_66

    goto :goto_65

    .line 94
    :cond_4e
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_66

    .line 95
    iget-object v1, p0, Lads_mobile_sdk/yg3;->b:Lads_mobile_sdk/eh3;

    .line 96
    iget-object v1, v1, Lads_mobile_sdk/eh3;->b:Lkotlin/coroutines/CoroutineContext;

    .line 97
    new-instance v3, Lads_mobile_sdk/xg3;

    iget-object v5, p0, Lads_mobile_sdk/yg3;->c:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    invoke-direct {v3, p1, v5, v4}, Lads_mobile_sdk/xg3;-><init>(Lads_mobile_sdk/v01;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lads_mobile_sdk/yg3;->a:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_66

    :goto_65
    return-object v0

    .line 104
    :cond_66
    :goto_66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
