###### Class ads_mobile_sdk.tj0 (ads_mobile_sdk.tj0)
.class public final Lads_mobile_sdk/tj0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ok0;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ok0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tj0;->b:Lads_mobile_sdk/ok0;

    iput-object p2, p0, Lads_mobile_sdk/tj0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/tj0;

    iget-object v0, p0, Lads_mobile_sdk/tj0;->b:Lads_mobile_sdk/ok0;

    iget-object v1, p0, Lads_mobile_sdk/tj0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/tj0;-><init>(Lads_mobile_sdk/ok0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/tj0;

    iget-object v0, p0, Lads_mobile_sdk/tj0;->b:Lads_mobile_sdk/ok0;

    iget-object v1, p0, Lads_mobile_sdk/tj0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/tj0;-><init>(Lads_mobile_sdk/ok0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/tj0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 299
    iget v1, p0, Lads_mobile_sdk/tj0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_31

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lads_mobile_sdk/tj0;->b:Lads_mobile_sdk/ok0;

    iget-object p1, p0, Lads_mobile_sdk/tj0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput v2, p0, Lads_mobile_sdk/tj0;->a:I

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v7}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;ZLjava/lang/String;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_31

    return-object v0

    :cond_31
    :goto_31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
