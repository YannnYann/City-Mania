###### Class ads_mobile_sdk.g20 (ads_mobile_sdk.g20)
.class public final Lads_mobile_sdk/g20;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lads_mobile_sdk/g30;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/g20;

    iget-object v1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/g20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/g20;

    iget-object v1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/g20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/g20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 625
    iget v1, p0, Lads_mobile_sdk/g20;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_48

    if-eq v1, v5, :cond_3a

    if-eq v1, v4, :cond_2a

    if-ne v1, v3, :cond_22

    iget-object v0, p0, Lads_mobile_sdk/g20;->c:Lads_mobile_sdk/g30;

    iget-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/v01;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_12d

    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    iget-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v4, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_37

    goto/16 :goto_105

    :catchall_37
    move-exception p1

    goto/16 :goto_155

    .line 626
    :cond_3a
    iget-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v4, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_91

    :catchall_46
    move-exception p1

    goto :goto_a3

    .line 627
    :cond_48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 629
    iget-object p1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    .line 630
    iget-object v1, p1, Lads_mobile_sdk/g30;->o:Lads_mobile_sdk/g83;

    .line 631
    sget-object v7, Lads_mobile_sdk/s11;->b1:Lads_mobile_sdk/s11;

    .line 1025
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 1026
    new-instance v9, Lads_mobile_sdk/ks3;

    .line 1027
    new-instance v10, Lads_mobile_sdk/n03;

    invoke-direct {v10}, Lads_mobile_sdk/n03;-><init>()V

    .line 1028
    new-instance v11, Lads_mobile_sdk/tn1;

    invoke-direct {v11}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1029
    new-instance v12, Lads_mobile_sdk/m33;

    invoke-direct {v12}, Lads_mobile_sdk/m33;-><init>()V

    .line 1030
    new-instance v13, Lads_mobile_sdk/zb;

    invoke-direct {v13}, Lads_mobile_sdk/zb;-><init>()V

    .line 1031
    invoke-direct {v9, v10, v11, v12, v13}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1032
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 1033
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v10, :cond_e7

    .line 1034
    invoke-static {v1, v7, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 1035
    :try_start_7a
    iget-object p1, p1, Lads_mobile_sdk/g30;->q:Lads_mobile_sdk/cw2;

    .line 1036
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wt3;

    iput-object v1, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    iput-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    iput v5, p0, Lads_mobile_sdk/g20;->d:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/wt3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_a6

    if-ne p1, v0, :cond_90

    goto/16 :goto_12b

    :cond_90
    move-object v4, v1

    .line 1037
    :goto_91
    :try_start_91
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1436
    instance-of v5, p1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_9d

    .line 1437
    move-object v5, p1

    check-cast v5, Lads_mobile_sdk/i01;

    .line 1438
    invoke-static {v5, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_46

    .line 1439
    :cond_9d
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_a0
    move-object v2, p1

    goto/16 :goto_115

    :goto_a3
    move-object v0, v1

    move-object v1, v4

    goto :goto_a8

    :catchall_a6
    move-exception p1

    move-object v0, v1

    .line 1447
    :goto_a8
    :try_start_a8
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1451
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_e0

    .line 1453
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_bd

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_bd

    .line 1459
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_bd

    :catchall_bb
    move-exception p1

    goto :goto_e1

    .line 1465
    :cond_bd
    :goto_bd
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d8

    .line 1466
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d0

    .line 1467
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_ca

    throw p1

    .line 1468
    :cond_ca
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1469
    :cond_d0
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1470
    :cond_d8
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1471
    :cond_e0
    throw p1
    :try_end_e1
    .catchall {:try_start_a8 .. :try_end_e1} :catchall_bb

    .line 1472
    :goto_e1
    :try_start_e1
    throw p1
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e2

    :catchall_e2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 1506
    :cond_e7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v1, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1507
    :try_start_ef
    iget-object p1, p1, Lads_mobile_sdk/g30;->q:Lads_mobile_sdk/cw2;

    .line 1508
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wt3;

    iput-object v1, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    iput-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    iput v4, p0, Lads_mobile_sdk/g20;->d:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/wt3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_101
    .catchall {:try_start_ef .. :try_end_101} :catchall_158

    if-ne p1, v0, :cond_104

    goto :goto_12b

    :cond_104
    move-object v4, v1

    .line 1509
    :goto_105
    :try_start_105
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1945
    instance-of v5, p1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_111

    .line 1946
    move-object v5, p1

    check-cast v5, Lads_mobile_sdk/i01;

    .line 1947
    invoke-static {v5, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_111
    .catchall {:try_start_105 .. :try_end_111} :catchall_37

    .line 1948
    :cond_111
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_a0

    .line 1949
    :goto_115
    instance-of p1, v2, Lads_mobile_sdk/q01;

    if-eqz p1, :cond_154

    .line 1950
    iget-object p1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    .line 1951
    iget-object v1, p1, Lads_mobile_sdk/g30;->M:Lkotlinx/coroutines/sync/Mutex;

    .line 1952
    iput-object v2, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    iput-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/g20;->c:Lads_mobile_sdk/g30;

    iput v3, p0, Lads_mobile_sdk/g20;->d:I

    invoke-interface {v1, v6, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_12c

    :goto_12b
    return-object v0

    :cond_12c
    move-object v0, p1

    .line 1953
    :goto_12d
    :try_start_12d
    move-object p1, v2

    check-cast p1, Lads_mobile_sdk/q01;

    .line 1954
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1955
    check-cast p1, Ljava/lang/String;

    .line 1956
    iput-object p1, v0, Lads_mobile_sdk/g30;->N:Ljava/lang/String;

    .line 1957
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 1958
    iget-object p1, v0, Lads_mobile_sdk/g30;->n:Lads_mobile_sdk/tx;

    .line 1959
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1960
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1961
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    .line 1962
    iput-wide v3, v0, Lads_mobile_sdk/g30;->P:J

    .line 1963
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14b
    .catchall {:try_start_12d .. :try_end_14b} :catchall_14f

    .line 2433
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v2

    :catchall_14f
    move-exception p1

    .line 2434
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_154
    return-object v2

    :goto_155
    move-object v0, v1

    move-object v1, v4

    goto :goto_15a

    :catchall_158
    move-exception p1

    move-object v0, v1

    .line 2435
    :goto_15a
    :try_start_15a
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2439
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_192

    .line 2441
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_16f

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_16f

    .line 2447
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_16f

    :catchall_16d
    move-exception p1

    goto :goto_193

    .line 2453
    :cond_16f
    :goto_16f
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_18a

    .line 2454
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_182

    .line 2455
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_17c

    throw p1

    .line 2456
    :cond_17c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2457
    :cond_182
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2458
    :cond_18a
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2459
    :cond_192
    throw p1
    :try_end_193
    .catchall {:try_start_15a .. :try_end_193} :catchall_16d

    .line 2460
    :goto_193
    :try_start_193
    throw p1
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_194

    :catchall_194
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
