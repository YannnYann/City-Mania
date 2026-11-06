###### Class ads_mobile_sdk.m23 (ads_mobile_sdk.m23)
.class public final Lads_mobile_sdk/m23;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/e33;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/e33;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/m23;->d:Lads_mobile_sdk/e33;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/m23;

    iget-object v1, p0, Lads_mobile_sdk/m23;->d:Lads_mobile_sdk/e33;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/m23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/m23;

    iget-object v1, p0, Lads_mobile_sdk/m23;->d:Lads_mobile_sdk/e33;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/m23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/m23;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 509
    iget v1, p0, Lads_mobile_sdk/m23;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    if-ne v1, v2, :cond_14

    iget-object v0, p0, Lads_mobile_sdk/m23;->b:Lads_mobile_sdk/e33;

    iget-object v1, p0, Lads_mobile_sdk/m23;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_31

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/m23;->d:Lads_mobile_sdk/e33;

    .line 510
    iget-object v1, p1, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 511
    iput-object v1, p0, Lads_mobile_sdk/m23;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/m23;->b:Lads_mobile_sdk/e33;

    iput v2, p0, Lads_mobile_sdk/m23;->c:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_30

    return-object v0

    :cond_30
    move-object v0, p1

    .line 512
    :goto_31
    :try_start_31
    iget-wide v4, v0, Lads_mobile_sdk/e33;->n:J

    .line 513
    invoke-static {v4, v5}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_3b

    .line 679
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_3b
    move-exception p1

    .line 680
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
