###### Class ads_mobile_sdk.a43 (ads_mobile_sdk.a43)
.class public final Lads_mobile_sdk/a43;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lads_mobile_sdk/b43;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/b43;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a43;->c:Lads_mobile_sdk/b43;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/a43;

    iget-object v1, p0, Lads_mobile_sdk/a43;->c:Lads_mobile_sdk/b43;

    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/a43;-><init>(Lads_mobile_sdk/b43;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/a43;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/a43;

    iget-object v1, p0, Lads_mobile_sdk/a43;->c:Lads_mobile_sdk/b43;

    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/a43;-><init>(Lads_mobile_sdk/b43;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/a43;->b:Ljava/lang/Object;

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/a43;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 452
    iget v1, p0, Lads_mobile_sdk/a43;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v3, :cond_1e

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lads_mobile_sdk/a43;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    iget-object v1, p0, Lads_mobile_sdk/a43;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/a43;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 453
    :cond_2e
    :goto_2e
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 454
    iget-object p1, p0, Lads_mobile_sdk/a43;->c:Lads_mobile_sdk/b43;

    .line 820
    new-instance v4, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 821
    invoke-virtual {p1}, Lads_mobile_sdk/b43;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    new-instance v7, Lads_mobile_sdk/y33;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lads_mobile_sdk/y33;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v5, v6, v7}, Lkotlinx/coroutines/selects/OnTimeoutKt;->onTimeout(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V

    .line 822
    iget-object p1, p1, Lads_mobile_sdk/b43;->i:Lkotlinx/coroutines/channels/Channel;

    .line 823
    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object p1

    new-instance v5, Lads_mobile_sdk/z33;

    invoke-direct {v5, v8}, Lads_mobile_sdk/z33;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, p1, v5}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 1191
    iput-object v1, p0, Lads_mobile_sdk/a43;->b:Ljava/lang/Object;

    iput v3, p0, Lads_mobile_sdk/a43;->a:I

    invoke-virtual {v4, p0}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_69

    goto :goto_75

    .line 1192
    :cond_69
    :goto_69
    iget-object p1, p0, Lads_mobile_sdk/a43;->c:Lads_mobile_sdk/b43;

    iput-object v1, p0, Lads_mobile_sdk/a43;->b:Ljava/lang/Object;

    iput v2, p0, Lads_mobile_sdk/a43;->a:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/b43;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2e

    :goto_75
    return-object v0

    .line 1194
    :cond_76
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
