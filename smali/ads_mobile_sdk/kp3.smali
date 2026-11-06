###### Class ads_mobile_sdk.kp3 (ads_mobile_sdk.kp3)
.class public final Lads_mobile_sdk/kp3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/lp3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lp3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/kp3;->a:Lads_mobile_sdk/lp3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/kp3;

    iget-object v0, p0, Lads_mobile_sdk/kp3;->a:Lads_mobile_sdk/lp3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/kp3;-><init>(Lads_mobile_sdk/lp3;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/kp3;

    iget-object v0, p0, Lads_mobile_sdk/kp3;->a:Lads_mobile_sdk/lp3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/kp3;-><init>(Lads_mobile_sdk/lp3;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/kp3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/kp3;->a:Lads_mobile_sdk/lp3;

    .line 60
    iget-object p1, p1, Lads_mobile_sdk/lp3;->c:Lads_mobile_sdk/no3;

    .line 61
    check-cast p1, Lads_mobile_sdk/gp3;

    .line 62
    iget-object v0, p1, Lads_mobile_sdk/gp3;->b:Lads_mobile_sdk/i2;

    .line 63
    iget-object v0, v0, Lads_mobile_sdk/i2;->q0:Lads_mobile_sdk/h2;

    .line 64
    sget-object v1, Lads_mobile_sdk/h2;->g:Lads_mobile_sdk/h2;

    const-string v2, "block"

    const-string v3, "context"

    const-string v4, "<this>"

    const/4 v5, 0x0

    if-ne v0, v1, :cond_39

    .line 66
    iget-object v6, p1, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/vo3;

    invoke-direct {v0, p1, v5}, Lads_mobile_sdk/vo3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    .line 67
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 68
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, v0, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_5d

    .line 327
    :cond_39
    sget-object v1, Lads_mobile_sdk/h2;->f:Lads_mobile_sdk/h2;

    if-ne v0, v1, :cond_5d

    .line 332
    iget-object v6, p1, Lads_mobile_sdk/gp3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/wo3;

    invoke-direct {v0, p1, v5}, Lads_mobile_sdk/wo3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    .line 333
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 334
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, v0, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 593
    iput-object v0, p1, Lads_mobile_sdk/gp3;->g:Lkotlinx/coroutines/Job;

    .line 594
    :cond_5d
    :goto_5d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
