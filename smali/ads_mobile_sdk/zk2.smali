###### Class ads_mobile_sdk.zk2 (ads_mobile_sdk.zk2)
.class public final Lads_mobile_sdk/zk2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/io/Serializable;

.field public b:Lkotlin/Pair;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/al2;

.field public final synthetic e:Lads_mobile_sdk/j53;

.field public final synthetic f:Lads_mobile_sdk/om2;

.field public final synthetic g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/al2;Lads_mobile_sdk/j53;Lads_mobile_sdk/om2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;ILkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    iput-object p2, p0, Lads_mobile_sdk/zk2;->e:Lads_mobile_sdk/j53;

    iput-object p3, p0, Lads_mobile_sdk/zk2;->f:Lads_mobile_sdk/om2;

    iput-object p4, p0, Lads_mobile_sdk/zk2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput p5, p0, Lads_mobile_sdk/zk2;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/zk2;

    iget-object v1, p0, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    iget-object v2, p0, Lads_mobile_sdk/zk2;->e:Lads_mobile_sdk/j53;

    iget-object v3, p0, Lads_mobile_sdk/zk2;->f:Lads_mobile_sdk/om2;

    iget-object v4, p0, Lads_mobile_sdk/zk2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget v5, p0, Lads_mobile_sdk/zk2;->h:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/zk2;-><init>(Lads_mobile_sdk/al2;Lads_mobile_sdk/j53;Lads_mobile_sdk/om2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;ILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/zk2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/zk2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/zk2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v6, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 84
    iget v0, v6, Lads_mobile_sdk/zk2;->c:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_4c

    if-eq v0, v2, :cond_3d

    if-eq v0, v1, :cond_30

    if-eq v0, v9, :cond_2b

    if-eq v0, v8, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14a

    :catch_28
    move-exception v0

    goto/16 :goto_18c

    .line 85
    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2e} :catch_28

    goto/16 :goto_197

    .line 86
    :cond_30
    iget-object v0, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    move-object v1, v0

    check-cast v1, Lkotlin/Pair;

    :try_start_35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    goto/16 :goto_11d

    :catchall_3a
    move-exception v0

    goto/16 :goto_133

    .line 87
    :cond_3d
    iget-object v0, v6, Lads_mobile_sdk/zk2;->b:Lkotlin/Pair;

    iget-object v2, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    :try_start_43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_28

    move-object v8, v0

    move-object v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_f6

    .line 88
    :cond_4c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    :try_start_4f
    iget-object v0, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    .line 92
    iget-object v3, v0, Lads_mobile_sdk/al2;->f:Lads_mobile_sdk/g83;

    .line 93
    sget-object v4, Lads_mobile_sdk/s11;->P1:Lads_mobile_sdk/s11;

    iget-object v5, v6, Lads_mobile_sdk/zk2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    .line 565
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 566
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 567
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 568
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 569
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 570
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 571
    invoke-direct {v12, v13, v14, v15, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 572
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 573
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_cb

    .line 574
    invoke-static {v3, v4, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_80} :catch_28

    .line 575
    :try_start_80
    iget-object v0, v0, Lads_mobile_sdk/al2;->e:Lads_mobile_sdk/v8;

    .line 576
    invoke-virtual {v0, v5}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/String;

    move-result-object v0
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_8a

    .line 1056
    :try_start_86
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_28

    goto :goto_dc

    :catchall_8a
    move-exception v0

    .line 1064
    :try_start_8b
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1068
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_c4

    .line 1070
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a1

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a1

    .line 1076
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_a1

    :catchall_9e
    move-exception v0

    move-object v1, v0

    goto :goto_c5

    .line 1082
    :cond_a1
    :goto_a1
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_bc

    .line 1083
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b4

    .line 1084
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_ae

    throw v0

    .line 1085
    :cond_ae
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1086
    :cond_b4
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1087
    :cond_bc
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1088
    :cond_c4
    throw v0
    :try_end_c5
    .catchall {:try_start_8b .. :try_end_c5} :catchall_9e

    .line 1089
    :goto_c5
    :try_start_c5
    throw v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c6

    :catchall_c6
    move-exception v0

    :try_start_c7
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1123
    :cond_cb
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d3} :catch_28

    .line 1124
    :try_start_d3
    iget-object v0, v0, Lads_mobile_sdk/al2;->e:Lads_mobile_sdk/v8;

    .line 1125
    invoke-virtual {v0, v5}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/String;

    move-result-object v0
    :try_end_d9
    .catchall {:try_start_d3 .. :try_end_d9} :catchall_14b

    .line 1642
    :try_start_d9
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1643
    :goto_dc
    new-instance v3, Lkotlin/Pair;

    iget-object v4, v6, Lads_mobile_sdk/zk2;->e:Lads_mobile_sdk/j53;

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1645
    iget-object v4, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    iget-object v5, v6, Lads_mobile_sdk/zk2;->f:Lads_mobile_sdk/om2;

    iput-object v0, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    iput-object v3, v6, Lads_mobile_sdk/zk2;->b:Lkotlin/Pair;

    iput v2, v6, Lads_mobile_sdk/zk2;->c:I

    invoke-static {v4, v3, v5, v6}, Lads_mobile_sdk/al2;->a(Lads_mobile_sdk/al2;Lkotlin/Pair;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_f4

    goto :goto_149

    :cond_f4
    move-object v8, v3

    move-object v3, v0

    .line 1646
    :goto_f6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_101

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_100} :catch_28

    return-object v0

    .line 1649
    :cond_101
    :try_start_101
    iget-object v0, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    .line 1650
    iget-object v2, v6, Lads_mobile_sdk/zk2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-object v4, v2

    .line 1651
    iget-object v2, v6, Lads_mobile_sdk/zk2;->e:Lads_mobile_sdk/j53;

    move-object v5, v4

    .line 1654
    iget v4, v6, Lads_mobile_sdk/zk2;->h:I

    move-object v11, v5

    .line 1655
    iget-object v5, v6, Lads_mobile_sdk/zk2;->f:Lads_mobile_sdk/om2;

    .line 1656
    iput-object v8, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    iput-object v10, v6, Lads_mobile_sdk/zk2;->b:Lkotlin/Pair;

    iput v1, v6, Lads_mobile_sdk/zk2;->c:I

    move-object v1, v11

    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/al2;->a(Lads_mobile_sdk/al2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_119
    .catchall {:try_start_101 .. :try_end_119} :catchall_131

    if-ne v0, v7, :cond_11c

    goto :goto_149

    :cond_11c
    move-object v1, v8

    .line 1665
    :goto_11d
    :try_start_11d
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lads_mobile_sdk/yk2;

    iget-object v3, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    invoke-direct {v2, v3, v1, v10}, Lads_mobile_sdk/yk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    iput-object v10, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    iput v9, v6, Lads_mobile_sdk/zk2;->c:I

    invoke-static {v0, v2, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_197

    goto :goto_149

    :catchall_131
    move-exception v0

    move-object v1, v8

    .line 1666
    :goto_133
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v3, Lads_mobile_sdk/yk2;

    iget-object v4, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    invoke-direct {v3, v4, v1, v10}, Lads_mobile_sdk/yk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v6, Lads_mobile_sdk/zk2;->a:Ljava/io/Serializable;

    iput-object v10, v6, Lads_mobile_sdk/zk2;->b:Lkotlin/Pair;

    const/4 v1, 0x4

    iput v1, v6, Lads_mobile_sdk/zk2;->c:I

    invoke-static {v2, v3, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_14a

    :goto_149
    return-object v7

    .line 1667
    :cond_14a
    :goto_14a
    throw v0
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_14b} :catch_28

    :catchall_14b
    move-exception v0

    .line 2170
    :try_start_14c
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2174
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_185

    .line 2176
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_162

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_162

    .line 2182
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_162

    :catchall_15f
    move-exception v0

    move-object v1, v0

    goto :goto_186

    .line 2188
    :cond_162
    :goto_162
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_17d

    .line 2189
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_175

    .line 2190
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_16f

    throw v0

    .line 2191
    :cond_16f
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2192
    :cond_175
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2193
    :cond_17d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2194
    :cond_185
    throw v0
    :try_end_186
    .catchall {:try_start_14c .. :try_end_186} :catchall_15f

    .line 2195
    :goto_186
    :try_start_186
    throw v1
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_187

    :catchall_187
    move-exception v0

    :try_start_188
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18c} :catch_28

    .line 2196
    :goto_18c
    iget-object v1, v6, Lads_mobile_sdk/zk2;->d:Lads_mobile_sdk/al2;

    .line 2197
    iget-object v1, v1, Lads_mobile_sdk/al2;->k:Lads_mobile_sdk/ur3;

    .line 2198
    check-cast v1, Lads_mobile_sdk/as3;

    const-string v2, "Persistent cache fill task failure"

    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2200
    :cond_197
    :goto_197
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
