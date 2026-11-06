###### Class ads_mobile_sdk.u60 (ads_mobile_sdk.u60)
.class public final Lads_mobile_sdk/u60;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/k70;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k70;JLkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/u60;->b:Lads_mobile_sdk/k70;

    iput-wide p2, p0, Lads_mobile_sdk/u60;->c:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/u60;

    iget-object v0, p0, Lads_mobile_sdk/u60;->b:Lads_mobile_sdk/k70;

    iget-wide v1, p0, Lads_mobile_sdk/u60;->c:J

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/u60;-><init>(Lads_mobile_sdk/k70;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/u60;

    iget-object v0, p0, Lads_mobile_sdk/u60;->b:Lads_mobile_sdk/k70;

    iget-wide v1, p0, Lads_mobile_sdk/u60;->c:J

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/u60;-><init>(Lads_mobile_sdk/k70;JLkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/u60;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 164
    iget v1, p0, Lads_mobile_sdk/u60;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lads_mobile_sdk/u60;->b:Lads_mobile_sdk/k70;

    .line 166
    iget-object v1, p1, Lads_mobile_sdk/k70;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 167
    iget-object v3, p1, Lads_mobile_sdk/k70;->o:Lkotlinx/coroutines/CompletableJob;

    .line 168
    iget-wide v4, p0, Lads_mobile_sdk/u60;->c:J

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    .line 169
    iput v2, p0, Lads_mobile_sdk/u60;->a:I

    .line 170
    invoke-virtual {p1, v1, v3, v4, p0}, Lads_mobile_sdk/k70;->a(Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CompletableJob;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2f

    return-object v0

    .line 171
    :cond_2f
    :goto_2f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
