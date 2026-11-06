###### Class ads_mobile_sdk.zo2 (ads_mobile_sdk.zo2)
.class public final Lads_mobile_sdk/zo2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ap2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ap2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zo2;->b:Lads_mobile_sdk/ap2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/zo2;

    iget-object v0, p0, Lads_mobile_sdk/zo2;->b:Lads_mobile_sdk/ap2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/zo2;-><init>(Lads_mobile_sdk/ap2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/zo2;

    iget-object v0, p0, Lads_mobile_sdk/zo2;->b:Lads_mobile_sdk/ap2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/zo2;-><init>(Lads_mobile_sdk/ap2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/zo2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iget v1, p0, Lads_mobile_sdk/zo2;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lads_mobile_sdk/zo2;->b:Lads_mobile_sdk/ap2;

    .line 141
    iget-object p1, p1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    .line 142
    iget-wide v4, p1, Lads_mobile_sdk/i2;->C0:J

    .line 143
    iput v3, p0, Lads_mobile_sdk/zo2;->a:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30

    goto :goto_3a

    .line 144
    :cond_30
    :goto_30
    iget-object p1, p0, Lads_mobile_sdk/zo2;->b:Lads_mobile_sdk/ap2;

    iput v2, p0, Lads_mobile_sdk/zo2;->a:I

    invoke-static {p1, p0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ap2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3b

    :goto_3a
    return-object v0

    .line 145
    :cond_3b
    :goto_3b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
