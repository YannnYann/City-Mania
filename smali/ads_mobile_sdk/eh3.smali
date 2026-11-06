###### Class ads_mobile_sdk.eh3 (ads_mobile_sdk.eh3)
.class public final Lads_mobile_sdk/eh3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlin/coroutines/CoroutineContext;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

.field public final f:Lads_mobile_sdk/g83;

.field public final g:Lads_mobile_sdk/ks3;

.field public final h:Lads_mobile_sdk/yf3;

.field public final i:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

.field public final j:Lads_mobile_sdk/jb3;

.field public final k:Lads_mobile_sdk/f13;

.field public final l:Lads_mobile_sdk/ex0;

.field public final m:Lads_mobile_sdk/j43;

.field public final n:Lads_mobile_sdk/ur3;

.field public final o:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;ILcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/yf3;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;Lads_mobile_sdk/jb3;Lads_mobile_sdk/f13;Lads_mobile_sdk/ex0;Lads_mobile_sdk/j43;Lads_mobile_sdk/ur3;Lcom/google/gson/Gson;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    .line 1
    const-string v15, "loaderScope"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "backgroundContext"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "requestId"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "signalRequest"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "rootTraceCreator"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "traceMetaSet"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "signalGenerationMap"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "signalsProvider"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "javascriptEngine"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "randomGenerator"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "flags"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "requestBuilder"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "traceLogger"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "gson"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, v0, Lads_mobile_sdk/eh3;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 66
    iput-object v2, v0, Lads_mobile_sdk/eh3;->b:Lkotlin/coroutines/CoroutineContext;

    .line 67
    iput-object v3, v0, Lads_mobile_sdk/eh3;->c:Ljava/lang/String;

    move/from16 v1, p4

    .line 68
    iput v1, v0, Lads_mobile_sdk/eh3;->d:I

    .line 69
    iput-object v4, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    .line 70
    iput-object v5, v0, Lads_mobile_sdk/eh3;->f:Lads_mobile_sdk/g83;

    .line 71
    iput-object v6, v0, Lads_mobile_sdk/eh3;->g:Lads_mobile_sdk/ks3;

    .line 72
    iput-object v7, v0, Lads_mobile_sdk/eh3;->h:Lads_mobile_sdk/yf3;

    .line 73
    iput-object v8, v0, Lads_mobile_sdk/eh3;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    .line 74
    iput-object v9, v0, Lads_mobile_sdk/eh3;->j:Lads_mobile_sdk/jb3;

    .line 75
    iput-object v10, v0, Lads_mobile_sdk/eh3;->k:Lads_mobile_sdk/f13;

    .line 76
    iput-object v11, v0, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    .line 77
    iput-object v12, v0, Lads_mobile_sdk/eh3;->m:Lads_mobile_sdk/j43;

    .line 78
    iput-object v13, v0, Lads_mobile_sdk/eh3;->n:Lads_mobile_sdk/ur3;

    .line 79
    iput-object v14, v0, Lads_mobile_sdk/eh3;->o:Lcom/google/gson/Gson;

    return-void
.end method

.method public static a(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1737
    instance-of v0, p1, Lads_mobile_sdk/dh3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/dh3;

    iget v1, v0, Lads_mobile_sdk/dh3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/dh3;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/dh3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/dh3;-><init>(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/dh3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1846
    iget v2, v0, Lads_mobile_sdk/dh3;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "exception"

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_58

    if-eq v2, v6, :cond_48

    if-ne v2, v5, :cond_40

    iget-object p0, v0, Lads_mobile_sdk/dh3;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/dh3;->a:Lads_mobile_sdk/rr3;

    :try_start_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_35
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_32 .. :try_end_35} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_3a
    .catchall {:try_start_32 .. :try_end_35} :catchall_37

    goto/16 :goto_12b

    :catchall_37
    move-exception p1

    goto/16 :goto_178

    :catch_3a
    move-exception p1

    goto/16 :goto_13e

    :catch_3d
    move-exception p1

    goto/16 :goto_155

    .line 1847
    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    iget-object p0, v0, Lads_mobile_sdk/dh3;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/dh3;->a:Lads_mobile_sdk/rr3;

    :try_start_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_4c .. :try_end_4f} :catch_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_53
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_82

    :catchall_50
    move-exception p1

    goto/16 :goto_d0

    :catch_53
    move-exception p1

    goto :goto_95

    :catch_55
    move-exception p1

    goto/16 :goto_ac

    .line 1848
    :cond_58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1849
    iget-object p1, p0, Lads_mobile_sdk/eh3;->f:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->x0:Lads_mobile_sdk/s11;

    iget-object v10, p0, Lads_mobile_sdk/eh3;->g:Lads_mobile_sdk/ks3;

    .line 2075
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 2076
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v12

    .line 2077
    iget-object v12, v12, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v12, :cond_113

    .line 2078
    invoke-static {p1, v2, v11, v10}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 2079
    :try_start_71
    iput-object p1, v0, Lads_mobile_sdk/dh3;->a:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/dh3;->b:Lads_mobile_sdk/rr3;

    iput v6, v0, Lads_mobile_sdk/dh3;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/eh3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7b
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_71 .. :try_end_7b} :catch_89
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7b} :catch_87
    .catchall {:try_start_71 .. :try_end_7b} :catchall_85

    if-ne p0, v1, :cond_7f

    goto/16 :goto_127

    :cond_7f
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    .line 2080
    :goto_82
    :try_start_82
    check-cast p1, Lads_mobile_sdk/v01;
    :try_end_84
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_82 .. :try_end_84} :catch_55
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_84} :catch_53
    .catchall {:try_start_82 .. :try_end_84} :catchall_50

    goto :goto_c1

    :catchall_85
    move-exception p0

    goto :goto_8b

    :catch_87
    move-exception p0

    goto :goto_8d

    :catch_89
    move-exception p0

    goto :goto_91

    :goto_8b
    move-object v0, p1

    goto :goto_d4

    :goto_8d
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_95

    :goto_91
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_ac

    .line 2081
    :goto_95
    :try_start_95
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2082
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 2085
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v8, v2, Lads_mobile_sdk/uj2;->m:Z

    .line 2086
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2087
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, p1, v9, v9, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object p1, v1

    goto :goto_c1

    .line 2088
    :goto_ac
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2089
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 2092
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v8, v2, Lads_mobile_sdk/uj2;->m:Z

    .line 2093
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2094
    new-instance p1, Lads_mobile_sdk/r01;

    invoke-direct {p1, v9, v3}, Lads_mobile_sdk/r01;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;I)V

    .line 2330
    :goto_c1
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_cb

    .line 2331
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    .line 2332
    invoke-static {v1, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_cb
    .catchall {:try_start_95 .. :try_end_cb} :catchall_50

    .line 2333
    :cond_cb
    invoke-static {p0, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_177

    :goto_d0
    move-object v13, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v13

    .line 2341
    :goto_d4
    :try_start_d4
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2345
    instance-of v1, p0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_10c

    .line 2347
    instance-of v1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_e9

    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e9

    .line 2353
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_e9

    :catchall_e7
    move-exception p0

    goto :goto_10d

    .line 2359
    :cond_e9
    :goto_e9
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_104

    .line 2360
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_fc

    .line 2361
    instance-of p1, p0, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_f6

    throw p0

    .line 2362
    :cond_f6
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2363
    :cond_fc
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 2364
    :cond_104
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 2365
    :cond_10c
    throw p0
    :try_end_10d
    .catchall {:try_start_d4 .. :try_end_10d} :catchall_e7

    .line 2366
    :goto_10d
    :try_start_10d
    throw p0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10e

    :catchall_10e
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 2400
    :cond_113
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 2401
    :try_start_11b
    iput-object p1, v0, Lads_mobile_sdk/dh3;->a:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/dh3;->b:Lads_mobile_sdk/rr3;

    iput v5, v0, Lads_mobile_sdk/dh3;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/eh3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_125
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_11b .. :try_end_125} :catch_132
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_125} :catch_130
    .catchall {:try_start_11b .. :try_end_125} :catchall_12e

    if-ne p0, v1, :cond_128

    :goto_127
    return-object v1

    :cond_128
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    .line 2402
    :goto_12b
    :try_start_12b
    check-cast p1, Lads_mobile_sdk/v01;
    :try_end_12d
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_12b .. :try_end_12d} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12d} :catch_3a
    .catchall {:try_start_12b .. :try_end_12d} :catchall_37

    goto :goto_16a

    :catchall_12e
    move-exception p0

    goto :goto_134

    :catch_130
    move-exception p0

    goto :goto_136

    :catch_132
    move-exception p0

    goto :goto_13a

    :goto_134
    move-object v0, p1

    goto :goto_17c

    :goto_136
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_13e

    :goto_13a
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_155

    .line 2403
    :goto_13e
    :try_start_13e
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2404
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 2407
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v8, v2, Lads_mobile_sdk/uj2;->m:Z

    .line 2408
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2409
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, p1, v9, v9, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object p1, v1

    goto :goto_16a

    .line 2410
    :goto_155
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2411
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 2414
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v8, v2, Lads_mobile_sdk/uj2;->m:Z

    .line 2415
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2416
    new-instance p1, Lads_mobile_sdk/r01;

    invoke-direct {p1, v9, v3}, Lads_mobile_sdk/r01;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;I)V

    .line 2689
    :goto_16a
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_174

    .line 2690
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    .line 2691
    invoke-static {v1, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_174
    .catchall {:try_start_13e .. :try_end_174} :catchall_37

    .line 2692
    :cond_174
    invoke-static {p0, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_177
    return-object p1

    :goto_178
    move-object v13, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v13

    .line 2700
    :goto_17c
    :try_start_17c
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2704
    instance-of v1, p0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1b4

    .line 2706
    instance-of v1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_191

    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_191

    .line 2712
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_191

    :catchall_18f
    move-exception p0

    goto :goto_1b5

    .line 2718
    :cond_191
    :goto_191
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_1ac

    .line 2719
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_1a4

    .line 2720
    instance-of p1, p0, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_19e

    throw p0

    .line 2721
    :cond_19e
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2722
    :cond_1a4
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 2723
    :cond_1ac
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 2724
    :cond_1b4
    throw p0
    :try_end_1b5
    .catchall {:try_start_17c .. :try_end_1b5} :catchall_18f

    .line 2725
    :goto_1b5
    :try_start_1b5
    throw p0
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1b6

    :catchall_1b6
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/qg3;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/qg3;

    iget v3, v2, Lads_mobile_sdk/qg3;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/qg3;->e:I

    :goto_16
    move-object v8, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/qg3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/qg3;-><init>(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v1, v8, Lads_mobile_sdk/qg3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 245
    iget v3, v8, Lads_mobile_sdk/qg3;->e:I

    const/4 v9, 0x0

    const-string v10, "CSRB error: "

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_4c

    if-eq v3, v5, :cond_42

    if-ne v3, v4, :cond_3a

    iget-object v2, v8, Lads_mobile_sdk/qg3;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_bd

    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    iget-object v3, v8, Lads_mobile_sdk/qg3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v5, v8, Lads_mobile_sdk/qg3;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/eh3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_4c
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 246
    iget-object v1, v0, Lads_mobile_sdk/eh3;->j:Lads_mobile_sdk/jb3;

    iput-object v0, v8, Lads_mobile_sdk/qg3;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v8, Lads_mobile_sdk/qg3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput v5, v8, Lads_mobile_sdk/qg3;->e:I

    check-cast v1, Lads_mobile_sdk/yq1;

    invoke-virtual {v1, v8}, Lads_mobile_sdk/yq1;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_62

    goto :goto_bb

    :cond_62
    move-object v5, v0

    .line 247
    :goto_63
    check-cast v1, Lads_mobile_sdk/v01;

    .line 428
    instance-of v6, v1, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_8b

    check-cast v1, Lads_mobile_sdk/i01;

    .line 429
    new-instance v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0xf7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    return-object v1

    .line 609
    :cond_8b
    const-string v6, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    iget-object v1, v5, Lads_mobile_sdk/eh3;->m:Lads_mobile_sdk/j43;

    .line 612
    iget-object v6, v5, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->o0()Lads_mobile_sdk/yp2;

    move-result-object v6

    .line 613
    iget-object v7, v5, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->m0()Lads_mobile_sdk/hj2;

    move-result-object v7

    .line 614
    iget-object v5, v5, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Lads_mobile_sdk/ex0;->w()Ljava/util/Map;

    move-result-object v5

    .line 615
    iput-object v3, v8, Lads_mobile_sdk/qg3;->a:Ljava/lang/Object;

    iput-object v9, v8, Lads_mobile_sdk/qg3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput v4, v8, Lads_mobile_sdk/qg3;->e:I

    move-object v4, v7

    move-object v7, v5

    move-object v5, v6

    move-object v6, v4

    move-object v4, v3

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lads_mobile_sdk/j43;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/yp2;Lads_mobile_sdk/hj2;Ljava/util/Map;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_bc

    :goto_bb
    return-object v2

    :cond_bc
    move-object v2, v4

    .line 616
    :goto_bd
    check-cast v1, Lads_mobile_sdk/v01;

    .line 629
    sget-object v3, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v3, Lads_mobile_sdk/rg3;

    invoke-direct {v3, v1}, Lads_mobile_sdk/rg3;-><init>(Lads_mobile_sdk/v01;)V

    invoke-static {v3}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 632
    instance-of v3, v1, Lads_mobile_sdk/q01;

    if-eqz v3, :cond_124

    .line 635
    move-object v3, v1

    check-cast v3, Lads_mobile_sdk/q01;

    invoke-virtual {v3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/zt;

    iget-object v4, v4, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    .line 636
    invoke-virtual {v3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/zt;

    iget-object v10, v5, Lads_mobile_sdk/zt;->a:Ljava/util/List;

    if-eqz v10, :cond_f2

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const-string v11, ","

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_f2
    move-object v13, v9

    .line 637
    iget-object v15, v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestId:Ljava/lang/String;

    .line 638
    new-instance v10, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    const/4 v14, 0x0

    const/16 v17, 0x57

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v17}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    iput-object v10, v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    .line 645
    invoke-virtual {v3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/zt;

    iget-object v2, v2, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    .line 646
    invoke-virtual {v3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/zt;

    iget-object v3, v3, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    .line 648
    new-instance v4, Lads_mobile_sdk/sg3;

    invoke-direct {v4, v2}, Lads_mobile_sdk/sg3;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 649
    new-instance v2, Lads_mobile_sdk/tg3;

    invoke-direct {v2, v3}, Lads_mobile_sdk/tg3;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    return-object v1

    .line 651
    :cond_124
    instance-of v3, v1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_147

    .line 653
    new-instance v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0xf7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V

    .line 654
    iput-object v11, v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    :cond_147
    return-object v1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 655
    instance-of v2, v1, Lads_mobile_sdk/ah3;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ah3;

    iget v3, v2, Lads_mobile_sdk/ah3;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ah3;->g:I

    :goto_16
    move-object v8, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/ah3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ah3;-><init>(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v1, v8, Lads_mobile_sdk/ah3;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 778
    iget v3, v8, Lads_mobile_sdk/ah3;->g:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v10, 0x1

    if-eqz v3, :cond_75

    if-eq v3, v10, :cond_6b

    if-eq v3, v6, :cond_59

    if-eq v3, v5, :cond_47

    if-ne v3, v4, :cond_3f

    iget-object v2, v8, Lads_mobile_sdk/ah3;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/pg3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2ba

    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    iget-boolean v3, v8, Lads_mobile_sdk/ah3;->d:Z

    iget-object v5, v8, Lads_mobile_sdk/ah3;->c:Ljava/lang/String;

    iget-object v6, v8, Lads_mobile_sdk/ah3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v11, v8, Lads_mobile_sdk/ah3;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/eh3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v4, v3

    move/from16 v16, v10

    goto/16 :goto_226

    :cond_59
    iget-boolean v3, v8, Lads_mobile_sdk/ah3;->d:Z

    iget-object v6, v8, Lads_mobile_sdk/ah3;->c:Ljava/lang/String;

    iget-object v11, v8, Lads_mobile_sdk/ah3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v12, v8, Lads_mobile_sdk/ah3;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/eh3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v4, v3

    move/from16 v16, v10

    goto/16 :goto_1bd

    :cond_6b
    iget-object v3, v8, Lads_mobile_sdk/ah3;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/eh3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v3

    goto/16 :goto_152

    :cond_75
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 779
    iget-object v1, v0, Lads_mobile_sdk/eh3;->g:Lads_mobile_sdk/ks3;

    .line 780
    iget-object v3, v1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 781
    iget-object v11, v0, Lads_mobile_sdk/eh3;->c:Ljava/lang/String;

    iput-object v11, v3, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    .line 782
    iget v11, v0, Lads_mobile_sdk/eh3;->d:I

    iput v11, v3, Lads_mobile_sdk/tn1;->c:I

    .line 783
    iget-object v11, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object v11

    iput-object v11, v3, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    .line 785
    iget-object v3, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    iget-object v11, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-nez v11, :cond_99

    move-object v11, v12

    :cond_99
    iput-object v11, v3, Lads_mobile_sdk/n03;->g:Ljava/lang/String;

    .line 786
    iget-object v3, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    iget-object v11, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a6

    goto :goto_a7

    :cond_a6
    move-object v12, v11

    :goto_a7
    iput-object v12, v3, Lads_mobile_sdk/n03;->b:Ljava/lang/String;

    .line 787
    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 788
    iget-object v3, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    .line 790
    instance-of v11, v3, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;

    if-eqz v11, :cond_b4

    sget-object v11, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    goto :goto_d9

    .line 791
    :cond_b4
    instance-of v11, v3, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;

    if-eqz v11, :cond_bb

    sget-object v11, Lads_mobile_sdk/j53;->g:Lads_mobile_sdk/j53;

    goto :goto_d9

    .line 792
    :cond_bb
    instance-of v11, v3, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest;

    if-eqz v11, :cond_c2

    sget-object v11, Lads_mobile_sdk/j53;->h:Lads_mobile_sdk/j53;

    goto :goto_d9

    .line 793
    :cond_c2
    instance-of v11, v3, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    if-eqz v11, :cond_c9

    sget-object v11, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    goto :goto_d9

    .line 794
    :cond_c9
    instance-of v11, v3, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest;

    if-eqz v11, :cond_d0

    sget-object v11, Lads_mobile_sdk/j53;->j:Lads_mobile_sdk/j53;

    goto :goto_d9

    .line 796
    :cond_d0
    instance-of v11, v3, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;

    if-eqz v11, :cond_d7

    sget-object v11, Lads_mobile_sdk/j53;->l:Lads_mobile_sdk/j53;

    goto :goto_d9

    .line 797
    :cond_d7
    sget-object v11, Lads_mobile_sdk/j53;->d:Lads_mobile_sdk/j53;

    .line 798
    :goto_d9
    iput-object v11, v1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 813
    instance-of v1, v3, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;

    if-eqz v1, :cond_143

    .line 816
    iget-object v1, v0, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    .line 817
    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->L0()Ljava/util/List;

    move-result-object v1

    .line 818
    iget-object v3, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object v3

    invoke-virtual {v3}, Lads_mobile_sdk/x11;->getNumber()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 820
    new-instance v1, Lads_mobile_sdk/m01;

    .line 821
    sget-object v2, Lads_mobile_sdk/ir0;->f:Lads_mobile_sdk/ir0;

    invoke-virtual {v2}, Lads_mobile_sdk/ir0;->d()Ljava/lang/String;

    move-result-object v2

    .line 822
    iget-object v3, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->getSignalType()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 824
    sget-object v3, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 825
    invoke-direct {v1, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v1

    .line 833
    :cond_121
    iget-object v1, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->getCustomClickGestureEnabled()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 834
    iget-object v1, v0, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;->getCustomClickSwipeGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v1

    if-eqz v1, :cond_143

    .line 836
    new-instance v1, Lads_mobile_sdk/m01;

    .line 837
    sget-object v2, Lads_mobile_sdk/ir0;->g:Lads_mobile_sdk/ir0;

    invoke-virtual {v2}, Lads_mobile_sdk/ir0;->d()Ljava/lang/String;

    move-result-object v2

    .line 838
    sget-object v3, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 839
    invoke-direct {v1, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v1

    .line 847
    :cond_143
    iget-object v1, v0, Lads_mobile_sdk/eh3;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;

    iput-object v0, v8, Lads_mobile_sdk/ah3;->a:Ljava/lang/Object;

    iput v10, v8, Lads_mobile_sdk/ah3;->g:I

    invoke-virtual {v1, v8}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_151

    goto/16 :goto_2b8

    :cond_151
    move-object v12, v0

    .line 848
    :goto_152
    check-cast v1, Lads_mobile_sdk/v01;

    .line 1144
    instance-of v3, v1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_15b

    check-cast v1, Lads_mobile_sdk/i01;

    return-object v1

    .line 1145
    :cond_15b
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1146
    move-object v11, v1

    check-cast v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    .line 1150
    iget-object v1, v11, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestId:Ljava/lang/String;

    if-nez v1, :cond_173

    .line 1151
    new-instance v1, Lads_mobile_sdk/m01;

    .line 1152
    const-string v2, "There was no request ID generated when generating SCAR signals."

    invoke-direct {v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1153
    :cond_173
    iget-object v3, v12, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    .line 1154
    iget-boolean v3, v3, Lads_mobile_sdk/ex0;->w:Z

    if-nez v3, :cond_196

    .line 1155
    iget-object v3, v12, Lads_mobile_sdk/eh3;->k:Lads_mobile_sdk/f13;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1156
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 v13, 0x3e8

    invoke-virtual {v3, v13}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v3

    int-to-double v14, v3

    .line 1157
    iget-object v3, v12, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    .line 1158
    iget-wide v4, v3, Lads_mobile_sdk/ex0;->x:D

    move/from16 v16, v10

    int-to-double v9, v13

    mul-double/2addr v4, v9

    cmpg-double v4, v14, v4

    if-gez v4, :cond_198

    move/from16 v4, v16

    goto :goto_199

    :cond_196
    move/from16 v16, v10

    :cond_198
    const/4 v4, 0x0

    .line 1159
    :goto_199
    iget-object v5, v12, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Lads_mobile_sdk/ex0;->S()Z

    move-result v5

    if-nez v5, :cond_1a9

    if-eqz v4, :cond_1a4

    goto :goto_1a9

    :cond_1a4
    move-object v5, v1

    const/4 v1, 0x0

    :goto_1a6
    move-object v6, v11

    move-object v11, v12

    goto :goto_1c1

    .line 1160
    :cond_1a9
    :goto_1a9
    iput-object v12, v8, Lads_mobile_sdk/ah3;->a:Ljava/lang/Object;

    iput-object v11, v8, Lads_mobile_sdk/ah3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v1, v8, Lads_mobile_sdk/ah3;->c:Ljava/lang/String;

    iput-boolean v4, v8, Lads_mobile_sdk/ah3;->d:Z

    iput v6, v8, Lads_mobile_sdk/ah3;->g:I

    invoke-virtual {v12, v11, v8}, Lads_mobile_sdk/eh3;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1bb

    goto/16 :goto_2b8

    :cond_1bb
    move-object v6, v1

    move-object v1, v5

    .line 1161
    :goto_1bd
    check-cast v1, Lads_mobile_sdk/v01;

    move-object v5, v6

    goto :goto_1a6

    .line 1167
    :goto_1c1
    iget-object v9, v11, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v9}, Lads_mobile_sdk/ex0;->S()Z

    move-result v9

    if-eqz v9, :cond_1fa

    if-eqz v1, :cond_1f2

    .line 1170
    instance-of v9, v1, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_1d1

    goto/16 :goto_248

    .line 1171
    :cond_1d1
    instance-of v9, v1, Lads_mobile_sdk/q01;

    if-eqz v9, :cond_1ec

    .line 1172
    new-instance v9, Lads_mobile_sdk/q01;

    new-instance v10, Lads_mobile_sdk/pg3;

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/zt;

    iget-object v1, v1, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v10, v1, v3}, Lads_mobile_sdk/pg3;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v9, v10}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    move-object v1, v9

    goto :goto_248

    :cond_1ec
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 1175
    :cond_1f2
    new-instance v1, Lads_mobile_sdk/m01;

    const-string v9, "Client side request building returned null while building URL."

    invoke-direct {v1, v9}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto :goto_248

    .line 1178
    :cond_1fa
    iget-object v1, v11, Lads_mobile_sdk/eh3;->o:Lcom/google/gson/Gson;

    invoke-virtual {v1, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1179
    sget-object v9, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v9, Lads_mobile_sdk/bh3;

    invoke-direct {v9, v1}, Lads_mobile_sdk/bh3;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 1181
    iget-object v9, v11, Lads_mobile_sdk/eh3;->j:Lads_mobile_sdk/jb3;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v11, v8, Lads_mobile_sdk/ah3;->a:Ljava/lang/Object;

    iput-object v6, v8, Lads_mobile_sdk/ah3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v5, v8, Lads_mobile_sdk/ah3;->c:Ljava/lang/String;

    iput-boolean v4, v8, Lads_mobile_sdk/ah3;->d:Z

    const/4 v10, 0x3

    iput v10, v8, Lads_mobile_sdk/ah3;->g:I

    check-cast v9, Lads_mobile_sdk/rp0;

    const-string v10, "google.afma.request.getSignals"

    invoke-virtual {v9, v10, v1, v8}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_226

    goto/16 :goto_2b8

    .line 1182
    :cond_226
    :goto_226
    check-cast v1, Lads_mobile_sdk/v01;

    .line 1480
    instance-of v9, v1, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_22f

    check-cast v1, Lads_mobile_sdk/i01;

    return-object v1

    .line 1481
    :cond_22f
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1482
    check-cast v1, Lcom/google/gson/JsonObject;

    .line 1485
    invoke-static {v1}, Lads_mobile_sdk/og3;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/v01;

    move-result-object v1

    .line 1486
    sget-object v9, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v9, Lads_mobile_sdk/ch3;

    invoke-direct {v9, v1}, Lads_mobile_sdk/ch3;-><init>(Lads_mobile_sdk/v01;)V

    invoke-static {v9}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 1700
    :goto_248
    instance-of v9, v1, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_24f

    check-cast v1, Lads_mobile_sdk/i01;

    return-object v1

    .line 1701
    :cond_24f
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    invoke-virtual {v1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1702
    check-cast v1, Lads_mobile_sdk/pg3;

    if-eqz v4, :cond_295

    .line 1708
    iget-object v4, v1, Lads_mobile_sdk/pg3;->b:Ljava/util/List;

    if-eqz v4, :cond_295

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move/from16 v7, v16

    if-ne v4, v7, :cond_295

    .line 1709
    new-instance v4, Ljava/lang/IllegalStateException;

    iget-object v7, v1, Lads_mobile_sdk/pg3;->b:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CSRB A/B divergence: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1710
    iget-object v7, v11, Lads_mobile_sdk/eh3;->n:Lads_mobile_sdk/ur3;

    check-cast v7, Lads_mobile_sdk/as3;

    const-string v9, "CSRB A/B divergence"

    invoke-virtual {v7, v9, v4}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1711
    iget-object v7, v11, Lads_mobile_sdk/eh3;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->K()Z

    move-result v7

    if-nez v7, :cond_294

    goto :goto_295

    .line 1712
    :cond_294
    throw v4

    .line 1720
    :cond_295
    :goto_295
    iget-object v4, v11, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object v4

    .line 1721
    sget-object v7, Lads_mobile_sdk/x11;->i:Lads_mobile_sdk/x11;

    if-eq v4, v7, :cond_2b9

    const/4 v4, 0x0

    .line 1723
    iget-object v3, v11, Lads_mobile_sdk/eh3;->h:Lads_mobile_sdk/yf3;

    .line 1725
    iget-object v7, v11, Lads_mobile_sdk/eh3;->e:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    move-object v9, v4

    move-object v4, v5

    move-object v5, v7

    .line 1727
    iget-object v7, v1, Lads_mobile_sdk/pg3;->a:Ljava/lang/String;

    .line 1728
    iput-object v1, v8, Lads_mobile_sdk/ah3;->a:Ljava/lang/Object;

    iput-object v9, v8, Lads_mobile_sdk/ah3;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iput-object v9, v8, Lads_mobile_sdk/ah3;->c:Ljava/lang/String;

    const/4 v9, 0x4

    iput v9, v8, Lads_mobile_sdk/ah3;->g:I

    invoke-virtual/range {v3 .. v8}, Lads_mobile_sdk/yf3;->a(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2b9

    :goto_2b8
    return-object v2

    :cond_2b9
    move-object v2, v1

    .line 1736
    :goto_2ba
    new-instance v1, Lads_mobile_sdk/q01;

    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;

    iget-object v2, v2, Lads_mobile_sdk/pg3;->a:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
