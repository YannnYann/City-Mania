###### Class ads_mobile_sdk.fe1 (ads_mobile_sdk.fe1)
.class public final Lads_mobile_sdk/fe1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/if1;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/if1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/fe1;->d:Lads_mobile_sdk/if1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/fe1;

    iget-object v0, p0, Lads_mobile_sdk/fe1;->d:Lads_mobile_sdk/if1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/fe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/fe1;

    iget-object v0, p0, Lads_mobile_sdk/fe1;->d:Lads_mobile_sdk/if1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/fe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/fe1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 556
    iget v0, p0, Lads_mobile_sdk/fe1;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_28

    if-eq v0, v2, :cond_1f

    if-ne v0, v1, :cond_17

    iget-object v1, p0, Lads_mobile_sdk/fe1;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_11
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_60

    :catchall_15
    move-exception v0

    goto :goto_66

    .line 557
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lads_mobile_sdk/fe1;->b:Lads_mobile_sdk/if1;

    iget-object v2, p0, Lads_mobile_sdk/fe1;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v2

    goto :goto_3d

    :cond_28
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lads_mobile_sdk/fe1;->d:Lads_mobile_sdk/if1;

    .line 559
    iget-object v3, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 560
    iput-object v3, p0, Lads_mobile_sdk/fe1;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v0, p0, Lads_mobile_sdk/fe1;->b:Lads_mobile_sdk/if1;

    iput v2, p0, Lads_mobile_sdk/fe1;->c:I

    invoke-interface {v3, v13, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_3c

    goto :goto_5e

    :cond_3c
    move-object v14, v3

    .line 561
    :goto_3d
    :try_start_3d
    const-string v4, "{}"

    const-wide v2, 0x7fffffffffffffffL

    .line 562
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    .line 563
    iput-object v14, p0, Lads_mobile_sdk/fe1;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v13, p0, Lads_mobile_sdk/fe1;->b:Lads_mobile_sdk/if1;

    iput v1, p0, Lads_mobile_sdk/fe1;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x1e7

    move-object v10, p0

    invoke-static/range {v0 .. v11}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_68

    if-ne v0, v12, :cond_5f

    :goto_5e
    return-object v12

    :cond_5f
    move-object v1, v14

    .line 567
    :goto_60
    :try_start_60
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_15

    .line 807
    invoke-interface {v1, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_66
    move-object v14, v1

    goto :goto_69

    :catchall_68
    move-exception v0

    .line 808
    :goto_69
    invoke-interface {v14, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
