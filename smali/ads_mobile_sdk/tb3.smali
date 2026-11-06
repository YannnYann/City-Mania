###### Class ads_mobile_sdk.tb3 (ads_mobile_sdk.tb3)
.class public final Lads_mobile_sdk/tb3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ub3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ub3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tb3;->b:Lads_mobile_sdk/ub3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/tb3;

    iget-object v0, p0, Lads_mobile_sdk/tb3;->b:Lads_mobile_sdk/ub3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/tb3;-><init>(Lads_mobile_sdk/ub3;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/tb3;

    iget-object v0, p0, Lads_mobile_sdk/tb3;->b:Lads_mobile_sdk/ub3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/tb3;-><init>(Lads_mobile_sdk/ub3;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/tb3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 25
    iget v1, p0, Lads_mobile_sdk/tb3;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    if-eq v1, v3, :cond_1c

    if-ne v1, v2, :cond_14

    :try_start_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_23

    :catchall_12
    move-exception p1

    goto :goto_3b

    .line 26
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    :cond_23
    :goto_23
    iget-object p1, p0, Lads_mobile_sdk/tb3;->b:Lads_mobile_sdk/ub3;

    .line 29
    iget-object p1, p1, Lads_mobile_sdk/ub3;->b:Lkotlinx/coroutines/channels/Channel;

    .line 30
    iput v3, p0, Lads_mobile_sdk/tb3;->a:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30

    goto :goto_3a

    .line 31
    :cond_30
    :goto_30
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 35
    :try_start_32
    iput v2, p0, Lads_mobile_sdk/tb3;->a:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_12

    if-ne p1, v0, :cond_23

    :goto_3a
    return-object v0

    .line 37
    :goto_3b
    iget-object v1, p0, Lads_mobile_sdk/tb3;->b:Lads_mobile_sdk/ub3;

    .line 38
    iget-object v1, v1, Lads_mobile_sdk/ub3;->a:Lads_mobile_sdk/ur3;

    .line 39
    check-cast v1, Lads_mobile_sdk/as3;

    const-string v4, "Exception caught executing serial event queue task"

    invoke-virtual {v1, v4, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method
