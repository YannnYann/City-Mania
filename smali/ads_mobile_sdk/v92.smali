###### Class ads_mobile_sdk.v92 (ads_mobile_sdk.v92)
.class public final Lads_mobile_sdk/v92;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ca2;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ca2;JLkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/v92;->b:Lads_mobile_sdk/ca2;

    iput-wide p2, p0, Lads_mobile_sdk/v92;->c:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/v92;

    iget-object v0, p0, Lads_mobile_sdk/v92;->b:Lads_mobile_sdk/ca2;

    iget-wide v1, p0, Lads_mobile_sdk/v92;->c:J

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/v92;-><init>(Lads_mobile_sdk/ca2;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/v92;

    iget-object v0, p0, Lads_mobile_sdk/v92;->b:Lads_mobile_sdk/ca2;

    iget-wide v1, p0, Lads_mobile_sdk/v92;->c:J

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/v92;-><init>(Lads_mobile_sdk/ca2;JLkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/v92;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 220
    iget v1, p0, Lads_mobile_sdk/v92;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lads_mobile_sdk/v92;->b:Lads_mobile_sdk/ca2;

    move p1, v2

    iget-wide v2, p0, Lads_mobile_sdk/v92;->c:J

    iput p1, p0, Lads_mobile_sdk/v92;->a:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, p0

    .line 221
    invoke-virtual/range {v1 .. v7}, Lads_mobile_sdk/ca2;->a(JLandroid/net/Network;Landroid/net/NetworkCapabilities;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2c

    return-object v0

    .line 222
    :cond_2c
    :goto_2c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
