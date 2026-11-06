###### Class ads_mobile_sdk.gx2 (ads_mobile_sdk.gx2)
.class public final Lads_mobile_sdk/gx2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public a:I

.field public final synthetic b:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic c:Lads_mobile_sdk/ei1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gx2;->b:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lads_mobile_sdk/gx2;->c:Lads_mobile_sdk/ei1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/gx2;

    iget-object p2, p0, Lads_mobile_sdk/gx2;->b:Lkotlin/coroutines/CoroutineContext;

    iget-object v0, p0, Lads_mobile_sdk/gx2;->c:Lads_mobile_sdk/ei1;

    invoke-direct {p1, p2, v0, p3}, Lads_mobile_sdk/gx2;-><init>(Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/gx2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 229
    iget v1, p0, Lads_mobile_sdk/gx2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 230
    iget-object p1, p0, Lads_mobile_sdk/gx2;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lads_mobile_sdk/fx2;

    iget-object v3, p0, Lads_mobile_sdk/gx2;->c:Lads_mobile_sdk/ei1;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lads_mobile_sdk/fx2;-><init>(Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lads_mobile_sdk/gx2;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    .line 233
    :cond_2d
    :goto_2d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
