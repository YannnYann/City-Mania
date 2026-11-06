###### Class ads_mobile_sdk.f14 (ads_mobile_sdk.f14)
.class public final Lads_mobile_sdk/f14;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/r14;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/r14;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/f14;->d:Lads_mobile_sdk/r14;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/f14;

    iget-object v0, p0, Lads_mobile_sdk/f14;->d:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/f14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/f14;

    iget-object v0, p0, Lads_mobile_sdk/f14;->d:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/f14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/f14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 111
    iget v1, p0, Lads_mobile_sdk/f14;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    if-ne v1, v2, :cond_14

    iget-object v0, p0, Lads_mobile_sdk/f14;->b:Lads_mobile_sdk/r14;

    iget-object v1, p0, Lads_mobile_sdk/f14;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_31

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lads_mobile_sdk/f14;->d:Lads_mobile_sdk/r14;

    .line 113
    iget-object v1, p1, Lads_mobile_sdk/r14;->o:Lkotlinx/coroutines/sync/Mutex;

    .line 114
    iput-object v1, p0, Lads_mobile_sdk/f14;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/f14;->b:Lads_mobile_sdk/r14;

    iput v2, p0, Lads_mobile_sdk/f14;->c:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_30

    return-object v0

    :cond_30
    move-object v0, p1

    .line 115
    :goto_31
    :try_start_31
    iget-object p1, v0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-eqz p1, :cond_b9

    .line 116
    iget-object p1, v0, Lads_mobile_sdk/r14;->r:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_45

    .line 117
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-ne p1, v2, :cond_45

    goto/16 :goto_b9

    :catchall_41
    move-exception v0

    move-object p1, v0

    goto/16 :goto_bf

    .line 118
    :cond_45
    iget-wide v4, v0, Lads_mobile_sdk/r14;->q:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_88

    .line 119
    iget-object p1, v0, Lads_mobile_sdk/r14;->k:Lads_mobile_sdk/tx;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 122
    iget-wide v6, v0, Lads_mobile_sdk/r14;->q:J

    sub-long/2addr v4, v6

    .line 123
    iget-object p1, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    const-string v2, "gads:webview_optimize_profile_throttle_duration"

    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v6, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v7, 0x1e

    invoke-static {v7, v6}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v6

    const-string v8, "key"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v6

    sget-object v7, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p1, v2, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 127
    invoke-static {v6, v7}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-gez p1, :cond_88

    goto :goto_b9

    .line 128
    :cond_88
    iget-object p1, v0, Lads_mobile_sdk/r14;->k:Lads_mobile_sdk/tx;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 131
    iput-wide v4, v0, Lads_mobile_sdk/r14;->q:J

    .line 132
    iget-object v6, v0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 133
    new-instance p1, Lads_mobile_sdk/e14;

    invoke-direct {p1, v0, v3}, Lads_mobile_sdk/e14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 134
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 135
    const-string v2, "<this>"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, p1, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 394
    iput-object p1, v0, Lads_mobile_sdk/r14;->r:Lkotlinx/coroutines/Job;

    .line 395
    :cond_b9
    :goto_b9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_bb
    .catchall {:try_start_31 .. :try_end_bb} :catchall_41

    .line 560
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 561
    :goto_bf
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
