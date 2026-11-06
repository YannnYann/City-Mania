###### Class ads_mobile_sdk.wy1 (ads_mobile_sdk.wy1)
.class public final Lads_mobile_sdk/wy1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lads_mobile_sdk/bz1;

.field public final synthetic d:Lads_mobile_sdk/r31;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lads_mobile_sdk/bz1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/wy1;->b:Ljava/lang/String;

    iput-object p2, p0, Lads_mobile_sdk/wy1;->c:Lads_mobile_sdk/bz1;

    iput-object p3, p0, Lads_mobile_sdk/wy1;->d:Lads_mobile_sdk/r31;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/wy1;

    iget-object v0, p0, Lads_mobile_sdk/wy1;->b:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/wy1;->c:Lads_mobile_sdk/bz1;

    iget-object v2, p0, Lads_mobile_sdk/wy1;->d:Lads_mobile_sdk/r31;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/wy1;-><init>(Ljava/lang/String;Lads_mobile_sdk/bz1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/wy1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wy1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/wy1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 285
    iget v1, p0, Lads_mobile_sdk/wy1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_37

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 286
    iget-object p1, p0, Lads_mobile_sdk/wy1;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-static {p1, v1, v3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 287
    iget-object p1, p0, Lads_mobile_sdk/wy1;->c:Lads_mobile_sdk/bz1;

    .line 288
    iget-object p1, p1, Lads_mobile_sdk/bz1;->a:Lads_mobile_sdk/ix1;

    .line 289
    iget-object v1, p0, Lads_mobile_sdk/wy1;->d:Lads_mobile_sdk/r31;

    iget-object v3, p0, Lads_mobile_sdk/wy1;->b:Ljava/lang/String;

    iput v2, p0, Lads_mobile_sdk/wy1;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "resize"

    invoke-static {v1, v3, p1, p0}, Lads_mobile_sdk/ix1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_37

    return-object v0

    .line 290
    :cond_37
    :goto_37
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
