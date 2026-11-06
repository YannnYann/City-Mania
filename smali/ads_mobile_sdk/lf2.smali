###### Class ads_mobile_sdk.lf2 (ads_mobile_sdk.lf2)
.class public final Lads_mobile_sdk/lf2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function3;

.field public final synthetic c:Lads_mobile_sdk/r31;

.field public final synthetic d:Lads_mobile_sdk/k9;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lads_mobile_sdk/r31;Lads_mobile_sdk/k9;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/lf2;->b:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lads_mobile_sdk/lf2;->c:Lads_mobile_sdk/r31;

    iput-object p3, p0, Lads_mobile_sdk/lf2;->d:Lads_mobile_sdk/k9;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/lf2;

    iget-object v1, p0, Lads_mobile_sdk/lf2;->b:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lads_mobile_sdk/lf2;->c:Lads_mobile_sdk/r31;

    iget-object v3, p0, Lads_mobile_sdk/lf2;->d:Lads_mobile_sdk/k9;

    invoke-direct {v0, v1, v2, v3, p1}, Lads_mobile_sdk/lf2;-><init>(Lkotlin/jvm/functions/Function3;Lads_mobile_sdk/r31;Lads_mobile_sdk/k9;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/lf2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lf2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/lf2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 279
    iget v1, p0, Lads_mobile_sdk/lf2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_29

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/lf2;->b:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lads_mobile_sdk/lf2;->c:Lads_mobile_sdk/r31;

    iget-object v3, p0, Lads_mobile_sdk/lf2;->d:Lads_mobile_sdk/k9;

    iput v2, p0, Lads_mobile_sdk/lf2;->a:I

    invoke-interface {p1, v1, v3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
