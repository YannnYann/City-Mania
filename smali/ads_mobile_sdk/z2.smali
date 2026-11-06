###### Class ads_mobile_sdk.z2 (ads_mobile_sdk.z2)
.class public final Lads_mobile_sdk/z2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lads_mobile_sdk/mq0;

.field public final synthetic e:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/z2;->b:Ljava/lang/String;

    iput-object p2, p0, Lads_mobile_sdk/z2;->c:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/z2;->d:Lads_mobile_sdk/mq0;

    iput-object p5, p0, Lads_mobile_sdk/z2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/z2;

    iget-object v1, p0, Lads_mobile_sdk/z2;->b:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/z2;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/z2;->d:Lads_mobile_sdk/mq0;

    iget-object v5, p0, Lads_mobile_sdk/z2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/z2;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/z2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/z2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lads_mobile_sdk/z2;->a:I

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

    .line 33
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    iget-object p1, p0, Lads_mobile_sdk/z2;->b:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/z2;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoking function ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] serially on listener ["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lads_mobile_sdk/z2;->d:Lads_mobile_sdk/mq0;

    check-cast p1, Lads_mobile_sdk/ai1;

    .line 77
    iget-object v1, p0, Lads_mobile_sdk/z2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;

    iput v2, p0, Lads_mobile_sdk/z2;->a:I

    invoke-interface {p1, v1, p0}, Lads_mobile_sdk/ai1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_50

    return-object v0

    .line 78
    :cond_50
    :goto_50
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
