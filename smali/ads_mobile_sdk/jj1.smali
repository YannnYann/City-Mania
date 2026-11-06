###### Class ads_mobile_sdk.jj1 (ads_mobile_sdk.jj1)
.class public final Lads_mobile_sdk/jj1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/kj1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kj1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/jj1;->b:Lads_mobile_sdk/kj1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/jj1;

    iget-object v0, p0, Lads_mobile_sdk/jj1;->b:Lads_mobile_sdk/kj1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/jj1;-><init>(Lads_mobile_sdk/kj1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/jj1;

    iget-object v0, p0, Lads_mobile_sdk/jj1;->b:Lads_mobile_sdk/kj1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/jj1;-><init>(Lads_mobile_sdk/kj1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/jj1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 47
    iget v1, p0, Lads_mobile_sdk/jj1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lads_mobile_sdk/jj1;->b:Lads_mobile_sdk/kj1;

    .line 50
    iget-object p1, p1, Lads_mobile_sdk/kj1;->f:Lads_mobile_sdk/bb2;

    .line 51
    iput v2, p0, Lads_mobile_sdk/jj1;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {p1, p0}, Lads_mobile_sdk/bb2;->b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2a

    return-object v0

    .line 53
    :cond_2a
    :goto_2a
    check-cast p1, Lads_mobile_sdk/v01;

    .line 71
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_33

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 72
    :cond_33
    const-string v0, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 73
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 74
    check-cast p1, Lads_mobile_sdk/ec3;

    .line 77
    iget-object p1, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    .line 78
    iget-object v0, p1, Lads_mobile_sdk/ac3;->d:Lcom/google/gson/JsonObject;

    if-nez v0, :cond_4e

    .line 79
    new-instance p1, Lads_mobile_sdk/m01;

    const-string v0, "Raw JSON for cache is missing"

    .line 80
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 81
    invoke-direct {p1, v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1

    .line 82
    :cond_4e
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
