###### Class ads_mobile_sdk.qy1 (ads_mobile_sdk.qy1)
.class public final Lads_mobile_sdk/qy1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ry1;

.field public final synthetic c:Lads_mobile_sdk/f81;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ry1;Lads_mobile_sdk/f81;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qy1;->b:Lads_mobile_sdk/ry1;

    iput-object p2, p0, Lads_mobile_sdk/qy1;->c:Lads_mobile_sdk/f81;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/qy1;

    iget-object v0, p0, Lads_mobile_sdk/qy1;->b:Lads_mobile_sdk/ry1;

    iget-object v1, p0, Lads_mobile_sdk/qy1;->c:Lads_mobile_sdk/f81;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/qy1;-><init>(Lads_mobile_sdk/ry1;Lads_mobile_sdk/f81;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/qy1;

    iget-object v0, p0, Lads_mobile_sdk/qy1;->b:Lads_mobile_sdk/ry1;

    iget-object v1, p0, Lads_mobile_sdk/qy1;->c:Lads_mobile_sdk/f81;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/qy1;-><init>(Lads_mobile_sdk/ry1;Lads_mobile_sdk/f81;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/qy1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Lads_mobile_sdk/qy1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lads_mobile_sdk/qy1;->b:Lads_mobile_sdk/ry1;

    .line 63
    iget-object v3, p1, Lads_mobile_sdk/ry1;->c:Lads_mobile_sdk/e01;

    .line 64
    iget-object v4, p0, Lads_mobile_sdk/qy1;->c:Lads_mobile_sdk/f81;

    iput v2, p0, Lads_mobile_sdk/qy1;->a:I

    const/4 v6, 0x0

    const/16 v8, 0x1e

    const/4 v5, 0x0

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2e

    return-object v0

    .line 65
    :cond_2e
    :goto_2e
    check-cast p1, Lads_mobile_sdk/v01;

    .line 67
    instance-of v0, p1, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_43

    check-cast p1, Lads_mobile_sdk/q01;

    .line 68
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 69
    check-cast p1, Lads_mobile_sdk/h81;

    .line 70
    iget-object p1, p1, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz p1, :cond_47

    .line 71
    invoke-static {p1}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_43
    instance-of p1, p1, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_49

    :cond_47
    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_49
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
