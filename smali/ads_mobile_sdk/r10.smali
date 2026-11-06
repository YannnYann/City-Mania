###### Class ads_mobile_sdk.r10 (ads_mobile_sdk.r10)
.class public final Lads_mobile_sdk/r10;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Lads_mobile_sdk/v01;

.field public b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Lads_mobile_sdk/g30;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/r10;->e:Lads_mobile_sdk/g30;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/r10;

    iget-object v1, p0, Lads_mobile_sdk/r10;->e:Lads_mobile_sdk/g30;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/r10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/r10;

    iget-object v1, p0, Lads_mobile_sdk/r10;->e:Lads_mobile_sdk/g30;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/r10;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/r10;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 579
    iget v1, p0, Lads_mobile_sdk/r10;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_25

    if-eq v1, v3, :cond_21

    if-ne v1, v2, :cond_19

    iget-object v0, p0, Lads_mobile_sdk/r10;->c:Lads_mobile_sdk/g30;

    iget-object v1, p0, Lads_mobile_sdk/r10;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, p0, Lads_mobile_sdk/r10;->a:Lads_mobile_sdk/v01;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_54

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_38

    :cond_25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 580
    iget-object p1, p0, Lads_mobile_sdk/r10;->e:Lads_mobile_sdk/g30;

    .line 581
    iget-object p1, p1, Lads_mobile_sdk/g30;->k:Lads_mobile_sdk/bm;

    .line 582
    iput v3, p0, Lads_mobile_sdk/r10;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    invoke-static {p1, p0}, Lads_mobile_sdk/bm;->a(Lads_mobile_sdk/bm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_38

    goto :goto_50

    .line 584
    :cond_38
    :goto_38
    check-cast p1, Lads_mobile_sdk/v01;

    .line 586
    instance-of v1, p1, Lads_mobile_sdk/q01;

    if-eqz v1, :cond_68

    .line 587
    iget-object v1, p0, Lads_mobile_sdk/r10;->e:Lads_mobile_sdk/g30;

    .line 588
    iget-object v3, v1, Lads_mobile_sdk/g30;->J:Lkotlinx/coroutines/sync/Mutex;

    .line 589
    iput-object p1, p0, Lads_mobile_sdk/r10;->a:Lads_mobile_sdk/v01;

    iput-object v3, p0, Lads_mobile_sdk/r10;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lads_mobile_sdk/r10;->c:Lads_mobile_sdk/g30;

    iput v2, p0, Lads_mobile_sdk/r10;->d:I

    invoke-interface {v3, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_51

    :goto_50
    return-object v0

    :cond_51
    move-object v2, p1

    move-object v0, v1

    move-object v1, v3

    .line 590
    :goto_54
    :try_start_54
    move-object p1, v2

    check-cast p1, Lads_mobile_sdk/q01;

    .line 591
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 592
    check-cast p1, Lads_mobile_sdk/fu;

    .line 593
    iput-object p1, v0, Lads_mobile_sdk/g30;->K:Lads_mobile_sdk/fu;

    .line 594
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_63

    .line 1038
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v2

    :catchall_63
    move-exception p1

    .line 1039
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_68
    return-object p1
.end method
