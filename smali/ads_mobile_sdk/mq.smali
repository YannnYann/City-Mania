###### Class ads_mobile_sdk.mq (ads_mobile_sdk.mq)
.class public final Lads_mobile_sdk/mq;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/nq;

.field public final synthetic c:Lads_mobile_sdk/h41;

.field public final synthetic d:Lads_mobile_sdk/ot0;

.field public final synthetic e:Lads_mobile_sdk/r31;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/nq;Lads_mobile_sdk/h41;Lads_mobile_sdk/ot0;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mq;->b:Lads_mobile_sdk/nq;

    iput-object p2, p0, Lads_mobile_sdk/mq;->c:Lads_mobile_sdk/h41;

    iput-object p3, p0, Lads_mobile_sdk/mq;->d:Lads_mobile_sdk/ot0;

    iput-object p4, p0, Lads_mobile_sdk/mq;->e:Lads_mobile_sdk/r31;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/mq;

    iget-object v1, p0, Lads_mobile_sdk/mq;->b:Lads_mobile_sdk/nq;

    iget-object v2, p0, Lads_mobile_sdk/mq;->c:Lads_mobile_sdk/h41;

    iget-object v3, p0, Lads_mobile_sdk/mq;->d:Lads_mobile_sdk/ot0;

    iget-object v4, p0, Lads_mobile_sdk/mq;->e:Lads_mobile_sdk/r31;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/mq;-><init>(Lads_mobile_sdk/nq;Lads_mobile_sdk/h41;Lads_mobile_sdk/ot0;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/mq;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mq;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/mq;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 131
    iget v1, p0, Lads_mobile_sdk/mq;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lads_mobile_sdk/mq;->b:Lads_mobile_sdk/nq;

    .line 133
    iget-object v1, p0, Lads_mobile_sdk/mq;->c:Lads_mobile_sdk/h41;

    .line 134
    iget-object v3, p1, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 135
    iget-object v4, p0, Lads_mobile_sdk/mq;->d:Lads_mobile_sdk/ot0;

    invoke-interface {v4}, Lads_mobile_sdk/ot0;->b()Lads_mobile_sdk/tk0;

    move-result-object v4

    .line 136
    iput v2, p0, Lads_mobile_sdk/mq;->a:I

    .line 137
    invoke-static {p1, v1, v3, v4, p0}, Lads_mobile_sdk/at0;->a(Lads_mobile_sdk/at0;Lads_mobile_sdk/h41;Lads_mobile_sdk/i2;Lads_mobile_sdk/tk0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2f

    return-object v0

    .line 138
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lads_mobile_sdk/mq;->e:Lads_mobile_sdk/r31;

    invoke-virtual {p1}, Lads_mobile_sdk/r31;->onPause()V

    .line 139
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
