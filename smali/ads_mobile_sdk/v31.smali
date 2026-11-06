###### Class ads_mobile_sdk.v31 (ads_mobile_sdk.v31)
.class public final Lads_mobile_sdk/v31;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/g41;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/v31;->b:Lads_mobile_sdk/g41;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/v31;

    iget-object v0, p0, Lads_mobile_sdk/v31;->b:Lads_mobile_sdk/g41;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/v31;-><init>(Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/v31;

    iget-object v0, p0, Lads_mobile_sdk/v31;->b:Lads_mobile_sdk/g41;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/v31;-><init>(Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/v31;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 301
    iget v1, p0, Lads_mobile_sdk/v31;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 302
    iget-object p1, p0, Lads_mobile_sdk/v31;->b:Lads_mobile_sdk/g41;

    .line 303
    iget-object p1, p1, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    .line 304
    iget-object p1, p1, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    if-eqz p1, :cond_2b

    .line 305
    iput v2, p0, Lads_mobile_sdk/v31;->a:I

    invoke-interface {p1, p0}, Lads_mobile_sdk/ay0;->a(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    .line 306
    :cond_2b
    :goto_2b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
