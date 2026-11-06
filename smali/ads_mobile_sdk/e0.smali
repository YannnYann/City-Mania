###### Class ads_mobile_sdk.e0 (ads_mobile_sdk.e0)
.class public final Lads_mobile_sdk/e0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:Lads_mobile_sdk/ox0;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(ZLads_mobile_sdk/ox0;JLkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-boolean p1, p0, Lads_mobile_sdk/e0;->b:Z

    iput-object p2, p0, Lads_mobile_sdk/e0;->c:Lads_mobile_sdk/ox0;

    iput-wide p3, p0, Lads_mobile_sdk/e0;->d:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/e0;

    iget-boolean v1, p0, Lads_mobile_sdk/e0;->b:Z

    iget-object v2, p0, Lads_mobile_sdk/e0;->c:Lads_mobile_sdk/ox0;

    iget-wide v3, p0, Lads_mobile_sdk/e0;->d:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/e0;-><init>(ZLads_mobile_sdk/ox0;JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/e0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/e0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/e0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 124
    iget v1, p0, Lads_mobile_sdk/e0;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    if-eq v1, v3, :cond_17

    if-ne v1, v2, :cond_f

    goto :goto_17

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3c

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    iget-boolean p1, p0, Lads_mobile_sdk/e0;->b:Z

    if-eqz p1, :cond_2f

    .line 126
    iget-object p1, p0, Lads_mobile_sdk/e0;->c:Lads_mobile_sdk/ox0;

    iget-wide v1, p0, Lads_mobile_sdk/e0;->d:J

    iput v3, p0, Lads_mobile_sdk/e0;->a:I

    invoke-interface {p1, v1, v2, p0}, Lads_mobile_sdk/ox0;->d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3c

    goto :goto_3b

    .line 128
    :cond_2f
    iget-object p1, p0, Lads_mobile_sdk/e0;->c:Lads_mobile_sdk/ox0;

    iget-wide v3, p0, Lads_mobile_sdk/e0;->d:J

    iput v2, p0, Lads_mobile_sdk/e0;->a:I

    invoke-interface {p1, v3, v4, p0}, Lads_mobile_sdk/ox0;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3c

    :goto_3b
    return-object v0

    .line 130
    :cond_3c
    :goto_3c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
