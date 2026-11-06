###### Class ads_mobile_sdk.sj (ads_mobile_sdk.sj)
.class public final Lads_mobile_sdk/sj;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ox0;


# instance fields
.field public A:Z

.field public B:J

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lads_mobile_sdk/tx;

.field public final g:Lads_mobile_sdk/e01;

.field public final h:Lads_mobile_sdk/ni;

.field public final i:Lads_mobile_sdk/vi;

.field public final j:Lads_mobile_sdk/g83;

.field public k:J

.field public l:J

.field public m:J

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:Z

.field public q:Lkotlinx/coroutines/Job;

.field public r:Lkotlinx/coroutines/Job;

.field public s:Lads_mobile_sdk/aj;

.field public final t:Lads_mobile_sdk/i11;

.field public u:Lads_mobile_sdk/e11;

.field public v:Ljava/lang/String;

.field public final w:Lkotlinx/coroutines/sync/Mutex;

.field public x:J

.field public final y:Lkotlinx/coroutines/channels/Channel;

.field public final z:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/e01;Lads_mobile_sdk/ni;Lads_mobile_sdk/vi;Lads_mobile_sdk/g83;)V
    .registers 11

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anrDataCollector"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anrLogsDataStore"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 58
    iput-object p1, p0, Lads_mobile_sdk/sj;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 59
    iput-object p2, p0, Lads_mobile_sdk/sj;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 60
    iput-object p3, p0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    .line 61
    iput-object p4, p0, Lads_mobile_sdk/sj;->f:Lads_mobile_sdk/tx;

    .line 62
    iput-object p5, p0, Lads_mobile_sdk/sj;->g:Lads_mobile_sdk/e01;

    .line 63
    iput-object p6, p0, Lads_mobile_sdk/sj;->h:Lads_mobile_sdk/ni;

    .line 64
    iput-object p7, p0, Lads_mobile_sdk/sj;->i:Lads_mobile_sdk/vi;

    .line 65
    iput-object p8, p0, Lads_mobile_sdk/sj;->j:Lads_mobile_sdk/g83;

    .line 74
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p2

    iput-wide p2, p0, Lads_mobile_sdk/sj;->k:J

    .line 75
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p2

    iput-wide p2, p0, Lads_mobile_sdk/sj;->l:J

    .line 76
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p2

    iput-wide p2, p0, Lads_mobile_sdk/sj;->m:J

    .line 78
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lads_mobile_sdk/sj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lads_mobile_sdk/sj;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    sget-object p2, Lads_mobile_sdk/aj;->a:Lads_mobile_sdk/aj;

    iput-object p2, p0, Lads_mobile_sdk/sj;->s:Lads_mobile_sdk/aj;

    .line 86
    invoke-static {}, Lads_mobile_sdk/l11;->v()Lads_mobile_sdk/i11;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/sj;->t:Lads_mobile_sdk/i11;

    .line 91
    invoke-static {p3, v1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/sj;->w:Lkotlinx/coroutines/sync/Mutex;

    .line 92
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p4

    iput-wide p4, p0, Lads_mobile_sdk/sj;->x:J

    const/4 p2, 0x7

    .line 94
    invoke-static {p3, v0, v0, p2, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/sj;->y:Lkotlinx/coroutines/channels/Channel;

    .line 96
    invoke-static {p3, v1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/sj;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 97
    iput-boolean v1, p0, Lads_mobile_sdk/sj;->A:Z

    .line 98
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/sj;->B:J

    return-void
.end method

.method public static a(Lads_mobile_sdk/sj;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 196
    instance-of v0, p3, Lads_mobile_sdk/dj;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/dj;

    iget v1, v0, Lads_mobile_sdk/dj;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/dj;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/dj;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/dj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/dj;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 455
    iget v2, v0, Lads_mobile_sdk/dj;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-wide p1, v0, Lads_mobile_sdk/dj;->c:J

    iget-object p0, v0, Lads_mobile_sdk/dj;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/dj;->a:Lads_mobile_sdk/sj;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v0

    goto :goto_4e

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 456
    iget-object p3, p0, Lads_mobile_sdk/sj;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 620
    iput-object p0, v0, Lads_mobile_sdk/dj;->a:Lads_mobile_sdk/sj;

    iput-object p3, v0, Lads_mobile_sdk/dj;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p1, v0, Lads_mobile_sdk/dj;->c:J

    iput v3, v0, Lads_mobile_sdk/dj;->f:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4e

    return-object v1

    .line 621
    :cond_4e
    :goto_4e
    :try_start_4e
    iget-wide v0, p0, Lads_mobile_sdk/sj;->B:J

    invoke-static {p1, p2, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-lez v0, :cond_81

    iget-boolean v0, p0, Lads_mobile_sdk/sj;->A:Z

    if-nez v0, :cond_5b

    goto :goto_81

    :cond_5b
    const/4 v0, 0x0

    .line 622
    iput-boolean v0, p0, Lads_mobile_sdk/sj;->A:Z

    .line 623
    iput-wide p1, p0, Lads_mobile_sdk/sj;->B:J

    .line 624
    iget-object p1, p0, Lads_mobile_sdk/sj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 625
    iget-object p1, p0, Lads_mobile_sdk/sj;->q:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_6f

    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_6f

    :catchall_6d
    move-exception p0

    goto :goto_87

    .line 626
    :cond_6f
    :goto_6f
    iget-object p0, p0, Lads_mobile_sdk/sj;->r:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_76

    invoke-static {p0, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 627
    :cond_76
    const-string p0, "ANR watchdog stopped"

    .line 628
    invoke-static {p0, v4}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7d
    .catchall {:try_start_4e .. :try_end_7d} :catchall_6d

    .line 792
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 793
    :cond_81
    :goto_81
    :try_start_81
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_6d

    .line 960
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_87
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final a(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    instance-of v0, p1, Lads_mobile_sdk/fj;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/fj;

    iget v1, v0, Lads_mobile_sdk/fj;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fj;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/fj;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/fj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/fj;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 182
    iget v2, v0, Lads_mobile_sdk/fj;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    if-ne v2, v3, :cond_2e

    iget-object p0, v0, Lads_mobile_sdk/fj;->a:Lads_mobile_sdk/sj;

    :cond_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_36

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_36
    :goto_36
    iget-object p1, p0, Lads_mobile_sdk/sj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 184
    iget-object v4, p0, Lads_mobile_sdk/sj;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/gj;

    const/4 p1, 0x0

    invoke-direct {v7, p0, p1}, Lads_mobile_sdk/gj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 193
    iget-wide v4, p0, Lads_mobile_sdk/sj;->m:J

    iput-object p0, v0, Lads_mobile_sdk/fj;->a:Lads_mobile_sdk/sj;

    iput v3, v0, Lads_mobile_sdk/fj;->d:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_36

    return-object v1

    .line 195
    :cond_5a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/sj;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 349
    instance-of v0, p3, Lads_mobile_sdk/ej;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/ej;

    iget v1, v0, Lads_mobile_sdk/ej;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ej;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ej;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/ej;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/ej;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 595
    iget v2, v0, Lads_mobile_sdk/ej;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_49

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/ej;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_7e

    :catchall_31
    move-exception p1

    goto :goto_86

    .line 596
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-wide p1, v0, Lads_mobile_sdk/ej;->c:J

    iget-object p0, v0, Lads_mobile_sdk/ej;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/ej;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/sj;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v2

    goto :goto_5d

    :cond_49
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 597
    iget-object p3, p0, Lads_mobile_sdk/sj;->z:Lkotlinx/coroutines/sync/Mutex;

    .line 763
    iput-object p0, v0, Lads_mobile_sdk/ej;->a:Ljava/lang/Object;

    iput-object p3, v0, Lads_mobile_sdk/ej;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p1, v0, Lads_mobile_sdk/ej;->c:J

    iput v4, v0, Lads_mobile_sdk/ej;->f:I

    invoke-interface {p3, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5d

    goto :goto_7a

    .line 764
    :cond_5d
    :goto_5d
    :try_start_5d
    iget-wide v6, p0, Lads_mobile_sdk/sj;->B:J

    invoke-static {p1, p2, v6, v7}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v2

    if-lez v2, :cond_8b

    iget-boolean v2, p0, Lads_mobile_sdk/sj;->A:Z

    if-eqz v2, :cond_6a

    goto :goto_8b

    .line 765
    :cond_6a
    iput-boolean v4, p0, Lads_mobile_sdk/sj;->A:Z

    .line 766
    iput-wide p1, p0, Lads_mobile_sdk/sj;->B:J

    .line 767
    iput-object p3, v0, Lads_mobile_sdk/ej;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/ej;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ej;->f:I

    .line 768
    invoke-static {p0, v0}, Lads_mobile_sdk/sj;->d(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_78
    .catchall {:try_start_5d .. :try_end_78} :catchall_88

    if-ne p0, v1, :cond_7b

    :goto_7a
    return-object v1

    :cond_7b
    move-object v8, p3

    move-object p3, p0

    move-object p0, v8

    .line 769
    :goto_7e
    :try_start_7e
    check-cast p3, Lads_mobile_sdk/v01;

    .line 775
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_31

    .line 940
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_86
    move-object p3, p0

    goto :goto_91

    :catchall_88
    move-exception p0

    move-object p1, p0

    goto :goto_91

    .line 941
    :cond_8b
    :goto_8b
    :try_start_8b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_88

    .line 1110
    invoke-interface {p3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_91
    invoke-interface {p3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    instance-of v0, p1, Lads_mobile_sdk/oj;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/oj;

    iget v1, v0, Lads_mobile_sdk/oj;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/oj;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/oj;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/oj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/oj;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 177
    iget v2, v0, Lads_mobile_sdk/oj;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_43

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    iget-object p0, v0, Lads_mobile_sdk/oj;->c:Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/oj;->b:Ljava/util/Map;

    iget-object v4, v0, Lads_mobile_sdk/oj;->a:Lads_mobile_sdk/sj;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    iget-object p0, v0, Lads_mobile_sdk/oj;->a:Lads_mobile_sdk/sj;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_53

    :cond_43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lads_mobile_sdk/sj;->i:Lads_mobile_sdk/vi;

    iput-object p0, v0, Lads_mobile_sdk/oj;->a:Lads_mobile_sdk/sj;

    iput v4, v0, Lads_mobile_sdk/oj;->f:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/vi;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_53

    goto :goto_88

    :cond_53
    :goto_53
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_89

    .line 345
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p0

    move-object p0, p1

    :cond_62
    :goto_62
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 346
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/e11;

    iput-object v4, v0, Lads_mobile_sdk/oj;->a:Lads_mobile_sdk/sj;

    iput-object v2, v0, Lads_mobile_sdk/oj;->b:Ljava/util/Map;

    iput-object p0, v0, Lads_mobile_sdk/oj;->c:Ljava/util/Iterator;

    iput v3, v0, Lads_mobile_sdk/oj;->f:I

    invoke-virtual {v4, v5, p1, v0}, Lads_mobile_sdk/sj;->a(Ljava/lang/String;Lads_mobile_sdk/e11;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_62

    :goto_88
    return-object v1

    .line 347
    :cond_89
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final c(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    instance-of v0, p1, Lads_mobile_sdk/pj;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/pj;

    iget v1, v0, Lads_mobile_sdk/pj;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/pj;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/pj;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/pj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/pj;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 199
    iget v2, v0, Lads_mobile_sdk/pj;->d:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_30

    if-eq v2, v5, :cond_42

    if-eq v2, v4, :cond_3c

    if-ne v2, v3, :cond_34

    iget-object p0, v0, Lads_mobile_sdk/pj;->a:Lads_mobile_sdk/sj;

    :cond_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_48

    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    iget-object p0, v0, Lads_mobile_sdk/pj;->a:Lads_mobile_sdk/sj;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8c

    :cond_42
    iget-object p0, v0, Lads_mobile_sdk/pj;->a:Lads_mobile_sdk/sj;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    .line 200
    :cond_48
    :goto_48
    iget-object p1, p0, Lads_mobile_sdk/sj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_97

    .line 201
    iput-object p0, v0, Lads_mobile_sdk/pj;->a:Lads_mobile_sdk/sj;

    iput v5, v0, Lads_mobile_sdk/pj;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/sj;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5b

    goto :goto_96

    :cond_5b
    :goto_5b
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 347
    new-instance p1, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-direct {p1, v2}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 348
    new-instance v2, Lads_mobile_sdk/qj;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lads_mobile_sdk/qj;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v6, v7, v2}, Lkotlinx/coroutines/selects/OnTimeoutKt;->onTimeout-8Mi8wO0(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V

    .line 349
    iget-object v2, p0, Lads_mobile_sdk/sj;->y:Lkotlinx/coroutines/channels/Channel;

    .line 350
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v2

    new-instance v6, Lads_mobile_sdk/rj;

    invoke-direct {v6, v8}, Lads_mobile_sdk/rj;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v2, v6}, Lkotlinx/coroutines/selects/SelectImplementation;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 497
    iput-object p0, v0, Lads_mobile_sdk/pj;->a:Lads_mobile_sdk/sj;

    iput v4, v0, Lads_mobile_sdk/pj;->d:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8c

    goto :goto_96

    .line 498
    :cond_8c
    :goto_8c
    iput-object p0, v0, Lads_mobile_sdk/pj;->a:Lads_mobile_sdk/sj;

    iput v3, v0, Lads_mobile_sdk/pj;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/sj;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_48

    :goto_96
    return-object v1

    .line 500
    :cond_97
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static d(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    instance-of v2, v1, Lads_mobile_sdk/jj;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/jj;

    iget v3, v2, Lads_mobile_sdk/jj;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/jj;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/jj;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/jj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/jj;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 92
    iget v4, v2, Lads_mobile_sdk/jj;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3d

    if-ne v4, v5, :cond_35

    iget-object v0, v2, Lads_mobile_sdk/jj;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v2, Lads_mobile_sdk/jj;->a:Lads_mobile_sdk/sj;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_1a5

    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    iget-object v1, v0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    const-string v4, "gads:system_health:anr_watchdog:enabled"

    const-string v7, "key"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v4, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_66

    .line 112
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "ANR watchdog is disabled"

    .line 113
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 114
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    .line 115
    :cond_66
    iget-object v1, v0, Lads_mobile_sdk/sj;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 116
    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v8, v9}, Lkotlin/random/Random$Default;->nextDouble(D)D

    move-result-wide v8

    iget-object v1, v0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    const-string v10, "gads:system_health:anr_watchdog:sample_rate"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v11, 0x3fa999999999999aL    # 0.05

    .line 137
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    sget-object v12, Lads_mobile_sdk/yr;->c:Lads_mobile_sdk/kr;

    invoke-virtual {v1, v10, v11, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpg-double v1, v8, v10

    if-gez v1, :cond_9b

    move v4, v5

    .line 138
    :cond_9b
    iput-boolean v4, v0, Lads_mobile_sdk/sj;->p:Z

    .line 141
    :cond_9d
    iget-boolean v1, v0, Lads_mobile_sdk/sj;->p:Z

    if-nez v1, :cond_ab

    .line 142
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "ANR watchdog is disabled due to sampling"

    .line 143
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 144
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    .line 145
    :cond_ab
    iget-object v1, v0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v9, 0x3e8

    .line 147
    const-string v10, "gads:system_health:early_anr_threshold_millis"

    invoke-static {v9, v8, v10, v7}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v11

    .line 148
    sget-object v12, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v1, v10, v11, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/time/Duration;

    invoke-virtual {v1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v13

    move-object v1, v10

    .line 149
    invoke-virtual {v4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v9

    invoke-static {v13, v14, v9, v10}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v9

    if-lez v9, :cond_1f2

    .line 150
    iget-object v9, v0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v10, 0x1194

    .line 151
    invoke-static {v10, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v13

    const-string v11, "gads:system_health:full_anr_threshold_millis"

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {v13, v14}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v13

    invoke-virtual {v9, v11, v13, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/time/Duration;

    invoke-virtual {v9}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v13

    move-object v15, v11

    .line 153
    invoke-virtual {v4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v10

    if-lez v10, :cond_1f2

    .line 154
    iget-object v10, v0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0x1f4

    .line 155
    invoke-static {v11, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v13

    const-string v9, "gads:system_health:anr_polling_millis"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-static {v13, v14}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v13

    invoke-virtual {v10, v9, v13, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/time/Duration;

    invoke-virtual {v10}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v13

    move-object v10, v12

    .line 157
    invoke-virtual {v4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v13, v14, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v4

    if-gtz v4, :cond_127

    goto/16 :goto_1f2

    .line 162
    :cond_127
    iget-object v4, v0, Lads_mobile_sdk/sj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 163
    const-string v0, "ANR watchdog is already running"

    .line 164
    invoke-static {v0, v6}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 168
    :cond_13c
    iget-object v4, v0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0x3e8

    .line 169
    invoke-static {v11, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v11

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-static {v11, v12}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v11

    invoke-virtual {v4, v1, v11, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/time/Duration;

    invoke-virtual {v1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v11

    .line 171
    iput-wide v11, v0, Lads_mobile_sdk/sj;->k:J

    .line 172
    iget-object v1, v0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1194

    .line 173
    invoke-static {v4, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v11

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {v11, v12}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    invoke-virtual {v1, v15, v4, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/time/Duration;

    invoke-virtual {v1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v11

    .line 175
    iput-wide v11, v0, Lads_mobile_sdk/sj;->l:J

    .line 176
    iget-object v1, v0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1f4

    .line 177
    invoke-static {v4, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v11

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {v11, v12}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    invoke-virtual {v1, v9, v4, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/time/Duration;

    invoke-virtual {v1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 179
    iput-wide v7, v0, Lads_mobile_sdk/sj;->m:J

    .line 181
    iget-object v1, v0, Lads_mobile_sdk/sj;->w:Lkotlinx/coroutines/sync/Mutex;

    .line 354
    iput-object v0, v2, Lads_mobile_sdk/jj;->a:Lads_mobile_sdk/sj;

    iput-object v1, v2, Lads_mobile_sdk/jj;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/jj;->e:I

    invoke-interface {v1, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1a5

    return-object v3

    .line 355
    :cond_1a5
    :goto_1a5
    :try_start_1a5
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, v0, Lads_mobile_sdk/sj;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 357
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    iput-wide v2, v0, Lads_mobile_sdk/sj;->x:J

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1ba
    .catchall {:try_start_1a5 .. :try_end_1ba} :catchall_1ed

    .line 534
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 535
    iget-object v1, v0, Lads_mobile_sdk/sj;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/kj;

    invoke-direct {v3, v0, v6}, Lads_mobile_sdk/kj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 536
    iget-object v1, v0, Lads_mobile_sdk/sj;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/lj;

    invoke-direct {v3, v0, v6}, Lads_mobile_sdk/lj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/sj;->q:Lkotlinx/coroutines/Job;

    .line 537
    iget-object v1, v0, Lads_mobile_sdk/sj;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/mj;

    invoke-direct {v3, v0, v6}, Lads_mobile_sdk/mj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/sj;->r:Lkotlinx/coroutines/Job;

    .line 539
    const-string v0, "ANR watchdog started"

    const/4 v1, 0x4

    .line 540
    invoke-static {v1, v0}, Lads_mobile_sdk/cl0;->a(ILjava/lang/String;)V

    .line 541
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catchall_1ed
    move-exception v0

    .line 711
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 712
    :cond_1f2
    :goto_1f2
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "Invalid ANR watchdog flags"

    .line 713
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 714
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lads_mobile_sdk/e11;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 961
    instance-of v0, p3, Lads_mobile_sdk/ij;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/ij;

    iget v1, v0, Lads_mobile_sdk/ij;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ij;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ij;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/ij;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/ij;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1170
    iget v2, v0, Lads_mobile_sdk/ij;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_42

    if-eq v2, v4, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p1, v0, Lads_mobile_sdk/ij;->a:Lads_mobile_sdk/sj;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_be

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    iget-object p1, v0, Lads_mobile_sdk/ij;->b:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/ij;->a:Lads_mobile_sdk/sj;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_90

    :cond_42
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1171
    const-string p3, "log"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    iget-object p3, p0, Lads_mobile_sdk/sj;->t:Lads_mobile_sdk/i11;

    .line 1367
    invoke-static {}, Lads_mobile_sdk/k11;->v()Lads_mobile_sdk/j11;

    move-result-object v2

    const-string v5, "newBuilder(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    const-string v5, "builder"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    const-string v5, "value"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v2, p2}, Lads_mobile_sdk/j11;->a(Lads_mobile_sdk/e11;)V

    .line 1540
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p2

    const-string v2, "build(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/k11;

    .line 1541
    invoke-virtual {p3, p2}, Lads_mobile_sdk/i11;->a(Lads_mobile_sdk/k11;)V

    .line 1545
    iget-object p2, p0, Lads_mobile_sdk/sj;->t:Lads_mobile_sdk/i11;

    invoke-virtual {p2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/l11;

    invoke-virtual {p2}, Lads_mobile_sdk/f;->c()[B

    move-result-object p2

    const-string p3, "toByteArray(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Lads_mobile_sdk/ij;->a:Lads_mobile_sdk/sj;

    iput-object p1, v0, Lads_mobile_sdk/ij;->b:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/ij;->e:I

    invoke-virtual {p0, p2, v0}, Lads_mobile_sdk/sj;->a([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8e

    goto :goto_bd

    :cond_8e
    move-object p2, p1

    move-object p1, p0

    .line 1546
    :goto_90
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_be

    .line 1547
    iget-object p3, p1, Lads_mobile_sdk/sj;->i:Lads_mobile_sdk/vi;

    iput-object p1, v0, Lads_mobile_sdk/ij;->a:Lads_mobile_sdk/sj;

    const/4 v2, 0x0

    iput-object v2, v0, Lads_mobile_sdk/ij;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/ij;->e:I

    .line 1548
    iget-object p3, p3, Lads_mobile_sdk/vi;->a:Lads_mobile_sdk/ks1;

    .line 1549
    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/datastore/core/DataStore;

    new-instance v3, Lads_mobile_sdk/ti;

    invoke-direct {v3, p2, v2}, Lads_mobile_sdk/ti;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p3, v3, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p3

    if-ne p2, p3, :cond_b9

    goto :goto_bb

    :cond_b9
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_bb
    if-ne p2, v1, :cond_be

    :goto_bd
    return-object v1

    .line 1550
    :cond_be
    :goto_be
    iget-object p1, p1, Lads_mobile_sdk/sj;->t:Lads_mobile_sdk/i11;

    invoke-virtual {p1}, Lads_mobile_sdk/i11;->h()V

    .line 1551
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1552
    instance-of v0, p2, Lads_mobile_sdk/nj;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/nj;

    iget v1, v0, Lads_mobile_sdk/nj;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/nj;->c:I

    :goto_12
    move-object v5, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/nj;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/nj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p2, v5, Lads_mobile_sdk/nj;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1783
    iget v1, v5, Lads_mobile_sdk/nj;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    if-ne v1, v2, :cond_2e

    :try_start_27
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_62

    :catch_2b
    move-exception v0

    move-object p1, v0

    goto :goto_6b

    .line 1784
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1787
    :try_start_39
    new-instance p2, Lads_mobile_sdk/e81;

    invoke-direct {p2}, Lads_mobile_sdk/e81;-><init>()V

    .line 1788
    iget-object v1, p0, Lads_mobile_sdk/sj;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 1789
    const-string v1, "application/x-protobuf"

    invoke-virtual {p2, v1, p1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    move-result-object p1

    .line 1790
    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    .line 1791
    iget-object v1, p0, Lads_mobile_sdk/sj;->g:Lads_mobile_sdk/e01;

    iput v2, v5, Lads_mobile_sdk/nj;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x1e

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_62

    return-object v0

    .line 1792
    :cond_62
    :goto_62
    check-cast p2, Lads_mobile_sdk/v01;

    .line 1800
    instance-of p1, p2, Lads_mobile_sdk/q01;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6a} :catch_2b

    return-object p1

    .line 1802
    :goto_6b
    sget-object p2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to ping RCS payload: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1803
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 348
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/sj;->b(Lads_mobile_sdk/sj;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/sj;->a(Lads_mobile_sdk/sj;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/sj;->d(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/bj;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/bj;

    iget v1, v0, Lads_mobile_sdk/bj;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/bj;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/bj;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/bj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/bj;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 222
    iget v2, v0, Lads_mobile_sdk/bj;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/bj;->b:Lads_mobile_sdk/sj;

    iget-object v0, v0, Lads_mobile_sdk/bj;->a:Lads_mobile_sdk/sj;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 223
    iget-object p1, p0, Lads_mobile_sdk/sj;->h:Lads_mobile_sdk/ni;

    iput-object p0, v0, Lads_mobile_sdk/bj;->a:Lads_mobile_sdk/sj;

    iput-object p0, v0, Lads_mobile_sdk/bj;->b:Lads_mobile_sdk/sj;

    iput v3, v0, Lads_mobile_sdk/bj;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ni;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_47

    return-object v1

    :cond_47
    move-object v0, p0

    move-object v1, v0

    .line 224
    :goto_49
    check-cast p1, Lads_mobile_sdk/e11;

    iput-object p1, v1, Lads_mobile_sdk/sj;->u:Lads_mobile_sdk/e11;

    .line 226
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/sj;->v:Ljava/lang/String;

    .line 227
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/cj;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/cj;

    iget v1, v0, Lads_mobile_sdk/cj;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cj;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/cj;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/cj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/cj;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget v2, v0, Lads_mobile_sdk/cj;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-wide v1, v0, Lads_mobile_sdk/cj;->c:J

    iget-object v5, v0, Lads_mobile_sdk/cj;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/cj;->a:Lads_mobile_sdk/sj;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_60

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 167
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lads_mobile_sdk/sj;->f:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 169
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-object p1, p0, Lads_mobile_sdk/sj;->w:Lkotlinx/coroutines/sync/Mutex;

    .line 314
    iput-object p0, v0, Lads_mobile_sdk/cj;->a:Lads_mobile_sdk/sj;

    iput-object p1, v0, Lads_mobile_sdk/cj;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v5, v0, Lads_mobile_sdk/cj;->c:J

    iput v3, v0, Lads_mobile_sdk/cj;->f:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5d

    return-object v1

    :cond_5d
    move-object v0, p0

    move-wide v1, v5

    move-object v5, p1

    .line 315
    :goto_60
    :try_start_60
    iget-wide v6, v0, Lads_mobile_sdk/sj;->x:J
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_9f

    .line 464
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 465
    invoke-static {v1, v2, v6, v7}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v1

    .line 467
    iget-object p1, v0, Lads_mobile_sdk/sj;->s:Lads_mobile_sdk/aj;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_86

    if-eq p1, v3, :cond_7f

    const/4 v1, 0x2

    if-ne p1, v1, :cond_79

    .line 470
    iget-wide v0, v0, Lads_mobile_sdk/sj;->m:J

    goto :goto_8c

    :cond_79
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 471
    :cond_7f
    iget-wide v3, v0, Lads_mobile_sdk/sj;->l:J

    invoke-static {v3, v4, v1, v2}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    goto :goto_8c

    .line 472
    :cond_86
    iget-wide v3, v0, Lads_mobile_sdk/sj;->k:J

    invoke-static {v3, v4, v1, v2}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    .line 476
    :goto_8c
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p1

    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1

    :catchall_9f
    move-exception p1

    .line 618
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/hj;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/hj;

    iget v3, v2, Lads_mobile_sdk/hj;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/hj;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/hj;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/hj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/hj;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 178
    iget v4, v2, Lads_mobile_sdk/hj;->g:I

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v4, :cond_85

    if-eq v4, v8, :cond_73

    if-eq v4, v7, :cond_6f

    if-eq v4, v6, :cond_5e

    if-eq v4, v9, :cond_4e

    if-ne v4, v5, :cond_46

    iget-object v3, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_3e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_43

    goto/16 :goto_1e4

    :catchall_43
    move-exception v0

    goto/16 :goto_1ea

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_4e
    iget-object v3, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_56
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5b

    goto/16 :goto_17e

    :catchall_5b
    move-exception v0

    goto/16 :goto_185

    .line 180
    :cond_5e
    iget-object v4, v2, Lads_mobile_sdk/hj;->c:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/e11;

    iget-object v6, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/sj;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_13f

    :cond_6f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_de

    :cond_73
    iget-wide v11, v2, Lads_mobile_sdk/hj;->d:J

    iget-object v4, v2, Lads_mobile_sdk/hj;->c:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v13, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/aj;

    iget-object v14, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/sj;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b0

    :cond_85
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    iget-object v13, v1, Lads_mobile_sdk/sj;->s:Lads_mobile_sdk/aj;

    .line 183
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v1, Lads_mobile_sdk/sj;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 185
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v11

    iget-object v4, v1, Lads_mobile_sdk/sj;->w:Lkotlinx/coroutines/sync/Mutex;

    .line 327
    iput-object v1, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/hj;->c:Ljava/lang/Object;

    iput-wide v11, v2, Lads_mobile_sdk/hj;->d:J

    iput v8, v2, Lads_mobile_sdk/hj;->g:I

    invoke-interface {v4, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_af

    goto/16 :goto_1e1

    :cond_af
    move-object v14, v1

    .line 328
    :goto_b0
    :try_start_b0
    iget-wide v5, v14, Lads_mobile_sdk/sj;->x:J
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_248

    .line 474
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 475
    invoke-static {v11, v12, v5, v6}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v4

    .line 477
    sget-object v6, Lads_mobile_sdk/aj;->a:Lads_mobile_sdk/aj;

    if-ne v13, v6, :cond_e1

    iget-wide v11, v14, Lads_mobile_sdk/sj;->k:J

    invoke-static {v4, v5, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v11

    if-lez v11, :cond_e1

    .line 478
    const-string v0, "Early ANR detected"

    .line 479
    invoke-static {v9, v0}, Lads_mobile_sdk/cl0;->a(ILjava/lang/String;)V

    .line 480
    sget-object v0, Lads_mobile_sdk/aj;->b:Lads_mobile_sdk/aj;

    iput-object v0, v14, Lads_mobile_sdk/sj;->s:Lads_mobile_sdk/aj;

    .line 481
    iput-object v10, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/hj;->c:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/hj;->g:I

    invoke-virtual {v14, v2}, Lads_mobile_sdk/sj;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_de

    goto/16 :goto_1e1

    .line 502
    :cond_de
    :goto_de
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 503
    :cond_e1
    sget-object v7, Lads_mobile_sdk/aj;->b:Lads_mobile_sdk/aj;

    if-ne v13, v7, :cond_fa

    iget-wide v11, v14, Lads_mobile_sdk/sj;->k:J

    invoke-static {v4, v5, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v11

    if-gtz v11, :cond_fa

    .line 504
    const-string v0, "Recover ANR"

    .line 505
    invoke-static {v9, v0}, Lads_mobile_sdk/cl0;->a(ILjava/lang/String;)V

    .line 506
    iput-object v6, v14, Lads_mobile_sdk/sj;->s:Lads_mobile_sdk/aj;

    .line 507
    iput-object v10, v14, Lads_mobile_sdk/sj;->u:Lads_mobile_sdk/e11;

    .line 508
    iput-object v10, v14, Lads_mobile_sdk/sj;->v:Ljava/lang/String;

    goto/16 :goto_245

    :cond_fa
    if-ne v13, v7, :cond_22e

    .line 509
    iget-wide v11, v14, Lads_mobile_sdk/sj;->l:J

    invoke-static {v4, v5, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v7

    if-lez v7, :cond_22e

    .line 510
    const-string v4, "Full ANR detected"

    .line 511
    invoke-static {v9, v4}, Lads_mobile_sdk/cl0;->a(ILjava/lang/String;)V

    .line 512
    sget-object v4, Lads_mobile_sdk/aj;->c:Lads_mobile_sdk/aj;

    iput-object v4, v14, Lads_mobile_sdk/sj;->s:Lads_mobile_sdk/aj;

    .line 513
    iget-object v6, v14, Lads_mobile_sdk/sj;->v:Ljava/lang/String;

    .line 514
    iget-object v4, v14, Lads_mobile_sdk/sj;->u:Lads_mobile_sdk/e11;

    if-eqz v6, :cond_245

    if-eqz v4, :cond_245

    .line 516
    iget-object v5, v14, Lads_mobile_sdk/sj;->i:Lads_mobile_sdk/vi;

    iput-object v14, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/hj;->c:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v2, Lads_mobile_sdk/hj;->g:I

    .line 517
    iget-object v0, v5, Lads_mobile_sdk/vi;->a:Lads_mobile_sdk/ks1;

    .line 518
    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataStore;

    new-instance v5, Lads_mobile_sdk/si;

    invoke-direct {v5, v6, v4, v10}, Lads_mobile_sdk/si;-><init>(Ljava/lang/String;Lads_mobile_sdk/e11;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v5, v2}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_138

    goto :goto_13a

    :cond_138
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_13a
    if-ne v0, v3, :cond_13e

    goto/16 :goto_1e1

    :cond_13e
    move-object v7, v14

    .line 519
    :goto_13f
    iget-object v0, v7, Lads_mobile_sdk/sj;->j:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->B1:Lads_mobile_sdk/s11;

    .line 654
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 655
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 656
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 657
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 658
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 659
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 660
    invoke-direct {v12, v13, v14, v15, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 661
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 662
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_1c9

    .line 663
    invoke-static {v0, v5, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v5

    .line 664
    :try_start_16c
    iput-object v5, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/hj;->c:Ljava/lang/Object;

    iput v9, v2, Lads_mobile_sdk/hj;->g:I

    invoke-virtual {v7, v6, v4, v2}, Lads_mobile_sdk/sj;->a(Ljava/lang/String;Lads_mobile_sdk/e11;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_178
    .catchall {:try_start_16c .. :try_end_178} :catchall_187

    if-ne v0, v3, :cond_17c

    goto/16 :goto_1e1

    :cond_17c
    move-object v2, v5

    move-object v3, v2

    .line 665
    :goto_17e
    :try_start_17e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_180
    .catchall {:try_start_17e .. :try_end_180} :catchall_5b

    .line 807
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_245

    :goto_185
    move-object v5, v2

    goto :goto_189

    :catchall_187
    move-exception v0

    move-object v3, v5

    .line 815
    :goto_189
    :try_start_189
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 819
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1c2

    .line 821
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_19f

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_19f

    .line 827
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_19f

    :catchall_19c
    move-exception v0

    move-object v2, v0

    goto :goto_1c3

    .line 833
    :cond_19f
    :goto_19f
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1ba

    .line 834
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1b2

    .line 835
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1ac

    throw v0

    .line 836
    :cond_1ac
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 837
    :cond_1b2
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 838
    :cond_1ba
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 839
    :cond_1c2
    throw v0
    :try_end_1c3
    .catchall {:try_start_189 .. :try_end_1c3} :catchall_19c

    .line 840
    :goto_1c3
    :try_start_1c3
    throw v2
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c4

    :catchall_1c4
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 874
    :cond_1c9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x1

    invoke-static {v5, v0, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 875
    :try_start_1d2
    iput-object v5, v2, Lads_mobile_sdk/hj;->a:Ljava/lang/Object;

    iput-object v5, v2, Lads_mobile_sdk/hj;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/hj;->c:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v2, Lads_mobile_sdk/hj;->g:I

    invoke-virtual {v7, v6, v4, v2}, Lads_mobile_sdk/sj;->a(Ljava/lang/String;Lads_mobile_sdk/e11;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1df
    .catchall {:try_start_1d2 .. :try_end_1df} :catchall_1ec

    if-ne v0, v3, :cond_1e2

    :goto_1e1
    return-object v3

    :cond_1e2
    move-object v2, v5

    move-object v3, v2

    .line 876
    :goto_1e4
    :try_start_1e4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1e6
    .catchall {:try_start_1e4 .. :try_end_1e6} :catchall_43

    .line 1055
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_245

    :goto_1ea
    move-object v5, v2

    goto :goto_1ee

    :catchall_1ec
    move-exception v0

    move-object v3, v5

    .line 1063
    :goto_1ee
    :try_start_1ee
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1067
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_227

    .line 1069
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_204

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_204

    .line 1075
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_204

    :catchall_201
    move-exception v0

    move-object v2, v0

    goto :goto_228

    .line 1081
    :cond_204
    :goto_204
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_21f

    .line 1082
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_217

    .line 1083
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_211

    throw v0

    .line 1084
    :cond_211
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1085
    :cond_217
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1086
    :cond_21f
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1087
    :cond_227
    throw v0
    :try_end_228
    .catchall {:try_start_1ee .. :try_end_228} :catchall_201

    .line 1088
    :goto_228
    :try_start_228
    throw v2
    :try_end_229
    .catchall {:try_start_228 .. :try_end_229} :catchall_229

    :catchall_229
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1089
    :cond_22e
    sget-object v0, Lads_mobile_sdk/aj;->c:Lads_mobile_sdk/aj;

    if-ne v13, v0, :cond_245

    iget-wide v2, v14, Lads_mobile_sdk/sj;->l:J

    invoke-static {v4, v5, v2, v3}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gtz v0, :cond_245

    .line 1090
    const-string v0, "Cooldown ANR"

    .line 1091
    invoke-static {v9, v0}, Lads_mobile_sdk/cl0;->a(ILjava/lang/String;)V

    .line 1092
    iput-object v6, v14, Lads_mobile_sdk/sj;->s:Lads_mobile_sdk/aj;

    .line 1093
    iput-object v10, v14, Lads_mobile_sdk/sj;->u:Lads_mobile_sdk/e11;

    .line 1094
    iput-object v10, v14, Lads_mobile_sdk/sj;->v:Ljava/lang/String;

    .line 1095
    :cond_245
    :goto_245
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_248
    move-exception v0

    .line 1215
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
