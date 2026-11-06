###### Class ads_mobile_sdk.oq2 (ads_mobile_sdk.oq2)
.class public final Lads_mobile_sdk/oq2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/rq2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rq2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/oq2;->b:Lads_mobile_sdk/rq2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/oq2;

    iget-object v0, p0, Lads_mobile_sdk/oq2;->b:Lads_mobile_sdk/rq2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/oq2;-><init>(Lads_mobile_sdk/rq2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/oq2;

    iget-object v0, p0, Lads_mobile_sdk/oq2;->b:Lads_mobile_sdk/rq2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/oq2;-><init>(Lads_mobile_sdk/rq2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/oq2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lads_mobile_sdk/oq2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/oq2;->b:Lads_mobile_sdk/rq2;

    .line 71
    iget-object p1, p1, Lads_mobile_sdk/rq2;->a:Lads_mobile_sdk/tq2;

    .line 72
    iput v2, p0, Lads_mobile_sdk/oq2;->a:I

    .line 73
    sget-object v1, Lads_mobile_sdk/s11;->t1:Lads_mobile_sdk/s11;

    .line 74
    check-cast p1, Lads_mobile_sdk/pt2;

    .line 75
    invoke-virtual {p1, v1, p0}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/s11;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2f

    goto :goto_31

    :cond_2f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_31
    if-ne p1, v0, :cond_34

    return-object v0

    .line 77
    :cond_34
    :goto_34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
