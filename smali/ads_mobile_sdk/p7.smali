###### Class ads_mobile_sdk.p7 (ads_mobile_sdk.p7)
.class public final Lads_mobile_sdk/p7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:J

.field public final synthetic c:Lads_mobile_sdk/q7;


# direct methods
.method public constructor <init>(JLads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lads_mobile_sdk/p7;->b:J

    iput-object p3, p0, Lads_mobile_sdk/p7;->c:Lads_mobile_sdk/q7;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/p7;

    iget-wide v0, p0, Lads_mobile_sdk/p7;->b:J

    iget-object v2, p0, Lads_mobile_sdk/p7;->c:Lads_mobile_sdk/q7;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/p7;-><init>(JLads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/p7;

    iget-wide v0, p0, Lads_mobile_sdk/p7;->b:J

    iget-object v2, p0, Lads_mobile_sdk/p7;->c:Lads_mobile_sdk/q7;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/p7;-><init>(JLads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/p7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 64
    iget v1, p0, Lads_mobile_sdk/p7;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    if-eq v1, v4, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    goto :goto_22

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_38

    :cond_22
    :goto_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    :cond_25
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-wide v5, p0, Lads_mobile_sdk/p7;->b:J

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iput v4, p0, Lads_mobile_sdk/p7;->a:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_38

    goto :goto_58

    .line 67
    :cond_38
    :goto_38
    iget-object p1, p0, Lads_mobile_sdk/p7;->c:Lads_mobile_sdk/q7;

    .line 68
    iget-object p1, p1, Lads_mobile_sdk/q7;->b:Lads_mobile_sdk/ux;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 71
    iget-object p1, p0, Lads_mobile_sdk/p7;->c:Lads_mobile_sdk/q7;

    iput v3, p0, Lads_mobile_sdk/p7;->a:I

    .line 72
    invoke-virtual {p1, v5, v6, p0}, Lads_mobile_sdk/q7;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4e

    goto :goto_58

    .line 73
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lads_mobile_sdk/p7;->c:Lads_mobile_sdk/q7;

    iput v2, p0, Lads_mobile_sdk/p7;->a:I

    .line 74
    invoke-virtual {p1, p0}, Lads_mobile_sdk/q7;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    :goto_58
    return-object v0
.end method
