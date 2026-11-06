###### Class ads_mobile_sdk.n23 (ads_mobile_sdk.n23)
.class public final Lads_mobile_sdk/n23;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/e33;

.field public final synthetic c:Lads_mobile_sdk/dz2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/e33;Lads_mobile_sdk/dz2;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/n23;->b:Lads_mobile_sdk/e33;

    iput-object p2, p0, Lads_mobile_sdk/n23;->c:Lads_mobile_sdk/dz2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/n23;

    iget-object v0, p0, Lads_mobile_sdk/n23;->b:Lads_mobile_sdk/e33;

    iget-object v1, p0, Lads_mobile_sdk/n23;->c:Lads_mobile_sdk/dz2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/n23;-><init>(Lads_mobile_sdk/e33;Lads_mobile_sdk/dz2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/n23;

    iget-object v0, p0, Lads_mobile_sdk/n23;->b:Lads_mobile_sdk/e33;

    iget-object v1, p0, Lads_mobile_sdk/n23;->c:Lads_mobile_sdk/dz2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/n23;-><init>(Lads_mobile_sdk/e33;Lads_mobile_sdk/dz2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/n23;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 516
    iget v1, p0, Lads_mobile_sdk/n23;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3a

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 517
    iget-object p1, p0, Lads_mobile_sdk/n23;->b:Lads_mobile_sdk/e33;

    .line 518
    iget-object p1, p1, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    const/4 v1, 0x0

    if-nez p1, :cond_27

    .line 519
    const-string p1, "adLoader"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_27
    new-instance v3, Lads_mobile_sdk/j01;

    iget-object v4, p0, Lads_mobile_sdk/n23;->c:Lads_mobile_sdk/dz2;

    sget-object v5, Lads_mobile_sdk/kk1;->k:Lads_mobile_sdk/kk1;

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v1, v6}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    iput v2, p0, Lads_mobile_sdk/n23;->a:I

    invoke-virtual {p1, v3, v1, p0}, Lads_mobile_sdk/wy2;->a(Lads_mobile_sdk/v01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3a

    return-object v0

    .line 520
    :cond_3a
    :goto_3a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
