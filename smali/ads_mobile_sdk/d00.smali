###### Class ads_mobile_sdk.d00 (ads_mobile_sdk.d00)
.class public final Lads_mobile_sdk/d00;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/o00;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/d00;->b:Lads_mobile_sdk/o00;

    iput-object p2, p0, Lads_mobile_sdk/d00;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/d00;

    iget-object v1, p0, Lads_mobile_sdk/d00;->b:Lads_mobile_sdk/o00;

    iget-object v2, p0, Lads_mobile_sdk/d00;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    invoke-direct {v0, v1, v2, p1}, Lads_mobile_sdk/d00;-><init>(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/d00;

    iget-object v1, p0, Lads_mobile_sdk/d00;->b:Lads_mobile_sdk/o00;

    iget-object v2, p0, Lads_mobile_sdk/d00;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    invoke-direct {v0, v1, v2, p1}, Lads_mobile_sdk/d00;-><init>(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/d00;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 619
    iget v1, p0, Lads_mobile_sdk/d00;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 620
    iget-object p1, p0, Lads_mobile_sdk/d00;->b:Lads_mobile_sdk/o00;

    iget-object v1, p0, Lads_mobile_sdk/d00;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput v2, p0, Lads_mobile_sdk/d00;->a:I

    invoke-static {p1, v1, p0}, Lads_mobile_sdk/o00;->a(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    .line 621
    :cond_27
    :goto_27
    check-cast p1, Lads_mobile_sdk/v01;

    .line 623
    instance-of v0, p1, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_34

    .line 624
    check-cast p1, Lads_mobile_sdk/q01;

    .line 625
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 626
    check-cast p1, Lcom/google/gson/JsonObject;

    return-object p1

    .line 628
    :cond_34
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_40

    .line 629
    check-cast p1, Lads_mobile_sdk/i01;

    const/4 v0, 0x0

    .line 630
    invoke-static {p1, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    const/4 p1, 0x0

    return-object p1

    .line 631
    :cond_40
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
