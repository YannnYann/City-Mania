###### Class ads_mobile_sdk.ro2 (ads_mobile_sdk.ro2)
.class public final Lads_mobile_sdk/ro2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/eu2;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lkotlinx/coroutines/sync/Mutex;

.field public g:J

.field public h:Lads_mobile_sdk/cu2;

.field public i:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/eu2;Lads_mobile_sdk/g83;)V
    .registers 7

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prewarmManagerProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/ro2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/ro2;->b:Lads_mobile_sdk/tx;

    .line 34
    iput-object p3, p0, Lads_mobile_sdk/ro2;->c:Lads_mobile_sdk/ex0;

    .line 35
    iput-object p4, p0, Lads_mobile_sdk/ro2;->d:Lads_mobile_sdk/eu2;

    .line 36
    iput-object p5, p0, Lads_mobile_sdk/ro2;->e:Lads_mobile_sdk/g83;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 38
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ro2;->f:Lkotlinx/coroutines/sync/Mutex;

    const-wide/16 p1, -0x1

    .line 40
    iput-wide p1, p0, Lads_mobile_sdk/ro2;->g:J

    return-void
.end method

.method public static final a(Lads_mobile_sdk/ro2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of v0, p1, Lads_mobile_sdk/oo2;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/oo2;

    iget v1, v0, Lads_mobile_sdk/oo2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/oo2;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/oo2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/oo2;-><init>(Lads_mobile_sdk/ro2;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/oo2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 100
    iget v2, v0, Lads_mobile_sdk/oo2;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/oo2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/oo2;->a:Lads_mobile_sdk/ro2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4d

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lads_mobile_sdk/ro2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 126
    iput-object p0, v0, Lads_mobile_sdk/oo2;->a:Lads_mobile_sdk/ro2;

    iput-object p1, v0, Lads_mobile_sdk/oo2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/oo2;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4d

    return-object v1

    .line 127
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v0, p0, Lads_mobile_sdk/ro2;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 129
    iget-wide v2, p0, Lads_mobile_sdk/ro2;->g:J

    sub-long/2addr v0, v2

    .line 130
    iget-object v2, p0, Lads_mobile_sdk/ro2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    const-string v3, "gads:play_prewarm_manager_connection_duration"

    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v5, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v6, 0xb4

    invoke-static {v6, v5}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    const-string v7, "key"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {v5, v6}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v2, v3, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/time/Duration;

    invoke-virtual {v2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    .line 133
    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_b0

    .line 135
    iget-object v0, p0, Lads_mobile_sdk/ro2;->h:Lads_mobile_sdk/cu2;

    if-eqz v0, :cond_ae

    check-cast v0, Lads_mobile_sdk/du2;

    .line 136
    iget-object v0, v0, Lads_mobile_sdk/du2;->a:Lads_mobile_sdk/iu2;

    .line 137
    iget-object v1, v0, Lads_mobile_sdk/iu2;->a:Lads_mobile_sdk/lc3;

    if-nez v1, :cond_94

    goto :goto_ae

    .line 140
    :cond_94
    sget-object v1, Lads_mobile_sdk/iu2;->c:Lads_mobile_sdk/pt1;

    const-string v2, "detach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, v0, Lads_mobile_sdk/iu2;->a:Lads_mobile_sdk/lc3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    new-instance v1, Lads_mobile_sdk/gc3;

    invoke-direct {v1, v0}, Lads_mobile_sdk/gc3;-><init>(Lads_mobile_sdk/lc3;)V

    invoke-virtual {v0, v1}, Lads_mobile_sdk/lc3;->b(Lads_mobile_sdk/x93;)V

    goto :goto_ae

    :catchall_ac
    move-exception p0

    goto :goto_b6

    .line 143
    :cond_ae
    :goto_ae
    iput-object v4, p0, Lads_mobile_sdk/ro2;->h:Lads_mobile_sdk/cu2;

    .line 145
    :cond_b0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b2
    .catchall {:try_start_4d .. :try_end_b2} :catchall_ac

    .line 166
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_b6
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
