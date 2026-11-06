###### Class ads_mobile_sdk.yf3 (ads_mobile_sdk.yf3)
.class public final Lads_mobile_sdk/yf3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/g83;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:J

.field public final d:Lkotlinx/coroutines/sync/Mutex;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lads_mobile_sdk/nq0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;)V
    .registers 6

    .line 2
    const-string v0, "rootTraceCreator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lads_mobile_sdk/yf3;->a:Lads_mobile_sdk/g83;

    .line 35
    iput-object p3, p0, Lads_mobile_sdk/yf3;->b:Lads_mobile_sdk/tx;

    .line 39
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->I0()I

    move-result p2

    .line 40
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->J0()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/yf3;->c:J

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-static {v0, p1, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/yf3;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yf3;->e:Ljava/util/ArrayList;

    .line 54
    new-instance p3, Lads_mobile_sdk/nq0;

    invoke-direct {p3, p2, p1}, Lads_mobile_sdk/nq0;-><init>(ILjava/util/ArrayList;)V

    iput-object p3, p0, Lads_mobile_sdk/yf3;->f:Lads_mobile_sdk/nq0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p5

    .line 1
    instance-of v1, v0, Lads_mobile_sdk/uf3;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/uf3;

    iget v2, v1, Lads_mobile_sdk/uf3;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/uf3;->i:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lads_mobile_sdk/uf3;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/uf3;-><init>(Lads_mobile_sdk/yf3;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object v0, v1, Lads_mobile_sdk/uf3;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 90
    iget v3, v1, Lads_mobile_sdk/uf3;->i:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_44

    if-ne v3, v4, :cond_3c

    iget-object p1, v1, Lads_mobile_sdk/uf3;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v1, Lads_mobile_sdk/uf3;->e:Ljava/lang/String;

    iget-object v2, v1, Lads_mobile_sdk/uf3;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v3, v1, Lads_mobile_sdk/uf3;->c:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    iget-object v4, v1, Lads_mobile_sdk/uf3;->b:Ljava/lang/String;

    iget-object v1, v1, Lads_mobile_sdk/uf3;->a:Lads_mobile_sdk/yf3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, p2

    move-object v11, v2

    move-object v10, v3

    move-object v9, v4

    goto :goto_68

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lads_mobile_sdk/yf3;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 193
    iput-object p0, v1, Lads_mobile_sdk/uf3;->a:Lads_mobile_sdk/yf3;

    iput-object p1, v1, Lads_mobile_sdk/uf3;->b:Ljava/lang/String;

    iput-object p2, v1, Lads_mobile_sdk/uf3;->c:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    move-object/from16 v3, p3

    iput-object v3, v1, Lads_mobile_sdk/uf3;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    move-object/from16 v6, p4

    iput-object v6, v1, Lads_mobile_sdk/uf3;->e:Ljava/lang/String;

    iput-object v0, v1, Lads_mobile_sdk/uf3;->f:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v1, Lads_mobile_sdk/uf3;->i:I

    invoke-interface {v0, v5, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_62

    return-object v2

    :cond_62
    move-object v1, p0

    move-object v9, p1

    move-object v10, p2

    move-object p1, v0

    move-object v11, v3

    move-object v12, v6

    .line 194
    :goto_68
    :try_start_68
    iget-object p2, v1, Lads_mobile_sdk/yf3;->f:Lads_mobile_sdk/nq0;

    .line 195
    new-instance v6, Lads_mobile_sdk/tf3;

    .line 196
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v1, Lads_mobile_sdk/yf3;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 198
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v7

    .line 199
    invoke-direct/range {v6 .. v12}, Lads_mobile_sdk/tf3;-><init>(JLjava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v1}, Lads_mobile_sdk/yf3;->a()V

    .line 209
    invoke-virtual {v1}, Lads_mobile_sdk/yf3;->b()V

    .line 210
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8b
    .catchall {:try_start_68 .. :try_end_8b} :catchall_8f

    .line 301
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_8f
    move-exception v0

    move-object p2, v0

    .line 302
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/tf3;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1095
    instance-of v0, p5, Lads_mobile_sdk/xf3;

    if-eqz v0, :cond_13

    move-object v0, p5

    check-cast v0, Lads_mobile_sdk/xf3;

    iget v1, v0, Lads_mobile_sdk/xf3;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xf3;->i:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xf3;

    invoke-direct {v0, p0, p5}, Lads_mobile_sdk/xf3;-><init>(Lads_mobile_sdk/yf3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p5, v0, Lads_mobile_sdk/xf3;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1164
    iget v2, v0, Lads_mobile_sdk/xf3;->i:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_40

    if-ne v2, v3, :cond_38

    iget p4, v0, Lads_mobile_sdk/xf3;->f:I

    iget-object p1, v0, Lads_mobile_sdk/xf3;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object p3, v0, Lads_mobile_sdk/xf3;->d:Lads_mobile_sdk/tf3;

    iget-object p2, v0, Lads_mobile_sdk/xf3;->c:Ljava/lang/String;

    iget-object v1, v0, Lads_mobile_sdk/xf3;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/xf3;->a:Lads_mobile_sdk/yf3;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p5, p1

    move-object p1, v1

    goto :goto_5b

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1169
    iget-object p5, p0, Lads_mobile_sdk/yf3;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 1276
    iput-object p0, v0, Lads_mobile_sdk/xf3;->a:Lads_mobile_sdk/yf3;

    iput-object p1, v0, Lads_mobile_sdk/xf3;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/xf3;->c:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/xf3;->d:Lads_mobile_sdk/tf3;

    iput-object p5, v0, Lads_mobile_sdk/xf3;->e:Lkotlinx/coroutines/sync/Mutex;

    iput p4, v0, Lads_mobile_sdk/xf3;->f:I

    iput v3, v0, Lads_mobile_sdk/xf3;->i:I

    invoke-interface {p5, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5a

    return-object v1

    :cond_5a
    move-object v0, p0

    :goto_5b
    if-nez p2, :cond_6a

    .line 1277
    :try_start_5d
    iget-object p2, v0, Lads_mobile_sdk/yf3;->f:Lads_mobile_sdk/nq0;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_68

    .line 1384
    invoke-interface {p5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_68
    move-exception p1

    goto :goto_82

    .line 1385
    :cond_6a
    :try_start_6a
    iget-object v1, p3, Lads_mobile_sdk/tf3;->e:Ljava/util/LinkedHashSet;

    .line 1386
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1387
    iget-object p2, p3, Lads_mobile_sdk/tf3;->e:Ljava/util/LinkedHashSet;

    .line 1388
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-lt p2, p4, :cond_7c

    .line 1390
    iget-object p2, v0, Lads_mobile_sdk/yf3;->f:Lads_mobile_sdk/nq0;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    :cond_7c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7e
    .catchall {:try_start_6a .. :try_end_7e} :catchall_68

    .line 1490
    invoke-interface {p5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 1491
    :goto_82
    invoke-interface {p5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 691
    instance-of v0, p3, Lads_mobile_sdk/wf3;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/wf3;

    iget v1, v0, Lads_mobile_sdk/wf3;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wf3;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/wf3;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/wf3;-><init>(Lads_mobile_sdk/yf3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/wf3;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 751
    iget v2, v0, Lads_mobile_sdk/wf3;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    if-ne v2, v3, :cond_34

    iget-object p1, v0, Lads_mobile_sdk/wf3;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/wf3;->c:Ljava/lang/String;

    iget-object v1, v0, Lads_mobile_sdk/wf3;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/wf3;->a:Lads_mobile_sdk/yf3;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v1

    goto :goto_53

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lads_mobile_sdk/yf3;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 862
    iput-object p0, v0, Lads_mobile_sdk/wf3;->a:Lads_mobile_sdk/yf3;

    iput-object p1, v0, Lads_mobile_sdk/wf3;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/wf3;->c:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/wf3;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/wf3;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_52

    return-object v1

    :cond_52
    move-object v0, p0

    :goto_53
    const/4 v1, 0x0

    if-nez p2, :cond_60

    .line 863
    :try_start_56
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5e

    .line 977
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_5e
    move-exception p1

    goto :goto_7a

    .line 978
    :cond_60
    :try_start_60
    iget-object v0, v0, Lads_mobile_sdk/yf3;->f:Lads_mobile_sdk/nq0;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/tf3;

    if-eqz p1, :cond_72

    .line 979
    iget-object p1, p1, Lads_mobile_sdk/tf3;->e:Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_72

    .line 980
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 981
    :cond_72
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_76
    .catchall {:try_start_60 .. :try_end_76} :catchall_5e

    .line 1094
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_7a
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 422
    instance-of v0, p2, Lads_mobile_sdk/vf3;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/vf3;

    iget v1, v0, Lads_mobile_sdk/vf3;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vf3;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/vf3;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/vf3;-><init>(Lads_mobile_sdk/yf3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/vf3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 480
    iget v2, v0, Lads_mobile_sdk/vf3;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p1, v0, Lads_mobile_sdk/vf3;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/vf3;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/vf3;->a:Lads_mobile_sdk/yf3;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_4f

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/yf3;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 582
    iput-object p0, v0, Lads_mobile_sdk/vf3;->a:Lads_mobile_sdk/yf3;

    iput-object p1, v0, Lads_mobile_sdk/vf3;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/vf3;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/vf3;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4e

    return-object v1

    :cond_4e
    move-object v0, p0

    .line 583
    :goto_4f
    :try_start_4f
    iget-object v0, v0, Lads_mobile_sdk/yf3;->f:Lads_mobile_sdk/nq0;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/tf3;
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_5b

    .line 689
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_5b
    move-exception p1

    .line 690
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a()V
    .registers 9

    .line 412
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/yf3;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 414
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 415
    iget-object v2, p0, Lads_mobile_sdk/yf3;->f:Lads_mobile_sdk/nq0;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 416
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/tf3;

    .line 418
    iget-wide v4, v3, Lads_mobile_sdk/tf3;->a:J

    .line 419
    iget-wide v6, p0, Lads_mobile_sdk/yf3;->c:J

    invoke-static {v4, v5, v6, v7}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v4

    if-lez v4, :cond_4b

    .line 420
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 421
    iget-object v4, p0, Lads_mobile_sdk/yf3;->e:Ljava/util/ArrayList;

    new-instance v5, Lkotlin/Pair;

    sget-object v6, Lads_mobile_sdk/aa3;->b:Lads_mobile_sdk/aa3;

    invoke-direct {v5, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_4b
    return-void
.end method

.method public final b()V
    .registers 12

    .line 125
    iget-object v0, p0, Lads_mobile_sdk/yf3;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 199
    :cond_9
    invoke-static {}, Lads_mobile_sdk/ea3;->v()Lads_mobile_sdk/da3;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const-string v2, "builder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lads_mobile_sdk/yf3;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "build(...)"

    if-eqz v4, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/aa3;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/tf3;

    .line 202
    new-instance v7, Lads_mobile_sdk/lo0;

    .line 203
    invoke-virtual {v0}, Lads_mobile_sdk/da3;->h()Ljava/util/List;

    move-result-object v8

    const-string v9, "getEvictionsList(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {v7, v8}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 205
    invoke-static {}, Lads_mobile_sdk/ba3;->v()Lads_mobile_sdk/z93;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    const-string v9, "value"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v8, v6}, Lads_mobile_sdk/z93;->a(Lads_mobile_sdk/aa3;)V

    .line 253
    iget-object v6, v4, Lads_mobile_sdk/tf3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v6, v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestId:Ljava/lang/String;

    const-string v10, ""

    if-nez v6, :cond_60

    move-object v6, v10

    .line 254
    :cond_60
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v8, v6}, Lads_mobile_sdk/z93;->b(Ljava/lang/String;)V

    .line 324
    iget-object v6, v4, Lads_mobile_sdk/tf3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v6, v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestAgent:Ljava/lang/String;

    if-nez v6, :cond_6d

    goto :goto_6e

    :cond_6d
    move-object v10, v6

    .line 325
    :goto_6e
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v8, v10}, Lads_mobile_sdk/z93;->a(Ljava/lang/String;)V

    .line 436
    iget-object v4, v4, Lads_mobile_sdk/tf3;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object v4

    .line 437
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v8, v4}, Lads_mobile_sdk/z93;->a(Lads_mobile_sdk/x11;)V

    .line 524
    invoke-virtual {v8}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/ba3;

    .line 525
    const-string v5, "<this>"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0, v4}, Lads_mobile_sdk/da3;->a(Lads_mobile_sdk/ba3;)V

    goto :goto_1d

    .line 584
    :cond_95
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/ea3;

    .line 585
    iget-object v1, p0, Lads_mobile_sdk/yf3;->a:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->z0:Lads_mobile_sdk/s11;

    .line 586
    new-instance v3, Lads_mobile_sdk/ks3;

    .line 587
    new-instance v4, Lads_mobile_sdk/n03;

    invoke-direct {v4}, Lads_mobile_sdk/n03;-><init>()V

    .line 588
    new-instance v5, Lads_mobile_sdk/tn1;

    invoke-direct {v5}, Lads_mobile_sdk/tn1;-><init>()V

    .line 589
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    .line 590
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 591
    invoke-direct {v3, v4, v5, v6, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 592
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 593
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 594
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v6, 0x0

    if-nez v5, :cond_11c

    .line 595
    invoke-static {v1, v2, v4, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 596
    :try_start_cc
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-object v0, v2, Lads_mobile_sdk/uj2;->u:Lads_mobile_sdk/ea3;

    .line 597
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d8
    .catchall {:try_start_cc .. :try_end_d8} :catchall_dc

    .line 685
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_134

    :catchall_dc
    move-exception v0

    .line 693
    :try_start_dd
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 697
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_115

    .line 699
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_f2

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_f2

    .line 705
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_f2

    :catchall_f0
    move-exception v0

    goto :goto_116

    .line 711
    :cond_f2
    :goto_f2
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_10d

    .line 712
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_105

    .line 713
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_ff

    throw v0

    .line 714
    :cond_ff
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 715
    :cond_105
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 716
    :cond_10d
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 717
    :cond_115
    throw v0
    :try_end_116
    .catchall {:try_start_dd .. :try_end_116} :catchall_f0

    .line 718
    :goto_116
    :try_start_116
    throw v0
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_117

    :catchall_117
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 752
    :cond_11c
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 753
    :try_start_125
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-object v0, v2, Lads_mobile_sdk/uj2;->u:Lads_mobile_sdk/ea3;

    .line 754
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_131
    .catchall {:try_start_125 .. :try_end_131} :catchall_13a

    .line 879
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 880
    :goto_134
    iget-object v0, p0, Lads_mobile_sdk/yf3;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_13a
    move-exception v0

    .line 1005
    :try_start_13b
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1009
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_173

    .line 1011
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_150

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_150

    .line 1017
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_150

    :catchall_14e
    move-exception v0

    goto :goto_174

    .line 1023
    :cond_150
    :goto_150
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_16b

    .line 1024
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_163

    .line 1025
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_15d

    throw v0

    .line 1026
    :cond_15d
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1027
    :cond_163
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1028
    :cond_16b
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1029
    :cond_173
    throw v0
    :try_end_174
    .catchall {:try_start_13b .. :try_end_174} :catchall_14e

    .line 1030
    :goto_174
    :try_start_174
    throw v0
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_175

    :catchall_175
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
