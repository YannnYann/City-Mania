###### Class ads_mobile_sdk.oi2 (ads_mobile_sdk.oi2)
.class public final Lads_mobile_sdk/oi2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/vi2;

.field public final synthetic c:Lads_mobile_sdk/n01;

.field public final synthetic d:Lads_mobile_sdk/i2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vi2;Lads_mobile_sdk/n01;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/oi2;->b:Lads_mobile_sdk/vi2;

    iput-object p2, p0, Lads_mobile_sdk/oi2;->c:Lads_mobile_sdk/n01;

    iput-object p3, p0, Lads_mobile_sdk/oi2;->d:Lads_mobile_sdk/i2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/oi2;

    iget-object v0, p0, Lads_mobile_sdk/oi2;->b:Lads_mobile_sdk/vi2;

    iget-object v1, p0, Lads_mobile_sdk/oi2;->c:Lads_mobile_sdk/n01;

    iget-object v2, p0, Lads_mobile_sdk/oi2;->d:Lads_mobile_sdk/i2;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/oi2;-><init>(Lads_mobile_sdk/vi2;Lads_mobile_sdk/n01;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oi2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/oi2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/oi2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 230
    iget v1, p0, Lads_mobile_sdk/oi2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lads_mobile_sdk/oi2;->b:Lads_mobile_sdk/vi2;

    .line 232
    iget-object v3, p1, Lads_mobile_sdk/vi2;->e:Lads_mobile_sdk/v33;

    .line 233
    iget-object v4, p0, Lads_mobile_sdk/oi2;->c:Lads_mobile_sdk/n01;

    iget-object v5, p0, Lads_mobile_sdk/oi2;->d:Lads_mobile_sdk/i2;

    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v6

    iput v2, p0, Lads_mobile_sdk/oi2;->a:I

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lads_mobile_sdk/v33;->a(Lads_mobile_sdk/v01;Lads_mobile_sdk/i2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    .line 234
    :cond_32
    :goto_32
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
