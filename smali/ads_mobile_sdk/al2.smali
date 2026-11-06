###### Class ads_mobile_sdk.al2 (ads_mobile_sdk.al2)
.class public final Lads_mobile_sdk/al2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/im2;

.field public final c:Lads_mobile_sdk/cl2;

.field public final d:Ljava/util/Map;

.field public final e:Lads_mobile_sdk/v8;

.field public final f:Lads_mobile_sdk/g83;

.field public final g:Lads_mobile_sdk/f13;

.field public final h:Lads_mobile_sdk/du1;

.field public final i:Lads_mobile_sdk/c63;

.field public final j:Lads_mobile_sdk/ca2;

.field public final k:Lads_mobile_sdk/ur3;

.field public final l:Lads_mobile_sdk/cw2;

.field public final m:Lkotlinx/coroutines/sync/Mutex;

.field public final n:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/im2;Lads_mobile_sdk/cl2;Ljava/util/Map;Lads_mobile_sdk/v8;Lads_mobile_sdk/g83;Lads_mobile_sdk/f13;Lads_mobile_sdk/du1;Lads_mobile_sdk/c63;Lads_mobile_sdk/ca2;Lads_mobile_sdk/ur3;Lads_mobile_sdk/dw2;)V
    .registers 14

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentFactories"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestKeyGenerator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomGenerator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "macroExpander"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingUrlPinger"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConnectivityManager"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheAutoRefreshManager"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/al2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    .line 10
    iput-object p4, p0, Lads_mobile_sdk/al2;->d:Ljava/util/Map;

    .line 12
    iput-object p5, p0, Lads_mobile_sdk/al2;->e:Lads_mobile_sdk/v8;

    .line 13
    iput-object p6, p0, Lads_mobile_sdk/al2;->f:Lads_mobile_sdk/g83;

    .line 14
    iput-object p7, p0, Lads_mobile_sdk/al2;->g:Lads_mobile_sdk/f13;

    .line 15
    iput-object p8, p0, Lads_mobile_sdk/al2;->h:Lads_mobile_sdk/du1;

    .line 16
    iput-object p9, p0, Lads_mobile_sdk/al2;->i:Lads_mobile_sdk/c63;

    .line 17
    iput-object p10, p0, Lads_mobile_sdk/al2;->j:Lads_mobile_sdk/ca2;

    .line 18
    iput-object p11, p0, Lads_mobile_sdk/al2;->k:Lads_mobile_sdk/ur3;

    .line 19
    iput-object p12, p0, Lads_mobile_sdk/al2;->l:Lads_mobile_sdk/cw2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 22
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/al2;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 23
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/al2;->n:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/al2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    const/4 v2, 0x1

    .line 1171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1172
    instance-of v3, v1, Lads_mobile_sdk/uk2;

    if-eqz v3, :cond_1b

    move-object v3, v1

    check-cast v3, Lads_mobile_sdk/uk2;

    iget v4, v3, Lads_mobile_sdk/uk2;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_1b

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/uk2;->k:I

    goto :goto_20

    :cond_1b
    new-instance v3, Lads_mobile_sdk/uk2;

    invoke-direct {v3, v0, v1}, Lads_mobile_sdk/uk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/coroutines/Continuation;)V

    :goto_20
    iget-object v1, v3, Lads_mobile_sdk/uk2;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1354
    iget v5, v3, Lads_mobile_sdk/uk2;->k:I

    const-string v6, "key"

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v5, :cond_7f

    if-eq v5, v2, :cond_6a

    if-eq v5, v8, :cond_57

    if-ne v5, v7, :cond_4f

    iget v0, v3, Lads_mobile_sdk/uk2;->g:I

    iget v5, v3, Lads_mobile_sdk/uk2;->f:I

    iget-object v9, v3, Lads_mobile_sdk/uk2;->e:Lads_mobile_sdk/om2;

    iget-object v10, v3, Lads_mobile_sdk/uk2;->d:Ljava/lang/String;

    iget-object v11, v3, Lads_mobile_sdk/uk2;->c:Lads_mobile_sdk/j53;

    iget-object v12, v3, Lads_mobile_sdk/uk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v13, v3, Lads_mobile_sdk/uk2;->a:Lads_mobile_sdk/al2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_45
    move-object v2, v11

    move-object v11, v3

    move-object v3, v10

    move-object v10, v9

    move v9, v5

    move-object v5, v2

    move v2, v0

    move-object v0, v13

    goto/16 :goto_157

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    iget v0, v3, Lads_mobile_sdk/uk2;->g:I

    iget v5, v3, Lads_mobile_sdk/uk2;->f:I

    iget-object v9, v3, Lads_mobile_sdk/uk2;->e:Lads_mobile_sdk/om2;

    iget-object v10, v3, Lads_mobile_sdk/uk2;->d:Ljava/lang/String;

    iget-object v11, v3, Lads_mobile_sdk/uk2;->c:Lads_mobile_sdk/j53;

    iget-object v12, v3, Lads_mobile_sdk/uk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v13, v3, Lads_mobile_sdk/uk2;->a:Lads_mobile_sdk/al2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_132

    :cond_6a
    iget v0, v3, Lads_mobile_sdk/uk2;->h:I

    iget v5, v3, Lads_mobile_sdk/uk2;->g:I

    iget v9, v3, Lads_mobile_sdk/uk2;->f:I

    iget-object v10, v3, Lads_mobile_sdk/uk2;->e:Lads_mobile_sdk/om2;

    iget-object v11, v3, Lads_mobile_sdk/uk2;->d:Ljava/lang/String;

    iget-object v12, v3, Lads_mobile_sdk/uk2;->c:Lads_mobile_sdk/j53;

    iget-object v13, v3, Lads_mobile_sdk/uk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v14, v3, Lads_mobile_sdk/uk2;->a:Lads_mobile_sdk/al2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e5

    :cond_7f
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1362
    iget-object v1, v0, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j53;)I

    move-result v1

    .line 1363
    iget-object v9, v0, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1364
    const-string v10, "gads:pc:cache_fill_count_per_request"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v9, v10, v11, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 1366
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move v12, v1

    move-object v11, v3

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    :goto_b2
    if-eqz v10, :cond_b7

    add-int/lit8 v13, v12, 0x1

    goto :goto_b8

    :cond_b7
    move v13, v12

    .line 1374
    :goto_b8
    iget-object v14, v0, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    iput-object v0, v11, Lads_mobile_sdk/uk2;->a:Lads_mobile_sdk/al2;

    iput-object v1, v11, Lads_mobile_sdk/uk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v5, v11, Lads_mobile_sdk/uk2;->c:Lads_mobile_sdk/j53;

    iput-object v3, v11, Lads_mobile_sdk/uk2;->d:Ljava/lang/String;

    iput-object v10, v11, Lads_mobile_sdk/uk2;->e:Lads_mobile_sdk/om2;

    iput v9, v11, Lads_mobile_sdk/uk2;->f:I

    iput v12, v11, Lads_mobile_sdk/uk2;->g:I

    iput v13, v11, Lads_mobile_sdk/uk2;->h:I

    iput v2, v11, Lads_mobile_sdk/uk2;->k:I

    invoke-virtual {v14, v5, v3, v11}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j53;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_d4

    goto/16 :goto_156

    :cond_d4
    move-object/from16 v16, v14

    move-object v14, v0

    move v0, v13

    move-object v13, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v11

    move-object v11, v3

    move-object/from16 v3, v16

    move/from16 v16, v12

    move-object v12, v5

    move/from16 v5, v16

    :goto_e5
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_ef

    goto/16 :goto_169

    .line 1379
    :cond_ef
    invoke-virtual {v14, v13, v12}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Lads_mobile_sdk/ik2;

    move-result-object v0

    if-eqz v0, :cond_f7

    goto/16 :goto_169

    .line 1383
    :cond_f7
    iget-object v0, v14, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1384
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v1, 0x1e

    sget-object v15, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 1385
    const-string v2, "gads:pc:refill_wait_time_ms"

    invoke-static {v1, v15, v2, v6}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 1386
    sget-object v15, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v2, v1, v15}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    .line 1387
    iput-object v14, v3, Lads_mobile_sdk/uk2;->a:Lads_mobile_sdk/al2;

    iput-object v13, v3, Lads_mobile_sdk/uk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v12, v3, Lads_mobile_sdk/uk2;->c:Lads_mobile_sdk/j53;

    iput-object v11, v3, Lads_mobile_sdk/uk2;->d:Ljava/lang/String;

    iput-object v10, v3, Lads_mobile_sdk/uk2;->e:Lads_mobile_sdk/om2;

    iput v9, v3, Lads_mobile_sdk/uk2;->f:I

    iput v5, v3, Lads_mobile_sdk/uk2;->g:I

    iput v8, v3, Lads_mobile_sdk/uk2;->k:I

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_12b

    goto :goto_156

    :cond_12b
    move v0, v5

    move v5, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    .line 1390
    :goto_132
    iput-object v13, v3, Lads_mobile_sdk/uk2;->a:Lads_mobile_sdk/al2;

    iput-object v12, v3, Lads_mobile_sdk/uk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v11, v3, Lads_mobile_sdk/uk2;->c:Lads_mobile_sdk/j53;

    iput-object v10, v3, Lads_mobile_sdk/uk2;->d:Ljava/lang/String;

    iput-object v9, v3, Lads_mobile_sdk/uk2;->e:Lads_mobile_sdk/om2;

    iput v5, v3, Lads_mobile_sdk/uk2;->f:I

    iput v0, v3, Lads_mobile_sdk/uk2;->g:I

    iput v7, v3, Lads_mobile_sdk/uk2;->k:I

    move-object/from16 p6, v3

    move/from16 p4, v5

    move-object/from16 p5, v9

    move-object/from16 p3, v10

    move-object/from16 p2, v11

    move-object/from16 p1, v12

    move-object/from16 p0, v13

    invoke-virtual/range {p0 .. p6}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_45

    :goto_156
    return-object v4

    .line 1391
    :goto_157
    check-cast v1, Lads_mobile_sdk/qk2;

    .line 1427
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_16c

    const/4 v13, 0x1

    if-eq v1, v13, :cond_169

    if-eq v1, v8, :cond_169

    :goto_164
    move-object v1, v12

    move v12, v2

    move v2, v13

    goto/16 :goto_b2

    .line 1437
    :cond_169
    :goto_169
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_16c
    const/4 v13, 0x1

    const/4 v10, 0x0

    goto :goto_164
.end method

.method public static final a(Lads_mobile_sdk/al2;Lkotlin/Pair;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    instance-of v0, p3, Lads_mobile_sdk/tk2;

    if-eqz v0, :cond_16

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/tk2;

    iget v1, v0, Lads_mobile_sdk/tk2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tk2;->g:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/tk2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/tk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p3, v0, Lads_mobile_sdk/tk2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 207
    iget v2, v0, Lads_mobile_sdk/tk2;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_55

    if-eq v2, v4, :cond_44

    if-ne v2, v3, :cond_3c

    iget p0, v0, Lads_mobile_sdk/tk2;->d:I

    iget-object p1, v0, Lads_mobile_sdk/tk2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/tk2;->b:Lkotlin/Pair;

    iget-object v0, v0, Lads_mobile_sdk/tk2;->a:Lads_mobile_sdk/al2;

    :try_start_34
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    goto/16 :goto_ca

    :catchall_39
    move-exception p0

    goto/16 :goto_e5

    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    iget p0, v0, Lads_mobile_sdk/tk2;->d:I

    iget-object p1, v0, Lads_mobile_sdk/tk2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/tk2;->b:Lkotlin/Pair;

    iget-object v2, v0, Lads_mobile_sdk/tk2;->a:Lads_mobile_sdk/al2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p2

    move-object p2, p1

    move-object p1, p3

    move p3, p0

    move-object p0, v2

    goto :goto_9b

    :cond_55
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 211
    iget-object p3, p0, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/j53;

    invoke-virtual {p3, v2}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j53;)I

    move-result p3

    .line 212
    iget-object v2, p0, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    const-string v6, "key"

    const-string v7, "gads:pc:cache_fill_count_per_request"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v2, v7, v6, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 215
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-eqz p2, :cond_88

    add-int/lit8 p3, p3, 0x1

    .line 219
    :cond_88
    iget-object p2, p0, Lads_mobile_sdk/al2;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 692
    iput-object p0, v0, Lads_mobile_sdk/tk2;->a:Lads_mobile_sdk/al2;

    iput-object p1, v0, Lads_mobile_sdk/tk2;->b:Lkotlin/Pair;

    iput-object p2, v0, Lads_mobile_sdk/tk2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput p3, v0, Lads_mobile_sdk/tk2;->d:I

    iput v4, v0, Lads_mobile_sdk/tk2;->g:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9b

    goto :goto_c2

    .line 693
    :cond_9b
    :goto_9b
    :try_start_9b
    iget-object v2, p0, Lads_mobile_sdk/al2;->n:Ljava/util/LinkedHashSet;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    goto :goto_d3

    .line 698
    :cond_a4
    iget-object v2, p0, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/j53;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object p0, v0, Lads_mobile_sdk/tk2;->a:Lads_mobile_sdk/al2;

    iput-object p1, v0, Lads_mobile_sdk/tk2;->b:Lkotlin/Pair;

    iput-object p2, v0, Lads_mobile_sdk/tk2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput p3, v0, Lads_mobile_sdk/tk2;->d:I

    iput v3, v0, Lads_mobile_sdk/tk2;->g:I

    invoke-virtual {v2, v6, v7, v0}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j53;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c0
    .catchall {:try_start_9b .. :try_end_c0} :catchall_e3

    if-ne v0, v1, :cond_c3

    :goto_c2
    return-object v1

    :cond_c3
    move-object v9, v0

    move-object v0, p0

    move p0, p3

    move-object p3, v9

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    :goto_ca
    :try_start_ca
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-lt p3, p0, :cond_d6

    move-object p2, p1

    :goto_d3
    const/4 v4, 0x0

    move-object p1, p2

    goto :goto_db

    .line 703
    :cond_d6
    iget-object p0, v0, Lads_mobile_sdk/al2;->n:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 704
    :goto_db
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_df
    .catchall {:try_start_ca .. :try_end_df} :catchall_39

    .line 1169
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_e3
    move-exception p0

    move-object p1, p2

    :goto_e5
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Lads_mobile_sdk/ik2;
    .registers 13

    .line 3143
    iget-object v0, p0, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/im2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Lads_mobile_sdk/ik2;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    goto :goto_34

    .line 3147
    :cond_a
    iget-object p1, p0, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3149
    const-string v1, "key"

    const-string v2, "gads:pc:enable_cache_fill_on_cellular"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3165
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_33

    .line 3166
    iget-object p1, p0, Lads_mobile_sdk/al2;->j:Lads_mobile_sdk/ca2;

    .line 3167
    iget-object p1, p1, Lads_mobile_sdk/ca2;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3168
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_33

    .line 3169
    sget-object p1, Lads_mobile_sdk/ik2;->e:Lads_mobile_sdk/ik2;

    goto :goto_34

    :cond_33
    move-object p1, v0

    :goto_34
    if-eqz p1, :cond_152

    .line 3170
    iget-object v1, p0, Lads_mobile_sdk/al2;->f:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->S1:Lads_mobile_sdk/s11;

    .line 3600
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 3601
    new-instance v4, Lads_mobile_sdk/ks3;

    .line 3602
    new-instance v5, Lads_mobile_sdk/n03;

    invoke-direct {v5}, Lads_mobile_sdk/n03;-><init>()V

    .line 3603
    new-instance v6, Lads_mobile_sdk/tn1;

    invoke-direct {v6}, Lads_mobile_sdk/tn1;-><init>()V

    .line 3604
    new-instance v7, Lads_mobile_sdk/m33;

    invoke-direct {v7}, Lads_mobile_sdk/m33;-><init>()V

    .line 3605
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 3606
    invoke-direct {v4, v5, v6, v7, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 3607
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 3608
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v6, "build(...)"

    const-string v7, "value"

    const-string v8, "builder"

    const-string v9, "newBuilder(...)"

    if-nez v5, :cond_da

    .line 3609
    invoke-static {v1, v2, v3, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 3610
    :try_start_6b
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 3611
    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    .line 4045
    invoke-static {}, Lads_mobile_sdk/kk2;->v()Lads_mobile_sdk/hk2;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4046
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4047
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4147
    invoke-virtual {v4, p1}, Lads_mobile_sdk/hk2;->a(Lads_mobile_sdk/ik2;)V

    .line 4148
    invoke-virtual {v4}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/kk2;

    .line 4149
    iput-object v4, v3, Lads_mobile_sdk/uj2;->N:Lads_mobile_sdk/kk2;

    .line 4150
    iget-object v2, v2, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 4151
    iget-object v2, v2, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    iput-object p2, v2, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 4153
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_96
    .catchall {:try_start_6b .. :try_end_96} :catchall_9a

    .line 4587
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_9a
    move-exception p1

    .line 4597
    :try_start_9b
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4601
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_d3

    .line 4603
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_b0

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_b0

    .line 4609
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_b0

    :catchall_ae
    move-exception p1

    goto :goto_d4

    .line 4615
    :cond_b0
    :goto_b0
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_cb

    .line 4616
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_c3

    .line 4617
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_bd

    throw p1

    .line 4618
    :cond_bd
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 4619
    :cond_c3
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 4620
    :cond_cb
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 4621
    :cond_d3
    throw p1
    :try_end_d4
    .catchall {:try_start_9b .. :try_end_d4} :catchall_ae

    .line 4622
    :goto_d4
    :try_start_d4
    throw p1
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 4658
    :cond_da
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 4659
    :try_start_e3
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 4660
    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    .line 5094
    invoke-static {}, Lads_mobile_sdk/kk2;->v()Lads_mobile_sdk/hk2;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5095
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5096
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5196
    invoke-virtual {v4, p1}, Lads_mobile_sdk/hk2;->a(Lads_mobile_sdk/ik2;)V

    .line 5197
    invoke-virtual {v4}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/kk2;

    .line 5198
    iput-object v4, v3, Lads_mobile_sdk/uj2;->N:Lads_mobile_sdk/kk2;

    .line 5199
    iget-object v2, v2, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 5200
    iget-object v2, v2, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    iput-object p2, v2, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 5202
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10e
    .catchall {:try_start_e3 .. :try_end_10e} :catchall_112

    .line 5673
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_112
    move-exception p1

    .line 5681
    :try_start_113
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5685
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_14b

    .line 5687
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_128

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_128

    .line 5693
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_128

    :catchall_126
    move-exception p1

    goto :goto_14c

    .line 5699
    :cond_128
    :goto_128
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_143

    .line 5700
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_13b

    .line 5701
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_135

    throw p1

    .line 5702
    :cond_135
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 5703
    :cond_13b
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 5704
    :cond_143
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 5705
    :cond_14b
    throw p1
    :try_end_14c
    .catchall {:try_start_113 .. :try_end_14c} :catchall_126

    .line 5706
    :goto_14c
    :try_start_14c
    throw p1
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14d

    :catchall_14d
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_152
    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    .line 5728
    instance-of v2, v0, Lads_mobile_sdk/wk2;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/wk2;

    iget v3, v2, Lads_mobile_sdk/wk2;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/wk2;->m:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/wk2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/wk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/wk2;->k:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 5958
    iget v4, v2, Lads_mobile_sdk/wk2;->m:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "key"

    const/4 v8, 0x1

    if-eqz v4, :cond_8d

    if-eq v4, v8, :cond_71

    if-eq v4, v6, :cond_55

    if-ne v4, v5, :cond_4d

    iget v4, v2, Lads_mobile_sdk/wk2;->j:I

    iget-object v10, v2, Lads_mobile_sdk/wk2;->g:Lads_mobile_sdk/rk2;

    iget-object v11, v2, Lads_mobile_sdk/wk2;->f:Lads_mobile_sdk/ks3;

    iget-object v12, v2, Lads_mobile_sdk/wk2;->e:Lads_mobile_sdk/om2;

    iget-object v13, v2, Lads_mobile_sdk/wk2;->d:Ljava/lang/String;

    iget-object v14, v2, Lads_mobile_sdk/wk2;->c:Lads_mobile_sdk/j53;

    iget-object v15, v2, Lads_mobile_sdk/wk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v5, v2, Lads_mobile_sdk/wk2;->a:Lads_mobile_sdk/al2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, v6

    move-object v0, v13

    move-object v6, v2

    move-object v2, v3

    move v13, v4

    const/4 v3, 0x0

    const/4 v4, 0x3

    goto/16 :goto_2e5

    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    iget v4, v2, Lads_mobile_sdk/wk2;->j:I

    iget-object v5, v2, Lads_mobile_sdk/wk2;->i:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/wk2;->h:Lads_mobile_sdk/rr3;

    iget-object v11, v2, Lads_mobile_sdk/wk2;->g:Lads_mobile_sdk/rk2;

    iget-object v12, v2, Lads_mobile_sdk/wk2;->f:Lads_mobile_sdk/ks3;

    iget-object v13, v2, Lads_mobile_sdk/wk2;->e:Lads_mobile_sdk/om2;

    iget-object v14, v2, Lads_mobile_sdk/wk2;->d:Ljava/lang/String;

    iget-object v15, v2, Lads_mobile_sdk/wk2;->c:Lads_mobile_sdk/j53;

    iget-object v6, v2, Lads_mobile_sdk/wk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v9, v2, Lads_mobile_sdk/wk2;->a:Lads_mobile_sdk/al2;

    :try_start_69
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6e

    goto/16 :goto_205

    :catchall_6e
    move-exception v0

    goto/16 :goto_302

    .line 5959
    :cond_71
    iget v4, v2, Lads_mobile_sdk/wk2;->j:I

    iget-object v5, v2, Lads_mobile_sdk/wk2;->i:Lads_mobile_sdk/rr3;

    iget-object v6, v2, Lads_mobile_sdk/wk2;->h:Lads_mobile_sdk/rr3;

    iget-object v9, v2, Lads_mobile_sdk/wk2;->g:Lads_mobile_sdk/rk2;

    iget-object v10, v2, Lads_mobile_sdk/wk2;->f:Lads_mobile_sdk/ks3;

    iget-object v11, v2, Lads_mobile_sdk/wk2;->e:Lads_mobile_sdk/om2;

    iget-object v12, v2, Lads_mobile_sdk/wk2;->d:Ljava/lang/String;

    iget-object v13, v2, Lads_mobile_sdk/wk2;->c:Lads_mobile_sdk/j53;

    iget-object v14, v2, Lads_mobile_sdk/wk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v15, v2, Lads_mobile_sdk/wk2;->a:Lads_mobile_sdk/al2;

    :try_start_85
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_8a

    goto/16 :goto_162

    :catchall_8a
    move-exception v0

    goto/16 :goto_170

    .line 5960
    :cond_8d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5961
    new-instance v0, Lads_mobile_sdk/ks3;

    .line 5962
    new-instance v4, Lads_mobile_sdk/n03;

    invoke-direct {v4}, Lads_mobile_sdk/n03;-><init>()V

    .line 5963
    new-instance v5, Lads_mobile_sdk/tn1;

    invoke-direct {v5}, Lads_mobile_sdk/tn1;-><init>()V

    .line 5964
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    .line 5965
    new-instance v9, Lads_mobile_sdk/zb;

    invoke-direct {v9}, Lads_mobile_sdk/zb;-><init>()V

    .line 5966
    invoke-direct {v0, v4, v5, v6, v9}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    move-object/from16 v5, p2

    .line 5967
    iput-object v5, v4, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 5970
    new-instance v4, Lads_mobile_sdk/rk2;

    .line 5972
    iget-object v6, v1, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5973
    const-string v9, "gads:pc:max_fill_retry_attempts"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x5

    .line 5974
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v6, v9, v11, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    .line 5975
    iget-object v9, v1, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5976
    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v11, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 5977
    const-string v12, "gads:pc:fill_initial_refresh_interval"

    invoke-static {v10, v11, v12, v7}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v10

    .line 5978
    sget-object v11, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v9, v12, v10, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/time/Duration;

    invoke-virtual {v9}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v9

    move-object/from16 v11, p1

    .line 5979
    invoke-direct {v4, v6, v11, v9, v10}, Lads_mobile_sdk/rk2;-><init>(ILcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;J)V

    move-object v12, v0

    move-object v10, v1

    move-object v6, v2

    move-object v9, v4

    move-object/from16 v0, p3

    move/from16 v2, p4

    move-object/from16 v4, p5

    .line 5980
    :goto_f5
    iget v13, v9, Lads_mobile_sdk/rk2;->d:I

    .line 5981
    iget v14, v9, Lads_mobile_sdk/rk2;->a:I

    if-ge v13, v14, :cond_342

    .line 5982
    invoke-virtual {v10, v11, v5}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Lads_mobile_sdk/ik2;

    move-result-object v13

    if-eqz v13, :cond_104

    .line 5983
    sget-object v0, Lads_mobile_sdk/qk2;->c:Lads_mobile_sdk/qk2;

    return-object v0

    .line 5984
    :cond_104
    iget v13, v9, Lads_mobile_sdk/rk2;->d:I

    add-int/2addr v13, v8

    iput v13, v9, Lads_mobile_sdk/rk2;->d:I

    .line 5985
    iget-object v13, v10, Lads_mobile_sdk/al2;->f:Lads_mobile_sdk/g83;

    .line 5986
    sget-object v14, Lads_mobile_sdk/s11;->T1:Lads_mobile_sdk/s11;

    .line 6381
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 6382
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 6383
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_1b4

    .line 6384
    invoke-static {v13, v14, v15, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v8

    .line 6385
    :try_start_11d
    iput-object v10, v6, Lads_mobile_sdk/wk2;->a:Lads_mobile_sdk/al2;

    iput-object v11, v6, Lads_mobile_sdk/wk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v5, v6, Lads_mobile_sdk/wk2;->c:Lads_mobile_sdk/j53;

    iput-object v0, v6, Lads_mobile_sdk/wk2;->d:Ljava/lang/String;

    iput-object v4, v6, Lads_mobile_sdk/wk2;->e:Lads_mobile_sdk/om2;

    iput-object v12, v6, Lads_mobile_sdk/wk2;->f:Lads_mobile_sdk/ks3;

    iput-object v9, v6, Lads_mobile_sdk/wk2;->g:Lads_mobile_sdk/rk2;

    iput-object v8, v6, Lads_mobile_sdk/wk2;->h:Lads_mobile_sdk/rr3;

    iput-object v8, v6, Lads_mobile_sdk/wk2;->i:Lads_mobile_sdk/rr3;

    iput v2, v6, Lads_mobile_sdk/wk2;->j:I

    const/4 v13, 0x1

    iput v13, v6, Lads_mobile_sdk/wk2;->m:I

    move-object/from16 v20, v0

    move/from16 v21, v2

    move-object/from16 v23, v4

    move-object/from16 v19, v5

    move-object/from16 v24, v6

    move-object/from16 v22, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v24}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/rk2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_148
    .catchall {:try_start_11d .. :try_end_148} :catchall_172

    move-object/from16 v15, v17

    move-object/from16 v6, v18

    move-object/from16 v13, v19

    move-object/from16 v5, v20

    move/from16 v4, v21

    move-object/from16 v9, v22

    move-object/from16 v11, v23

    move-object/from16 v2, v24

    if-ne v0, v3, :cond_15d

    :goto_15a
    move-object v2, v3

    goto/16 :goto_2dd

    :cond_15d
    move-object v14, v6

    move-object v6, v8

    move-object v10, v12

    move-object v12, v5

    move-object v5, v6

    .line 6386
    :goto_162
    :try_start_162
    check-cast v0, Lads_mobile_sdk/sk2;
    :try_end_164
    .catchall {:try_start_162 .. :try_end_164} :catchall_8a

    const/4 v6, 0x0

    .line 6796
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v6, v2

    move-object v5, v13

    move-object v2, v0

    move-object v0, v12

    move-object v12, v10

    move-object v10, v15

    goto/16 :goto_214

    :goto_170
    move-object v8, v6

    goto :goto_174

    :catchall_172
    move-exception v0

    move-object v5, v8

    .line 6804
    :goto_174
    :try_start_174
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 6808
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1ad

    .line 6810
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_18a

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_18a

    .line 6816
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_18a

    :catchall_187
    move-exception v0

    move-object v2, v0

    goto :goto_1ae

    .line 6822
    :cond_18a
    :goto_18a
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1a5

    .line 6823
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_19d

    .line 6824
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_197

    throw v0

    .line 6825
    :cond_197
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 6826
    :cond_19d
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 6827
    :cond_1a5
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 6828
    :cond_1ad
    throw v0
    :try_end_1ae
    .catchall {:try_start_174 .. :try_end_1ae} :catchall_187

    .line 6829
    :goto_1ae
    :try_start_1ae
    throw v2
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_1af

    :catchall_1af
    move-exception v0

    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1b4
    move-object v13, v4

    move v4, v2

    move-object v2, v6

    move-object v6, v11

    move-object v11, v13

    move-object v13, v5

    move-object v15, v10

    move-object v5, v0

    .line 6863
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x1

    invoke-static {v14, v0, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v10

    .line 6864
    :try_start_1c5
    iput-object v15, v2, Lads_mobile_sdk/wk2;->a:Lads_mobile_sdk/al2;

    iput-object v6, v2, Lads_mobile_sdk/wk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v13, v2, Lads_mobile_sdk/wk2;->c:Lads_mobile_sdk/j53;

    iput-object v5, v2, Lads_mobile_sdk/wk2;->d:Ljava/lang/String;

    iput-object v11, v2, Lads_mobile_sdk/wk2;->e:Lads_mobile_sdk/om2;

    iput-object v12, v2, Lads_mobile_sdk/wk2;->f:Lads_mobile_sdk/ks3;

    iput-object v9, v2, Lads_mobile_sdk/wk2;->g:Lads_mobile_sdk/rk2;

    iput-object v10, v2, Lads_mobile_sdk/wk2;->h:Lads_mobile_sdk/rr3;

    iput-object v10, v2, Lads_mobile_sdk/wk2;->i:Lads_mobile_sdk/rr3;

    iput v4, v2, Lads_mobile_sdk/wk2;->j:I

    const/4 v0, 0x2

    iput v0, v2, Lads_mobile_sdk/wk2;->m:I

    move-object/from16 v24, v2

    move/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v18, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v11

    move-object/from16 v19, v13

    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v24}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/rk2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f0
    .catchall {:try_start_1c5 .. :try_end_1f0} :catchall_300

    if-ne v0, v3, :cond_1f4

    goto/16 :goto_15a

    :cond_1f4
    move-object v5, v10

    move-object/from16 v9, v17

    move-object/from16 v6, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move/from16 v4, v21

    move-object/from16 v11, v22

    move-object/from16 v13, v23

    move-object/from16 v2, v24

    .line 6865
    :goto_205
    :try_start_205
    check-cast v0, Lads_mobile_sdk/sk2;
    :try_end_207
    .catchall {:try_start_205 .. :try_end_207} :catchall_6e

    const/4 v8, 0x0

    .line 7312
    invoke-static {v5, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v5, v2

    move-object v2, v0

    move-object v0, v14

    move-object v14, v6

    move-object v6, v5

    move-object v10, v9

    move-object v9, v11

    move-object v11, v13

    move-object v5, v15

    .line 7313
    :goto_214
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2fd

    const/4 v13, 0x1

    if-eq v2, v13, :cond_2fa

    const/4 v8, 0x2

    if-eq v2, v8, :cond_22d

    const/4 v8, 0x3

    if-eq v2, v8, :cond_22a

    move-object v2, v3

    move v13, v4

    move v4, v8

    const/4 v3, 0x0

    const/4 v8, 0x2

    goto/16 :goto_2ec

    .line 7321
    :cond_22a
    sget-object v0, Lads_mobile_sdk/qk2;->c:Lads_mobile_sdk/qk2;

    return-object v0

    .line 7322
    :cond_22d
    iget v2, v9, Lads_mobile_sdk/rk2;->d:I

    .line 7323
    iget v8, v9, Lads_mobile_sdk/rk2;->a:I

    if-ge v2, v8, :cond_2f5

    .line 7324
    iget-wide v1, v9, Lads_mobile_sdk/rk2;->c:J

    .line 7325
    iget-object v8, v10, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    .line 7326
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7328
    const-string v13, "gads:pc:fill_interval_jitter"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v17, 0x3fb999999999999aL    # 0.1

    .line 7347
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object/from16 v17, v3

    sget-object v3, Lads_mobile_sdk/yr;->c:Lads_mobile_sdk/kr;

    invoke-virtual {v8, v13, v15, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    .line 7348
    iget-object v8, v10, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7350
    const-string v13, "gads:pc:fill_retry_interval_multiplier"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    .line 7369
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v8, v13, v15, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    .line 7370
    iget-object v3, v10, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7371
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v8, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 7372
    const-string v13, "gads:pc:fill_max_refresh_interval"

    const/4 v15, 0x1

    invoke-static {v15, v8, v13, v7}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v8

    .line 7373
    sget-object v15, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v3, v13, v8, v15}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v22

    .line 7374
    iget-object v3, v10, Lads_mobile_sdk/al2;->g:Lads_mobile_sdk/f13;

    move-object v15, v3

    move v13, v4

    const/4 v8, 0x2

    int-to-double v3, v8

    mul-double v3, v3, v18

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7375
    sget-object v15, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v15}, Lkotlin/random/Random$Default;->nextDouble()D

    move-result-wide v15

    mul-double/2addr v15, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v15, v3

    sub-double v15, v15, v18

    mul-double v3, v15, v20

    .line 7376
    invoke-static {v1, v2, v3, v4}, Lkotlin/time/Duration;->times-UwyO8pc(JD)J

    move-result-wide v1

    .line 7377
    invoke-static {v1, v2}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v1

    invoke-static/range {v22 .. v23}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lkotlin/time/Duration;

    invoke-virtual {v1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v1

    .line 7378
    iput-wide v1, v9, Lads_mobile_sdk/rk2;->c:J

    .line 7379
    iput-object v10, v6, Lads_mobile_sdk/wk2;->a:Lads_mobile_sdk/al2;

    iput-object v14, v6, Lads_mobile_sdk/wk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v5, v6, Lads_mobile_sdk/wk2;->c:Lads_mobile_sdk/j53;

    iput-object v0, v6, Lads_mobile_sdk/wk2;->d:Ljava/lang/String;

    iput-object v11, v6, Lads_mobile_sdk/wk2;->e:Lads_mobile_sdk/om2;

    iput-object v12, v6, Lads_mobile_sdk/wk2;->f:Lads_mobile_sdk/ks3;

    iput-object v9, v6, Lads_mobile_sdk/wk2;->g:Lads_mobile_sdk/rk2;

    const/4 v3, 0x0

    iput-object v3, v6, Lads_mobile_sdk/wk2;->h:Lads_mobile_sdk/rr3;

    iput-object v3, v6, Lads_mobile_sdk/wk2;->i:Lads_mobile_sdk/rr3;

    iput v13, v6, Lads_mobile_sdk/wk2;->j:I

    const/4 v4, 0x3

    iput v4, v6, Lads_mobile_sdk/wk2;->m:I

    invoke-static {v1, v2, v6}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v17

    if-ne v1, v2, :cond_2de

    :goto_2dd
    return-object v2

    :cond_2de
    move-object v15, v12

    move-object v12, v11

    move-object v11, v15

    move-object v15, v14

    move-object v14, v5

    move-object v5, v10

    move-object v10, v9

    :goto_2e5
    move-object v9, v12

    move-object v12, v11

    move-object v11, v9

    move-object v9, v10

    move-object v10, v5

    move-object v5, v14

    move-object v14, v15

    :goto_2ec
    move-object/from16 v1, p0

    move-object v3, v2

    :goto_2ef
    move-object v4, v11

    move v2, v13

    move-object v11, v14

    const/4 v8, 0x1

    goto/16 :goto_f5

    :cond_2f5
    move-object v2, v3

    move v13, v4

    move-object/from16 v1, p0

    goto :goto_2ef

    .line 7380
    :cond_2fa
    sget-object v0, Lads_mobile_sdk/qk2;->b:Lads_mobile_sdk/qk2;

    return-object v0

    .line 7381
    :cond_2fd
    sget-object v0, Lads_mobile_sdk/qk2;->a:Lads_mobile_sdk/qk2;

    return-object v0

    :catchall_300
    move-exception v0

    move-object v5, v10

    .line 7818
    :goto_302
    :try_start_302
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 7822
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_33b

    .line 7824
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_318

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_318

    .line 7830
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_318

    :catchall_315
    move-exception v0

    move-object v1, v0

    goto :goto_33c

    .line 7836
    :cond_318
    :goto_318
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_333

    .line 7837
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_32b

    .line 7838
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_325

    throw v0

    .line 7839
    :cond_325
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 7840
    :cond_32b
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 7841
    :cond_333
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 7842
    :cond_33b
    throw v0
    :try_end_33c
    .catchall {:try_start_302 .. :try_end_33c} :catchall_315

    .line 7843
    :goto_33c
    :try_start_33c
    throw v1
    :try_end_33d
    .catchall {:try_start_33c .. :try_end_33d} :catchall_33d

    :catchall_33d
    move-exception v0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 7844
    :cond_342
    sget-object v0, Lads_mobile_sdk/qk2;->b:Lads_mobile_sdk/qk2;

    return-object v0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;ILads_mobile_sdk/rk2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p7

    .line 1438
    instance-of v5, v4, Lads_mobile_sdk/vk2;

    if-eqz v5, :cond_1d

    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/vk2;

    iget v6, v5, Lads_mobile_sdk/vk2;->l:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lads_mobile_sdk/vk2;->l:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lads_mobile_sdk/vk2;

    invoke-direct {v5, v0, v4}, Lads_mobile_sdk/vk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/coroutines/Continuation;)V

    :goto_22
    iget-object v4, v5, Lads_mobile_sdk/vk2;->j:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 1728
    iget v7, v5, Lads_mobile_sdk/vk2;->l:I

    const/4 v8, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x0

    packed-switch v7, :pswitch_data_3f2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_38
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_328

    :pswitch_3d
    iget v1, v5, Lads_mobile_sdk/vk2;->i:I

    iget v2, v5, Lads_mobile_sdk/vk2;->h:I

    iget-object v3, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/i2;

    iget-object v7, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/ac3;

    iget-object v8, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rk2;

    iget-object v9, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iget-object v11, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v12, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    move-object v3, v6

    goto/16 :goto_2d8

    :pswitch_5a
    iget v1, v5, Lads_mobile_sdk/vk2;->i:I

    iget v2, v5, Lads_mobile_sdk/vk2;->h:I

    iget-object v3, v5, Lads_mobile_sdk/vk2;->g:Lads_mobile_sdk/i2;

    iget-object v7, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/ac3;

    iget-object v8, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rk2;

    iget-object v11, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iget-object v13, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v14, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    move-object v3, v6

    goto/16 :goto_2a5

    :pswitch_79
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3b8

    :pswitch_7e
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1cd

    :pswitch_83
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_174

    :pswitch_88
    iget v1, v5, Lads_mobile_sdk/vk2;->i:I

    iget v2, v5, Lads_mobile_sdk/vk2;->h:I

    iget-object v3, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/om2;

    iget-object v7, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/rk2;

    iget-object v11, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iget-object v13, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v14, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_131

    :pswitch_a3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1737
    iget-object v4, v0, Lads_mobile_sdk/al2;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/cw2;

    if-eqz v4, :cond_bd

    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/dn1;

    if-eqz v4, :cond_bd

    invoke-interface {v4, v1, v3}, Lads_mobile_sdk/dn1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;I)Lads_mobile_sdk/v01;

    move-result-object v4

    goto :goto_be

    :cond_bd
    move-object v4, v10

    :goto_be
    if-nez v4, :cond_d7

    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component factory is missing for request type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10, v9}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1741
    sget-object v1, Lads_mobile_sdk/sk2;->b:Lads_mobile_sdk/sk2;

    return-object v1

    .line 1746
    :cond_d7
    instance-of v7, v4, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_f2

    .line 1747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create internal request component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10, v9}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1748
    sget-object v1, Lads_mobile_sdk/sk2;->b:Lads_mobile_sdk/sk2;

    return-object v1

    .line 1750
    :cond_f2
    instance-of v7, v4, Lads_mobile_sdk/q01;

    if-eqz v7, :cond_3eb

    check-cast v4, Lads_mobile_sdk/q01;

    invoke-virtual {v4}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/cn1;

    .line 1753
    invoke-interface {v4}, Lads_mobile_sdk/cn1;->a()Lads_mobile_sdk/hj1;

    move-result-object v4

    .line 1754
    check-cast v4, Lads_mobile_sdk/kj1;

    invoke-virtual {v4}, Lads_mobile_sdk/kj1;->a()I

    move-result v7

    .line 1755
    iput-object v0, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    iput-object v1, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v2, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    move-object/from16 v11, p3

    iput-object v11, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    move-object/from16 v12, p5

    iput-object v12, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    move-object/from16 v13, p6

    iput-object v13, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    iput v3, v5, Lads_mobile_sdk/vk2;->h:I

    iput v7, v5, Lads_mobile_sdk/vk2;->i:I

    iput v8, v5, Lads_mobile_sdk/vk2;->l:I

    invoke-virtual {v4, v5}, Lads_mobile_sdk/kj1;->a(Lads_mobile_sdk/vk2;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_129

    :goto_126
    move-object v3, v6

    goto/16 :goto_3b7

    :cond_129
    move-object v14, v13

    move-object v13, v1

    move v1, v7

    move-object v7, v12

    move-object v12, v2

    move v2, v3

    move-object v3, v14

    move-object v14, v0

    .line 1756
    :goto_131
    check-cast v4, Lads_mobile_sdk/v01;

    .line 1787
    instance-of v15, v4, Lads_mobile_sdk/i01;

    if-eqz v15, :cond_177

    .line 1791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load ad response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1793
    sget-object v3, Lads_mobile_sdk/bs0;->b:Lads_mobile_sdk/as0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lads_mobile_sdk/as0;->a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/bs0;

    move-result-object v3

    .line 1794
    iput-object v10, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v5, Lads_mobile_sdk/vk2;->l:I

    const/4 v4, 0x0

    move/from16 p5, v1

    move-object/from16 p4, v2

    move-object/from16 p6, v3

    move-object/from16 p3, v4

    move-object/from16 p2, v7

    move-object/from16 p1, v14

    invoke-virtual/range {p1 .. p6}, Lads_mobile_sdk/al2;->a(Lads_mobile_sdk/rk2;Lads_mobile_sdk/ac3;Ljava/lang/String;ILads_mobile_sdk/bs0;)Lkotlin/Unit;

    move-result-object v1

    if-ne v1, v6, :cond_174

    goto :goto_126

    .line 1801
    :cond_174
    :goto_174
    sget-object v1, Lads_mobile_sdk/sk2;->c:Lads_mobile_sdk/sk2;

    return-object v1

    .line 1804
    :cond_177
    instance-of v15, v4, Lads_mobile_sdk/q01;

    if-eqz v15, :cond_3e5

    check-cast v4, Lads_mobile_sdk/q01;

    invoke-virtual {v4}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/ac3;

    .line 1810
    iget-object v15, v4, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-boolean v15, v15, Lads_mobile_sdk/zy;->s:Z

    if-eqz v15, :cond_3bb

    .line 1811
    instance-of v15, v13, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    if-eqz v15, :cond_19e

    .line 1812
    move-object v15, v13

    check-cast v15, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    invoke-virtual {v15}, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;->a()Z

    move-result v15

    if-eqz v15, :cond_19e

    .line 1813
    iget-object v15, v4, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-boolean v15, v15, Lads_mobile_sdk/zy;->u:Z

    if-nez v15, :cond_19e

    goto/16 :goto_3bb

    .line 1822
    :cond_19e
    iget-object v15, v4, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    const/4 v8, 0x3

    if-eqz v15, :cond_1d0

    .line 1828
    sget-object v2, Lads_mobile_sdk/bs0;->i:Lads_mobile_sdk/bs0;

    .line 1829
    iput-object v10, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    iput v8, v5, Lads_mobile_sdk/vk2;->l:I

    const-string v3, "Failed to get ad config from server response"

    move/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p4, v3

    move-object/from16 p3, v4

    move-object/from16 p2, v7

    move-object/from16 p1, v14

    invoke-virtual/range {p1 .. p6}, Lads_mobile_sdk/al2;->a(Lads_mobile_sdk/rk2;Lads_mobile_sdk/ac3;Ljava/lang/String;ILads_mobile_sdk/bs0;)Lkotlin/Unit;

    move-result-object v1

    if-ne v1, v6, :cond_1cd

    goto/16 :goto_126

    .line 1836
    :cond_1cd
    :goto_1cd
    sget-object v1, Lads_mobile_sdk/sk2;->c:Lads_mobile_sdk/sk2;

    return-object v1

    :cond_1d0
    move-object/from16 v17, v7

    move-object v7, v4

    move-object/from16 v4, v17

    .line 1839
    iget-object v15, v7, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-static {v15}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lads_mobile_sdk/i2;

    if-eqz v15, :cond_1e6

    .line 1840
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1841
    iget-object v9, v15, Lads_mobile_sdk/i2;->J:Lads_mobile_sdk/vc1;

    if-nez v9, :cond_1e9

    :cond_1e6
    move-object v3, v6

    goto/16 :goto_382

    .line 1843
    :cond_1e9
    iget-object v10, v14, Lads_mobile_sdk/al2;->c:Lads_mobile_sdk/cl2;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1845
    const-string v8, "key"

    const-string v0, "gads:pc:enable_sra_empty_slots_validation"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v16, v6

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v10, v0, v8, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 1862
    iget-boolean v0, v15, Lads_mobile_sdk/i2;->A0:Z

    if-eqz v0, :cond_24d

    .line 1863
    iget-object v0, v9, Lads_mobile_sdk/vc1;->d:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_217

    const-string v6, "slots"

    invoke-static {v0, v6}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    if-nez v0, :cond_21b

    :cond_217
    :goto_217
    move-object/from16 v3, v16

    goto/16 :goto_382

    .line 2096
    :cond_21b
    instance-of v6, v0, Ljava/util/Collection;

    if-eqz v6, :cond_229

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_229

    goto :goto_217

    .line 2097
    :cond_229
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_217

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 2098
    sget-object v8, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v8, "ads"

    invoke-static {v6, v8}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    if-eqz v6, :cond_22d

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-lez v6, :cond_22d

    .line 2104
    :cond_24d
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v6, 0x5

    const/4 v8, 0x3

    if-eq v0, v8, :cond_27d

    if-eq v0, v6, :cond_25c

    .line 2112
    iget-object v0, v9, Lads_mobile_sdk/vc1;->a:Ljava/lang/String;

    if-eqz v0, :cond_217

    goto :goto_281

    .line 2113
    :cond_25c
    instance-of v0, v13, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    if-eqz v0, :cond_271

    .line 2114
    move-object v0, v13

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getNativeAdTypes()Ljava/util/List;

    move-result-object v0

    sget-object v8, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_271

    const/4 v8, 0x1

    goto :goto_272

    :cond_271
    const/4 v8, 0x0

    .line 2115
    :goto_272
    iget-object v0, v9, Lads_mobile_sdk/vc1;->d:Lcom/google/gson/JsonObject;

    if-nez v0, :cond_281

    if-eqz v8, :cond_217

    iget-object v0, v9, Lads_mobile_sdk/vc1;->a:Ljava/lang/String;

    if-eqz v0, :cond_217

    goto :goto_281

    .line 2117
    :cond_27d
    iget-object v0, v9, Lads_mobile_sdk/vc1;->d:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_217

    :cond_281
    :goto_281
    if-eqz v3, :cond_2ac

    .line 2118
    iget-object v0, v14, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    iput-object v14, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    iput-object v13, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v12, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iput-object v11, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    iput-object v4, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    iput-object v7, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    iput-object v15, v5, Lads_mobile_sdk/vk2;->g:Lads_mobile_sdk/i2;

    iput v2, v5, Lads_mobile_sdk/vk2;->h:I

    iput v1, v5, Lads_mobile_sdk/vk2;->i:I

    iput v6, v5, Lads_mobile_sdk/vk2;->l:I

    invoke-virtual {v0, v3, v5}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/om2;Lads_mobile_sdk/vk2;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v16

    if-ne v0, v3, :cond_2a3

    goto/16 :goto_3b7

    :cond_2a3
    move-object v8, v4

    move-object v4, v0

    .line 2119
    :goto_2a5
    check-cast v4, Lads_mobile_sdk/v01;

    :goto_2a7
    move-object v0, v11

    move-object v9, v12

    move-object v11, v13

    move-object v12, v14

    goto :goto_2b0

    :cond_2ac
    move-object/from16 v3, v16

    move-object v8, v4

    goto :goto_2a7

    .line 2208
    :goto_2b0
    iget-object v4, v12, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    .line 2211
    invoke-virtual {v7}, Lads_mobile_sdk/ac3;->a()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2212
    iput-object v12, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    iput-object v11, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v9, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iput-object v8, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    iput-object v7, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    iput-object v15, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v5, Lads_mobile_sdk/vk2;->g:Lads_mobile_sdk/i2;

    iput v2, v5, Lads_mobile_sdk/vk2;->h:I

    iput v1, v5, Lads_mobile_sdk/vk2;->i:I

    const/4 v10, 0x6

    iput v10, v5, Lads_mobile_sdk/vk2;->l:I

    invoke-virtual {v4, v9, v0, v6, v5}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/j53;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/vk2;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2d8

    goto/16 :goto_3b7

    .line 2213
    :cond_2d8
    :goto_2d8
    check-cast v4, Lads_mobile_sdk/v01;

    .line 2308
    instance-of v0, v4, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_32b

    .line 2312
    invoke-virtual {v8}, Lads_mobile_sdk/rk2;->b()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to cache ad after #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attempts: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2314
    sget-object v2, Lads_mobile_sdk/bs0;->b:Lads_mobile_sdk/as0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lads_mobile_sdk/as0;->a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/bs0;

    move-result-object v2

    const/4 v10, 0x0

    .line 2315
    iput-object v10, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v5, Lads_mobile_sdk/vk2;->l:I

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p3, v7

    move-object/from16 p2, v8

    move-object/from16 p1, v12

    invoke-virtual/range {p1 .. p6}, Lads_mobile_sdk/al2;->a(Lads_mobile_sdk/rk2;Lads_mobile_sdk/ac3;Ljava/lang/String;ILads_mobile_sdk/bs0;)Lkotlin/Unit;

    move-result-object v0

    if-ne v0, v3, :cond_328

    goto/16 :goto_3b7

    .line 2322
    :cond_328
    :goto_328
    sget-object v0, Lads_mobile_sdk/sk2;->c:Lads_mobile_sdk/sk2;

    return-object v0

    .line 2325
    :cond_32b
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2326
    new-instance v0, Lads_mobile_sdk/ec3;

    new-instance v3, Lads_mobile_sdk/wb3;

    invoke-direct {v3, v11}, Lads_mobile_sdk/wb3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    invoke-direct {v0, v3, v7}, Lads_mobile_sdk/ec3;-><init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;)V

    .line 2327
    sget-object v3, Lads_mobile_sdk/bs0;->c:Lads_mobile_sdk/bs0;

    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v5}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v5

    const/4 v10, 0x0

    .line 2328
    invoke-static {v15, v3, v5, v6, v10}, Lads_mobile_sdk/l33;->a(Lads_mobile_sdk/i2;Lads_mobile_sdk/bs0;JLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 2329
    iget-object v5, v15, Lads_mobile_sdk/i2;->D:Ljava/util/List;

    iget-object v6, v15, Lads_mobile_sdk/i2;->e:Ljava/util/List;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v3

    move-object/from16 p2, v5

    move-object/from16 p1, v12

    move-object/from16 p3, v15

    .line 2330
    invoke-virtual/range {p1 .. p6}, Lads_mobile_sdk/al2;->a(Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/ec3;ILjava/lang/String;)V

    .line 2331
    instance-of v0, v4, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_364

    move-object v10, v4

    check-cast v10, Lads_mobile_sdk/q01;

    goto :goto_365

    :cond_364
    const/4 v10, 0x0

    :goto_365
    if-eqz v10, :cond_36f

    invoke-virtual {v10}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lads_mobile_sdk/om2;

    goto :goto_370

    :cond_36f
    const/4 v10, 0x0

    :goto_370
    if-eqz v10, :cond_37f

    .line 2333
    iget-object v0, v12, Lads_mobile_sdk/al2;->l:Lads_mobile_sdk/cw2;

    .line 2334
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/zj2;

    .line 2335
    check-cast v0, Lads_mobile_sdk/ek2;

    invoke-virtual {v0, v11, v9, v2, v10}, Lads_mobile_sdk/ek2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;)V

    .line 2342
    :cond_37f
    sget-object v0, Lads_mobile_sdk/sk2;->a:Lads_mobile_sdk/sk2;

    return-object v0

    .line 2343
    :goto_382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to render ad for request type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2345
    sget-object v2, Lads_mobile_sdk/bs0;->i:Lads_mobile_sdk/bs0;

    const/4 v10, 0x0

    .line 2346
    iput-object v10, v5, Lads_mobile_sdk/vk2;->a:Lads_mobile_sdk/al2;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->c:Lads_mobile_sdk/j53;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->d:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->e:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/vk2;->f:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v5, Lads_mobile_sdk/vk2;->l:I

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p2, v4

    move-object/from16 p3, v7

    move-object/from16 p1, v14

    invoke-virtual/range {p1 .. p6}, Lads_mobile_sdk/al2;->a(Lads_mobile_sdk/rk2;Lads_mobile_sdk/ac3;Ljava/lang/String;ILads_mobile_sdk/bs0;)Lkotlin/Unit;

    move-result-object v0

    if-ne v0, v3, :cond_3b8

    :goto_3b7
    return-object v3

    .line 2353
    :cond_3b8
    :goto_3b8
    sget-object v0, Lads_mobile_sdk/sk2;->c:Lads_mobile_sdk/sk2;

    return-object v0

    .line 2354
    :cond_3bb
    :goto_3bb
    iget-object v0, v14, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    invoke-virtual {v13}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/im2;->a(Ljava/lang/String;)V

    .line 2355
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 2745
    invoke-static {}, Lads_mobile_sdk/kk2;->v()Lads_mobile_sdk/hk2;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/lk2;->a(Lads_mobile_sdk/hk2;)Lads_mobile_sdk/mk2;

    move-result-object v1

    .line 2746
    invoke-virtual {v1}, Lads_mobile_sdk/mk2;->b()V

    .line 3135
    invoke-virtual {v1}, Lads_mobile_sdk/mk2;->a()Lads_mobile_sdk/kk2;

    move-result-object v1

    .line 3136
    iput-object v1, v0, Lads_mobile_sdk/uj2;->N:Lads_mobile_sdk/kk2;

    .line 3139
    sget-object v0, Lads_mobile_sdk/sk2;->d:Lads_mobile_sdk/sk2;

    return-object v0

    .line 3140
    :cond_3e5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 3141
    :cond_3eb
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    nop

    :pswitch_data_3f2
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_5a
        :pswitch_3d
        :pswitch_38
    .end packed-switch
.end method

.method public final a(Lads_mobile_sdk/rk2;Lads_mobile_sdk/ac3;Ljava/lang/String;ILads_mobile_sdk/bs0;)Lkotlin/Unit;
    .registers 12

    if-eqz p2, :cond_2c

    .line 5708
    new-instance v3, Lads_mobile_sdk/ec3;

    new-instance v0, Lads_mobile_sdk/wb3;

    invoke-virtual {p1}, Lads_mobile_sdk/rk2;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/wb3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    invoke-direct {v3, v0, p2}, Lads_mobile_sdk/ec3;-><init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;)V

    .line 5710
    iget-object v0, p2, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/i2;

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v1

    invoke-static {v0, p5, v1, v2}, Lads_mobile_sdk/l33;->a(Lads_mobile_sdk/i2;Lads_mobile_sdk/bs0;J)Ljava/lang/String;

    move-result-object v5

    .line 5712
    iget-object p2, p2, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v1, p2, Lads_mobile_sdk/zy;->m:Ljava/util/List;

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p4

    .line 5713
    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/al2;->a(Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/ec3;ILjava/lang/String;)V

    .line 5722
    :cond_2c
    invoke-virtual {p1}, Lads_mobile_sdk/rk2;->b()I

    move-result p2

    invoke-virtual {p1}, Lads_mobile_sdk/rk2;->c()I

    move-result p4

    const/4 p5, 0x6

    const/4 v0, 0x0

    if-ge p2, p4, :cond_3c

    .line 5723
    invoke-static {p3, v0, p5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_5c

    .line 5725
    :cond_3c
    invoke-virtual {p1}, Lads_mobile_sdk/rk2;->c()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Terminal failure after "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " attempts: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 5727
    :goto_5c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;)V
    .registers 14

    .line 8585
    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8662
    iget-object v0, p0, Lads_mobile_sdk/al2;->b:Lads_mobile_sdk/im2;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/im2;->b(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_19

    .line 8666
    :cond_13
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Lads_mobile_sdk/ik2;

    move-result-object v0

    if-eqz v0, :cond_1a

    :goto_19
    return-void

    .line 8668
    :cond_1a
    iget-object v1, p0, Lads_mobile_sdk/al2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/zk2;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, p1

    move-object v4, p2

    move v7, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/zk2;-><init>(Lads_mobile_sdk/al2;Lads_mobile_sdk/j53;Lads_mobile_sdk/om2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;ILkotlin/coroutines/Continuation;)V

    .line 8669
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8670
    const-string p2, "<this>"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8928
    new-instance v4, Lads_mobile_sdk/ws3;

    const/4 p2, 0x0

    invoke-direct {v4, v2, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/ec3;ILjava/lang/String;)V
    .registers 15

    .line 8324
    iget-object v0, p0, Lads_mobile_sdk/al2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/xk2;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lads_mobile_sdk/xk2;-><init>(Lads_mobile_sdk/al2;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 8325
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8326
    const-string p2, "<this>"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8584
    new-instance v3, Lads_mobile_sdk/ws3;

    const/4 p2, 0x0

    invoke-direct {v3, v1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
