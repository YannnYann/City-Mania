###### Class ads_mobile_sdk.jx2 (ads_mobile_sdk.jx2)
.class public final Lads_mobile_sdk/jx2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Lads_mobile_sdk/px2;

.field public final synthetic d:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic e:Lads_mobile_sdk/ei1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/jx2;->c:Lads_mobile_sdk/px2;

    iput-object p2, p0, Lads_mobile_sdk/jx2;->d:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lads_mobile_sdk/jx2;->e:Lads_mobile_sdk/ei1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/jx2;

    iget-object v0, p0, Lads_mobile_sdk/jx2;->c:Lads_mobile_sdk/px2;

    iget-object v1, p0, Lads_mobile_sdk/jx2;->d:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Lads_mobile_sdk/jx2;->e:Lads_mobile_sdk/ei1;

    invoke-direct {p1, v0, v1, v2, p3}, Lads_mobile_sdk/jx2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lads_mobile_sdk/jx2;->b:Ljava/lang/Throwable;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/jx2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 234
    iget v1, p0, Lads_mobile_sdk/jx2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/jx2;->b:Ljava/lang/Throwable;

    .line 235
    iget-object v1, p0, Lads_mobile_sdk/jx2;->c:Lads_mobile_sdk/px2;

    new-instance v3, Lads_mobile_sdk/j01;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v3, p1, v5, v5, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "error"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 237
    invoke-virtual {v3}, Lads_mobile_sdk/j01;->a()Lads_mobile_sdk/kk1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/kk1;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v1

    .line 238
    invoke-static {v3}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-direct {p1, v1, v3, v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 240
    iget-object v1, p0, Lads_mobile_sdk/jx2;->d:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lads_mobile_sdk/ix2;

    iget-object v4, p0, Lads_mobile_sdk/jx2;->e:Lads_mobile_sdk/ei1;

    invoke-direct {v3, p1, v4, v5}, Lads_mobile_sdk/ix2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lads_mobile_sdk/jx2;->a:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_50

    return-object v0

    .line 243
    :cond_50
    :goto_50
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
