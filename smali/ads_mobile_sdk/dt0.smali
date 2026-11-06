###### Class ads_mobile_sdk.dt0 (ads_mobile_sdk.dt0)
.class public final Lads_mobile_sdk/dt0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ht0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ht0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/dt0;->b:Lads_mobile_sdk/ht0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/dt0;

    iget-object v0, p0, Lads_mobile_sdk/dt0;->b:Lads_mobile_sdk/ht0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/dt0;-><init>(Lads_mobile_sdk/ht0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/dt0;

    iget-object v0, p0, Lads_mobile_sdk/dt0;->b:Lads_mobile_sdk/ht0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/dt0;-><init>(Lads_mobile_sdk/ht0;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/dt0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 144
    iget v1, p0, Lads_mobile_sdk/dt0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_31

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/dt0;->b:Lads_mobile_sdk/ht0;

    .line 145
    iget-object p1, p1, Lads_mobile_sdk/yx0;->J:Lkotlin/Lazy;

    .line 146
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/r31;

    .line 147
    iget-object v1, p0, Lads_mobile_sdk/dt0;->b:Lads_mobile_sdk/ht0;

    .line 148
    iget-object v1, v1, Lads_mobile_sdk/yy0;->g:Ljava/lang/String;

    .line 149
    iput v2, p0, Lads_mobile_sdk/dt0;->a:I

    invoke-virtual {p1, v1, p0}, Lads_mobile_sdk/r31;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_31

    return-object v0

    :cond_31
    :goto_31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
