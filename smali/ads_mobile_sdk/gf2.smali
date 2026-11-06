###### Class ads_mobile_sdk.gf2 (ads_mobile_sdk.gf2)
.class public final Lads_mobile_sdk/gf2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lkotlinx/coroutines/Deferred;

.field public final synthetic c:Lads_mobile_sdk/vf2;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Deferred;Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gf2;->b:Lkotlinx/coroutines/Deferred;

    iput-object p2, p0, Lads_mobile_sdk/gf2;->c:Lads_mobile_sdk/vf2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/gf2;

    iget-object v0, p0, Lads_mobile_sdk/gf2;->b:Lkotlinx/coroutines/Deferred;

    iget-object v1, p0, Lads_mobile_sdk/gf2;->c:Lads_mobile_sdk/vf2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/gf2;-><init>(Lkotlinx/coroutines/Deferred;Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/gf2;

    iget-object v0, p0, Lads_mobile_sdk/gf2;->b:Lkotlinx/coroutines/Deferred;

    iget-object v1, p0, Lads_mobile_sdk/gf2;->c:Lads_mobile_sdk/vf2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/gf2;-><init>(Lkotlinx/coroutines/Deferred;Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/gf2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 132
    iget v1, p0, Lads_mobile_sdk/gf2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_25

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Lads_mobile_sdk/gf2;->b:Lkotlinx/coroutines/Deferred;

    iput v2, p0, Lads_mobile_sdk/gf2;->a:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    .line 134
    :cond_25
    :goto_25
    check-cast p1, Lads_mobile_sdk/r31;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object p1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-nez p1, :cond_32

    goto :goto_38

    .line 135
    :cond_32
    iget-object v0, p0, Lads_mobile_sdk/gf2;->c:Lads_mobile_sdk/vf2;

    .line 136
    iget-object v0, v0, Lads_mobile_sdk/vf2;->h:Lads_mobile_sdk/s93;

    .line 137
    iput-object v0, p1, Lads_mobile_sdk/g41;->u:Lads_mobile_sdk/s93;

    .line 138
    :goto_38
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
