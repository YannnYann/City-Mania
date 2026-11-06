###### Class ads_mobile_sdk.z5 (ads_mobile_sdk.z5)
.class public final Lads_mobile_sdk/z5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:J

.field public final synthetic c:Lads_mobile_sdk/h6;


# direct methods
.method public constructor <init>(JLads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lads_mobile_sdk/z5;->b:J

    iput-object p3, p0, Lads_mobile_sdk/z5;->c:Lads_mobile_sdk/h6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/z5;

    iget-wide v0, p0, Lads_mobile_sdk/z5;->b:J

    iget-object v2, p0, Lads_mobile_sdk/z5;->c:Lads_mobile_sdk/h6;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/z5;-><init>(JLads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/z5;

    iget-wide v0, p0, Lads_mobile_sdk/z5;->b:J

    iget-object v2, p0, Lads_mobile_sdk/z5;->c:Lads_mobile_sdk/h6;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/z5;-><init>(JLads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/z5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 481
    iget v1, p0, Lads_mobile_sdk/z5;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_37

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 482
    iget-wide v4, p0, Lads_mobile_sdk/z5;->b:J

    iput v3, p0, Lads_mobile_sdk/z5;->a:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2c

    goto :goto_36

    .line 483
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lads_mobile_sdk/z5;->c:Lads_mobile_sdk/h6;

    iput v2, p0, Lads_mobile_sdk/z5;->a:I

    invoke-static {p1, p0}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_37

    :goto_36
    return-object v0

    .line 484
    :cond_37
    :goto_37
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
