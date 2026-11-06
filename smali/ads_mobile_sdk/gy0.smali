###### Class ads_mobile_sdk.gy0 (ads_mobile_sdk.gy0)
.class public final Lads_mobile_sdk/gy0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/yy0;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/yy0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gy0;->d:Lads_mobile_sdk/yy0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/gy0;

    iget-object v0, p0, Lads_mobile_sdk/gy0;->d:Lads_mobile_sdk/yy0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/gy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/gy0;

    iget-object v0, p0, Lads_mobile_sdk/gy0;->d:Lads_mobile_sdk/yy0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/gy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/gy0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 579
    iget v1, p0, Lads_mobile_sdk/gy0;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_30

    if-eq v1, v4, :cond_2c

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lads_mobile_sdk/gy0;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_81

    :catchall_18
    move-exception p1

    goto/16 :goto_87

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 580
    :cond_23
    iget-object v1, p0, Lads_mobile_sdk/gy0;->b:Lads_mobile_sdk/yy0;

    iget-object v3, p0, Lads_mobile_sdk/gy0;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_6d

    :cond_2c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 581
    iget-object p1, p0, Lads_mobile_sdk/gy0;->d:Lads_mobile_sdk/yy0;

    .line 582
    iget-object p1, p1, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    .line 583
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 585
    const-string v6, "key"

    const/4 v7, 0x5

    const-string v8, "gads:ad_overlay:delay_page_close_timeout_ms"

    invoke-static {v7, v1, v8, v6}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 586
    sget-object v6, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p1, v8, v1, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 587
    iput v4, p0, Lads_mobile_sdk/gy0;->c:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5c

    goto :goto_7d

    .line 588
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lads_mobile_sdk/gy0;->d:Lads_mobile_sdk/yy0;

    .line 589
    iget-object p1, v1, Lads_mobile_sdk/yy0;->A:Lkotlinx/coroutines/sync/Mutex;

    .line 590
    iput-object p1, p0, Lads_mobile_sdk/gy0;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lads_mobile_sdk/gy0;->b:Lads_mobile_sdk/yy0;

    iput v3, p0, Lads_mobile_sdk/gy0;->c:I

    invoke-interface {p1, v5, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6d

    goto :goto_7d

    .line 591
    :cond_6d
    :goto_6d
    :try_start_6d
    iget-boolean v3, v1, Lads_mobile_sdk/yy0;->D:Z

    if-nez v3, :cond_80

    .line 592
    iput-object p1, p0, Lads_mobile_sdk/gy0;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v5, p0, Lads_mobile_sdk/gy0;->b:Lads_mobile_sdk/yy0;

    iput v2, p0, Lads_mobile_sdk/gy0;->c:I

    invoke-virtual {v1, p0}, Lads_mobile_sdk/yy0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_7e

    if-ne v1, v0, :cond_80

    :goto_7d
    return-object v0

    :catchall_7e
    move-exception v0

    goto :goto_8a

    :cond_80
    move-object v0, p1

    .line 594
    :goto_81
    :try_start_81
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_18

    .line 675
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_87
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 676
    :goto_8a
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
