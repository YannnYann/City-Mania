###### Class ads_mobile_sdk.xw2 (ads_mobile_sdk.xw2)
.class public final Lads_mobile_sdk/xw2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/px2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xw2;->d:Lads_mobile_sdk/px2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/xw2;

    iget-object v0, p0, Lads_mobile_sdk/xw2;->d:Lads_mobile_sdk/px2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/xw2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/xw2;

    iget-object v0, p0, Lads_mobile_sdk/xw2;->d:Lads_mobile_sdk/px2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/xw2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xw2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 115
    iget v1, p0, Lads_mobile_sdk/xw2;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_30

    if-eq v1, v3, :cond_24

    if-ne v1, v2, :cond_1c

    iget-object v0, p0, Lads_mobile_sdk/xw2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/xw2;->a:Lads_mobile_sdk/rr3;

    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    goto/16 :goto_124

    :catchall_19
    move-exception p1

    goto/16 :goto_137

    .line 116
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-object v0, p0, Lads_mobile_sdk/xw2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/xw2;->a:Lads_mobile_sdk/rr3;

    :try_start_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    goto/16 :goto_90

    :catchall_2d
    move-exception p1

    goto/16 :goto_a3

    .line 117
    :cond_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lads_mobile_sdk/xw2;->d:Lads_mobile_sdk/px2;

    .line 119
    iget-object v1, p1, Lads_mobile_sdk/px2;->e:Lads_mobile_sdk/g83;

    .line 120
    sget-object v6, Lads_mobile_sdk/s11;->E:Lads_mobile_sdk/s11;

    .line 121
    iget-object p1, p1, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 123
    iget-object v7, p0, Lads_mobile_sdk/xw2;->d:Lads_mobile_sdk/px2;

    .line 124
    iget-object v8, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 125
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 126
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v10, ""

    if-nez v9, :cond_e2

    .line 127
    invoke-static {v1, v6, p1, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 128
    :try_start_55
    iget-object v1, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 129
    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 130
    iget-object v2, v7, Lads_mobile_sdk/px2;->f:Ljava/lang/String;

    .line 131
    iput-object v2, v1, Lads_mobile_sdk/n03;->a:Ljava/lang/String;

    .line 132
    iget-object v2, v7, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 133
    iput-object v2, v1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 134
    iget-object v2, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_6c

    .line 135
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    goto :goto_6d

    :catchall_6a
    move-exception v0

    goto :goto_a0

    :cond_6c
    move-object v2, v5

    :goto_6d
    if-nez v2, :cond_70

    goto :goto_71

    :cond_70
    move-object v10, v2

    .line 137
    :goto_71
    iput-object v10, v1, Lads_mobile_sdk/n03;->b:Ljava/lang/String;

    .line 138
    iget-object v2, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_7c

    .line 139
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v2

    goto :goto_7d

    :cond_7c
    move v2, v4

    .line 140
    :goto_7d
    iput-boolean v2, v1, Lads_mobile_sdk/n03;->f:Z

    .line 142
    iput-object p1, p0, Lads_mobile_sdk/xw2;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/xw2;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/xw2;->c:I

    .line 143
    invoke-virtual {v7, p0}, Lads_mobile_sdk/px2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_89
    .catchall {:try_start_55 .. :try_end_89} :catchall_6a

    if-ne v1, v0, :cond_8d

    goto/16 :goto_120

    :cond_8d
    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    .line 144
    :goto_90
    :try_start_90
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 365
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_9c

    .line 366
    move-object v2, p1

    check-cast v2, Lads_mobile_sdk/i01;

    .line 367
    invoke-static {v2, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_2d

    .line 368
    :cond_9c
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :goto_a0
    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 376
    :goto_a3
    :try_start_a3
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 380
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_db

    .line 382
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b8

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b8

    .line 388
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_b8

    :catchall_b6
    move-exception p1

    goto :goto_dc

    .line 394
    :cond_b8
    :goto_b8
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d3

    .line 395
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_cb

    .line 396
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_c5

    throw p1

    .line 397
    :cond_c5
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 398
    :cond_cb
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 399
    :cond_d3
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 400
    :cond_db
    throw p1
    :try_end_dc
    .catchall {:try_start_a3 .. :try_end_dc} :catchall_b6

    .line 401
    :goto_dc
    :try_start_dc
    throw p1
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 435
    :cond_e2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v6, p1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 436
    :try_start_ea
    iget-object v1, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 437
    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 438
    iget-object v3, v7, Lads_mobile_sdk/px2;->f:Ljava/lang/String;

    .line 439
    iput-object v3, v1, Lads_mobile_sdk/n03;->a:Ljava/lang/String;

    .line 440
    iget-object v3, v7, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 441
    iput-object v3, v1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 442
    iget-object v3, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v3, :cond_101

    .line 443
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    goto :goto_102

    :catchall_ff
    move-exception v0

    goto :goto_134

    :cond_101
    move-object v3, v5

    :goto_102
    if-nez v3, :cond_105

    goto :goto_106

    :cond_105
    move-object v10, v3

    .line 445
    :goto_106
    iput-object v10, v1, Lads_mobile_sdk/n03;->b:Ljava/lang/String;

    .line 446
    iget-object v3, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v3, :cond_111

    .line 447
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v3

    goto :goto_112

    :cond_111
    move v3, v4

    .line 448
    :goto_112
    iput-boolean v3, v1, Lads_mobile_sdk/n03;->f:Z

    .line 450
    iput-object p1, p0, Lads_mobile_sdk/xw2;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/xw2;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/xw2;->c:I

    .line 451
    invoke-virtual {v7, p0}, Lads_mobile_sdk/px2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_11e
    .catchall {:try_start_ea .. :try_end_11e} :catchall_ff

    if-ne v1, v0, :cond_121

    :goto_120
    return-object v0

    :cond_121
    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    .line 452
    :goto_124
    :try_start_124
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 710
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_130

    .line 711
    move-object v2, p1

    check-cast v2, Lads_mobile_sdk/i01;

    .line 712
    invoke-static {v2, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_130
    .catchall {:try_start_124 .. :try_end_130} :catchall_19

    .line 713
    :cond_130
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :goto_134
    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 721
    :goto_137
    :try_start_137
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 725
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_16f

    .line 727
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_14c

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_14c

    .line 733
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_14c

    :catchall_14a
    move-exception p1

    goto :goto_170

    .line 739
    :cond_14c
    :goto_14c
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_167

    .line 740
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_15f

    .line 741
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_159

    throw p1

    .line 742
    :cond_159
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 743
    :cond_15f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 744
    :cond_167
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 745
    :cond_16f
    throw p1
    :try_end_170
    .catchall {:try_start_137 .. :try_end_170} :catchall_14a

    .line 746
    :goto_170
    :try_start_170
    throw p1
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_171

    :catchall_171
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
