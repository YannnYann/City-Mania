###### Class ads_mobile_sdk.ww2 (ads_mobile_sdk.ww2)
.class public final Lads_mobile_sdk/ww2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/px2;

.field public final synthetic e:Lads_mobile_sdk/ei1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    iput-object p2, p0, Lads_mobile_sdk/ww2;->e:Lads_mobile_sdk/ei1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/ww2;

    iget-object v0, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    iget-object v1, p0, Lads_mobile_sdk/ww2;->e:Lads_mobile_sdk/ei1;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ww2;-><init>(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ww2;

    iget-object v0, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    iget-object v1, p0, Lads_mobile_sdk/ww2;->e:Lads_mobile_sdk/ei1;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ww2;-><init>(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ww2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lads_mobile_sdk/ww2;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_30

    if-eq v1, v3, :cond_24

    if-ne v1, v2, :cond_1c

    iget-object v0, p0, Lads_mobile_sdk/ww2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/ww2;->a:Lads_mobile_sdk/rr3;

    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    goto/16 :goto_135

    :catchall_19
    move-exception p1

    goto/16 :goto_140

    .line 82
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-object v0, p0, Lads_mobile_sdk/ww2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/ww2;->a:Lads_mobile_sdk/rr3;

    :try_start_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    goto/16 :goto_9e

    :catchall_2d
    move-exception p1

    goto/16 :goto_a8

    .line 83
    :cond_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    .line 85
    iget-object v1, p1, Lads_mobile_sdk/px2;->e:Lads_mobile_sdk/g83;

    .line 86
    sget-object v6, Lads_mobile_sdk/s11;->E:Lads_mobile_sdk/s11;

    .line 87
    iget-object p1, p1, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 89
    iget-object v7, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    .line 90
    iget-object v8, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 91
    iget-object v9, p0, Lads_mobile_sdk/ww2;->e:Lads_mobile_sdk/ei1;

    .line 92
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 93
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v11, ""

    if-nez v10, :cond_e7

    .line 94
    invoke-static {v1, v6, p1, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 95
    :try_start_57
    iget-object v1, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 96
    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 97
    iget-object v2, v7, Lads_mobile_sdk/px2;->f:Ljava/lang/String;

    .line 98
    iput-object v2, v1, Lads_mobile_sdk/n03;->a:Ljava/lang/String;

    .line 99
    iget-object v2, v7, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 100
    iput-object v2, v1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 101
    iget-object v2, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_6e

    .line 102
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    goto :goto_6f

    :catchall_6c
    move-exception v0

    goto :goto_a5

    :cond_6e
    move-object v2, v5

    :goto_6f
    if-nez v2, :cond_72

    move-object v2, v11

    .line 104
    :cond_72
    iput-object v2, v1, Lads_mobile_sdk/n03;->b:Ljava/lang/String;

    .line 105
    iget-object v2, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_7c

    .line 106
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v4

    .line 107
    :cond_7c
    iput-boolean v4, v1, Lads_mobile_sdk/n03;->f:Z

    .line 108
    iget-object v2, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_87

    .line 109
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v2

    goto :goto_88

    :cond_87
    move-object v2, v5

    :goto_88
    if-nez v2, :cond_8b

    goto :goto_8c

    :cond_8b
    move-object v11, v2

    .line 111
    :goto_8c
    iput-object v11, v1, Lads_mobile_sdk/n03;->g:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lads_mobile_sdk/ww2;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/ww2;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/ww2;->c:I

    invoke-static {v7, v9, p0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_98
    .catchall {:try_start_57 .. :try_end_98} :catchall_6c

    if-ne v1, v0, :cond_9c

    goto/16 :goto_132

    :cond_9c
    move-object v0, p1

    move-object v1, v0

    .line 115
    :goto_9e
    :try_start_9e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a0
    .catchall {:try_start_9e .. :try_end_a0} :catchall_2d

    .line 370
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_13a

    :goto_a5
    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 378
    :goto_a8
    :try_start_a8
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 382
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_e0

    .line 384
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_bd

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_bd

    .line 390
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_bd

    :catchall_bb
    move-exception p1

    goto :goto_e1

    .line 396
    :cond_bd
    :goto_bd
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d8

    .line 397
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d0

    .line 398
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_ca

    throw p1

    .line 399
    :cond_ca
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 400
    :cond_d0
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 401
    :cond_d8
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 402
    :cond_e0
    throw p1
    :try_end_e1
    .catchall {:try_start_a8 .. :try_end_e1} :catchall_bb

    .line 403
    :goto_e1
    :try_start_e1
    throw p1
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e2

    :catchall_e2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 437
    :cond_e7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v6, p1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 438
    :try_start_ef
    iget-object v1, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 439
    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 440
    iget-object v3, v7, Lads_mobile_sdk/px2;->f:Ljava/lang/String;

    .line 441
    iput-object v3, v1, Lads_mobile_sdk/n03;->a:Ljava/lang/String;

    .line 442
    iget-object v3, v7, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 443
    iput-object v3, v1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 444
    iget-object v3, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v3, :cond_106

    .line 445
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    goto :goto_107

    :catchall_104
    move-exception v0

    goto :goto_13d

    :cond_106
    move-object v3, v5

    :goto_107
    if-nez v3, :cond_10a

    move-object v3, v11

    .line 447
    :cond_10a
    iput-object v3, v1, Lads_mobile_sdk/n03;->b:Ljava/lang/String;

    .line 448
    iget-object v3, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v3, :cond_114

    .line 449
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v4

    .line 450
    :cond_114
    iput-boolean v4, v1, Lads_mobile_sdk/n03;->f:Z

    .line 451
    iget-object v3, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v3, :cond_11f

    .line 452
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v3

    goto :goto_120

    :cond_11f
    move-object v3, v5

    :goto_120
    if-nez v3, :cond_123

    goto :goto_124

    :cond_123
    move-object v11, v3

    .line 454
    :goto_124
    iput-object v11, v1, Lads_mobile_sdk/n03;->g:Ljava/lang/String;

    .line 457
    iput-object p1, p0, Lads_mobile_sdk/ww2;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/ww2;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/ww2;->c:I

    invoke-static {v7, v9, p0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_130
    .catchall {:try_start_ef .. :try_end_130} :catchall_104

    if-ne v1, v0, :cond_133

    :goto_132
    return-object v0

    :cond_133
    move-object v0, p1

    move-object v1, v0

    .line 458
    :goto_135
    :try_start_135
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_137
    .catchall {:try_start_135 .. :try_end_137} :catchall_19

    .line 750
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 751
    :goto_13a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_13d
    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 1044
    :goto_140
    :try_start_140
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1048
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_178

    .line 1050
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_155

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_155

    .line 1056
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_155

    :catchall_153
    move-exception p1

    goto :goto_179

    .line 1062
    :cond_155
    :goto_155
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_170

    .line 1063
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_168

    .line 1064
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_162

    throw p1

    .line 1065
    :cond_162
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1066
    :cond_168
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1067
    :cond_170
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1068
    :cond_178
    throw p1
    :try_end_179
    .catchall {:try_start_140 .. :try_end_179} :catchall_153

    .line 1069
    :goto_179
    :try_start_179
    throw p1
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_17a

    :catchall_17a
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
